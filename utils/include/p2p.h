#include <cuda.h>

int transfer_desc(CUdeviceptr head_ptr, CUdeviceptr tail_ptr,
                  CUdeviceptr *ptr_arr, uint32_t ptr_num, size_t gpu_bank_size,
                  int fd_i, int fd_o);
void memory_unmap();
void fpgaLauchKernel(int *buffer_sizes, int *buffer_kinds, void **ptrs, int ptr_num);
int fpga_sync();