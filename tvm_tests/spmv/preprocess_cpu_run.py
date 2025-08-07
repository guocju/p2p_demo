# test c codegen
import tvm
from tvm import tir
from tvm.script import tir as T
import numpy as np
from scipy.sparse import random

length_threshold = 35
long_align_val = 17
short_align_val = 9
target = tvm.target.Target("llvm")
val_dtype = "float32"
np.random.seed(42) # 设置种子，确保cpu和fpga生成同样的随机矩阵

def calculate_row_number(indptr: np.ndarray, length_threshold: int,
                        short_align_val: int, long_align_val: int):
    """
    输入：
        indptr: np.ndarray, shape = (num_rows + 1,)
        length_threshold: 判定是否为短行的阈值
        short_align_val: 短行向上对齐单位
        long_align_val: 长行向上对齐单位

    返回：
        short_count, long_count : 分别是短行和长行的数量
    """
    num_rows = len(indptr) - 1
    short_kernel_count = 0
    long_kernel_count = 0

    for row_idx in range(num_rows):
        nnz = indptr[row_idx + 1] - indptr[row_idx]
        if nnz <= length_threshold:
            aligned = (nnz + short_align_val - 1) // short_align_val
            short_kernel_count += aligned
        else:
            aligned = (nnz + long_align_val - 1) // long_align_val
            long_kernel_count += aligned

    return short_kernel_count, long_kernel_count

@tvm.script.ir_module
class MyModule:
    @T.prim_func
    def fpga_process(
        indptr: T.handle,
        indices: T.handle,
        data: T.handle,
        row_idx_s: T.handle,
        col_idx_s: T.handle,
        val_s: T.handle,
        row_idx_l: T.handle,
        col_idx_l: T.handle,
        val_l: T.handle,
    ) -> None:
        T.func_attr({"target": T.target("llvm"), "func_type": "preprocess"})
        row_add_one = T.int32() # 原始矩阵的行数+1
        nnz4all = T.int32() # 原始矩阵的非零元总数
        indptr_buffer = T.match_buffer(indptr, (row_add_one,), "int32") # CSR
        indices_buffer = T.match_buffer(indices, (nnz4all,), "int32") # CSR
        data_buffer = T.match_buffer(data, (nnz4all,), val_dtype) # CSR
        row_s = T.int64() # 重排之后的短行行数
        row_l = T.int64() # 重排之后的长行行数

        row_idx_s_buffer = T.match_buffer(row_idx_s, (row_s,), "int32") # 短行，记录重排之后的行和原始行索引的对应
        col_idx_s_buffer = T.match_buffer(col_idx_s, (short_align_val, row_s), "int32") # 短行，row-major 记录每一个元素的列索引
        val_s_buffer = T.match_buffer(val_s, (short_align_val, row_s), val_dtype) # 短行，row-major, 记录每一个元素的数值
        status_s = T.alloc_buffer((2,), "int32")

        row_idx_l_buffer = T.match_buffer(row_idx_l, (row_l,), "int32") # 长行
        col_idx_l_buffer = T.match_buffer(col_idx_l, (row_l, long_align_val), "int32") # 长行，col-major
        val_l_buffer = T.match_buffer(val_l, (row_l, long_align_val), val_dtype) # 长行，col-major
        status_l = T.alloc_buffer((2,), "int32")
#--------------------------------------------------------------------------------------------------------------------
        # host和target的分界线，真正的kernel有15个输入，除了显示的9个，还有隐式声明的6个：
        # row_add_one, nnz4all, row_s, row_l, status_s, status_l。
        # 其中row_s和row_l没有参与后面的计算，可以忽略。
        row: T.int32 = row_add_one - 1
        with T.block("initialize"):
            status_s[0] = 0 # 记录重排后的行数
            status_s[1] = 0 # 记录一个短行元素的个数，主要是控制padding停止
            status_l[0] = 0
            status_l[1] = 0

        with T.block("compute"):
            # 遍历每一行
            for row_idx in T.serial(row):
                # 计算当前行的nnz数量
                nnz = indptr_buffer[row_idx + 1] - indptr_buffer[row_idx]
                # 小于阈值，判为短行
                if nnz <= T.int32(length_threshold):
                    # 遍历每一个非零元，填充row_idx_s_buffer，col_idx_s_buffer，val_s_buffer
                    for idx in T.serial(nnz):
                        from_idx: T.int32 = indptr_buffer[row_idx] + idx # 计算该非零元在CSR格式的data_buffer和indices_buffer里面的真实索引from_idx
                        # 每一次索引被重排长度整除，row_idx_s_buffer记录一次
                        if idx % T.int32(short_align_val) == 0:
                            row_idx_s_buffer[status_s[0]] = row_idx
                            status_s[0] += 1
                        # 根据重排因子short_align_val，计算重排之后所在的行数列数
                        x: T.int32 = T.floormod(status_s[1], T.int32(short_align_val)) # x = status_s[1] % short_align_val
                        y: T.int32 = T.floordiv(status_s[1], T.int32(short_align_val)) # y = status_s[1] // short_align_val
                        col_idx_s_buffer[x, y] = indices_buffer[from_idx] # 从CSR格式读取列索引，填充到ELL短行的对应位置
                        val_s_buffer[x, y] = data_buffer[from_idx] # 从CSR格式读取数值，填充到ELL短行的对应位置
                        status_s[1] += 1

                    if status_s[1] % T.int32(short_align_val) != 0: #无法整除，需要padding
                        # 计算需要补多少零
                        for i in T.serial(
                            T.int32(short_align_val)
                            - T.floormod(status_s[1], T.int32(short_align_val))
                        ):
                            x: T.int32 = T.floormod(status_s[1], T.int32(short_align_val))
                            y: T.int32 = T.floordiv(status_s[1], T.int32(short_align_val))
                            col_idx_s_buffer[x, y] = 0 # 和上面写入数据一样，为后面的空余补上0
                            val_s_buffer[x, y] = 0
                            status_s[1] += 1
                # 大于阈值，判为长行
                else:
                    for idx in T.serial(nnz):
                        from_idx: T.int32 = indptr_buffer[row_idx] + idx
                        if idx % T.int32(long_align_val) == 0:
                            row_idx_l_buffer[status_l[0]] = row_idx
                            status_l[0] += 1
                        # 长行的填充逻辑和短行基本一致，区别在于长行是col-major，计算坐标(x,y)时需要颠倒过来
                        x: T.int32 = T.floordiv(status_l[1], T.int32(long_align_val))
                        y: T.int32 = T.floormod(status_l[1], T.int32(long_align_val))
                        col_idx_l_buffer[x, y] = indices_buffer[from_idx]
                        val_l_buffer[x, y] = data_buffer[from_idx]
                        status_l[1] += 1

                    if status_l[1] % T.int32(long_align_val) != 0:
                        for i in T.serial(
                            T.int32(long_align_val)
                            - T.floormod(status_l[1], T.int32(long_align_val))
                        ):
                            x: T.int32 = T.floordiv(status_l[1], T.int32(long_align_val))
                            y: T.int32 = T.floormod(status_l[1], T.int32(long_align_val))
                            col_idx_l_buffer[x, y] = 0
                            val_l_buffer[x, y] = 0
                            status_l[1] += 1

mod = MyModule
dev = tvm.cpu()
ex = tvm.build(mod, target=target)
# 生成一个随机稀疏矩阵，稀疏率为 0.05（即大约5%的元素非零）
sparse_matrix = random(100, 500, density=0.05, format='csr', dtype="float32", data_rvs=np.random.randn)
# 转换为 CSR 格式的三个向量
data = sparse_matrix.data        # 非零元素的值
indices = sparse_matrix.indices  # 每个非零元素对应的列索引
indptr = sparse_matrix.indptr    # 每一行在 data/indices 中的起始位置

row_s, row_l = calculate_row_number(indptr, length_threshold, short_align_val, long_align_val)
# input
indptr_tvm = tvm.nd.array(indptr)
indices_tvm = tvm.nd.array(indices)
data_tvm = tvm.nd.array(data)
# output
row_idx_s = tvm.nd.empty((row_s,), dtype="int32")
col_idx_s = tvm.nd.empty((short_align_val, row_s), dtype="int32")
val_s = tvm.nd.empty((short_align_val, row_s), val_dtype)
row_idx_l = tvm.nd.empty((row_l,), dtype="int32")
col_idx_l = tvm.nd.empty((row_l, long_align_val), dtype="int32")
val_l = tvm.nd.empty((row_l, long_align_val), val_dtype)

ex["fpga_process"](indptr_tvm,indices_tvm,data_tvm,row_idx_s,col_idx_s,val_s,row_idx_l,col_idx_l,val_l)
print("row_idx_s:", row_idx_s)
print("col_idx_s:", col_idx_s)
print("val_s:", val_s)
print("row_idx_l:", row_idx_l)
print("col_idx_l:", col_idx_l)
print("val_l:", val_l)