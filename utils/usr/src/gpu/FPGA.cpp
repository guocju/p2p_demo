#include <iostream>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cstring>

// 定义FPGA的PCIe BAR地址和映射大小，根据实际情况调整
#define FPGA_BAR_SIZE 1024 * 1024 // 假设我们映射1MB的FPGA内存
#define FPGA_BAR_BASE_ADDRESS 0xf8000000  // 使用实际的FPGA BAR地址

int main() {
    // 1. 打开 /dev/mem 文件
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd == -1) {
        perror("无法打开 /dev/mem");
        return -1;
    }

    // 2. 使用 mmap 将FPGA的物理地址映射到用户空间
    void *fpga_ptr = mmap(NULL, FPGA_BAR_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, FPGA_BAR_BASE_ADDRESS);
    if (fpga_ptr == MAP_FAILED) {
        perror("无法映射FPGA地址空间");
        close(fd);
        return -1;
    }

    // 3. 读写FPGA内存
    // 假设FPGA内存的前4字节为一个计数器，以下示例将读取并打印该值，然后增加其值并写回。

    // 读取FPGA内存中的计数值
    uint32_t *counter_ptr = reinterpret_cast<uint32_t*>(fpga_ptr);
    uint32_t counter_value = *counter_ptr;
    std::cout << "当前FPGA计数器值: " << counter_value << std::endl;

    // 将计数值增加1并写回FPGA
    counter_value += 10284;
    *counter_ptr = counter_value;
    std::cout << "更新后的FPGA计数器值: " << counter_value << std::endl;

    // 4. 解除映射并关闭文件
    if (munmap(fpga_ptr, FPGA_BAR_SIZE) == -1) {
        perror("无法解除映射");
    }
    close(fd);

    return 0;
}
