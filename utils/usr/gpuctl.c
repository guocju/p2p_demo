#include "cuda.h"
#include "gpuctl.h"
#include "cdev_sgdma.h"

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

#define N 1024 * 1024 * 1024

typedef struct xdma_data_ioctl{
    int *value;
    size_t count;
} dma_read;

typedef struct parallel_gpu_arg{
    int fd;
    unsigned int cmd;
    gpudma_lock_t *data;
} parallel_gpu;

typedef struct parallel_write_arg{
    int fd;
    int *value;
    size_t size;
} parallel_arg;

__global__ void gpu_memory_operation(int *arr, size_t size){
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < size) {
        arr[idx] = idx + 1;
    }
}

void* gpu_test(void* p){
    parallel_gpu* datas;
    datas = (parallel_gpu*)p;
    ioctl(datas->fd, datas->cmd, datas->data);
    return NULL;
}

void checkError(CUresult status);
bool wasError(CUresult status);

int main(){
    struct timespec start, end;
    gpudma_lock_t lock;

    pthread_t thr1, thr2;
    parallel_gpu gpu_data;
    
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

    checkError(cuInit(0));

    int total = 0;
    checkError(cuDeviceGetCount(&total));
    fprintf(stderr, "Total devices: %d\n", total);

    CUdevice device;
    checkError(cuDeviceGet(&device, 0));

    char name[256];
    checkError(cuDeviceGetName(name, 256, device));
    fprintf(stderr, "Select device: %s\n", name);

    size_t global_mem = 0;
    checkError(cuDeviceTotalMem(&global_mem, device));
    fprintf(stderr, "Global memory: %llu MB\n", (unsigned long long)(global_mem >> 20));

    CUcontext context;
    checkError(cuCtxCreate(&context, 0, device));

    int *arr;
    size_t n_byte = N * sizeof(int);
    cudaMalloc(&arr, n_byte);

    dim3 threadsPerBlock(256);
    dim3 numBlocks((N + threadsPerBlock.x - 1) / threadsPerBlock.x);
    
    gpu_memory_operation<<<numBlocks, threadsPerBlock>>>(arr, N);
    cudaDeviceSynchronize();
    
    CUdeviceptr dptr = 0;
    unsigned int flag = 1;
    
    CUresult status = cuMemAlloc(&dptr, n_byte);
    if(wasError(status)) {
        goto do_free_context;
    }
    
    fprintf(stderr, "Allocate memory address: 0x%llx\n", (unsigned long long)dptr);

    status = cuPointerSetAttribute(&flag, CU_POINTER_ATTRIBUTE_SYNC_MEMOPS, dptr);
    if(wasError(status)) {
        goto do_free_memory;
    }
    
    fprintf(stderr, "Press enter to lock\n");

    lock.addr = dptr;
    lock.size = n_byte;

    gpu_data = { fd_i, IOCTL_XDMA_GPU_READ, &lock };

    clock_gettime(CLOCK_MONOTONIC, &start);
    pthread_create(&thr1, NULL, gpu_test, (void*)(&gpu_data));
    pthread_join(thr1, NULL);
    pthread_detach(thr1);

    gpu_data = { fd_o, IOCTL_XDMA_GPU_WRITE, &lock };

    clock_gettime(CLOCK_MONOTONIC, &end);
    pthread_create(&thr2, NULL, gpu_test, (void*)(&gpu_data));
    pthread_join(thr2, NULL);
    pthread_detach(thr2);

    cuCtxSynchronize();

    double time_taken = (end.tv_sec - start.tv_sec) + (end.tv_nsec - start.tv_nsec) / 1e9;
    printf("Transfer time: %f seconds\n", time_taken);

    cuMemFree(dptr);
    
do_free_context:
    cuCtxDestroy(context);
    close(fd_o);
    close(fd_i);

    return 0;
}

void checkError(CUresult status){
    if(status != CUDA_SUCCESS) {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status, &perrstr);
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

bool wasError(CUresult status){
    if(status != CUDA_SUCCESS) {
        const char *perrstr = 0;
        CUresult ok = cuGetErrorString(status, &perrstr);
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
