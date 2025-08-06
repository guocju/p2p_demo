// tvm target: c -keys=cpu 
#define TVM_EXPORTS
#include "tvm/runtime/c_runtime_api.h"
#include "tvm/runtime/c_backend_api.h"
#include <math.h>
#include <stdbool.h>
static void* __tvm_set_device_packed = NULL;
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL int32_t fpga_process(void* args, int32_t* arg_type_ids, int32_t num_args, void* out_ret_value, int32_t* out_ret_tcode, void* resource_handle);
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL void fpga_process_kernel_1(int32_t* col_idx_l_buffer, int32_t* col_idx_s_buffer, float* data_buffer, int32_t* indices_buffer, int32_t* indptr_buffer, int32_t* row_idx_l_buffer, int32_t* row_idx_s_buffer, int32_t* status_l, int32_t* status_s, float* val_l_buffer, float* val_s_buffer, int32_t nnz4all, int32_t row_add_one, int64_t row_l, int64_t row_s);
#ifdef __cplusplus
extern "C"
#endif
TVM_DLL int32_t fpga_process(void* args, int32_t* arg_type_ids, int32_t num_args, void* out_ret_value, int32_t* out_ret_tcode, void* resource_handle) {
  TVMValue stack[8];
  void* stack_tcode = stack;
  TVMValue stack_1[16];
  void* stack_value = stack_1;
  int32_t indptr_code = arg_type_ids[0];
  int32_t indices_code = arg_type_ids[1];
  int32_t data_code = arg_type_ids[2];
  int32_t row_idx_s_code = arg_type_ids[3];
  int32_t col_idx_s_code = arg_type_ids[4];
  int32_t val_s_code = arg_type_ids[5];
  int32_t row_idx_l_code = arg_type_ids[6];
  int32_t col_idx_l_code = arg_type_ids[7];
  int32_t val_l_code = arg_type_ids[8];
  void* indptr = (((TVMValue*)args)[0].v_handle);
  void* indices = (((TVMValue*)args)[1].v_handle);
  void* data = (((TVMValue*)args)[2].v_handle);
  void* row_idx_s = (((TVMValue*)args)[3].v_handle);
  void* col_idx_s = (((TVMValue*)args)[4].v_handle);
  void* val_s = (((TVMValue*)args)[5].v_handle);
  void* row_idx_l = (((TVMValue*)args)[6].v_handle);
  void* col_idx_l = (((TVMValue*)args)[7].v_handle);
  void* val_l = (((TVMValue*)args)[8].v_handle);
  void* fpga_process_indptr_shape = (((DLTensor*)indptr)[0].shape);
  int32_t row_add_one = ((int32_t)((int64_t*)fpga_process_indptr_shape)[0]);
  void* fpga_process_indptr_strides = (((DLTensor*)indptr)[0].strides);
  int32_t dev_id = (((DLTensor*)indptr)[0].device.device_id);
  void* indptr_buffer = (((DLTensor*)indptr)[0].data);
  void* fpga_process_indices_shape = (((DLTensor*)indices)[0].shape);
  int32_t nnz4all = ((int32_t)((int64_t*)fpga_process_indices_shape)[0]);
  void* fpga_process_indices_strides = (((DLTensor*)indices)[0].strides);
  void* indices_buffer = (((DLTensor*)indices)[0].data);
  void* fpga_process_data_shape = (((DLTensor*)data)[0].shape);
  void* fpga_process_data_strides = (((DLTensor*)data)[0].strides);
  void* data_buffer = (((DLTensor*)data)[0].data);
  void* fpga_process_row_idx_s_shape = (((DLTensor*)row_idx_s)[0].shape);
  int64_t row_s = ((int64_t*)fpga_process_row_idx_s_shape)[0];
  void* fpga_process_row_idx_s_strides = (((DLTensor*)row_idx_s)[0].strides);
  void* row_idx_s_buffer = (((DLTensor*)row_idx_s)[0].data);
  void* fpga_process_col_idx_s_shape = (((DLTensor*)col_idx_s)[0].shape);
  void* fpga_process_col_idx_s_strides = (((DLTensor*)col_idx_s)[0].strides);
  void* col_idx_s_buffer = (((DLTensor*)col_idx_s)[0].data);
  void* fpga_process_val_s_shape = (((DLTensor*)val_s)[0].shape);
  void* fpga_process_val_s_strides = (((DLTensor*)val_s)[0].strides);
  void* val_s_buffer = (((DLTensor*)val_s)[0].data);
  void* fpga_process_row_idx_l_shape = (((DLTensor*)row_idx_l)[0].shape);
  int64_t row_l = ((int64_t*)fpga_process_row_idx_l_shape)[0];
  void* fpga_process_row_idx_l_strides = (((DLTensor*)row_idx_l)[0].strides);
  void* row_idx_l_buffer = (((DLTensor*)row_idx_l)[0].data);
  void* fpga_process_col_idx_l_shape = (((DLTensor*)col_idx_l)[0].shape);
  void* fpga_process_col_idx_l_strides = (((DLTensor*)col_idx_l)[0].strides);
  void* col_idx_l_buffer = (((DLTensor*)col_idx_l)[0].data);
  void* fpga_process_val_l_shape = (((DLTensor*)val_l)[0].shape);
  void* fpga_process_val_l_strides = (((DLTensor*)val_l)[0].strides);
  void* val_l_buffer = (((DLTensor*)val_l)[0].data);
  if (!(fpga_process_indptr_strides == NULL)) {
  }
  if (!(fpga_process_indices_strides == NULL)) {
  }
  if (!(fpga_process_data_strides == NULL)) {
  }
  if (!(fpga_process_row_idx_s_strides == NULL)) {
  }
  if (!(fpga_process_col_idx_s_strides == NULL)) {
  }
  if (!(fpga_process_val_s_strides == NULL)) {
  }
  if (!(fpga_process_row_idx_l_strides == NULL)) {
  }
  if (!(fpga_process_col_idx_l_strides == NULL)) {
  }
  if (!(fpga_process_val_l_strides == NULL)) {
  }
  (((TVMValue*)stack_value)[0].v_int64) = ((int64_t)17);
  ((int32_t*)stack_tcode)[0] = 0;
  (((TVMValue*)stack_value)[1].v_int64) = ((int64_t)dev_id);
  ((int32_t*)stack_tcode)[1] = 0;
  if (__tvm_set_device_packed == NULL) {
    if (TVMBackendGetFuncFromEnv(__tvm_module_ctx, "__tvm_set_device", &__tvm_set_device_packed) != 0) {
      return -1;
    }
  }
  TVMValue ret_val;
  int ret_type_code;
  if (TVMFuncCall(__tvm_set_device_packed, (TVMValue*) stack_value, (int*) stack_tcode, 2, &ret_val, &ret_type_code) != 0) {
    return -1;
  }
  void* status_l = TVMBackendAllocWorkspace(17, dev_id, (uint64_t)8, 0, 32);
  if (status_l == NULL) {
    return -1;
  }
  void* status_s = TVMBackendAllocWorkspace(17, dev_id, (uint64_t)8, 0, 32);
  if (status_s == NULL) {
    return -1;
  }
  (((TVMValue*)stack_value)[0].v_handle) = col_idx_l_buffer;
  if (col_idx_l_buffer == NULL) {
    ((int32_t*)stack_tcode)[0] = 4;
  } else {
    ((int32_t*)stack_tcode)[0] = 3;
  }
  (((TVMValue*)stack_value)[1].v_handle) = col_idx_s_buffer;
  if (col_idx_s_buffer == NULL) {
    ((int32_t*)stack_tcode)[1] = 4;
  } else {
    ((int32_t*)stack_tcode)[1] = 3;
  }
  (((TVMValue*)stack_value)[2].v_handle) = data_buffer;
  if (data_buffer == NULL) {
    ((int32_t*)stack_tcode)[2] = 4;
  } else {
    ((int32_t*)stack_tcode)[2] = 3;
  }
  (((TVMValue*)stack_value)[3].v_handle) = indices_buffer;
  if (indices_buffer == NULL) {
    ((int32_t*)stack_tcode)[3] = 4;
  } else {
    ((int32_t*)stack_tcode)[3] = 3;
  }
  (((TVMValue*)stack_value)[4].v_handle) = indptr_buffer;
  if (indptr_buffer == NULL) {
    ((int32_t*)stack_tcode)[4] = 4;
  } else {
    ((int32_t*)stack_tcode)[4] = 3;
  }
  (((TVMValue*)stack_value)[5].v_handle) = row_idx_l_buffer;
  if (row_idx_l_buffer == NULL) {
    ((int32_t*)stack_tcode)[5] = 4;
  } else {
    ((int32_t*)stack_tcode)[5] = 3;
  }
  (((TVMValue*)stack_value)[6].v_handle) = row_idx_s_buffer;
  if (row_idx_s_buffer == NULL) {
    ((int32_t*)stack_tcode)[6] = 4;
  } else {
    ((int32_t*)stack_tcode)[6] = 3;
  }
  (((TVMValue*)stack_value)[7].v_handle) = status_l;
  if (status_l == NULL) {
    ((int32_t*)stack_tcode)[7] = 4;
  } else {
    ((int32_t*)stack_tcode)[7] = 3;
  }
  (((TVMValue*)stack_value)[8].v_handle) = status_s;
  if (status_s == NULL) {
    ((int32_t*)stack_tcode)[8] = 4;
  } else {
    ((int32_t*)stack_tcode)[8] = 3;
  }
  (((TVMValue*)stack_value)[9].v_handle) = val_l_buffer;
  if (val_l_buffer == NULL) {
    ((int32_t*)stack_tcode)[9] = 4;
  } else {
    ((int32_t*)stack_tcode)[9] = 3;
  }
  (((TVMValue*)stack_value)[10].v_handle) = val_s_buffer;
  if (val_s_buffer == NULL) {
    ((int32_t*)stack_tcode)[10] = 4;
  } else {
    ((int32_t*)stack_tcode)[10] = 3;
  }
  (((TVMValue*)stack_value)[11].v_int64) = ((int64_t)nnz4all);
  ((int32_t*)stack_tcode)[11] = 0;
  (((TVMValue*)stack_value)[12].v_int64) = ((int64_t)row_add_one);
  ((int32_t*)stack_tcode)[12] = 0;
  (((TVMValue*)stack_value)[13].v_int64) = row_l;
  ((int32_t*)stack_tcode)[13] = 0;
  (((TVMValue*)stack_value)[14].v_int64) = row_s;
  ((int32_t*)stack_tcode)[14] = 0;
  TVMValue ret_val_1;
  int ret_type_code_1;
  if (fpga_process_kernel_1( (TVMValue*) stack_value , (int*) stack_tcode, 14, &ret_val_1, &ret_type_code_1, NULL) != 0){
    return -1;
  }
  if (TVMBackendFreeWorkspace(17, dev_id, status_s) != 0) {
    return -1;
  }
  if (TVMBackendFreeWorkspace(17, dev_id, status_l) != 0) {
    return -1;
  }
  return 0;
}

#ifdef __cplusplus
extern "C"
#endif
TVM_DLL void fpga_process_kernel_1(int32_t* col_idx_l_buffer, int32_t* col_idx_s_buffer, float* data_buffer, int32_t* indices_buffer, int32_t* indptr_buffer, int32_t* row_idx_l_buffer, int32_t* row_idx_s_buffer, int32_t* status_l, int32_t* status_s, float* val_l_buffer, float* val_s_buffer, int32_t nnz4all, int32_t row_add_one, int64_t row_l, int64_t row_s) {
  status_s[0] = 0;
  status_s[1] = 0;
  status_l[0] = 0;
  status_l[1] = 0;
  for (int32_t row_idx = 0; row_idx < (row_add_one - 1); ++row_idx) {
    int32_t nnz = (indptr_buffer[(row_idx + 1)] - indptr_buffer[row_idx]);
    if (nnz <= 35) {
      for (int32_t idx = 0; idx < nnz; ++idx) {
        int32_t from_idx = (indptr_buffer[row_idx] + idx);
        if ((idx % 9) == 0) {
          row_idx_s_buffer[status_s[0]] = row_idx;
          status_s[0] = (status_s[0] + 1);
        }
        int32_t x = ((status_s[1] % 9) + (9 & ((status_s[1] % 9) >> 31)));
        int32_t y = ((status_s[1] / 9) + ((status_s[1] % 9) >> 31));
        int64_t cse_var_1 = ((((int64_t)x) * row_s) + ((int64_t)y));
        col_idx_s_buffer[cse_var_1] = indices_buffer[from_idx];
        val_s_buffer[cse_var_1] = data_buffer[from_idx];
        status_s[1] = (status_s[1] + 1);
      }
      if (0 < ((status_s[1] % 9) + (9 & ((status_s[1] % 9) >> 31)))) {
        for (int32_t i = 0; i < (9 - ((status_s[1] % 9) + (9 & ((status_s[1] % 9) >> 31)))); ++i) {
          int32_t x_1 = ((status_s[1] % 9) + (9 & ((status_s[1] % 9) >> 31)));
          int32_t y_1 = ((status_s[1] / 9) + ((status_s[1] % 9) >> 31));
          int64_t cse_var_2 = ((((int64_t)x_1) * row_s) + ((int64_t)y_1));
          col_idx_s_buffer[cse_var_2] = 0;
          val_s_buffer[cse_var_2] = 0.000000e+00f;
          status_s[1] = (status_s[1] + 1);
        }
      }
    } else {
      for (int32_t idx_1 = 0; idx_1 < nnz; ++idx_1) {
        int32_t from_idx_1 = (indptr_buffer[row_idx] + idx_1);
        if ((idx_1 % 17) == 0) {
          row_idx_l_buffer[status_l[0]] = row_idx;
          status_l[0] = (status_l[0] + 1);
        }
        int32_t x_2 = ((status_l[1] / 17) + ((status_l[1] % 17) >> 31));
        int32_t y_2 = ((status_l[1] % 17) + (17 & ((status_l[1] % 17) >> 31)));
        int64_t cse_var_3 = ((((int64_t)x_2) * (int64_t)17) + ((int64_t)y_2));
        col_idx_l_buffer[cse_var_3] = indices_buffer[from_idx_1];
        val_l_buffer[cse_var_3] = data_buffer[from_idx_1];
        status_l[1] = (status_l[1] + 1);
      }
      if (0 < ((status_l[1] % 17) + (17 & ((status_l[1] % 17) >> 31)))) {
        for (int32_t i_1 = 0; i_1 < (17 - ((status_l[1] % 17) + (17 & ((status_l[1] % 17) >> 31)))); ++i_1) {
          int32_t x_3 = ((status_l[1] / 17) + ((status_l[1] % 17) >> 31));
          int32_t y_3 = ((status_l[1] % 17) + (17 & ((status_l[1] % 17) >> 31)));
          int64_t cse_var_4 = ((((int64_t)x_3) * (int64_t)17) + ((int64_t)y_3));
          col_idx_l_buffer[cse_var_4] = 0;
          val_l_buffer[cse_var_4] = 0.000000e+00f;
          status_l[1] = (status_l[1] + 1);
        }
      }
    }
  }
}

