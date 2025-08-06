#include <iostream>
#include <stdio.h>
#include <unistd.h> // for sleep
extern "C"
{
#include "../../host_runtime/include/pcie_rw.h"
#include "../../host_runtime/include/regmap.h"
#include "../../host_runtime/include/hipu.h"
}

#include "cuda.h"
#include "gpuctl.h"
#include "cdev_sgdma.h"
// #include "libxdma.h"

#include <chrono>
#include <iostream>
#include <dirent.h>
#include <signal.h>
#include <pthread.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h> // posix_memalign()
#include <stdio.h>
#include <unistd.h> // read(), open(), close()
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/uio.h>
#include <linux/ioctl.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <cuda_runtime.h>

#define DDR_RVCODE_BASE 0x10000000
#define BRAM_SF_BASE 0x00000000
#define BRAM_H2C_RAW_BASE 0x0001_0000
#define BRAM_C2H_RAW_BASE 0x0002_0000

#define DDR_HIPU_CODE_ADDR 0x00000

#define DDR_HIPU_WT_ADDR 0x00100000
#define DDR_HIPU_BS_ADDR 0x00280000
#define DDR_HIPU_CL_ADDR 0x00300000

#define DDR_HIPU_IFM_ADDR 0x03e00000
#define DDR_HIPU_IFM_LEN 0x00000000

#define DDR_HIPU_OFM_ADDR 0x035c0000
#define DDR_HIPU_OFM_LEN 0x00020000

#define REG_HIPU_VENDOR_ID 0xb0
// #define N 1024 * 1024 * 4 max
#define N 1024 * 128

extern struct AddrDesc stAddrDesc;

struct xdma_desc
{
    uint32_t bytes;
    uint32_t src_addr_lo;
    uint32_t src_addr_hi;
    uint32_t dst_addr_lo;
    uint32_t dst_addr_hi;
} __attribute__((aligned(32), packed)); // 按32字节对齐并确保内存布局一致

struct dsc_byp_array
{
    uint64_t remote_addr_lo; // remote 地址低32位
    uint64_t remote_addr_hi; // remote 地址高32位
    size_t len;              // 描述符长度
};
struct desc_array_info
{
    void *desc_array;
    size_t array_size;
};

// 或根据需要动态分配

typedef struct parallel_write_arg
{
    int fd;
    unsigned int cmd;
    gpudma_lock_t *data;
} parallel_write;

typedef struct BUFFER
{
    unsigned char *data; // 数据指针和大小
    long size;
} BUFFER;

void *write_test(void *p)
{
    parallel_write *datas;
    datas = (parallel_write *)p;
    ioctl(datas->fd, datas->cmd, datas->data);
    return NULL;
}

// 文件加载和内存管理

BUFFER new_binary_from_file(const char *filename)
{
    FILE *fptr = fopen(filename, "rb");
    long fsize;
    unsigned char *data;
    fseek(fptr, 0, SEEK_END);
    fsize = ftell(fptr);
    rewind(fptr);
    // data = (unsigned char *) malloc(fsize);
    posix_memalign((void **)&data, 4096 /*alignment */, fsize + 4096); // 分配对其的内存空间
    if (!data)
    {
        fprintf(stderr, "OOM %lu.\n", fsize + 4096);
    }
    // printf("Memory alloced at : 0x%p \n",data);
    fread(data, 1, fsize, fptr);
    BUFFER buff = {.data = data, .size = fsize}; // 将文件内容打包到buffer结构体中
    return buff;
}

// 向指定地址写入数据，打印调试信息
void write_reg(uint32_t addr, uint32_t len, uint32_t value)
{
    uint32_t local_value = value;
    std::cout << std::showbase << std::hex << "write " << addr << " value " << value << std::endl;
    write_bram_reg(addr, len, &local_value);
}
// 读取寄存器，每次4byte
int hipu_init_read_id()
{
    uint32_t bram_reg;
    // read_bram_reg(REG_HIPU_VENDOR_ID, 4, &bram_reg);

    read_bram_reg(0xb0, 4, &bram_reg);
    std::cout << std::showbase << std::hex << bram_reg << std::endl;
    read_bram_reg(0xb4, 4, &bram_reg);
    std::cout << std::showbase << std::hex << bram_reg << std::endl;
    read_bram_reg(0xb8, 4, &bram_reg);
    std::cout << std::showbase << std::hex << bram_reg << std::endl;
    read_bram_reg(0xbc, 4, &bram_reg);
    std::cout << std::showbase << std::hex << bram_reg << std::endl;
    read_bram_reg(0xc0, 4, &bram_reg);
    std::cout << std::showbase << std::hex << bram_reg << std::endl;

    std::cout << "hipu_init_read_id finished" << std::endl;
    return 0;
}

unsigned char *dump_memory_to_file(uint32_t offset, uint32_t size)
{
    // printf("dump %08x, size %08x\n", offset, size);
    unsigned char *output_buffer;
    posix_memalign((void **)&output_buffer, 4096 /*alignment */, size + 4096);
    read_plddr(offset, size, output_buffer);
    return output_buffer;
    // for(int i = 0; i< 1024; i++)
    // {
    //     printf("%02x ", *(output_buffer+i));
    // }
    // FILE * fp = fopen(filename, "wb");
    // if(fp)
    // {
    // 	printf("succeed to open file\n");
    // 	fwrite(output_buffer, sizeof(char), size, fp);
    // 	fclose(fp);
    // }
    // else
    // {
    // 	printf("error open file %s\n", filename);
    // }
    // free(output_buffer);
}

// 读取内存块 指定offser和size 以4KB块读取，
void dump_4kb_to_file(uint32_t offset, uint32_t size, const char *filename)
{

    // cnt number of 4KiB block
    uint32_t numBlock = size >> 12;
    uint32_t last_blk = size & 0xfff;

    numBlock = last_blk ? numBlock + 1 : numBlock;
    // first, read data per 4KiB
    unsigned char *output_array[numBlock];
    for (uint32_t i = 0; i < numBlock; i++)
    {
        output_array[i] = dump_memory_to_file(offset + 0x1000 * i, 0x1000);
    }

    // then, concat all data
    FILE *fp = fopen(filename, "wb");
    if (fp)
    {
        printf("succeed to open file\n");
        if (last_blk)
        {
            for (uint32_t i = 0; i < numBlock - 1; i++)
            {
                fwrite(output_array[i], sizeof(char), 4096, fp);
            }
            fwrite(output_array[numBlock - 1], sizeof(char), last_blk, fp);
        }
        else
        {
            for (uint32_t i = 0; i < numBlock; i++)
            {
                fwrite(output_array[i], sizeof(char), 4096, fp);
            }
        }
        fclose(fp);
    }
    else
    {
        printf("error open file %s\n", filename);
    }
}

void assign_addr_desc(uint32_t group_num, uint32_t desc_num)
{
    uint32_t addr = BASE_ADDR;
    stAddrDesc.group_num = addr;
    addr += 4;
    printf("assign addr desc: group_num: %02x, desc_num: %02x\n", group_num, desc_num);
    stAddrDesc.head_lo = addr;
    addr += 4;
    printf("assign head_lo      0x%x\n", stAddrDesc.head_lo);

    stAddrDesc.head_hi = addr;
    addr += 4;
    printf("assign head_hi      0x%x\n",stAddrDesc.head_hi);

    stAddrDesc.tail_lo = addr;
    addr += 4;
    printf("assign tail_lo      0x%x\n",stAddrDesc.tail_lo);

    stAddrDesc.tail_hi = addr;
    addr += 4;
    printf("assign head_hi      0x%x\n",stAddrDesc.tail_hi);
    printf("assign group_num 0x%02x\n", stAddrDesc.group_num);
    for (uint32_t i = 0; i < group_num; i++)
    {
        stAddrDesc.group_offset[i] = addr;
        addr += 4;
        printf("assign group_offset[0x%02x] 0x%x\n", i, stAddrDesc.group_offset[i]);

    }

    for (uint32_t i = 0; i < group_num; i++)
    {

        stAddrDesc.group[i].desc_num = addr;
        addr += 4;
        printf("assign group[0x%02x].desc_num         0x%x\n", i, stAddrDesc.group[i].desc_num);

        for (uint32_t j = 0; j < desc_num; j++)
        {
            stAddrDesc.group[i].desc_list[j].remote_addr_lo = addr;
            addr += 4;
            printf("assign group[0x%02x].desc_list[0x%02x].remote_addr_lo 0x%x\n", i, j, stAddrDesc.group[i].desc_list[j].remote_addr_lo);

            stAddrDesc.group[i].desc_list[j].remote_addr_hi = addr;
            addr += 4;
            printf("assign group[0x%02x].desc_list[0x%02x].remote_addr_hi 0x%x\n", i, j, stAddrDesc.group[i].desc_list[j].remote_addr_hi);

            stAddrDesc.group[i].desc_list[j].len = addr;
            addr += 4;
            printf("assign group[0x%02x].desc_list[0x%02x].remote_len     0x%x\n", i, j, stAddrDesc.group[i].desc_list[j].len);
        }
    }
}
void gpu_mem_free(void)
{
    int fd_i = open("/dev/xdma0_c2h_1", O_WRONLY);

    ioctl(fd_i, IOCTL_XDMA_GPU_FREE);
}

int rv_clear_sr()
{
    std::cout << "rv_clear_sr" << std::endl;
    write_reg(REG_HIPU_SR, 4, 0x0);
    return 0;
}

int rv_pool_sr()
{
    std::cout << "rv_pool_sr" << std::endl;
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

int host_load_desc_param()
{
    std::cout << "host_load_desc_param" << std::endl;
    return 0;
}

int rv_launch_desc()
{
    std::cout << "rv_launch_desc" << std::endl;
    write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
    write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x1);

    //write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
    return 0;
}

int check_inference_done()
{
    uint32_t done;
    done = 0x0;
    while ((done & 0x1) != 0x1)
    {
        read_bram_reg(REG_HIPU_SR, 4, &done);
    }
    std::cout << "waiting" << std::showbase << std::hex << done << std::endl;
    return 0;
}

void rv_init()
{
    uint32_t read;

    std::cout << "rv_init()" << std::endl;
    // stop riscv

    std::cout << "start rv" << std::endl;
    write_reg(0x1c, 4, 0);

    BUFFER rvcode_buffer = new_binary_from_file("../input/swf_code.bin");
    write_plddr(DDR_RVCODE_BASE, rvcode_buffer.size, rvcode_buffer.data);
    // write_plddr(0x0000, 0x1000, rvcode_buffer.data);
    free(rvcode_buffer.data);
    std::cout << "write rvcode to " << std::showbase << std::hex << DDR_RVCODE_BASE << " len:" << rvcode_buffer.size << std::endl;

    std::cout << "start rv" << std::endl;
    write_reg(0x1c, 4, 1);

    read_bram_reg(0x00100, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
    read_bram_reg(0x00104, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
    read_bram_reg(0x00108, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
    read_bram_reg(0x0010c, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
}

void checkError(CUresult status);
bool wasError(CUresult status);

#define PAGE_SIZE 64 * 1024 // 64KB

struct head_tail
{
    uint32_t lo;
    uint32_t hi;
    size_t len;
};

struct head_tail *h_t_arr = (struct head_tail *)malloc(2 * sizeof(struct head_tail));
// start byp:1.map the GPU Mem 2.pass the desc 3.start the xdma
int transfer_desc(CUdeviceptr head_ptr, CUdeviceptr tail_ptr, CUdeviceptr *ptr_arr, uint32_t ptr_num, size_t gpu_bank_size, int fd_i, int fd_o)
{
    // if not start rv, no rv_init()
    rv_init();

    // every group is one of the gpu buffers
    uint32_t map_num = ((gpu_bank_size) / (PAGE_SIZE));
    std::cout << map_num << std::endl;
    std::cout << gpu_bank_size << std::endl;
    std::cout << PAGE_SIZE << std::endl;
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
            write_reg(stAddrDesc.group[i].desc_list[j].remote_addr_lo, 4, lock.dma_addrs[j]);
            write_reg(stAddrDesc.group[i].desc_list[j].remote_addr_hi, 4, lock.dma_addrs[j] >> 32);
            write_reg(stAddrDesc.group[i].desc_list[j].len, 4, lock.dma_lengths[j]);
        }

        free(lock.dma_addrs);
        free(lock.dma_lengths);
    }

    free(h_t_arr);

    // strart byp
    rv_clear_sr();
    rv_launch_desc();
    std::cout << "start byp" << std::endl;
    return 0;
}



void read_fpga_ddr_data()
{
    // 读取FPGA DDR数据
    uint32_t offset = 0x00000000; // FPGA DDR基地址
    uint32_t size = N * sizeof(int);

    int *data = (int *)dump_memory_to_file(offset, size);

    // 保存到文件

    FILE *fp = fopen("/home/inspur/p2p/p2p/p2p_byp_dsc/host/yl_demo/ddr_data_cuda.txt", "w");
    if (fp)
    {
        printf("Saving FPGA DDR data to fpga_ddr_data.txt\n");
        for (int i = 0; i < N; i++)
        {
            fprintf(fp, "0x%d\n", data[i]); // 以十六进制格式保存
        }
        fclose(fp);
        printf("Data saved successfully\n");
    }
    else
    {
        printf("Error opening file\n");
    }
    // 打印数据内容
    // printf("FPGA DDR data at 0x%08x:\n", offset);
    // for(int i = N-100; i < N; i++) {
    //   printf("data[%d]: %d (0x%08x)\n", i, data[i], data[i]);
    // }
    free(data);
}

/// @brief 
/// @return 
int main()
{
    uint32_t res;
    int fd_oo = open("/dev/xdma0_h2c_1", O_WRONLY);

    int fd_o = open("/dev/xdma0_h2c_0", O_WRONLY);
    if (fd_o < 0)
    {
        printf("Can't open H2C.\n");
        return -1;
    }

    int fd_i = open("/dev/xdma0_c2h_0", O_WRONLY);
    if (fd_i < 0)
    {
        printf("Can't open H2C.\n");
        return -1;
    }
    pl_init();
    checkError(cuInit(0));

    int total = 0;
    checkError(cuDeviceGetCount(&total));
    fprintf(stderr, "Total devices: %d\n", total);

    CUdevice device;
    checkError(cuDeviceGet(&device, 0));

    char name[256];
    checkError(cuDeviceGetName(name, 256, device));
    fprintf(stderr, "Select device: %s\n", name);

    // get compute capabilities and the devicename
    /*int major = 0, minor = 0;
    checkError( cuDeviceComputeCapability(&major, &minor, device));
    fprintf(stderr, "Compute capability: %d.%d\n", major, minor);
    */
    size_t global_mem = 0;
    checkError(cuDeviceTotalMem(&global_mem, device));
    fprintf(stderr, "Global memory: %llu MB\n", (unsigned long long)(global_mem >> 20)); // Global memory: 45518 MB
    if (global_mem > (unsigned long long)4 * 1024 * 1024 * 1024L)
    {
        fprintf(stderr, "64-bit Memory Address support\n");
    }

    CUcontext context;
    checkError(cuCtxCreate(&context, 0, device));
    CUdeviceptr dptr = 0;
    int *arr2;
    int *arr1 = nullptr;
    size_t n_byte = N * sizeof(int);
    int result = posix_memalign((void **)&arr1, 64 * 1024, n_byte);
    arr2 = (int *)malloc(n_byte/8);
    for (int i = 0; i < N; i++)
    {
        arr1[i] = (int)(i + 300);
    }
    unsigned int flag = 1;

    CUresult status = cuMemAlloc(&dptr, PAGE_SIZE);
    CUdeviceptr dptr1 = 0;
    cuMemAlloc(&dptr1, PAGE_SIZE);
    CUdeviceptr dptr2 = 0;
    cuMemAlloc(&dptr2, PAGE_SIZE);
    CUdeviceptr dptr3 = 0;
    cuMemAlloc(&dptr3, PAGE_SIZE);
    CUdeviceptr gpu_arry[2] = {dptr2, dptr3};

    cuMemcpyHtoD((unsigned long long)dptr, &arr1[0], n_byte);
    status = cuPointerSetAttribute(&flag, CU_POINTER_ATTRIBUTE_SYNC_MEMOPS, dptr);
    write(fd_oo, &arr1[0], n_byte);
    read_fpga_ddr_data();
    // auto start = std::chrono::system_clock::now();
    transfer_desc(dptr, dptr1, gpu_arry, 2, PAGE_SIZE, fd_i, fd_o);
    std::cout << arr1[0] << "   " << arr1[1] << std::endl;


    res = rv_pool_sr();
    std::cout << "rv end!!!!!!!!!!!!!!!!!!" << std::endl;
    cuMemcpyDtoH(&arr2[0], dptr2, (PAGE_SIZE));
    std::cout << arr2[0] << "     " << arr2[1] << std::endl;
    gpu_mem_free();
    cuMemFree(dptr);
    cuMemFree(dptr1);
    cuMemFree(dptr2);
    cuMemFree(dptr3);
    cuCtxDestroy(context);
    close(fd_o);
    close(fd_i);
    close(fd_oo);

    // read_fpga_ddr_data();
    // while(1);
    // sleep(600);
    //  {
    //      rv_pool_idle();
    //      host_load_desc_param();
    //      rv_launch_desc();
    //  }
    //  sleep(60);

    return 0;
}
// -------------------------------------------------------------------

void checkError(CUresult status)
{
    if (status != CUDA_SUCCESS)
    {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status, &perrstr);
        if (ok == CUDA_SUCCESS)
        {
            if (perrstr)
            {
                fprintf(stderr, "info: %s\n", perrstr);
            }
            else
            {
                fprintf(stderr, "info: unknown error\n");
            }
        }
        exit(0);
    }
}

//-----------------------------------------------------------------------------

bool wasError(CUresult status)
{
    if (status != CUDA_SUCCESS)
    {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status, &perrstr);
        if (ok == CUDA_SUCCESS)
        {
            if (perrstr)
            {
                fprintf(stderr, "info: %s\n", perrstr);
            }
            else
            {
                fprintf(stderr, "info: unknown error\n");
            }
        }
        return true;
    }
    return false;
}

//-----------------------------------------------------------------------------
