import os
import tvm
import numpy as np
import tvm.testing
from tvm import relax, tir
from tvm.script import relax as R, tir as T, ir as I
from tvm.ir.global_info import VDevice
from typing import List
from tvm.runtime import Device
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
gpu_target = tvm.target.Target("cuda")
slice_length = 8
# length of input vector
n=260
slice_number = (n + slice_length - 1) // slice_length
const_x = 8 # fpga的加数
const_y = 12 # gpu的加数，但是由fpga传递
gpu_bank_size = 65536 # 64KB

@I.ir_module
class TestP2P_2:
    I.module_global_infos(
            {
                "vdevice": [
                    I.vdevice("llvm"),
                    I.vdevice("fpga"),
                    I.vdevice("cuda"),
                ]
            }
        )
    
    # wrapper, codegen C
    # wrapper需要额外的信息:
    #   1、slice相关信息(slice length或slice number或offset等)
    #   2、gpu ptr_array，gpu每一个bank的地址，用于P2P包头
    #   3、gpu需要的常量参数值，需要先传到fpga，由fpga经过包头发给GPU
    #   4、fpga ddr分配的8个bank的地址，和gpu的8个bank形成对应，包头和每一个slice的输出结果都放在这里
    @T.prim_func
    def slice_add_one_fpga(
        a_handle: T.handle,
        x: T.int32, # for fpga
        y: T.int32, # for gpu
        ptr_array: T.handle,
        slicelen: T.int32,
        out_handle: T.handle
    ) -> None:
        T.func_attr({
            "global_symbol": "slice_add_one_fpga",
            "tir.noalias": True,
            "target": fpga_target
        })
        n = T.int32()
        A = T.match_buffer(a_handle, (n,), dtype="int32")
        ptr_array_buffer = T.match_buffer(ptr_array, (8,), dtype="uint64")
        Out = T.match_buffer(out_handle, (n,), dtype="int32")
        bank = T.allocate([8*65536], "uint8", "global")
        bank_buffer = T.Buffer((8, 65536,), dtype="uint8", data=bank, scope="global") # 8*64KB DDR bank
        
        # (A, bank_buffer, ptr_array, n, slicelen, x, y)
        T.attr(T.target("fpga"), "target", 0)
        with T.block("launch"):
            T.reads(A[0:n], ptr_array_buffer[0:8])
            T.writes(bank_buffer[0:8, 0:65536])
            T.call_extern(
                "int32", "launch_slice_kernel",
                A.data,
                bank_buffer.data,
                ptr_array_buffer.data,
                n, slicelen, 
                x, y
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
        A = T.match_buffer(a_handle, (n,), dtype="int32")
        Out = T.match_buffer(out_handle, (n,), dtype="int32")
        T.attr(T.target("fpga"), "target", 0)

        for i in T.serial(0, n):
            Out[i] = A[i] + x
       
    # @T.prim_func
    # def add_one_gpu(a_handle: T.handle, x:T.int32, b_handle: T.handle) -> None:
    #     T.func_attr({"global_symbol": "add_one_gpu", "tir.noalias": True, "target":gpu_target})

    #     n = T.int32()
    #     A = T.match_buffer(a_handle, (n,), dtype="int32")
    #     B = T.match_buffer(b_handle, (n,), dtype="int32")
        
    #     for i in T.thread_binding(n, thread="threadIdx.x"):
    #         B[i] = A[i] + x
    
    @T.prim_func(private=True)
    def add_int32(a: T.int32, b: T.int32) -> T.int32:
        return a + b
    
    @T.prim_func
    def add_int_gpu(a_handle: T.handle("void"), x: T.int32, b_handle: T.handle("void"), n: T.int32):
        T.func_attr({"target": T.target("cuda", host=gpu_target)})
        a_val = T.decl_buffer((n,), "int32", data=a_handle)
        b_val = T.decl_buffer((n,), "int32", data=b_handle)
        threadIdx = T.launch_thread("threadIdx.x", n)
        with T.block("vadds"):
            b_val[threadIdx] = a_val[threadIdx] + x
            
    @T.prim_func
    def parse_header(header: T.handle("void")):
        T.func_attr({"target": T.target("cuda", host=gpu_target)})
        header_uint64 = T.Buffer((8*1024,), "uint64", data=header)
        header_uint32 = T.Buffer((16*1024,), "uint32", data=header)
        header_uint16 = T.Buffer((32*1024,), "uint16", data=header)
        _ = T.launch_thread("threadIdx.x", 1)
        with T.block("parse_header"):
            a = T.reinterpret("handle", header_uint64[1])
            byte_n = T.reinterpret("int32", header_uint32[4])
            n = byte_n / T.int32(4)
            b = T.reinterpret("handle", header_uint64[3])
            x = T.reinterpret("int32", header_uint32[8])
            TestP2P_2.add_int_gpu(a, x, b, n)
                    
    @T.prim_func
    def gather(buffer: T.handle("void"), lv: T.handle("void"), n: T.int32, counter: T.int32):
        T.func_attr({"target": T.target("cuda", host=gpu_target)})
        buffer_val = T.decl_buffer((n,), "int32", data=buffer)
        lv_val = T.decl_buffer((n+counter,), "int32", data=lv)
        threadIdx = T.launch_thread("threadIdx.x", n)
        with T.block("gather"):
            lv_val[counter + threadIdx] = buffer_val[threadIdx]
            
    @T.prim_func
    def parse_gather(buffer: T.handle("void"), lv: T.handle("void"), counter: T.int32):
        T.func_attr({"target": T.target("cuda", host=gpu_target)})
        buffer_uint64 = T.decl_buffer((8*1024,), "uint64", data=buffer)
        buffer_uint32 = T.decl_buffer((16*1024,), "uint32", data=buffer)
        buffer_uint16 = T.decl_buffer((32*1024,), "uint16", data=buffer)
        buffer_uint8 = T.decl_buffer((64*1024,), "uint8", data=buffer)
        _ = T.launch_thread("threadIdx.x", 1)
        with T.block("parse_gather"):
            a = T.reinterpret("handle", buffer_uint64[1])
            byte_n = T.reinterpret("int32", buffer_uint32[4])
            n = byte_n / T.int32(4)
            b = T.reinterpret("handle", buffer_uint64[3])
            x = T.reinterpret("int32", buffer_uint32[8])
            TestP2P_2.gather(b, lv, n, counter)
    
    @T.prim_func
    def increase_counter(counter: T.int32, buffer: T.handle("void")):
        T.func_attr({"target": T.target("cuda", host=gpu_target)})
        buffer_uint64 = T.decl_buffer((8*1024,), "uint64", data=buffer)
        buffer_uint32 = T.decl_buffer((16*1024,), "uint32", data=buffer)
        buffer_uint16 = T.decl_buffer((32*1024,), "uint16", data=buffer)
        buffer_uint8 = T.decl_buffer((64*1024,), "uint8", data=buffer)
        _ = T.launch_thread("threadIdx.x", 1)
        with T.block("increase_counter"):
            a = T.reinterpret("handle", buffer_uint64[1])
            byte_n = T.reinterpret("int32", buffer_uint32[4])
            n = byte_n / T.int32(4)
            b = T.reinterpret("handle", buffer_uint64[3])
            x = T.reinterpret("int32", buffer_uint32[8])
            counter = TestP2P_2.add_int32(counter, n)
    
    @T.prim_func
    def add_one_gpu_bank(head:T.handle, tail:T.handle, banks:T.handle, a_handle: T.handle, x:T.int32, b_handle: T.handle) -> None:
        T.func_attr({"global_symbol": "add_one_gpu", "tir.noalias": True, "target":gpu_target})

        # Alloc buffer for return tensor
        n = T.int32()
        B = T.match_buffer(b_handle, (n,), dtype="int32")
        
        head_buffer = T.match_buffer(head, (16384,), dtype="int32")
        tail_buffer = T.match_buffer(tail, (16384,), dtype="int32")
        bank_buffer = T.match_buffer(banks, (8, 65536,), dtype="uint8")
        
        
        blockIdx_x = T.launch_thread("blockIdx.x", 1)
        threadIdx_x = T.launch_thread("threadIdx.x", 1)
        with T.block("while_loop"):
            counter = T.int32(0)
            over = T.uint8(0)
            while over == 0: # FPGA terminates by setting tail to -1
                if head_buffer[0] != tail_buffer[0]: # wait until workload received
                    cur_idx = head_buffer[0] # head indicating selected bank
                    bank_ptr = T.reinterpret("handle", T.address_of(bank_buffer[cur_idx, 0])) # handle for selected bank
                    TestP2P_2.parse_header(bank_ptr)
                    TestP2P_2.parse_gather(bank_ptr, B.data, counter)
                    TestP2P_2.increase_counter(counter, bank_ptr)
                    over = bank_buffer[cur_idx, 0]
                    
    
    @T.prim_func
    def init_ptr_array(gpu_banks: T.handle, ptr_array: T.handle) -> None:
        T.func_attr({"global_symbol": "init_ptr_array", "tir.noalias": True, "target":gpu_target})
        ptr_num = T.int32()
        bank_size = T.int32()
        bank_buffer = T.match_buffer(gpu_banks, (ptr_num, bank_size), dtype="uint8")
        ptr_array_buffer = T.match_buffer(ptr_array, (ptr_num), dtype="uint64")
        
        for i in T.thread_binding(ptr_num, thread="threadIdx.x"):
            ptr_array_buffer[i] = T.reinterpret("uint64", T.address_of(bank_buffer[i, 0]))
    
    @R.function(pure=False)
    def foo(A: R.Tensor(("len",), dtype="int32")) -> R.Tensor(("len",), dtype="int32"):
        R.func_attr({"global_symbol": "foo"})
        len = T.int64()
        
        data_a = R.to_vdevice(A, "fpga")

        inp_x = R.prim_value(T.IntImm("int32", const_x))
        inp_y = R.prim_value(T.IntImm("int32", const_y))
        slice_len = R.prim_value(T.IntImm("int32", slice_length))
        
        head = R.builtin.alloc_tensor(R.shape([16384]), dtype="int32", runtime_device_index=2)
        tail = R.builtin.alloc_tensor(R.shape([16384]), dtype="int32", runtime_device_index=2)
        gpu_banks = R.builtin.alloc_tensor(R.shape([8, 65536]), dtype="uint8", runtime_device_index=2)
        ptr_array = R.call_tir(TestP2P_2.init_ptr_array, gpu_banks, out_sinfo=R.Tensor((8,), "uint64", vdevice="cuda"))
        ptr_array_1 = R.to_vdevice(ptr_array, "llvm")
        
        _ = R.call_packed("vm.builtin.p2p.descriptor_transfer", head, tail, ptr_array_1, gpu_bank_size)
        ptr_array_2 = R.to_vdevice(ptr_array_1, "fpga")
        out = R.call_tir(
            TestP2P_2.slice_add_one_fpga,               
            (data_a, inp_x, inp_y, ptr_array_2, slice_len),
            out_sinfo=R.Tensor((len,), "int32", vdevice="fpga")
        )
        gpu_inp = R.to_vdevice(out, "cuda")
        
        res = R.call_tir(
            TestP2P_2.add_one_gpu_bank, 
            (head, tail, gpu_banks, gpu_inp, inp_y),
            out_sinfo=R.Tensor((len,), "int32", vdevice="cuda")
        )
        _ = R.call_packed("vm.builtin.p2p.unmap_gpu_memory", head, tail, gpu_banks)
        return res


mod = TestP2P_2
target = [tvm.cpu(0), tvm.fpga(0), tvm.cuda(0)]
vm = compile(mod, target)
inp_numpy = np.empty((n,), dtype="int32")
inp_numpy.fill(2)
inp = tvm.nd.array(inp_numpy, target[0])
res = vm["foo"](inp)
print(res)
