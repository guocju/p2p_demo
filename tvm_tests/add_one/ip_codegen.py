# test c codegen
import tvm
from tvm import tir
from tvm.script import tir as T
from tvm.relay.backend import Runtime

slice_length = 8
target = tvm.target.Target("c")
host = tvm.target.Target("c")
runtime = Runtime("crt", {"system-lib": True})

@tvm.script.ir_module
class MyModule:
    @T.prim_func
    def add_one_fpga(
        a_handle: T.handle,
        x: T.int32,
        out_handle: T.handle
    ) -> None:
        T.func_attr({
            "global_symbol": "add_one_fpga",
            "tir.noalias": True,
            "target": target
        })
        n = T.int32()
        A = T.match_buffer(a_handle, (n,), dtype="int32")
        Out = T.match_buffer(out_handle, (n,), dtype="int32")
        T.attr(T.target("fpga"), "target", 0)

        for i in T.serial(0, n):
            Out[i] = A[i] + x


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
with open("codegen.c", "w") as f:
    f.write(imported_module.get_source("c"))