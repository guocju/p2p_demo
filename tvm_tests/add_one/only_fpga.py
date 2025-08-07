import os
import tvm
import numpy as np
import tvm.testing
from tvm import relax, tir
from tvm.script import relax as R, tir as T, ir as I
from tvm.ir.global_info import VDevice
from typing import List
from tvm._ffi.runtime_ctypes import Device
from tvm.ir.module import IRModule

def compile(
    mod: IRModule,
    device: List[Device] = [
        tvm.cpu()
    ],
) -> relax.VirtualMachine:
    # compile the model
    mod = relax.transform.RealizeVDevice()(mod)
    mod = relax.transform.LegalizeOps()(mod)
    # no need to feed target argument for mult-target compilation
    ex = relax.build(mod)
    return relax.VirtualMachine(ex, device)


llvm_target = tvm.target.Target("llvm")
fpga_target = tvm.target.Target("fpga")
const_x = 8 # fpga的加数

@I.ir_module
class TestFPGA:
    I.module_global_infos(
            {
                "vdevice": [
                    I.vdevice("llvm"),
                    I.vdevice("fpga"),
                ]
            }
        )

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
    
    @R.function(pure=False)
    def foo(A: R.Tensor(("len",), dtype="uint8")) -> R.Tensor(("len",), dtype="uint8"):
        R.func_attr({"global_symbol": "foo"})
        len = T.int64()
        data_a = R.to_vdevice(A, "fpga")
        inp_x = R.prim_value(T.IntImm("int32", const_x))
        
        out = R.call_tir(
            TestFPGA.add_one_fpga,               
            (data_a, inp_x),
            out_sinfo=R.Tensor((len,), "uint8", vdevice="fpga")
        )
        return out


mod = TestFPGA
target = [tvm.cpu(0), tvm.fpga(0)]
vm = compile(mod, target)
n=25
inp_numpy = np.empty((n,), dtype="uint8")
inp_numpy.fill(2)
inp = tvm.nd.array(inp_numpy, target[0])
res = vm["foo"](inp)
print(res)