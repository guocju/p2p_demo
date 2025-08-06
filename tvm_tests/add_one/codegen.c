// tvm target: c -keys=cpu 
#define TVM_EXPORTS
#include "tvm/runtime/c_runtime_api.h"
#include "tvm/runtime/c_backend_api.h"
#include <math.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL int32_t add_one_fpga(void* args, int32_t* arg_type_ids, int32_t num_args, void* out_ret_value, int32_t* out_ret_tcode, void* resource_handle);
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL void add_one_fpga_kernel_1(int32_t* A, int32_t* Out, int32_t n, int32_t x);
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL int32_t add_one_fpga(void* args, int32_t* arg_type_ids, int32_t num_args, void* out_ret_value, int32_t* out_ret_tcode, void* resource_handle) {
  TVMValue stack[3];
  void* stack_tcode = stack;
  TVMValue stack_1[5];
  void* stack_value = stack_1;
  int32_t a_handle_code = arg_type_ids[0];
  int32_t x_code = arg_type_ids[1];
  int32_t out_handle_code = arg_type_ids[2];
  void* a_handle = (((TVMValue*)args)[0].v_handle);
  int32_t x = ((int32_t)(((TVMValue*)args)[1].v_int64));
  void* out_handle = (((TVMValue*)args)[2].v_handle);
  void* add_one_fpga_a_handle_shape = (((DLTensor*)a_handle)[0].shape);
  int32_t n = ((int32_t)((int64_t*)add_one_fpga_a_handle_shape)[0]);
  void* add_one_fpga_a_handle_strides = (((DLTensor*)a_handle)[0].strides);
  int32_t dev_id = (((DLTensor*)a_handle)[0].device.device_id);
  void* A = (((DLTensor*)a_handle)[0].data);
  void* add_one_fpga_out_handle_shape = (((DLTensor*)out_handle)[0].shape);
  void* add_one_fpga_out_handle_strides = (((DLTensor*)out_handle)[0].strides);
  void* Out = (((DLTensor*)out_handle)[0].data);
  if (!(add_one_fpga_a_handle_strides == NULL)) {
  }
  if (!(add_one_fpga_out_handle_strides == NULL)) {
  }
  (((TVMValue*)stack_value)[0].v_handle) = A;
  if (A == NULL) {
    ((int32_t*)stack_tcode)[0] = 4;
  } else {
    ((int32_t*)stack_tcode)[0] = 3;
  }
  (((TVMValue*)stack_value)[1].v_handle) = Out;
  if (Out == NULL) {
    ((int32_t*)stack_tcode)[1] = 4;
  } else {
    ((int32_t*)stack_tcode)[1] = 3;
  }
  (((TVMValue*)stack_value)[2].v_int64) = ((int64_t)n);
  ((int32_t*)stack_tcode)[2] = 0;
  (((TVMValue*)stack_value)[3].v_int64) = ((int64_t)x);
  ((int32_t*)stack_tcode)[3] = 0;
  TVMValue ret_val;
  int ret_type_code;
  if (add_one_fpga_kernel_1( (TVMValue*) stack_value , (int*) stack_tcode, 3, &ret_val, &ret_type_code, NULL) != 0){
    return -1;
  }
  return 0;
}

#ifdef __cplusplus
extern "C"
#endif
TVM_DLL void add_one_fpga_kernel_1(int32_t* A, int32_t* Out, int32_t n, int32_t x) {
  for (int32_t i = 0; i < n; ++i) {
    Out[i] = (A[i] + x);
  }
}

