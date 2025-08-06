#include "gpu_read_memory.cuh"
#include <cstdio>
#define CHECK_CUDA_ERROR(call) { \
    cudaError_t err = call; \
    if (err != cudaSuccess) { \
        fprintf(stderr, "CUDA Error in %s:%d: %s\n", __FILE__, __LINE__, cudaGetErrorString(err)); \
        exit(1); \
    } \
}
    __global__ void readGPUMemory(int *d_data, int N) {
    int idx = threadIdx.x + blockIdx.x * blockDim.x;
    if (idx > (N - 100) && idx < N) {
        printf("GPU Read: data[%d] = %d\n", idx, d_data[idx]);
    }
}


// 提供 C++ 兼容的封装函数
extern "C" void launchReadGPUMemory(int *gpu_ptr, int N) {
    int blockSize = 256;
    int numBlocks = (N + blockSize - 1) / blockSize;
    readGPUMemory<<<numBlocks, blockSize>>>(gpu_ptr, N);
    CHECK_CUDA_ERROR(cudaGetLastError());
    CHECK_CUDA_ERROR(cudaDeviceSynchronize());
    //cudaDeviceSynchronize();  // 确保内核执行完成
}
