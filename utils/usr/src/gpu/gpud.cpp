#include <iostream>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cuda_runtime.h>
#include <chrono>

// 定义HBM的地址空间起始位置和大小，根据实际的PCIe BAR地址更新
//#define HBM_SIZE 1024 * 1024 * 1024 // 假设我们映射1GB的HBM空间
//#define HBM_BASE_ADDRESS 0xf8000000  // 设置为Region 0的起始地址
#define FPGA_BAR_SIZE 1024 * 1024 * 32 // 假设我们映射1MB的FPGA内存
#define FPGA_BAR_BASE_ADDRESS 0xf8000000  // 使用实际的FPGA BAR地址

int main() {
    using namespace std::chrono;

    // 1. 打开/dev/mem文件，获取文件描述符
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd == -1) {
        perror("无法打开/dev/mem");
        return -1;
    }
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


    // 2. 使用mmap()将HBM物理地址映射到用户空间
    //void *hbm_ptr = mmap(NULL, HBM_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, HBM_BASE_ADDRESS);
    void *hbm_ptr = mmap(NULL, FPGA_BAR_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, FPGA_BAR_BASE_ADDRESS);
    if (hbm_ptr == MAP_FAILED) {
        perror("无法映射HBM地址空间");
        close(fd);
        return -1;
    }

    // 3. 分配GPU内存，并初始化数据
    int data_size = 1024 * 1024  * 32; // 传输32MB的数据
    void *gpu_data;
    cudaError_t cuda_status = cudaMalloc(&gpu_data, data_size);
    if (cuda_status != cudaSuccess) {
        std::cerr << "无法分配GPU内存: " << cudaGetErrorString(cuda_status) << std::endl;
        munmap(hbm_ptr, FPGA_BAR_SIZE);
        close(fd);
        return -1;
    }

    // 初始化GPU数据（在实际程序中可以填充实际数据）
    cuda_status = cudaMemset(gpu_data, 1, data_size);
    if (cuda_status != cudaSuccess) {
        std::cerr << "无法初始化GPU内存: " << cudaGetErrorString(cuda_status) << std::endl;
        cudaFree(gpu_data);
        munmap(hbm_ptr, FPGA_BAR_SIZE);
        close(fd);
        return -1;
    }
    // 4. 测量 GPU 到 FPGA 的数据传输时间
    auto start_write = high_resolution_clock::now();
    cuda_status = cudaMemcpy(hbm_ptr, gpu_data, data_size, cudaMemcpyDeviceToHost);
    auto end_write = high_resolution_clock::now();

    if (cuda_status != cudaSuccess) {
        std::cerr << "cudaMemcpy失败: " << cudaGetErrorString(cuda_status) << std::endl;
        cudaFree(gpu_data);
        munmap(hbm_ptr, FPGA_BAR_SIZE);
        close(fd);
        return -1;
    }
    auto duration_write = duration_cast<microseconds>(end_write - start_write).count();
    double bandwidth_write = (data_size / (1024.0 * 1024.0)) / (duration_write / 1e6);
    std::cout << "GPU 到 FPGA 传输带宽: " << bandwidth_write << " MB/s" << std::endl;
    
    // 5. 测量 FPGA 到 GPU 的数据传输时间
    auto start_read = high_resolution_clock::now();
    cuda_status = cudaMemcpy(gpu_data, hbm_ptr, data_size, cudaMemcpyHostToDevice);
    auto end_read = high_resolution_clock::now();

    if (cuda_status != cudaSuccess) {
        std::cerr << "cudaMemcpy失败: " << cudaGetErrorString(cuda_status) << std::endl;
        cudaFree(gpu_data);
        munmap(hbm_ptr, FPGA_BAR_SIZE);
        close(fd);
        return -1;
    }
// 计算读带宽
    auto duration_read = duration_cast<microseconds>(end_read - start_read).count();
    double bandwidth_read = (data_size / (1024.0 * 1024.0)) / (duration_read / 1e6);
    std::cout << "FPGA 到 GPU 传输带宽: " << bandwidth_read << " MB/s" << std::endl;


    // 5. 释放资源

    cudaFree(gpu_data);
    munmap(hbm_ptr, FPGA_BAR_SIZE);
    close(fd);

    return 0;
}
