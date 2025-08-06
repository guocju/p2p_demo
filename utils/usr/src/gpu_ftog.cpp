//引用头文件
#include "cuda.h"
//#include "gpuctl.h"
#include "cdev_sgdma.h"

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


// #define IOCTL_XDMA_WRITE          _IOR('q', 8, struct xdma_data_ioctl *)
# define N 256 * 1024 

typedef struct parallel_write_arg{
  int fd;
  unsigned int cmd;
  struct xdma_phy_addr_ioctl io;
} parallel_write;

typedef struct parallel_read_arg{
  int fd;
  int* value;
  size_t size;
} parallel_read;

void* write_test(void* p){
  parallel_write* datas;
  datas = (parallel_write*)p;
  write(datas->fd, datas->cmd, datas->data);
  return NULL;
}

void* read_test(void* p){
  parallel_read* datas;
  datas = (parallel_read*)p;
  read(datas->fd, datas->value, datas->size);
  return NULL;
}

int fpga2gpu(int fd, uint64_t phy_addr, uint64_t size, ){
  struct xdma_phy_addr_ioctl io;
  io.phy_addr = phy_addr;
  io.size = size;
	io.direction = DIRECTION_TO_PHY_ADDR;
	return ioctl(fd, IOCTL_XDMA_PHY_ADDR, &io);
}



//-----------------------------------------------------------------------------

void checkError(CUresult status);
bool wasError(CUresult status);

//-----------------------------------------------------------------------------

int main(){
  // ------------------------------------------------------------
  // Open XDMA channels
  xdma_phy_addr_ioctl io;
  parallel_write write_data;
  parallel_read read_data;
  int fd_o = open("/dev/xdma0_h2c_0", O_WRONLY);
  if (fd_o < 0){
    printf("Can't open H2C.\n");
    return -1;
  }

  int fd_i = open("/dev/xdma0_c2h_0", O_RDONLY);
  if (fd_i < 0){
    printf("Can't open C2H.\n");
    return -1;
  }
  
  int *arr1, *arr2;
  size_t n_byte = N * sizeof(int);
  int diff = 0;
  arr1 = (int *)malloc(n_byte);
  arr2 = (int *)malloc(n_byte);
  for (int i = 0; i < N; i++){
    arr1[i] = (int)(i + 1);
  }

  io.phy_addr = 0xf8000000;
	io.size = n_byte;
	io.ep_addr = 0;
	io.direction = DIRECTION_FROM_PHY_ADDR;

  write_data = { fd_o, IOCTL_XDMA_PHY_ADDR, &io};

    auto start = std::chrono::system_clock::now();
    ioctl(fd_o, IOCTL_XDMA_PHY_ADDR, &io);
    //read( fd_i, &arr2[0], n_byte);
    auto stop = std::chrono::system_clock::now();
    auto dur = (stop-start);
    auto msec = std::chrono::duration_cast<std::chrono::milliseconds>(dur).count();
    for(int i = 1000;  i < 1030 ; i++){
      printf("%d -> %d\n", arr1[i], arr2[i]);
    }
    std::cout << "# size:" << N  << " " << msec << " ms. "
	      << (double)N*4000.0f/(msec) << " B/s, " << "\n";
    std::cout << N*4 << " " << ((double) N * 4000.0f  /(msec))/(1000 * 1000 * 1000) << " \n";
  

  printf("done!\n");

  close(fd_o);
  close(fd_i);
  
  return 0;
}
