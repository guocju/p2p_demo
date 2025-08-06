#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <cstdlib>
#define BAR_ADDRESS 0xf8000000  // 替换为实际的 BAR 地址
#define BAR_SIZE 0x10000        // 替换为实际的 BAR 大小

# define N  1024

typedef struct parallel_write_arg {
  int fd;
  int *value;
  size_t size;
} parallel_write;

void* write_test(void* p) {
  parallel_write* datas;
  datas = (parallel_write*)p;
  printf("Writing to address: %p\n", datas->value);  // 打印写入的数据地址
  write(datas->fd, datas->value, datas->size);
  return NULL;
}

int main() {
    int fd;
    void *bar_base;
    volatile unsigned int *mapped_addr;

    // 打开 PCIe 设备文件
    fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Failed to open /dev/mem");
        return -1;
    }

    parallel_write write_data;
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

    int *arr1;
    size_t n_byte = N * sizeof(int);
    arr1 = (int *)malloc(n_byte);

    // 填充数据
    for (int i = 0; i < N; i++) {
        arr1[i] = (int)(i + 1);
    }

    // 写操作
    printf("Writing to device...\n");
    write_data = { fd_o, &arr1[0], n_byte };
    printf("Write data address: %p\n", &arr1[0]);  // 打印数据地址
    write(fd_o, &arr1[0], n_byte);

    // 映射 BAR 地址空间
    bar_base = mmap(NULL, BAR_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, BAR_ADDRESS);
    if (bar_base == MAP_FAILED) {
        perror("Failed to mmap");
        close(fd);
        return -1;
    }

    mapped_addr = (volatile unsigned int *)bar_base;

    printf("Write complete. Verifying...\n");
    printf("BAR base address: %p\n", bar_base);
    printf("Mapped address range: %p - %p\n", bar_base, bar_base + BAR_SIZE);

    // 强制刷新缓存并同步内存
    __sync_synchronize();  // 内存屏障，确保数据写入

    // 再次读取以验证写入
    printf("Value at offset 0x0: 0x%x\n", mapped_addr[0]);

    // 释放映射
    munmap(bar_base, BAR_SIZE);
    close(fd);
    close(fd_o);
    close(fd_i);

    return 0;
}
