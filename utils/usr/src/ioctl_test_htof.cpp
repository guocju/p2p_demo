#include "cuda.h"
#include "gpuctl.h"
#include "cdev_sgdma.h"
//#include "libxdma.h"

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
/*
struct desc_array_user {
    uint32_t src_addr_lo;
    uint32_t src_addr_hi;
    uint32_t dst_addr_lo;
    uint32_t dst_addr_hi;
    uint32_t bytes;
};*/
struct desc_array {
    uint32_t bytes;
    uint32_t src_addr_lo;
    uint32_t src_addr_hi;
    uint32_t dst_addr_lo;
    uint32_t dst_addr_hi;
} __attribute__((aligned(32), packed));  // 按32字节对齐并确保内存布局一致
struct desc_array_info {
    void *desc_array;
    size_t array_size;
};

//struct desc_array {
//    int desc_count;  // 描述符数量
//    struct xdma_desc descs[0];  // 描述符数组
//};


// #define IOCTL_XDMA_WRITE          _IOR('q', 8, struct xdma_data_ioctl *)
# define N 32 * 1024
typedef struct xdma_data_ioctl{
  int *value;
  size_t count;
} dma_read;

typedef struct parallel_read_arg{
  int fd;
  unsigned int cmd;
  gpudma_lock_t *data;
} parallel_read;

typedef struct parallel_write_arg{
  int fd;
  int *value;
  size_t size;
} parallel_write;

void* write_test(void* p){
  parallel_write* datas;
  datas = (parallel_write*)p;
  write(datas->fd, datas->value, datas->size);
  return NULL;
}

void* read_test(void* p){
  parallel_read* datas;
  datas = (parallel_read*)p;
  ioctl(datas->fd, datas->cmd, datas->data);
  return NULL;
}


//-----------------------------------------------------------------------------

void checkError(CUresult status);
bool wasError(CUresult status);

//-----------------------------------------------------------------------------

int main(){
  // ------------------------------------------------------------
  // Open XDMA channels
  struct desc_array_info info;
  gpudma_lock_t lock;
  /* gpudma_unlock_t unlock;
  gpudma_state_t *state = 0;
  int statesize = 0;
  int res = -1;
  unsigned count=0x0A000000;
  */
  // char hoge[20];
  // char *addr;
  // dma_read tmp;//  = { addr, sizeof(hoge)};
  pthread_t thr1, thr2;
  parallel_write write_data;
  parallel_read read_data;
  int min_size = 16;
  int max_iter = 1000;
  static const int bufsize = 512*1024*1024;

  int fd_o = open("/dev/xdma0_h2c_1", O_WRONLY);
  if (fd_o < 0){
    printf("Can't open H2C.\n");
    return -1;
  }

  int fd = open("/dev/mem", O_WRONLY);
  if (fd < 0){
    printf("Can't open H2C.\n");
    return -1;
  }

  int fd_i = open("/dev/xdma0_c2h_1", O_RDONLY);
  if (fd_i < 0){
    printf("Can't open C2H.\n");
    return -1;
  }

  checkError(cuInit(0));
  
  int total = 0;
  checkError(cuDeviceGetCount(&total));
  fprintf(stderr, "# Total devices: %d\n", total);
  
  CUdevice device;
  checkError(cuDeviceGet(&device, 0));
  
  char name[256];
  checkError(cuDeviceGetName(name, 256, device));
  fprintf(stderr, "# Select device: %s\n", name);
  
  // get compute capabilities and the devicename
  /*int major = 0, minor = 0;
  checkError( cuDeviceComputeCapability(&major, &minor, device));
  fprintf(stderr, "Compute capability: %d.%d\n", major, minor);
  */
  size_t global_mem = 0;
  checkError( cuDeviceTotalMem(&global_mem, device));
  fprintf(stderr, "# Global memory: %llu MB\n", (unsigned long long)(global_mem >> 20));
  if(global_mem > (unsigned long long)4*1024*1024*1024L)
    fprintf(stderr, "# 64-bit Memory Address support\n");
  
  CUcontext  context;
  checkError(cuCtxCreate(&context, 0, device));
  

  size_t n_byte = N * sizeof(int);
  size_t offset = 1024 * 1024 ; // 示例固定偏移量
  int diff = 0;
  int *arr1 = nullptr;
  int *arr2 = nullptr;
  int *arr3 = nullptr;
  int result = posix_memalign((void**)&arr1, 64 * 1024, n_byte);  
  posix_memalign((void**)&arr2, 64 * 1024, n_byte);  
  posix_memalign((void**)&arr3, 64 * 1024, n_byte);  


  //arr1 = (int *)malloc(n_byte );
  //arr2 = (int *)malloc(n_byte);
  //arr3 = (int *)malloc(n_byte);
  for (int i = 0; i < N; i++){
    arr1[i] = (int)(i + 1544);
  }
  arr1[0] = 1;
  CUdeviceptr dptr = 0;

//DMA中分配buffer
	//uint64_t size = 33554432;
	char *buffer = NULL;
	char *allocated = NULL;
  unsigned int flag = 1;
  //posix_memalign((void **)&allocated, 4096 /*alignment */ , n_byte + 4096);
	if (!allocated) {
		fprintf(stderr, "OOM %lu.\n", n_byte + 4096);
		//rc = -ENOMEM;
		//goto out;
	}
	buffer = allocated; 

  // unsigned char *h_odata = NULL;
  // h_odata = (unsigned char *)malloc(size);
  

  fprintf(stderr, "# Press enter to lock\n");
  
  /*cuMemcpyDtoH(&arr2[0], (unsigned long long)dptr, n_byte);
  for (int i = 0; i < N; i++){
    printf("%d -> %d\n",arr1[i], arr2[i]);
    }*/
  lock.addr = dptr;
  lock.size = n_byte;

  // ------------------------------------------------------------
  // Send and receive data
  
  // strcpy(hoge, "Hello");
  // addr = &(hoge[0]);
  // (fd_o, IOCTL_XDMA_WRITE, &tmp);
  // ioctl(fd_i, IOCTL_XDMA_GPU_READ, &lock);
  // printf("Hello\n");
  // printf("addr: %ld, size: %ld\n", lock.addr, lock.size);
  // tmp = { &lock, &arr1[0], (size_t)N };
  // ioctl(fd_i, IOCTL_XDMA_WRITE, &tmp);
  
  // tmp = { &arr1[0], n_byte };// { &arr1[0], (size_t)N };
  write_data = { fd_o, &arr1[0], n_byte};
  int desc_count = (N/(16 * 1024) + 1);

    
  // 简单分配内存
  struct desc_array *desc_array = new struct desc_array[desc_count];
  if (!desc_array) {
    printf("Memory allocation failed\n");
    return -1;
  }

  // 清零内存
  info.desc_array = &desc_array[0]; // 指向描述符数组的首元素
  info.array_size = sizeof(struct desc_array) * desc_count; // 计算描述符数组的大小
  //info.addr =  &arr1[0];
  //info.len = 


  // 打印地址以验证
  printf("User buffer address: %p,desc_count: %p \n", desc_array, desc_count);
  //size_t buffer_size = sizeof(struct desc_array) * desc_count ;
  printf("User buffer address: %p, desc_count: %d, buffer size: %zu bytes\n", desc_array, desc_count, info.array_size);
  //read_data = { fd_i, IOCTL_XDMA_GPU_READ, &lock};
  /*
  pthread_create( &thr1, NULL, write_test, (void*)(&write_data));
  pthread_create( &thr2, NULL, read_test, (void*)(&read_data));
  pthread_join(thr1, NULL);
  pthread_join(thr2, NULL);
  pthread_detach(thr1);
  pthread_detach(thr2);
  */
  //write( fd_o, &arr1[0], n_byte);  
  //int test_bytes =  1024 * 1024 ;
// write( fd_o, &arr1[0], n_byte);  
  int rc;

  auto start = std::chrono::system_clock::now();
    rc = lseek(fd_o, 0, SEEK_SET);
    //rc = write(fd_o, &arr1[0], n_byte);  
    //size_t offset = 1024 * 1024 *1024; // 示例固定偏移量
    rc =  write(fd_o, &arr1[0], n_byte);  
    //read(fd_i, &arr2[0], n_byte);
    ioctl(fd_i, IOCTL_XDMA_DESC_ARRAY_GET, &info);
    read(fd_i, &arr2[0], n_byte);
  // 假设 mmap 成功映射并返回了一个指向用户空间地址的指针
  //struct desc_array *desc_array_user = (struct desc_array *)mapped_addr;
    //int desc_count = 64;  // 假设你有10个描述符，实际值应根据情况设置

  // 遍历并打印描述符信息
    for (int i = 0; i < desc_count; i++) {
        printf("Descriptor[%d]:\n", i);
        printf("  Bytes: %u\n", desc_array[i].bytes);
        printf("  Source: 0x%x:%08x\n", 
               desc_array[i].src_addr_hi, 
               desc_array[i].src_addr_lo);
        printf("  Destination: 0x%x:%08x\n", 
               desc_array[i].dst_addr_hi, 
               desc_array[i].dst_addr_lo);
    }


    //int num_descs = xfer->desc_num;  // 描述符数量

    // 打印描述符内容
    //print_xdma_desc(desc_array, 200);
    /*
    struct xdma_desc *desc_array = (struct xdma_desc *)(arr[1] + offset);
            // 打印从内核态返回的描述符数据
        for (int i = 0; i < num_descs; i++) {

        printf("Descriptor %d: src_addr_lo=0x%x, dst_addr_lo=0x%x, src_addr_hi=0x%x, dst_addr_hi=0x%x, desc_len=%x\n",
       i, desc_array[i].src_addr_lo, desc_array[i].dst_addr_lo,
       desc_array[i].src_addr_hi, desc_array[i].dst_addr_hi, desc_array[i].bytes);
}*/
    //write(fd_o, buffer, n_byte); 
  //read( fd_i, &arr2[0], test_bytes); 

 // printf("%d\n\r", arr2[test_bytes/4-1]);
  auto stop = std::chrono::system_clock::now();
    
  auto dur = (stop-start);
  auto msec = std::chrono::duration_cast<std::chrono::milliseconds>(dur).count();

  std::cout << msec << " ms. " << "\n";
  double bandwidth = static_cast<double>(n_byte) *10 / msec * 1000 / (1024 * 1024 * 1024);    
  std::cout << msec << " ms. bandwidth = " << bandwidth << " GB/s\n";
  
  for (int i = (N-25); i < N; i++){
      printf("# %d -> %d\n", arr1[i], arr2[i]);
  }
  
  /*
  for (int i = 0; i < N;i++){
    if(arr1[i]!=arr2[i] + diff){
      diff = arr1[i] - arr2[i];
      printf("%d -> %d\n", arr1[i], arr2[i]);
    }
  }
  */
  // ------------------------------------------------------------
  // Clean up
  
  /*
 do_unlock:
  unlock.handle = lock.handle;
  res = ioctl(fd, IOCTL_GPUMEM_UNLOCK, &unlock);
  if(res < 0) {
    fprintf(stderr, "Error in IOCTL_GPUDMA_MEM_UNLOCK\n");
    goto do_free_state;
  }
  */
  // do_free_state:
  // free(state);
  // do_free_attr:
  // flag = 0;
 

 
  close(fd_o);
  close(fd_i);
  
  return 0;
}

// -------------------------------------------------------------------

void checkError(CUresult status)
{
    if(status != CUDA_SUCCESS) {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status,&perrstr);
        if(ok == CUDA_SUCCESS) {
            if(perrstr) {
                fprintf(stderr, "info: %s\n", perrstr);
            } else {
                fprintf(stderr, "info: unknown error\n");
            }
        }
        exit(0);
    }
}

//-----------------------------------------------------------------------------

bool wasError(CUresult status)
{
    if(status != CUDA_SUCCESS) {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status,&perrstr);
        if(ok == CUDA_SUCCESS) {
            if(perrstr) {
                fprintf(stderr, "info: %s\n", perrstr);
            } else {
                fprintf(stderr, "info: unknown error\n");
            }
        }
        return true;
    }
    return false;
}

//-----------------------------------------------------------------------------
