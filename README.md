# p2p项目说明

```bash
/p2p_demo
    /cag_relax 	#TVM环境
    /driver 	#xdma驱动
    /riscv		#riscv上面运行的c代码
    	/output 	#riscv编译结果,bin文件存放位置
    	/compiler #riscv交叉编译器
    	/add_one	#add_one test对应的riscv代码
    	/spmv		#空
    /utils		#fpga的各种接口,链接到tvm runtime
    /tvm_tests	#tvm的测试脚本
    	/add_one 	#add_one的测试脚本
    	/spmv		#spmv预处理的测试脚本
```

## step 1 安装xdma驱动

```bash
cd driver
sudo insmod xdma.ko
```

/dev/目录下面出现xdma_h2c_0, xdma_c2h_0, xdma_user_0等设备文件就可以。

## step 2 安装p2p工具

```bash
cd utils
sudo bash build.sh
```

## step 3 安装TVM环境

安装tvm之前，需要在/cag_relax/3rdparty/dlpack/include/dlpack.h:91行加上kDLFPGA = 17

```bash
cd cag_relax/
git switch feature/fpga
# 如果不需要gpu, 修改config.cmake的USE_CUDA=OFF
# 如果需要gpu, 修改config.cmake的USE_CUDA=ON
cp cmake/config.cmake build/
cd build/
cmake ..
make
# 配置环境变量
export TVM_HOME=/path/to/cag_relax/
export PYTHONPATH=:$TVM_HOME/python${PYTHONPATH-}
```

## step 4 配置riscv工具链

```bash
# 将riscv交叉编译工具添加到PATH目录下面
export PATH=$PATH:/home/....../p2p_demo/riscv/compiler/bin
# 编译riscv c代码
cd riscv/add_one/
make
```

## step 5 运行tvm test示例

```bash
cd tvm_tests/add_one
python3 only_fpga.py
```

## tvm 参数顺序

```python
@T.prim_func
def add_one_fpga(
	a_handle: T.handle,
	x: T.int32,
	out_handle: T.handle
) -> None:
	T.func_attr({
		"global_symbol": "add_one_fpga",
		"tir.noalias": True,
		"target": fpga_target
	})
	n = T.int32()
	A = T.match_buffer(a_handle, (n,), dtype="uint8")
	Out = T.match_buffer(out_handle, (n,), dtype="uint8")
	T.attr(T.target("fpga"), "target", 0)

	for i in T.serial(0, n):
		Out[i] = A[i] + x
```
以这个tir function为例，它有3个显式输入a_handle、x、out_handle和一个隐式输入n。

在kernel下发的时候，tvm会对参数进行打包，重新排序。

排序规则是先排handle类型，再排常数类型，类型内部再按照A-Z的首字母ASCII顺序排列。

这个kernel最终参数的顺序就是a_handle, out_handle, n, x