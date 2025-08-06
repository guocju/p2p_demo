#include <cuda_runtime.h>
#include <stdio.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include <iostream>
extern "C"
{
#include "pcie_rw.h"
#include "regmap.h"
}
#include "cdev_sgdma.h"
#include "gpuctl.h"
#include "p2p.h"

#define DDR_RVCODE_BASE 0x10000000
#define BRAM_SF_BASE 0x00000000

extern struct AddrDesc stAddrDesc;

typedef struct BUFFER
{
  unsigned char *data; // 数据指针和大小
  long size;
} BUFFER;

#define PAGE_SIZE 64 * 1024 // 64KB

struct head_tail
{
  uint32_t lo;
  uint32_t hi;
  size_t len;
};

void memory_unmap()
{
  int fd_in = open("/dev/xdma0_c2h_1", O_WRONLY);
  ioctl(fd_in, IOCTL_XDMA_GPU_FREE);
}

BUFFER new_binary_from_file(const char *filename)
{
  FILE *fptr = fopen(filename, "rb");
  long fsize;
  unsigned char *data;
  fseek(fptr, 0, SEEK_END);
  fsize = ftell(fptr);
  rewind(fptr);
  // data = (unsigned char *) malloc(fsize);
  posix_memalign((void **)&data, 4096 /*alignment */,
                 fsize + 4096); // 分配对其的内存空间
  if (!data)
  {
    fprintf(stderr, "OOM %lu.\n", fsize + 4096);
  }
  // printf("Memory alloced at : 0x%p \n",data);
  fread(data, 1, fsize, fptr);
  BUFFER buff = {.data = data,
                 .size = fsize}; // 将文件内容打包到buffer结构体中
  return buff;
}

void write_reg(uint32_t addr, uint32_t len, uint32_t value)
{
  uint32_t local_value = value;
  std::cout << std::showbase << std::hex << "write " << addr << " value "
            << value << std::endl;
  write_bram_reg(addr, len, &local_value);
}

void write_reg_ddr(uint32_t addr, uint32_t len, uint32_t value)
{
  uint32_t local_value = value;
  std::cout << std::showbase << std::hex << "write " << addr << " value " << value << std::endl;
  write_plddr(addr, len, &local_value);
}

void rv_init()
{
  uint32_t read;

  std::cout << "rv_init()" << std::endl;
  // stop riscv

  std::cout << "start rv" << std::endl;
  write_reg(0x1c, 4, 0);

  BUFFER rvcode_buffer = new_binary_from_file(WORKDIR "/../riscv/output/bin/swf_code.bin");
  write_plddr(DDR_RVCODE_BASE, rvcode_buffer.size, rvcode_buffer.data);
  // write_plddr(0x0000, 0x1000, rvcode_buffer.data);
  free(rvcode_buffer.data);
  std::cout << "write rvcode to " << std::showbase << std::hex
            << DDR_RVCODE_BASE << " len:" << rvcode_buffer.size << std::endl;

  std::cout << "start rv" << std::endl;
  write_reg(0x1c, 4, 1);

  read_bram_reg(0x00100, 4, &read);
  std::cout << "read rv reg " << std::hex << read << std::endl;
  read_bram_reg(0x00104, 4, &read);
  //   std::cout << "read rv reg " << std::hex << read << std::endl;
  read_bram_reg(0x00108, 4, &read);
  //   std::cout << "read rv reg " << std::hex << read << std::endl;
  read_bram_reg(0x0010c, 4, &read);
  //   std::cout << "read rv reg " << std::hex << read << std::endl;
}

void assign_addr_desc(uint32_t group_num, uint32_t desc_num)
{
  uint32_t addr = BASE_ADDR;
  stAddrDesc.group_num = addr;
  addr += 4;
  //   printf("assign addr desc: group_num: %02x, desc_num: %02x\n", group_num,
  //          desc_num);
  stAddrDesc.head_lo = addr;
  addr += 4;
  //   printf("assign head_lo      0x%x\n", stAddrDesc.head_lo);

  stAddrDesc.head_hi = addr;
  addr += 4;
  //   printf("assign head_hi      0x%x\n", stAddrDesc.head_hi);

  stAddrDesc.tail_lo = addr;
  addr += 4;
  //   printf("assign tail_lo      0x%x\n", stAddrDesc.tail_lo);

  stAddrDesc.tail_hi = addr;
  addr += 4;
  //   printf("assign head_hi      0x%x\n", stAddrDesc.tail_hi);
  //   printf("assign group_num 0x%02x\n", stAddrDesc.group_num);
  for (uint32_t i = 0; i < group_num; i++)
  {
    stAddrDesc.group_offset[i] = addr;
    addr += 4;
    // printf("assign group_offset[0x%02x] 0x%x\n", i,
    // stAddrDesc.group_offset[i]);
  }

  for (uint32_t i = 0; i < group_num; i++)
  {
    stAddrDesc.group[i].desc_num = addr;
    addr += 4;
    // printf("assign group[0x%02x].desc_num         0x%x\n", i,
    //        stAddrDesc.group[i].desc_num);

    for (uint32_t j = 0; j < desc_num; j++)
    {
      stAddrDesc.group[i].desc_list[j].remote_addr_lo = addr;
      addr += 4;
      //   printf("assign group[0x%02x].desc_list[0x%02x].remote_addr_lo
      //   0x%x\n", i,
      //          j, stAddrDesc.group[i].desc_list[j].remote_addr_lo);

      stAddrDesc.group[i].desc_list[j].remote_addr_hi = addr;
      addr += 4;
      //   printf("assign group[0x%02x].desc_list[0x%02x].remote_addr_hi
      //   0x%x\n", i,
      //          j, stAddrDesc.group[i].desc_list[j].remote_addr_hi);

      stAddrDesc.group[i].desc_list[j].len = addr;
      addr += 4;
      //   printf("assign group[0x%02x].desc_list[0x%02x].remote_len 0x%x\n", i,
      //          j, stAddrDesc.group[i].desc_list[j].len);
    }
  }
}

int rv_clear_sr()
{
  //   std::cout << "rv_clear_sr" << std::endl;
  write_reg(REG_HIPU_SR, 4, 0x0);
  return 0;
}

int rv_launch_desc()
{
  //   std::cout << "rv_launch_desc" << std::endl;
  write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
  write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x1);

  // write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
  return 0;
}

// start byp:1.map the GPU Mem 2.pass the desc 3.start the xdma
int transfer_desc(CUdeviceptr head_ptr, CUdeviceptr tail_ptr,
                  CUdeviceptr *ptr_arr, uint32_t ptr_num, size_t gpu_bank_size,
                  int fd_i, int fd_o)
{
  // if not start rv, no rv_init()
  pl_init();
  rv_init();

  // every group is one of the gpu buffers
  uint32_t map_num = ((gpu_bank_size) / (PAGE_SIZE));
  //   std::cout << map_num << std::endl;
  //   std::cout << gpu_bank_size << std::endl;
  //   std::cout << PAGE_SIZE << std::endl;
  assign_addr_desc(ptr_num, map_num);

  write_reg(stAddrDesc.group_num, 4, ptr_num);

  // map head and tail

  gpudma_lock_t lock;
  // head
  lock.addr = head_ptr;
  lock.size = PAGE_SIZE;
  lock.dma_addrs = (uint64_t *)malloc(1 * sizeof(uint64_t));
  lock.dma_lengths = (size_t *)malloc(1 * sizeof(size_t));

  ioctl(fd_o, IOCTL_XDMA_GPU_BYP, &lock);

  struct head_tail *h_t_arr =
      (struct head_tail *)malloc(2 * sizeof(struct head_tail));
  h_t_arr[0].lo = lock.dma_addrs[0];
  h_t_arr[0].hi = (uint32_t)(lock.dma_addrs[0] >> 32);
  h_t_arr[0].len = lock.dma_lengths[0];

  write_reg(stAddrDesc.head_lo, 4, h_t_arr[0].lo);
  write_reg(stAddrDesc.head_hi, 4, h_t_arr[0].hi);

  free(lock.dma_addrs);
  free(lock.dma_lengths);

  // tail
  lock.addr = tail_ptr;
  lock.size = PAGE_SIZE;
  lock.dma_addrs = (uint64_t *)malloc(1 * sizeof(uint64_t));
  lock.dma_lengths = (size_t *)malloc(1 * sizeof(size_t));

  ioctl(fd_o, IOCTL_XDMA_GPU_BYP, &lock);

  h_t_arr[1].lo = lock.dma_addrs[0];
  h_t_arr[1].hi = (uint32_t)(lock.dma_addrs[0] >> 32);
  h_t_arr[1].len = lock.dma_lengths[0];
  write_reg(stAddrDesc.tail_lo, 4, h_t_arr[1].lo);
  write_reg(stAddrDesc.tail_hi, 4, h_t_arr[1].hi);

  free(lock.dma_addrs);
  free(lock.dma_lengths);

  uint32_t offset = 0;
  offset = (5 + ptr_num) * 4;

  // map the gpu buffers
  for (int i = 0; i < ptr_num; i++)
  {
    lock.addr = ptr_arr[i];
    lock.size = gpu_bank_size;
    lock.dma_addrs = (uint64_t *)malloc(map_num * sizeof(uint64_t));
    lock.dma_lengths = (size_t *)malloc(map_num * sizeof(size_t));

    ioctl(fd_i, IOCTL_XDMA_GPU_BYP, &lock);

    write_reg(stAddrDesc.group_offset[i], 4, offset);
    offset += 4 + 12 * map_num;

    write_reg(stAddrDesc.group[i].desc_num, 4, map_num);
    for (int j = 0; j < map_num; j++)
    {
      write_reg(stAddrDesc.group[i].desc_list[j].remote_addr_lo, 4,
                lock.dma_addrs[j]);
      write_reg(stAddrDesc.group[i].desc_list[j].remote_addr_hi, 4,
                lock.dma_addrs[j] >> 32);
      write_reg(stAddrDesc.group[i].desc_list[j].len, 4, lock.dma_lengths[j]);
    }

    free(lock.dma_addrs);
    free(lock.dma_lengths);
  }

  free(h_t_arr);

  // strart byp
  rv_clear_sr();
  rv_launch_desc();
  //   std::cout << "start byp" << std::endl;
  return 0;
}

void fpgaLauchKernel(int *buffer_sizes, int *buffer_kinds, void **ptrs, int ptr_num)
{
  pl_init();
  rv_init();
  uint32_t addr = 0x20000000;
  uint64_t *host_ddr = (uint64_t *)malloc(2 * 1024);
  size_t info_size = 0;

  for (int i = 0; i < ptr_num; i++)
  {
    switch (buffer_kinds[i])
    {
    case 0:
      std::cout << "uint8" << std::endl;
      if ((info_size % sizeof(uint8_t)) != 0)
      {
        info_size += (sizeof(uint8_t) - (info_size % sizeof(uint8_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(uint8_t *)((uint64_t)host_ddr | info_size) = *(uint8_t *)(ptrs[i]);
      info_size += sizeof(uint8_t);
      break;

    case 1:
      std::cout << "uint16" << std::endl;
      if ((info_size % sizeof(uint16_t)) != 0)
      {
        info_size += (sizeof(uint16_t) - (info_size % sizeof(uint16_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(uint16_t *)((uint64_t)host_ddr | info_size) = *(uint16_t *)(ptrs[i]);
      info_size += sizeof(uint16_t);
      break;

    case 2:
      std::cout << "uint32" << std::endl;
      if ((info_size % sizeof(uint32_t)) != 0)
      {
        info_size += (sizeof(uint32_t) - (info_size % sizeof(uint32_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(uint32_t *)((uint64_t)host_ddr | info_size) = *(uint32_t *)(ptrs[i]);
      info_size += sizeof(uint32_t);
      break;

    case 3:
      std::cout << "uint64" << std::endl;
      if ((info_size % sizeof(uint64_t)) != 0)
      {
        info_size += (sizeof(uint64_t) - (info_size % sizeof(uint64_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(uint64_t *)((uint64_t)host_ddr | info_size) = *(uint64_t *)(ptrs[i]);
      info_size += sizeof(uint64_t);
      break;

    case 4:
      std::cout << "int8" << std::endl;
      if ((info_size % sizeof(int8_t)) != 0)
      {
        info_size += (sizeof(int8_t) - (info_size % sizeof(int8_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(int8_t *)((uint64_t)host_ddr | info_size) = *(int8_t *)(ptrs[i]);
      info_size += sizeof(int8_t);
      break;

    case 5:
      std::cout << "int16" << std::endl;
      if ((info_size % sizeof(int16_t)) != 0)
      {
        info_size += (sizeof(int16_t) - (info_size % sizeof(int16_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(int16_t *)((uint64_t)host_ddr | info_size) = *(int16_t *)(ptrs[i]);
      info_size += sizeof(int16_t);
      break;

    case 6:
      std::cout << "int32" << std::endl;
      if ((info_size % sizeof(int32_t)) != 0)
      {
        info_size += (sizeof(int32_t) - (info_size % sizeof(int32_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(int32_t *)((uint64_t)host_ddr | info_size) = *(int32_t *)(ptrs[i]);
      info_size += sizeof(int32_t);
      break;

    case 7:
      std::cout << "int64" << std::endl;
      if ((info_size % sizeof(int64_t)) != 0)
      {
        info_size += (sizeof(int64_t) - (info_size % sizeof(int64_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(int64_t *)((uint64_t)host_ddr | info_size) = *(int64_t *)(ptrs[i]);
      info_size += sizeof(int64_t);
      break;

    case 9:
      std::cout << "float32" << std::endl;
      if ((info_size % sizeof(float)) != 0)
      {
        info_size += (sizeof(float) - (info_size % sizeof(float)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(float *)((uint64_t)host_ddr | info_size) = *(float *)(ptrs[i]);
      info_size += sizeof(float);
      break;

    case 10:
      std::cout << "float64" << std::endl;
      if ((info_size % sizeof(double)) != 0)
      {
        info_size += (sizeof(double) - (info_size % sizeof(double)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(double *)((uint64_t)host_ddr | info_size) = *(double *)(ptrs[i]);
      info_size += sizeof(double);
      break;

    case 11:
      std::cout << "handle" << std::endl;
      if ((info_size % sizeof(uint32_t)) != 0)
      {
        info_size += (sizeof(uint32_t) - (info_size % sizeof(uint32_t)));
      }
      std::cout << "offset : " << info_size << std::endl;
      *(uint32_t *)((uint64_t)host_ddr | info_size) = *(uint32_t *)(ptrs[i]);
      info_size += sizeof(uint32_t);
      break;

    default:
      break;
    }
    int fd_oo = open("/dev/xdma0_h2c_1", O_WRONLY);
    pwrite(fd_oo, host_ddr, info_size, addr);
  }
  rv_launch_desc();
}

int fpga_sync()
{
  uint32_t res;
  res = 1;
  while ((res & 0x1) == 1)
  {
    std::cout << "rv still working..." << std::endl;
    sleep(1);
    read_bram_reg(REG_HIPU_SR, 4, &res);
    std::cout << "res updated:" << res << std::endl;
  }
  std::cout << "rv is idle" << std::endl;
  return 0;
}