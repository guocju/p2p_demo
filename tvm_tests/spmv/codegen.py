# test c codegen
import tvm
from tvm import tir
from tvm.script import tir as T
from tvm.relay.backend import Runtime

length_threshold = 35
long_align_val = 17
short_align_val = 9
target = tvm.target.Target("c")
host = tvm.target.Target("c")
runtime = Runtime("crt", {"system-lib": True})
val_dtype = "float32"

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
        T.func_attr({"target": T.target("fpga"), "func_type": "preprocess"})
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
        T.attr(T.target("fpga"), "target", 0)
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


def run_passes(mod):
    mod = tvm.driver.build_module.lower(mod)
    mod = tvm.tir.transform.BindTarget(host)(mod)
    mod = tvm.tir.transform.AnnotateDeviceRegions()(mod)
    mod = tvm.tir.transform.SplitHostDevice()(mod)
    return mod

mod = MyModule
mod = run_passes(mod)

ex = tvm.build(mod, target=target, runtime=runtime)

imported_module = ex.imported_modules[0]
with open("preprocess.c", "w") as f:
    f.write(imported_module.get_source("c"))