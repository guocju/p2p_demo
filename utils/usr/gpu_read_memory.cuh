#ifndef GPU_READ_MEMORY_CUH
#define GPU_READ_MEMORY_CUH

#include <cuda_runtime.h>

// 声明 GPU 端的 __global__ 内核函数
__global__ void readGPUMemory(int *d_data, int N);

// 声明 CPU 端的 C++ 封装函数
extern "C" void launchReadGPUMemory(int *gpu_ptr, int N);

#endif // GPU_READ_MEMORY_CUH
