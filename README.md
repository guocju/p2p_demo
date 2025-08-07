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

```bash
cd cag_relax/
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

