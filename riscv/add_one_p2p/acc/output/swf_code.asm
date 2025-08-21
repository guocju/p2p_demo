
output/swf_code.elf:     file format elf32-littleriscv
output/swf_code.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x10000200

Program Header:
    LOAD off    0x00001000 vaddr 0x10000000 paddr 0x10000000 align 2**12
         filesz 0x00004994 memsz 0x00004994 flags r-x
    LOAD off    0x00006000 vaddr 0x10010000 paddr 0x10010000 align 2**12
         filesz 0x00000a14 memsz 0x00000a14 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text.init    000000c4  10000000  10000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00004794  10000200  10000200  00001200  2**9
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000598  10010000  10010000  00006000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .srodata      00000028  10010598  10010598  00006598  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .bss          0000030c  100105c0  100105c0  000065c0  2**2
                  ALLOC
  5 .sbss         0000000c  100108cc  100108cc  000065c0  2**2
                  ALLOC
  6 .data         00000004  100108d8  100108d8  000068d8  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .sdata        00000138  100108dc  100108dc  000068dc  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  8 .debug_line   000032fa  00000000  00000000  00006a14  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_info   00003b69  00000000  00000000  00009d0e  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00000b16  00000000  00000000  0000d877  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_aranges 00000100  00000000  00000000  0000e390  2**3
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_str    00001181  00000000  00000000  0000e490  2**0
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000098  00000000  00000000  0000f618  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .comment      00000011  00000000  00000000  0000f6b0  2**0
                  CONTENTS, READONLY
 15 .debug_frame  00000a1c  00000000  00000000  0000f6c4  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
10000000 l    d  .text.init	00000000 .text.init
10000200 l    d  .text	00000000 .text
10010000 l    d  .rodata	00000000 .rodata
10010598 l    d  .srodata	00000000 .srodata
100105c0 l    d  .bss	00000000 .bss
100108cc l    d  .sbss	00000000 .sbss
100108d8 l    d  .data	00000000 .data
100108dc l    d  .sdata	00000000 .sdata
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_ranges	00000000 .debug_ranges
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    df *ABS*	00000000 intr.o
02000000 l       *ABS*	00000000 CLINT
0c000000 l       *ABS*	00000000 PLIC
00000000 l       *ABS*	00000000 ITCM
00008000 l       *ABS*	00000000 DTCM
1001fffc l       *ABS*	00000000 STACK_BASE_ADDR
00001000 l       *ABS*	00000000 NPU_CTRL
00001004 l       *ABS*	00000000 NPU_STATUS1
00001008 l       *ABS*	00000000 NPU_STATUS2
00001100 l       *ABS*	00000000 NPU_CONV0_FM
00001104 l       *ABS*	00000000 NPU_CONV0_WBC
00001108 l       *ABS*	00000000 NPU_CONV0_EFM
0000110c l       *ABS*	00000000 NPU_CONV0_OPT
00001110 l       *ABS*	00000000 NPU_CONV0_PARA1
00001114 l       *ABS*	00000000 NPU_CONV0_PARA2
00001118 l       *ABS*	00000000 NPU_CONV0_PARA3
0000111c l       *ABS*	00000000 NPU_CONV0_PARA4
00001120 l       *ABS*	00000000 NPU_CONV0_PARA5
00001124 l       *ABS*	00000000 NPU_CONV0_PARA6
00001128 l       *ABS*	00000000 NPU_CONV0_PARA7
0000112c l       *ABS*	00000000 NPU_CONV0_PARA8
00001130 l       *ABS*	00000000 NPU_CONV0_PARA9
00001200 l       *ABS*	00000000 NPU_DWC1_FM
00001204 l       *ABS*	00000000 NPU_DWC1_WBC
00001208 l       *ABS*	00000000 NPU_DWC1_EFM
0000120c l       *ABS*	00000000 NPU_DWC1_OPT
00001210 l       *ABS*	00000000 NPU_DWC1_PARA1
00001214 l       *ABS*	00000000 NPU_DWC1_PARA2
00001218 l       *ABS*	00000000 NPU_DWC1_PARA3
0000121c l       *ABS*	00000000 NPU_DWC1_PARA4
00001220 l       *ABS*	00000000 NPU_DWC1_PARA5
00001224 l       *ABS*	00000000 NPU_DWC1_PARA6
00001228 l       *ABS*	00000000 NPU_DWC1_PARA7
0000122c l       *ABS*	00000000 NPU_DWC1_PARA8
00001230 l       *ABS*	00000000 NPU_DWC1_PARA9
00001300 l       *ABS*	00000000 NPU_CONV2_FM
00001304 l       *ABS*	00000000 NPU_CONV2_WBC
00001308 l       *ABS*	00000000 NPU_CONV2_EFM
0000130c l       *ABS*	00000000 NPU_CONV2_OPT
00001310 l       *ABS*	00000000 NPU_CONV2_PARA1
00001314 l       *ABS*	00000000 NPU_CONV2_PARA2
00001318 l       *ABS*	00000000 NPU_CONV2_PARA3
0000131c l       *ABS*	00000000 NPU_CONV2_PARA4
00001320 l       *ABS*	00000000 NPU_CONV2_PARA5
00001324 l       *ABS*	00000000 NPU_CONV2_PARA6
00001328 l       *ABS*	00000000 NPU_CONV2_PARA7
0000132c l       *ABS*	00000000 NPU_CONV2_PARA8
00001330 l       *ABS*	00000000 NPU_CONV2_PARA9
00001400 l       *ABS*	00000000 NPU_UPADD_ADD0
00001404 l       *ABS*	00000000 NPU_UPADD_ADD1
00001408 l       *ABS*	00000000 NPU_UPADD_PROD
00001410 l       *ABS*	00000000 NPU_UPADD_PARA1
00001414 l       *ABS*	00000000 NPU_UPADD_PARA2
00004000 l       *ABS*	00000000 DMA_CTRL
00004004 l       *ABS*	00000000 DMA_STATUS
00004008 l       *ABS*	00000000 DMA_LD_DDR_ADDR
0000400c l       *ABS*	00000000 DMA_LD_LM_ADDR
00004010 l       *ABS*	00000000 DMA_LD_LEN
00004014 l       *ABS*	00000000 DMA_LD_OPTION
00004018 l       *ABS*	00000000 DMA_ST_DDR_ADDR
0000401c l       *ABS*	00000000 DMA_ST_LM_ADDR
00004020 l       *ABS*	00000000 DMA_ST_LEN
10000000 l       .text.init	00000000 _intr_vector_entry
10000218 l       .text	00000000 me_intr_entry
10000244 l       .text	00000000 c1_intr_entry
1000004c l       .text.init	00000000 init_intr
00000000 l    df *ABS*	00000000 sys_reg.c
00000000 l    df *ABS*	00000000 krnl_log.c
00000000 l    df *ABS*	00000000 main.c
00000000 l    df *ABS*	00000000 printf.c
10000e68 l     F .text	00000050 _out_buffer
10000eb8 l     F .text	00000030 _out_null
10000ee8 l     F .text	00000044 _out_char
10000f2c l     F .text	00000060 _out_fct
10000f8c l     F .text	00000064 _strnlen_s
10000ff0 l     F .text	00000050 _is_digit
10001040 l     F .text	0000008c _atoi
100010cc l     F .text	00000140 _out_rev
1000120c l     F .text	000002fc _ntoa_format
10001508 l     F .text	00000148 _ntoa_long
10001650 l     F .text	00000aa0 _vsnprintf
00000000 l    df *ABS*	00000000 std_lib_util.c
00000000 l    df *ABS*	00000000 xuartlite.c
10002500 l     F .text	00000028 Xil_In32
10002528 l     F .text	00000038 Xil_Out32
10002954 l     F .text	00000064 ReceiveDataHandler
100029b8 l     F .text	00000088 SendDataHandler
100105c0 l     O .bss	00000004 header_state.1698
100105c4 l     O .bss	00000004 recv_cnt.1697
00000000 l    df *ABS*	00000000 p2p_demo.c
10010a10 l     O .sdata	00000004 DDR_BASE_INFO.1829
10000dbc g     F .text	000000ac bitwise_div_32
1001094c g     O .sdata	00000004 pInitFinishedFlag_0x30
10003040 g     F .text	0000008c XUartLite_SendAll
10002384 g     F .text	00000024 _putchar
100105a4 g     O .srodata	00000004 BASE_ADDR_DSC_CTL
10010928 g     O .sdata	00000004 pSimDebug_0x18
1001092c g     O .sdata	00000004 pPSWTAddr_0x20
10010934 g     O .sdata	00000004 pPSBCAddr_0x24
100109f8 g     O .sdata	00000004 g_ulPrintDebugLogFlag
100108f8 g     O .sdata	00000004 pDescH2CPerfDescSent
10010a08 g     O .sdata	00000004 uart0_intr_clr
100105b4 g     O .srodata	00000004 BASE_H2C_BRAM
100109b0 g     O .sdata	00000004 pStartCalc_0x70
10003968 g     F .text	00000814 all_proc_head_tail
100006ec g     F .text	00000028 get_local_falg
10002c84 g     F .text	000000d8 XUartLite_RepeatRecv
10002258 g     F .text	00000050 vprintf_
100036f4 g     F .text	000000e4 wait_ip
10000b1c g     F .text	000001ac transfer_set
10002900 g     F .text	00000054 XUartLite_InterruptHandler
10000d74 g     F .text	00000048 u_i_mod
10010998 g     O .sdata	00000004 pData_0x5c
1001093c g     O .sdata	00000004 pPSInputData_0x28
10010980 g     O .sdata	00000004 pInputData_sz_0x4c
100108fc g     O .sdata	00000004 pDescC2HAddr
10000570 g     F .text	00000118 krnlLOGPrintLog
100109c0 g     O .sdata	00000004 pDebug_Value_0x80
1000446c g     F .text	00000238 all_proc_
100109d4 g     O .sdata	00000004 pHWDbgDumpDstBaseAddr_0x94
10002f4c g     F .text	00000028 XUartLite_RxUnlock
1000009c g       .text.init	00000000 clr_single_intr
10010778 g     O .bss	00000070 XUartLiteInstances0
100109dc g     O .sdata	00000004 pHWDebugDumpLength_0x9c
1000008c g       .text.init	00000000 set_single_intr
100109cc g     O .sdata	00000004 pDebug_start_layer_idx_0x8c
100109e8 g     O .sdata	00000004 pHpuIC_0xa8
100105c8 g     O .bss	00000090 test_mc
100109a0 g     O .sdata	00000004 pData_0x64
10000864 g     F .text	00000128 get_remote_flag
10002168 g     F .text	00000078 sprintf_
10000714 g     F .text	00000150 trans_xdma
100107e8 g     O .bss	00000070 XUartLiteInstances2
10010974 g     O .sdata	00000004 pData_0x44
100109f0 g     O .sdata	00000004 pVersion600_0xd0
10010990 g     O .sdata	00000004 pData_0x54
10010900 g     O .sdata	00000004 pDescC2HNum
10002560 g     F .text	000000e8 XUartLite_InterruptHandlerWrapper
100109fc g     O .sdata	00000004 g_ulPrintSYSLogFlag
100105a0 g     O .srodata	00000004 BASE_ADDR_UART
100046a4 g     F .text	000002f0 p2p_demo
10010658 g     O .bss	00000090 test_ma
10010970 g     O .sdata	00000004 pBC_sz_0x44
100105bc g     O .srodata	00000004 BASE_FLAG_BRAM
10010858 g     O .bss	00000070 XUartLiteInstances1
100105a8 g     O .srodata	00000004 BASE_H2C_RAW_BRAM
100105ac g     O .srodata	00000004 BASE_C2H_RAW_BRAM
10010944 g     O .sdata	00000004 pPSOutputData_0x2c
100022a8 g     F .text	00000054 vsnprintf_
100108d0 g     O .sbss	00000004 g_ulPrintOPLogFlag
10010a04 g     O .sdata	00000004 pAxiAddr
100105b8 g     O .srodata	00000004 BASE_C2H_BRAM
100109d8 g     O .sdata	00000004 pHWDbgDumpSrcBaseAddr_0x98
100108d8 g       .data	00000000 start_calc
100022fc g     F .text	00000088 fctprintf
10000a38 g     F .text	000000e4 set_remote_falg
100109b4 g     O .sdata	00000004 pData_0x74
10002f74 g     F .text	00000028 hw_uart0_is_valid
10002ec0 g     F .text	0000008c XUartLite_ResetFifos
10010968 g     O .sdata	00000004 pWT_sz_0x40
10010598 g     O .srodata	00000004 BRAM0_BASE_ADDR
10010930 g     O .sdata	00000004 pData_0x20
100000b8 g       .text.init	00000000 disable_intr
10010950 g     O .sdata	00000004 pPLWTAddr_0x34
10000200 g       .text	00000000 _start
10002b98 g     F .text	000000ec XUartLite_Recv
10002b40 g     F .text	00000058 XUartLite_ClearStats
100108e0 g     O .sdata	00000004 pDescSR
10002d5c g     F .text	000000e4 XUartLite_Send
100109f4 g     O .sdata	00000004 pVersion_0x100
1001059c g     O .srodata	00000004 BRAM1_BASE_ADDR
10002408 g     F .text	000000ac strncpy
10010984 g     O .sdata	00000004 pData_0x4c
1000098c g     F .text	000000ac update_count
10010914 g     O .sdata	00000004 pCmdStatus_0x08
100108ec g     O .sdata	00000004 pDescH2CNum
10010924 g     O .sdata	00000004 pData_0x14
100108cc g     O .sbss	00000004 g_ulPrintHardwareCmdLogFlag
10002a40 g     F .text	00000034 TotalReceivedCountOf
100000ac g       .text.init	00000000 enable_intr
100108f0 g     O .sdata	00000004 pDescH2CPerfCycle
10010920 g     O .sdata	00000004 pErrCode_0x14
10002e80 g     F .text	00000040 XUartLite_DisableInterrupt
100023a8 g     F .text	00000060 memset
10000cc8 g     F .text	000000ac main
100109ac g     O .sdata	00000004 pData_0x70
100034c8 g     F .text	0000022c IP
100109d0 g     O .sdata	00000004 pHWDebugCtrlFlag_0x90
100109ec g     O .sdata	00000004 pHpuImsc_0xac
10002e40 g     F .text	00000040 XUartLite_EnableInterrupt
100105b0 g     O .srodata	00000004 BASE_DESC_ST
10010a0c g     O .sdata	00000004 uart1_intr_clr
100109e4 g     O .sdata	00000004 pHpuMis_0xa4
100108c8 g     O .bss	00000004 TotalSentCount
100108e4 g     O .sdata	00000004 pVID
1000301c g     F .text	00000024 hw_uart0_clr_state
10010964 g     O .sdata	00000004 pData_0x3c
1001096c g     O .sdata	00000004 pData_0x40
100109b8 g     O .sdata	00000004 pDebug_stop_layer_idx_0x78
100108d4 g     O .sbss	00000004 count
1001099c g     O .sdata	00000004 pData_0x60
100108dc g     O .sdata	00000004 pDescCR
10003300 g     F .text	000001c8 putDMA
100037d8 g     F .text	0000007c init_acc
100109bc g     O .sdata	00000004 pDebug_Value_0x7c
1000312c g     F .text	000001d4 fetchDMA
100021e0 g     F .text	00000078 snprintf_
10002f9c g     F .text	00000080 hw_uart0_get_data
1001095c g     O .sdata	00000004 pData_0x38
100109a4 g     O .sdata	00000004 pData_0x68
100030cc g     F .text	00000030 dma_check
10010a00 g     O .sdata	00000004 g_ulPrintNDMALogFlag
10010938 g     O .sdata	00000004 pData_0x24
10010948 g     O .sdata	00000004 pData_0x2c
100108e8 g     O .sdata	00000004 pDescH2CAddr
100109a8 g     O .sdata	00000004 pData_0x6c
100020f0 g     F .text	00000078 printf_
10010904 g     O .sdata	00000004 pDescC2HPerfCycle
1001091c g     O .sdata	00000004 pSimDebug_0x10
10002648 g     F .text	0000016c XUartLite_SendBuffer
10010910 g     O .sdata	00000004 pCmdStart_0x04
10010960 g     O .sdata	00000004 pPLFMAddr_0x3c
1000417c g     F .text	00000260 all_proc_no_head
1001097c g     O .sdata	00000004 pData_0x48
1001090c g     O .sdata	00000004 pDescC2HPerfDescSent
100109c4 g     O .sdata	00000004 pDebug_Time_H_0x84
100109c8 g     O .sdata	00000004 pDebug_Time_L_0x88
100027b4 g     F .text	0000014c XUartLite_ReceiveBuffer
10000688 g     F .text	00000030 reg_write
10010940 g     O .sdata	00000004 pData_0x28
100106e8 g     O .bss	00000090 test_mb
10010988 g     O .sdata	00000004 pOutputData_sz_0x50
10010918 g     O .sdata	00000004 pSysBaseAddr_0x0c
10010958 g     O .sdata	00000004 pPLBCAddr_0x38
10010908 g     O .sdata	00000004 pDescC2HPerfLen
10002a74 g     F .text	000000cc XUartLite_CfgInitialize
100024b4 g     F .text	0000004c len_of_str
100006b8 g     F .text	00000034 read_reg
100109e0 g     O .sdata	00000004 pHpuRis_0xa0
10010978 g     O .sdata	00000004 pFM_sz_0x48
1001098c g     O .sdata	00000004 pData_0x50
10003854 g     F .text	00000114 wrap_buf
10010994 g     O .sdata	00000004 pData_0x58
100043dc g     F .text	00000090 test_uart_print
100003fc g     F .text	00000174 krnlLOGLogTypeToStr
10010954 g     O .sdata	00000004 pData_0x34
100030fc g     F .text	00000030 dma_set_done
100108f4 g     O .sdata	00000004 pDescH2CPerfLen



Disassembly of section .text.init:

10000000 <_intr_vector_entry>:

# Interrupt vector table
.section .text.init
.align 2
_intr_vector_entry:
    j _start                            # User-mode software interrupt entry
10000000:	2000006f          	j	10000200 <_start>
    mret                                # Supervisor-mode software interrupt entry
10000004:	30200073          	mret
    mret                                # Reserved-mode software interrupt entry
10000008:	30200073          	mret
    mret                                # Machine-mode software interrupt entry
1000000c:	30200073          	mret

    mret                                # User-mode timer interrupt entry
10000010:	30200073          	mret
    mret                                # Supervisor-mode timer interrupt entry
10000014:	30200073          	mret
    mret                                # Reserved-mode timer interrupt entry
10000018:	30200073          	mret
    mret                                # Machine-mode tiemr interrupt entry
1000001c:	30200073          	mret

    mret                                # User-mode external interrupt entry
10000020:	30200073          	mret
    mret                                # Supervisor-mode external interrupt entry
10000024:	30200073          	mret
    mret                                # Reserved-mode external interrupt entry
10000028:	30200073          	mret
    j me_intr_entry                     # Machine-mode external interrrupt entry
1000002c:	1ec0006f          	j	10000218 <me_intr_entry>

    j c1_intr_entry                     # Customized external interrupt entry1
10000030:	2140006f          	j	10000244 <c1_intr_entry>
    mret                                # Customized external interrupt entry2
10000034:	30200073          	mret
    mret                                # Customized external interrupt entry3
10000038:	30200073          	mret
    mret                                # Customized external interrupt entry4
1000003c:	30200073          	mret
    mret                                # Customized external interrupt entry5
10000040:	30200073          	mret
    mret                                # Customized external interrupt entry6
10000044:	30200073          	mret
    mret                                # Customized external interrupt entry7
10000048:	30200073          	mret

1000004c <init_intr>:

init_intr:
    addi sp, sp, -16                    # Allocate the stack frame
1000004c:	ff010113          	addi	sp,sp,-16
    sw ra, 4(sp)                        # Save return address of caller onto the stack frame
10000050:	00112223          	sw	ra,4(sp)

    li t0, STACK_BASE_ADDR              # Set interrupt stack space.
10000054:	100202b7          	lui	t0,0x10020
10000058:	ffc28293          	addi	t0,t0,-4 # 1001fffc <STACK_BASE_ADDR>
    csrrw zero, mscratch, t0
1000005c:	34029073          	csrw	mscratch,t0
    li t0, 0x0800                       # Set CSR mie reg: set MEIP as 'b1, set Custom 1 as 'b0.
10000060:	000012b7          	lui	t0,0x1
10000064:	80028293          	addi	t0,t0,-2048 # 800 <ITCM+0x800>
    csrrw zero, mie, t0
10000068:	30429073          	csrw	mie,t0
    li t0, 0x1                          # Set CSR mtvec reg: set interrupt mode as vectored.
1000006c:	00100293          	li	t0,1
    csrrw zero, mtvec, t0
10000070:	30529073          	csrw	mtvec,t0
    li t0, 0x1800                       # Set CSR mstatus reg: set MIE as 'b0, set MPP as 'h3.
10000074:	000022b7          	lui	t0,0x2
10000078:	80028293          	addi	t0,t0,-2048 # 1800 <NPU_UPADD_PARA2+0x3ec>
    csrrw zero, mstatus, t0
1000007c:	30029073          	csrw	mstatus,t0

    lw ra, 4(sp)
10000080:	00412083          	lw	ra,4(sp)
    addi sp, sp, 16                     # Deallocate the stack frame
10000084:	01010113          	addi	sp,sp,16
    ret
10000088:	00008067          	ret

1000008c <set_single_intr>:

set_single_intr:
    li t0, 1                            # Set initial value 0x1
1000008c:	00100293          	li	t0,1
    sll t1, t0, a0                      # Shift 0x1 to generate set value.
10000090:	00a29333          	sll	t1,t0,a0
    csrrs zero, mie, t1                 # Set indicated interrupt enable bit as 'b1.
10000094:	30432073          	csrs	mie,t1
    ret
10000098:	00008067          	ret

1000009c <clr_single_intr>:

clr_single_intr:
    li t0, 1                            # Set initial value 0x1
1000009c:	00100293          	li	t0,1
    sll t1, t0, a0                      # Shift 0x1 to generate set value.
100000a0:	00a29333          	sll	t1,t0,a0
    csrrc zero, mie, t1                 # Set indicated interrupt enable bit as 'b1.
100000a4:	30433073          	csrc	mie,t1
    ret
100000a8:	00008067          	ret

100000ac <enable_intr>:

enable_intr:
    li t0, 0x0f                         # Set initial value 0xff
100000ac:	00f00293          	li	t0,15
    csrrs zero, mstatus, t0             # Set M(S,U)IE as 1'b1
100000b0:	3002a073          	csrs	mstatus,t0
    ret
100000b4:	00008067          	ret

100000b8 <disable_intr>:

disable_intr:
    li t0, 0x0f                         # Set initial value 0xff
100000b8:	00f00293          	li	t0,15
    csrrc zero, mstatus, t0             # Clear M(S,U)IE as 1'b1
100000bc:	3002b073          	csrc	mstatus,t0
    ret
100000c0:	00008067          	ret

Disassembly of section .text:

10000200 <_start>:

# code section
.section .text
.balign 512
_start:                                 # Power on & reset vector
    li a0, 0x233                        # Mark the RV status register as 0x233
10000200:	23300513          	li	a0,563
    sw a0, 20(zero)
10000204:	00a02a23          	sw	a0,20(zero) # 14 <ITCM+0x14>
    li sp, STACK_BASE_ADDR              # Set stack base address
10000208:	10020137          	lui	sp,0x10020
1000020c:	ffc10113          	addi	sp,sp,-4 # 1001fffc <STACK_BASE_ADDR>
    call init_intr                      # Initialize the interrupt registers
10000210:	e3dff0ef          	jal	ra,1000004c <init_intr>
    call main                           # Jump to main function
10000214:	2b5000ef          	jal	ra,10000cc8 <main>

10000218 <me_intr_entry>:

# Interrupt service code
me_intr_entry:
    csrrw a0, mscratch, a0              # Save a0 to temporal reg.
10000218:	34051573          	csrrw	a0,mscratch,a0
    sw t0, 4(a0)                        # Protect t0
1000021c:	00552223          	sw	t0,4(a0)
    sw t1, 8(a0)                        # Protect t1
10000220:	00652423          	sw	t1,8(a0)

    li t0, 1
10000224:	00100293          	li	t0,1
    la t1, start_calc
10000228:	00010317          	auipc	t1,0x10
1000022c:	6b030313          	addi	t1,t1,1712 # 100108d8 <start_calc>
    sw t0, 0(t1)                        # Set globle variable start_calc as 1.
10000230:	00532023          	sw	t0,0(t1)

    # Restore environment
    lw t0, 4(a0)                        # Restore t0
10000234:	00452283          	lw	t0,4(a0)
    lw t1, 8(a0)                        # Restore t1
10000238:	00852303          	lw	t1,8(a0)
    csrrw a0, mscratch, a0              # Restore a0
1000023c:	34051573          	csrrw	a0,mscratch,a0
    mret
10000240:	30200073          	mret

10000244 <c1_intr_entry>:

c1_intr_entry:
    csrrw a0, mscratch, a0              # Save a0 to temporal reg.
10000244:	34051573          	csrrw	a0,mscratch,a0
    sw t0, 4(a0)                        # Protect t0
10000248:	00552223          	sw	t0,4(a0)
    sw t1, 8(a0)                        # Protect t1
1000024c:	00652423          	sw	t1,8(a0)
    # li t0, 4
    # li t1, DPU_REGMGR
    # sw t0, 0(t1)

    # Restore environment
    lw t0, 4(a0)                        # Restore t0
10000250:	00452283          	lw	t0,4(a0)
    lw t1, 8(a0)                        # Restore t1
10000254:	00852303          	lw	t1,8(a0)
    csrrw a0, mscratch, a0              # Restore a0
10000258:	34051573          	csrrw	a0,mscratch,a0
    mret
1000025c:	30200073          	mret
	...

100003fc <krnlLOGLogTypeToStr>:
unsigned long g_ulPrintNDMALogFlag = 1;

unsigned long g_ulPrintOPLogFlag = 0;

unsigned long krnlLOGLogTypeToStr(unsigned char ucType, unsigned char *pucTypeString, unsigned long ulBufLen)
{
100003fc:	fe010113          	addi	sp,sp,-32
10000400:	00112e23          	sw	ra,28(sp)
10000404:	00812c23          	sw	s0,24(sp)
10000408:	02010413          	addi	s0,sp,32
1000040c:	00050793          	mv	a5,a0
10000410:	feb42423          	sw	a1,-24(s0)
10000414:	fec42223          	sw	a2,-28(s0)
10000418:	fef407a3          	sb	a5,-17(s0)
    if (NULL == pucTypeString)
1000041c:	fe842783          	lw	a5,-24(s0)
10000420:	00079663          	bnez	a5,1000042c <krnlLOGLogTypeToStr+0x30>
    {
        return -1;
10000424:	fff00793          	li	a5,-1
10000428:	1340006f          	j	1000055c <krnlLOGLogTypeToStr+0x160>
    }
    ulBufLen -= 1;
1000042c:	fe442783          	lw	a5,-28(s0)
10000430:	fff78793          	addi	a5,a5,-1
10000434:	fef42223          	sw	a5,-28(s0)

    switch (ucType)
10000438:	fef44783          	lbu	a5,-17(s0)
1000043c:	00700713          	li	a4,7
10000440:	0ef76e63          	bltu	a4,a5,1000053c <krnlLOGLogTypeToStr+0x140>
10000444:	00279713          	slli	a4,a5,0x2
10000448:	100107b7          	lui	a5,0x10010
1000044c:	03478793          	addi	a5,a5,52 # 10010034 <p2p_demo+0xb990>
10000450:	00f707b3          	add	a5,a4,a5
10000454:	0007a783          	lw	a5,0(a5)
10000458:	00078067          	jr	a5
    {
    case LOG_DEBUG:
    {
        strncpy((char *)pucTypeString, "DBG", ulBufLen);
1000045c:	fe442783          	lw	a5,-28(s0)
10000460:	00078613          	mv	a2,a5
10000464:	100107b7          	lui	a5,0x10010
10000468:	00078593          	mv	a1,a5
1000046c:	fe842503          	lw	a0,-24(s0)
10000470:	799010ef          	jal	ra,10002408 <strncpy>
        break;
10000474:	0e40006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_ERROR:
    {
        strncpy((char *)pucTypeString, "ERR", ulBufLen);
10000478:	fe442783          	lw	a5,-28(s0)
1000047c:	00078613          	mv	a2,a5
10000480:	100107b7          	lui	a5,0x10010
10000484:	00478593          	addi	a1,a5,4 # 10010004 <p2p_demo+0xb960>
10000488:	fe842503          	lw	a0,-24(s0)
1000048c:	77d010ef          	jal	ra,10002408 <strncpy>
        break;
10000490:	0c80006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_WARNING:
    {
        strncpy((char *)pucTypeString, "WAR", ulBufLen);
10000494:	fe442783          	lw	a5,-28(s0)
10000498:	00078613          	mv	a2,a5
1000049c:	100107b7          	lui	a5,0x10010
100004a0:	00878593          	addi	a1,a5,8 # 10010008 <p2p_demo+0xb964>
100004a4:	fe842503          	lw	a0,-24(s0)
100004a8:	761010ef          	jal	ra,10002408 <strncpy>
        break;
100004ac:	0ac0006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_ACTION:
    {
        strncpy((char *)pucTypeString, "ACT", ulBufLen);
100004b0:	fe442783          	lw	a5,-28(s0)
100004b4:	00078613          	mv	a2,a5
100004b8:	100107b7          	lui	a5,0x10010
100004bc:	00c78593          	addi	a1,a5,12 # 1001000c <p2p_demo+0xb968>
100004c0:	fe842503          	lw	a0,-24(s0)
100004c4:	745010ef          	jal	ra,10002408 <strncpy>
        break;
100004c8:	0900006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_SYSTEM:
    {
        strncpy((char *)pucTypeString, "SYS", ulBufLen);
100004cc:	fe442783          	lw	a5,-28(s0)
100004d0:	00078613          	mv	a2,a5
100004d4:	100107b7          	lui	a5,0x10010
100004d8:	01078593          	addi	a1,a5,16 # 10010010 <p2p_demo+0xb96c>
100004dc:	fe842503          	lw	a0,-24(s0)
100004e0:	729010ef          	jal	ra,10002408 <strncpy>
        break;
100004e4:	0740006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_HARDWARE_CMD:
    {
        strncpy((char *)pucTypeString, "HARDWARE_CMD", ulBufLen);
100004e8:	fe442783          	lw	a5,-28(s0)
100004ec:	00078613          	mv	a2,a5
100004f0:	100107b7          	lui	a5,0x10010
100004f4:	01478593          	addi	a1,a5,20 # 10010014 <p2p_demo+0xb970>
100004f8:	fe842503          	lw	a0,-24(s0)
100004fc:	70d010ef          	jal	ra,10002408 <strncpy>
        break;
10000500:	0580006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_NDMA:
    {
        strncpy((char *)pucTypeString, "NDMA", ulBufLen);
10000504:	fe442783          	lw	a5,-28(s0)
10000508:	00078613          	mv	a2,a5
1000050c:	100107b7          	lui	a5,0x10010
10000510:	02478593          	addi	a1,a5,36 # 10010024 <p2p_demo+0xb980>
10000514:	fe842503          	lw	a0,-24(s0)
10000518:	6f1010ef          	jal	ra,10002408 <strncpy>
        break;
1000051c:	03c0006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    case LOG_OP_CMD:
    {
        strncpy((char *)pucTypeString, "OP", ulBufLen);
10000520:	fe442783          	lw	a5,-28(s0)
10000524:	00078613          	mv	a2,a5
10000528:	100107b7          	lui	a5,0x10010
1000052c:	02c78593          	addi	a1,a5,44 # 1001002c <p2p_demo+0xb988>
10000530:	fe842503          	lw	a0,-24(s0)
10000534:	6d5010ef          	jal	ra,10002408 <strncpy>
        break;
10000538:	0200006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
    }
    default:
    {
        strncpy((char *)pucTypeString, "UKN", ulBufLen);
1000053c:	fe442783          	lw	a5,-28(s0)
10000540:	00078613          	mv	a2,a5
10000544:	100107b7          	lui	a5,0x10010
10000548:	03078593          	addi	a1,a5,48 # 10010030 <p2p_demo+0xb98c>
1000054c:	fe842503          	lw	a0,-24(s0)
10000550:	6b9010ef          	jal	ra,10002408 <strncpy>
        break;
10000554:	00000013          	nop
    }
    }
    return 0;
10000558:	00000793          	li	a5,0
}
1000055c:	00078513          	mv	a0,a5
10000560:	01c12083          	lw	ra,28(sp)
10000564:	01812403          	lw	s0,24(sp)
10000568:	02010113          	addi	sp,sp,32
1000056c:	00008067          	ret

10000570 <krnlLOGPrintLog>:

unsigned long krnlLOGPrintLog(unsigned char ucType, unsigned char *pucLogInfo)
{
10000570:	ad010113          	addi	sp,sp,-1328
10000574:	52112623          	sw	ra,1324(sp)
10000578:	52812423          	sw	s0,1320(sp)
1000057c:	53010413          	addi	s0,sp,1328
10000580:	00050793          	mv	a5,a0
10000584:	acb42c23          	sw	a1,-1320(s0)
10000588:	acf40fa3          	sb	a5,-1313(s0)
    unsigned long ulResult = 0;
1000058c:	fe042623          	sw	zero,-20(s0)
    unsigned long ulFileLen = 0;
10000590:	fe042423          	sw	zero,-24(s0)
    char ucTime[STR_COMM_SIZE] = { 0 };
10000594:	f6040793          	addi	a5,s0,-160
10000598:	08000713          	li	a4,128
1000059c:	00070613          	mv	a2,a4
100005a0:	00000593          	li	a1,0
100005a4:	00078513          	mv	a0,a5
100005a8:	601010ef          	jal	ra,100023a8 <memset>
    char ucLogTypeStr[STR_COMM_SIZE] = { 0 };
100005ac:	ee040793          	addi	a5,s0,-288
100005b0:	08000713          	li	a4,128
100005b4:	00070613          	mv	a2,a4
100005b8:	00000593          	li	a1,0
100005bc:	00078513          	mv	a0,a5
100005c0:	5e9010ef          	jal	ra,100023a8 <memset>
    char ucLogInfo[STR_MAX_SIZE] = { 0 };
100005c4:	ae040793          	addi	a5,s0,-1312
100005c8:	40000713          	li	a4,1024
100005cc:	00070613          	mv	a2,a4
100005d0:	00000593          	li	a1,0
100005d4:	00078513          	mv	a0,a5
100005d8:	5d1010ef          	jal	ra,100023a8 <memset>

    if (NULL == pucLogInfo)
100005dc:	ad842783          	lw	a5,-1320(s0)
100005e0:	00079663          	bnez	a5,100005ec <krnlLOGPrintLog+0x7c>
    {
        return -1;
100005e4:	fff00793          	li	a5,-1
100005e8:	08c0006f          	j	10000674 <krnlLOGPrintLog+0x104>
    }

    ulResult = krnlLOGLogTypeToStr(ucType, ucLogTypeStr, sizeof(ucLogTypeStr));
100005ec:	ee040713          	addi	a4,s0,-288
100005f0:	adf44783          	lbu	a5,-1313(s0)
100005f4:	08000613          	li	a2,128
100005f8:	00070593          	mv	a1,a4
100005fc:	00078513          	mv	a0,a5
10000600:	dfdff0ef          	jal	ra,100003fc <krnlLOGLogTypeToStr>
10000604:	fea42623          	sw	a0,-20(s0)
    // ulResult += krnlLOGPrintLogTime(ucTime, sizeof(ucTime));
    if (0 != ulResult)
10000608:	fec42783          	lw	a5,-20(s0)
1000060c:	00078663          	beqz	a5,10000618 <krnlLOGPrintLog+0xa8>
    {
        return -1;
10000610:	fff00793          	li	a5,-1
10000614:	0600006f          	j	10000674 <krnlLOGPrintLog+0x104>
    }
    snprintf((char *)ucLogInfo, sizeof(ucLogInfo) - 1, "[__%s__][%s] %s", __TIME__, ucLogTypeStr, pucLogInfo);
10000618:	ee040713          	addi	a4,s0,-288
1000061c:	ae040513          	addi	a0,s0,-1312
10000620:	ad842783          	lw	a5,-1320(s0)
10000624:	100106b7          	lui	a3,0x10010
10000628:	05468693          	addi	a3,a3,84 # 10010054 <p2p_demo+0xb9b0>
1000062c:	10010637          	lui	a2,0x10010
10000630:	06060613          	addi	a2,a2,96 # 10010060 <p2p_demo+0xb9bc>
10000634:	3ff00593          	li	a1,1023
10000638:	3a9010ef          	jal	ra,100021e0 <snprintf_>
    unsigned int len = len_of_str(ucLogInfo);
1000063c:	ae040793          	addi	a5,s0,-1312
10000640:	00078513          	mv	a0,a5
10000644:	671010ef          	jal	ra,100024b4 <len_of_str>
10000648:	00050793          	mv	a5,a0
1000064c:	fef42223          	sw	a5,-28(s0)

#ifdef UART_ON
    XUartLite *uart_inst0 = &XUartLiteInstances0;
10000650:	100107b7          	lui	a5,0x10010
10000654:	77878793          	addi	a5,a5,1912 # 10010778 <XUartLiteInstances0>
10000658:	fef42023          	sw	a5,-32(s0)
    XUartLite_SendAll(uart_inst0, ucLogInfo, len);
1000065c:	ae040793          	addi	a5,s0,-1312
10000660:	fe442603          	lw	a2,-28(s0)
10000664:	00078593          	mv	a1,a5
10000668:	fe042503          	lw	a0,-32(s0)
1000066c:	1d5020ef          	jal	ra,10003040 <XUartLite_SendAll>
    // XUartLite_CfgInitialize(instance0,UARTLITE_BASEADDR_0);
    // XUartLite_SendAll(instance0, (uint8_t *)SendingBuffer, 17);
#else
    printf("%s", ucLogInfo);
#endif
    return 0;
10000670:	00000793          	li	a5,0
}
10000674:	00078513          	mv	a0,a5
10000678:	52c12083          	lw	ra,1324(sp)
1000067c:	52812403          	lw	s0,1320(sp)
10000680:	53010113          	addi	sp,sp,1328
10000684:	00008067          	ret

10000688 <reg_write>:
// //buffer1、2的位置
// #define BUFFER1 0x00000000
// #define BUFFER2 0x00001000

void reg_write(int addr, uint32_t data)
{
10000688:	fe010113          	addi	sp,sp,-32
1000068c:	00812e23          	sw	s0,28(sp)
10000690:	02010413          	addi	s0,sp,32
10000694:	fea42623          	sw	a0,-20(s0)
10000698:	feb42423          	sw	a1,-24(s0)
    *((volatile int*)addr) = data;
1000069c:	fec42783          	lw	a5,-20(s0)
100006a0:	fe842703          	lw	a4,-24(s0)
100006a4:	00e7a023          	sw	a4,0(a5)
}
100006a8:	00000013          	nop
100006ac:	01c12403          	lw	s0,28(sp)
100006b0:	02010113          	addi	sp,sp,32
100006b4:	00008067          	ret

100006b8 <read_reg>:

uint32_t read_reg(uint32_t* addr, uint32_t len)
{
100006b8:	fe010113          	addi	sp,sp,-32
100006bc:	00812e23          	sw	s0,28(sp)
100006c0:	02010413          	addi	s0,sp,32
100006c4:	fea42623          	sw	a0,-20(s0)
100006c8:	feb42423          	sw	a1,-24(s0)
    return *(volatile uint32_t *)((uint32_t)addr | REG_BASE_ADDR);
100006cc:	fec42703          	lw	a4,-20(s0)
100006d0:	000107b7          	lui	a5,0x10
100006d4:	00f767b3          	or	a5,a4,a5
100006d8:	0007a783          	lw	a5,0(a5) # 10000 <DTCM+0x8000>
}
100006dc:	00078513          	mv	a0,a5
100006e0:	01c12403          	lw	s0,28(sp)
100006e4:	02010113          	addi	sp,sp,32
100006e8:	00008067          	ret

100006ec <get_local_falg>:
int test_mc[36];
//uint32_t stAddrDesc_addr = REG_BASE_ADDR | 0x20;


uint32_t get_local_falg(uint32_t* flag_addr)
{
100006ec:	fe010113          	addi	sp,sp,-32
100006f0:	00812e23          	sw	s0,28(sp)
100006f4:	02010413          	addi	s0,sp,32
100006f8:	fea42623          	sw	a0,-20(s0)
    return *(flag_addr);
100006fc:	fec42783          	lw	a5,-20(s0)
10000700:	0007a783          	lw	a5,0(a5)
}
10000704:	00078513          	mv	a0,a5
10000708:	01c12403          	lw	s0,28(sp)
1000070c:	02010113          	addi	sp,sp,32
10000710:	00008067          	ret

10000714 <trans_xdma>:

//给xdma传递一次参数
void trans_xdma(uint32_t src_lo, uint32_t src_hi, uint32_t dst_lo, uint32_t dst_hi, uint32_t byp_len, int count, uint32_t num)
{
10000714:	fb010113          	addi	sp,sp,-80
10000718:	04812623          	sw	s0,76(sp)
1000071c:	05010413          	addi	s0,sp,80
10000720:	fca42623          	sw	a0,-52(s0)
10000724:	fcb42423          	sw	a1,-56(s0)
10000728:	fcc42223          	sw	a2,-60(s0)
1000072c:	fcd42023          	sw	a3,-64(s0)
10000730:	fae42e23          	sw	a4,-68(s0)
10000734:	faf42c23          	sw	a5,-72(s0)
10000738:	fb042a23          	sw	a6,-76(s0)
    uint32_t dsc_byp_dst_addr_lo;
    uint32_t dsc_byp_dst_addr_hi;
    uint32_t dsc_byp_len;
    uint32_t dsc_byp_ctl;

    dsc_byp_src_addr_lo = src_lo;
1000073c:	fcc42783          	lw	a5,-52(s0)
10000740:	fef42623          	sw	a5,-20(s0)
    dsc_byp_src_addr_hi = src_hi;
10000744:	fc842783          	lw	a5,-56(s0)
10000748:	fef42423          	sw	a5,-24(s0)
    dsc_byp_src_addr_lo = dst_lo;
1000074c:	fc442783          	lw	a5,-60(s0)
10000750:	fef42623          	sw	a5,-20(s0)
    dsc_byp_src_addr_hi = dst_hi;
10000754:	fc042783          	lw	a5,-64(s0)
10000758:	fef42423          	sw	a5,-24(s0)
    dsc_byp_ctl      = (count  == num) ? 0x00000001 : 0x00000004;
1000075c:	fb442783          	lw	a5,-76(s0)
10000760:	fb842703          	lw	a4,-72(s0)
10000764:	00f71663          	bne	a4,a5,10000770 <trans_xdma+0x5c>
10000768:	00100793          	li	a5,1
1000076c:	0080006f          	j	10000774 <trans_xdma+0x60>
10000770:	00400793          	li	a5,4
10000774:	fef42223          	sw	a5,-28(s0)
    dsc_byp_len      = byp_len;
10000778:	fbc42783          	lw	a5,-68(s0)
1000077c:	fef42023          	sw	a5,-32(s0)

    *((volatile int*)((0x00000000 + count*32)       | BASE_H2C_BRAM))       = dsc_byp_src_addr_lo;
10000780:	fb842783          	lw	a5,-72(s0)
10000784:	00579713          	slli	a4,a5,0x5
10000788:	100107b7          	lui	a5,0x10010
1000078c:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
10000790:	00f767b3          	or	a5,a4,a5
10000794:	00078713          	mv	a4,a5
10000798:	fec42783          	lw	a5,-20(s0)
1000079c:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 4)   | BASE_H2C_BRAM))       = dsc_byp_src_addr_hi;
100007a0:	fb842783          	lw	a5,-72(s0)
100007a4:	00579793          	slli	a5,a5,0x5
100007a8:	00478713          	addi	a4,a5,4
100007ac:	100107b7          	lui	a5,0x10010
100007b0:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
100007b4:	00f767b3          	or	a5,a4,a5
100007b8:	00078713          	mv	a4,a5
100007bc:	fe842783          	lw	a5,-24(s0)
100007c0:	00f72023          	sw	a5,0(a4)
            
    *((volatile int*)((0x00000000 + count*32 + 8)   | BASE_H2C_BRAM)) = dsc_byp_dst_addr_lo;
100007c4:	fb842783          	lw	a5,-72(s0)
100007c8:	00579793          	slli	a5,a5,0x5
100007cc:	00878713          	addi	a4,a5,8
100007d0:	100107b7          	lui	a5,0x10010
100007d4:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
100007d8:	00f767b3          	or	a5,a4,a5
100007dc:	00078713          	mv	a4,a5
100007e0:	fdc42783          	lw	a5,-36(s0)
100007e4:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 12)  | BASE_H2C_BRAM)) = dsc_byp_dst_addr_hi;
100007e8:	fb842783          	lw	a5,-72(s0)
100007ec:	00579793          	slli	a5,a5,0x5
100007f0:	00c78713          	addi	a4,a5,12
100007f4:	100107b7          	lui	a5,0x10010
100007f8:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
100007fc:	00f767b3          	or	a5,a4,a5
10000800:	00078713          	mv	a4,a5
10000804:	fd842783          	lw	a5,-40(s0)
10000808:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 20)  | BASE_H2C_BRAM)) = dsc_byp_ctl;
1000080c:	fb842783          	lw	a5,-72(s0)
10000810:	00579793          	slli	a5,a5,0x5
10000814:	01478713          	addi	a4,a5,20
10000818:	100107b7          	lui	a5,0x10010
1000081c:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
10000820:	00f767b3          	or	a5,a4,a5
10000824:	00078713          	mv	a4,a5
10000828:	fe442783          	lw	a5,-28(s0)
1000082c:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 16)  | BASE_H2C_BRAM)) = dsc_byp_len;
10000830:	fb842783          	lw	a5,-72(s0)
10000834:	00579793          	slli	a5,a5,0x5
10000838:	01078713          	addi	a4,a5,16
1000083c:	100107b7          	lui	a5,0x10010
10000840:	5b47a783          	lw	a5,1460(a5) # 100105b4 <BASE_H2C_BRAM>
10000844:	00f767b3          	or	a5,a4,a5
10000848:	00078713          	mv	a4,a5
1000084c:	fe042783          	lw	a5,-32(s0)
10000850:	00f72023          	sw	a5,0(a4)
}       
10000854:	00000013          	nop
10000858:	04c12403          	lw	s0,76(sp)
1000085c:	05010113          	addi	sp,sp,80
10000860:	00008067          	ret

10000864 <get_remote_flag>:

   

//1是ready，0是不ready
int get_remote_flag(uint32_t *desc_group, uint32_t *flag_remote_addr)
{   
10000864:	bd010113          	addi	sp,sp,-1072
10000868:	42112623          	sw	ra,1068(sp)
1000086c:	42812423          	sw	s0,1064(sp)
10000870:	43010413          	addi	s0,sp,1072
10000874:	bca42e23          	sw	a0,-1060(s0)
10000878:	bcb42c23          	sw	a1,-1064(s0)
    //每一组有一个flag，描述符里的存放的是flag的address high and low，大小都为一字节
    //先读地址
    while(*pDescSR != 0)
1000087c:	0540006f          	j	100008d0 <get_remote_flag+0x6c>
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
10000880:	100117b7          	lui	a5,0x10011
10000884:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10000888:	00079463          	bnez	a5,10000890 <get_remote_flag+0x2c>
1000088c:	0440006f          	j	100008d0 <get_remote_flag+0x6c>
10000890:	be840793          	addi	a5,s0,-1048
10000894:	40000713          	li	a4,1024
10000898:	00070613          	mv	a2,a4
1000089c:	00000593          	li	a1,0
100008a0:	00078513          	mv	a0,a5
100008a4:	305010ef          	jal	ra,100023a8 <memset>
100008a8:	be840713          	addi	a4,s0,-1048
100008ac:	100107b7          	lui	a5,0x10010
100008b0:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xb9cc>
100008b4:	3ff00593          	li	a1,1023
100008b8:	00070513          	mv	a0,a4
100008bc:	125010ef          	jal	ra,100021e0 <snprintf_>
100008c0:	be840793          	addi	a5,s0,-1048
100008c4:	00078593          	mv	a1,a5
100008c8:	00400513          	li	a0,4
100008cc:	ca5ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
100008d0:	100117b7          	lui	a5,0x10011
100008d4:	8e07a783          	lw	a5,-1824(a5) # 100108e0 <pDescSR>
100008d8:	0007a783          	lw	a5,0(a5)
100008dc:	fa0792e3          	bnez	a5,10000880 <get_remote_flag+0x1c>
    };
    uint32_t *src_lo_buf_hi = (uint32_t *)read_reg(desc_group, 4);
100008e0:	00400593          	li	a1,4
100008e4:	bdc42503          	lw	a0,-1060(s0)
100008e8:	dd1ff0ef          	jal	ra,100006b8 <read_reg>
100008ec:	00050793          	mv	a5,a0
100008f0:	fef42623          	sw	a5,-20(s0)
    uint32_t *src_lo_buf_lo = (uint32_t *)read_reg(desc_group+4, 4);
100008f4:	bdc42783          	lw	a5,-1060(s0)
100008f8:	01078793          	addi	a5,a5,16
100008fc:	00400593          	li	a1,4
10000900:	00078513          	mv	a0,a5
10000904:	db5ff0ef          	jal	ra,100006b8 <read_reg>
10000908:	00050793          	mv	a5,a0
1000090c:	fef42423          	sw	a5,-24(s0)
    trans_xdma(src_lo_buf_lo, src_lo_buf_hi, flag_remote_addr, 0x00000000, 4, 1, 1);
10000910:	fe842503          	lw	a0,-24(s0)
10000914:	fec42583          	lw	a1,-20(s0)
10000918:	bd842603          	lw	a2,-1064(s0)
1000091c:	00100813          	li	a6,1
10000920:	00100793          	li	a5,1
10000924:	00400713          	li	a4,4
10000928:	00000693          	li	a3,0
1000092c:	de9ff0ef          	jal	ra,10000714 <trans_xdma>
    // *pDescDirection_0xb0 = 1;
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;
    reg_write(BASE_ADDR_DSC_CTL | 0x0c, 0x20);
10000930:	100107b7          	lui	a5,0x10010
10000934:	5a47a783          	lw	a5,1444(a5) # 100105a4 <BASE_ADDR_DSC_CTL>
10000938:	00c7e793          	ori	a5,a5,12
1000093c:	02000593          	li	a1,32
10000940:	00078513          	mv	a0,a5
10000944:	d45ff0ef          	jal	ra,10000688 <reg_write>
    reg_write(BASE_ADDR_DSC_CTL | 0x10, 1);
10000948:	100107b7          	lui	a5,0x10010
1000094c:	5a47a783          	lw	a5,1444(a5) # 100105a4 <BASE_ADDR_DSC_CTL>
10000950:	0107e793          	ori	a5,a5,16
10000954:	00100593          	li	a1,1
10000958:	00078513          	mv	a0,a5
1000095c:	d2dff0ef          	jal	ra,10000688 <reg_write>
    reg_write(BASE_ADDR_DSC_CTL | 0x0, 1);
10000960:	100107b7          	lui	a5,0x10010
10000964:	5a47a783          	lw	a5,1444(a5) # 100105a4 <BASE_ADDR_DSC_CTL>
10000968:	00100593          	li	a1,1
1000096c:	00078513          	mv	a0,a5
10000970:	d19ff0ef          	jal	ra,10000688 <reg_write>
    // }
    // else{
    //     which_buf_remote = 0;
    // }
    // return which_buf_remote;
}
10000974:	00000013          	nop
10000978:	00078513          	mv	a0,a5
1000097c:	42c12083          	lw	ra,1068(sp)
10000980:	42812403          	lw	s0,1064(sp)
10000984:	43010113          	addi	sp,sp,1072
10000988:	00008067          	ret

1000098c <update_count>:

void update_count(uint32_t *flag_remote_addr)
{
1000098c:	be010113          	addi	sp,sp,-1056
10000990:	40112e23          	sw	ra,1052(sp)
10000994:	40812c23          	sw	s0,1048(sp)
10000998:	42010413          	addi	s0,sp,1056
1000099c:	bea42623          	sw	a0,-1044(s0)
    while(*pDescSR != 0)
100009a0:	0540006f          	j	100009f4 <update_count+0x68>
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
100009a4:	100117b7          	lui	a5,0x10011
100009a8:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100009ac:	00079463          	bnez	a5,100009b4 <update_count+0x28>
100009b0:	0440006f          	j	100009f4 <update_count+0x68>
100009b4:	bf040793          	addi	a5,s0,-1040
100009b8:	40000713          	li	a4,1024
100009bc:	00070613          	mv	a2,a4
100009c0:	00000593          	li	a1,0
100009c4:	00078513          	mv	a0,a5
100009c8:	1e1010ef          	jal	ra,100023a8 <memset>
100009cc:	bf040713          	addi	a4,s0,-1040
100009d0:	100107b7          	lui	a5,0x10010
100009d4:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xb9cc>
100009d8:	3ff00593          	li	a1,1023
100009dc:	00070513          	mv	a0,a4
100009e0:	001010ef          	jal	ra,100021e0 <snprintf_>
100009e4:	bf040793          	addi	a5,s0,-1040
100009e8:	00078593          	mv	a1,a5
100009ec:	00400513          	li	a0,4
100009f0:	b81ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
100009f4:	100117b7          	lui	a5,0x10011
100009f8:	8e07a783          	lw	a5,-1824(a5) # 100108e0 <pDescSR>
100009fc:	0007a783          	lw	a5,0(a5)
10000a00:	fa0792e3          	bnez	a5,100009a4 <update_count+0x18>
    };
    if(*flag_remote_addr == 0)
10000a04:	bec42783          	lw	a5,-1044(s0)
10000a08:	0007a783          	lw	a5,0(a5)
10000a0c:	00079c63          	bnez	a5,10000a24 <update_count+0x98>
    {
        count++;
10000a10:	100117b7          	lui	a5,0x10011
10000a14:	8d47a783          	lw	a5,-1836(a5) # 100108d4 <count>
10000a18:	00178713          	addi	a4,a5,1
10000a1c:	100117b7          	lui	a5,0x10011
10000a20:	8ce7aa23          	sw	a4,-1836(a5) # 100108d4 <count>
    }
}
10000a24:	00000013          	nop
10000a28:	41c12083          	lw	ra,1052(sp)
10000a2c:	41812403          	lw	s0,1048(sp)
10000a30:	42010113          	addi	sp,sp,1056
10000a34:	00008067          	ret

10000a38 <set_remote_falg>:
void set_remote_falg(uint32_t *desc_group, uint32_t *flag_remote_addr)
{
10000a38:	bd010113          	addi	sp,sp,-1072
10000a3c:	42112623          	sw	ra,1068(sp)
10000a40:	42812423          	sw	s0,1064(sp)
10000a44:	43010413          	addi	s0,sp,1072
10000a48:	bca42e23          	sw	a0,-1060(s0)
10000a4c:	bcb42c23          	sw	a1,-1064(s0)

    uint32_t *dst_lo_buf1_hi = (uint32_t *)read_reg(desc_group, 4);
10000a50:	00400593          	li	a1,4
10000a54:	bdc42503          	lw	a0,-1060(s0)
10000a58:	c61ff0ef          	jal	ra,100006b8 <read_reg>
10000a5c:	00050793          	mv	a5,a0
10000a60:	fef42623          	sw	a5,-20(s0)
    uint32_t *dst_lo_buf1_lo = (uint32_t *)read_reg(desc_group+4, 4);
10000a64:	bdc42783          	lw	a5,-1060(s0)
10000a68:	01078793          	addi	a5,a5,16
10000a6c:	00400593          	li	a1,4
10000a70:	00078513          	mv	a0,a5
10000a74:	c45ff0ef          	jal	ra,100006b8 <read_reg>
10000a78:	00050793          	mv	a5,a0
10000a7c:	fef42423          	sw	a5,-24(s0)
    trans_xdma(*(volatile uint32_t *)flag_remote_addr, 0x00000000, dst_lo_buf1_lo, dst_lo_buf1_hi, 4, 1, 1);
10000a80:	bd842783          	lw	a5,-1064(s0)
10000a84:	0007a503          	lw	a0,0(a5)
10000a88:	fe842603          	lw	a2,-24(s0)
10000a8c:	fec42683          	lw	a3,-20(s0)
10000a90:	00100813          	li	a6,1
10000a94:	00100793          	li	a5,1
10000a98:	00400713          	li	a4,4
10000a9c:	00000593          	li	a1,0
10000aa0:	c75ff0ef          	jal	ra,10000714 <trans_xdma>
    // *pDescDirection_0xb0 = 1;
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;
    while(*pDescSR != 0)
10000aa4:	0540006f          	j	10000af8 <set_remote_falg+0xc0>
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
10000aa8:	100117b7          	lui	a5,0x10011
10000aac:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10000ab0:	00079463          	bnez	a5,10000ab8 <set_remote_falg+0x80>
10000ab4:	0440006f          	j	10000af8 <set_remote_falg+0xc0>
10000ab8:	be840793          	addi	a5,s0,-1048
10000abc:	40000713          	li	a4,1024
10000ac0:	00070613          	mv	a2,a4
10000ac4:	00000593          	li	a1,0
10000ac8:	00078513          	mv	a0,a5
10000acc:	0dd010ef          	jal	ra,100023a8 <memset>
10000ad0:	be840713          	addi	a4,s0,-1048
10000ad4:	100107b7          	lui	a5,0x10010
10000ad8:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xb9cc>
10000adc:	3ff00593          	li	a1,1023
10000ae0:	00070513          	mv	a0,a4
10000ae4:	6fc010ef          	jal	ra,100021e0 <snprintf_>
10000ae8:	be840793          	addi	a5,s0,-1048
10000aec:	00078593          	mv	a1,a5
10000af0:	00400513          	li	a0,4
10000af4:	a7dff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
10000af8:	100117b7          	lui	a5,0x10011
10000afc:	8e07a783          	lw	a5,-1824(a5) # 100108e0 <pDescSR>
10000b00:	0007a783          	lw	a5,0(a5)
10000b04:	fa0792e3          	bnez	a5,10000aa8 <set_remote_falg+0x70>
    };
}
10000b08:	00000013          	nop
10000b0c:	42c12083          	lw	ra,1068(sp)
10000b10:	42812403          	lw	s0,1064(sp)
10000b14:	43010113          	addi	sp,sp,1072
10000b18:	00008067          	ret

10000b1c <transfer_set>:

//传输，0->1，并设置接口，每次传4个描述符，
void transfer_set(uint32_t *buf, uint32_t *desc_group)
{
10000b1c:	bd010113          	addi	sp,sp,-1072
10000b20:	42112623          	sw	ra,1068(sp)
10000b24:	42812423          	sw	s0,1064(sp)
10000b28:	42912223          	sw	s1,1060(sp)
10000b2c:	43212023          	sw	s2,1056(sp)
10000b30:	43010413          	addi	s0,sp,1072
10000b34:	bca42e23          	sw	a0,-1060(s0)
10000b38:	bcb42c23          	sw	a1,-1064(s0)
    uint32_t dsc_byp_dst_addr_hi;
    uint32_t dsc_byp_len;
    uint32_t dsc_byp_ctl;

    uint32_t desc_num;
    desc_num = read_reg((uint32_t *)(desc_group+28), 4);
10000b3c:	bd842783          	lw	a5,-1064(s0)
10000b40:	07078793          	addi	a5,a5,112
10000b44:	00400593          	li	a1,4
10000b48:	00078513          	mv	a0,a5
10000b4c:	b6dff0ef          	jal	ra,100006b8 <read_reg>
10000b50:	fea42423          	sw	a0,-24(s0)
    int count = 0;
10000b54:	fe042623          	sw	zero,-20(s0)
    while(count < desc_num)
10000b58:	0e40006f          	j	10000c3c <transfer_set+0x120>
    {
        uint32_t len = (uint32_t)read_reg((uint32_t *)(desc_group + 16 + count*12), 4);
10000b5c:	fec42703          	lw	a4,-20(s0)
10000b60:	00070793          	mv	a5,a4
10000b64:	00179793          	slli	a5,a5,0x1
10000b68:	00e787b3          	add	a5,a5,a4
10000b6c:	00479793          	slli	a5,a5,0x4
10000b70:	04078793          	addi	a5,a5,64
10000b74:	bd842703          	lw	a4,-1064(s0)
10000b78:	00f707b3          	add	a5,a4,a5
10000b7c:	00400593          	li	a1,4
10000b80:	00078513          	mv	a0,a5
10000b84:	b35ff0ef          	jal	ra,100006b8 <read_reg>
10000b88:	fea42223          	sw	a0,-28(s0)
        trans_xdma((uint32_t)(buf + len), (uint32_t)(0x00000000), (uint32_t)read_reg((uint32_t *)(desc_group + 20 + count*12), 4), (uint32_t)read_reg((uint32_t *)(desc_group + 24 + count*12), 4), len, count, desc_num);
10000b8c:	fe442783          	lw	a5,-28(s0)
10000b90:	00279793          	slli	a5,a5,0x2
10000b94:	bdc42703          	lw	a4,-1060(s0)
10000b98:	00f707b3          	add	a5,a4,a5
10000b9c:	00078493          	mv	s1,a5
10000ba0:	fec42703          	lw	a4,-20(s0)
10000ba4:	00070793          	mv	a5,a4
10000ba8:	00179793          	slli	a5,a5,0x1
10000bac:	00e787b3          	add	a5,a5,a4
10000bb0:	00479793          	slli	a5,a5,0x4
10000bb4:	05078793          	addi	a5,a5,80
10000bb8:	bd842703          	lw	a4,-1064(s0)
10000bbc:	00f707b3          	add	a5,a4,a5
10000bc0:	00400593          	li	a1,4
10000bc4:	00078513          	mv	a0,a5
10000bc8:	af1ff0ef          	jal	ra,100006b8 <read_reg>
10000bcc:	00050913          	mv	s2,a0
10000bd0:	fec42703          	lw	a4,-20(s0)
10000bd4:	00070793          	mv	a5,a4
10000bd8:	00179793          	slli	a5,a5,0x1
10000bdc:	00e787b3          	add	a5,a5,a4
10000be0:	00479793          	slli	a5,a5,0x4
10000be4:	06078793          	addi	a5,a5,96
10000be8:	bd842703          	lw	a4,-1064(s0)
10000bec:	00f707b3          	add	a5,a4,a5
10000bf0:	00400593          	li	a1,4
10000bf4:	00078513          	mv	a0,a5
10000bf8:	ac1ff0ef          	jal	ra,100006b8 <read_reg>
10000bfc:	00050693          	mv	a3,a0
10000c00:	fe842803          	lw	a6,-24(s0)
10000c04:	fec42783          	lw	a5,-20(s0)
10000c08:	fe442703          	lw	a4,-28(s0)
10000c0c:	00090613          	mv	a2,s2
10000c10:	00000593          	li	a1,0
10000c14:	00048513          	mv	a0,s1
10000c18:	afdff0ef          	jal	ra,10000714 <trans_xdma>
        count += 1;
10000c1c:	fec42783          	lw	a5,-20(s0)
10000c20:	00178793          	addi	a5,a5,1
10000c24:	fef42623          	sw	a5,-20(s0)
        buf += len;
10000c28:	fe442783          	lw	a5,-28(s0)
10000c2c:	00279793          	slli	a5,a5,0x2
10000c30:	bdc42703          	lw	a4,-1060(s0)
10000c34:	00f707b3          	add	a5,a4,a5
10000c38:	bcf42e23          	sw	a5,-1060(s0)
    while(count < desc_num)
10000c3c:	fec42783          	lw	a5,-20(s0)
10000c40:	fe842703          	lw	a4,-24(s0)
10000c44:	f0e7ece3          	bltu	a5,a4,10000b5c <transfer_set+0x40>
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;

    while(*pDescSR != 0)
10000c48:	0540006f          	j	10000c9c <transfer_set+0x180>
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
10000c4c:	100117b7          	lui	a5,0x10011
10000c50:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10000c54:	00079463          	bnez	a5,10000c5c <transfer_set+0x140>
10000c58:	0440006f          	j	10000c9c <transfer_set+0x180>
10000c5c:	be440793          	addi	a5,s0,-1052
10000c60:	40000713          	li	a4,1024
10000c64:	00070613          	mv	a2,a4
10000c68:	00000593          	li	a1,0
10000c6c:	00078513          	mv	a0,a5
10000c70:	738010ef          	jal	ra,100023a8 <memset>
10000c74:	be440713          	addi	a4,s0,-1052
10000c78:	100107b7          	lui	a5,0x10010
10000c7c:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xb9cc>
10000c80:	3ff00593          	li	a1,1023
10000c84:	00070513          	mv	a0,a4
10000c88:	558010ef          	jal	ra,100021e0 <snprintf_>
10000c8c:	be440793          	addi	a5,s0,-1052
10000c90:	00078593          	mv	a1,a5
10000c94:	00400513          	li	a0,4
10000c98:	8d9ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
10000c9c:	100117b7          	lui	a5,0x10011
10000ca0:	8e07a783          	lw	a5,-1824(a5) # 100108e0 <pDescSR>
10000ca4:	0007a783          	lw	a5,0(a5)
10000ca8:	fa0792e3          	bnez	a5,10000c4c <transfer_set+0x130>
    };
}
10000cac:	00000013          	nop
10000cb0:	42c12083          	lw	ra,1068(sp)
10000cb4:	42812403          	lw	s0,1064(sp)
10000cb8:	42412483          	lw	s1,1060(sp)
10000cbc:	42012903          	lw	s2,1056(sp)
10000cc0:	43010113          	addi	sp,sp,1072
10000cc4:	00008067          	ret

10000cc8 <main>:


void main()
{
10000cc8:	f8010113          	addi	sp,sp,-128
10000ccc:	06112e23          	sw	ra,124(sp)
10000cd0:	06812c23          	sw	s0,120(sp)
10000cd4:	08010413          	addi	s0,sp,128
    // initial the interrupt signal
    disable_intr();
10000cd8:	be0ff0ef          	jal	ra,100000b8 <disable_intr>
    const char SendingBuffer[100] = "####Hello World\n\r";
10000cdc:	100107b7          	lui	a5,0x10010
10000ce0:	0947a583          	lw	a1,148(a5) # 10010094 <p2p_demo+0xb9f0>
10000ce4:	09478713          	addi	a4,a5,148
10000ce8:	00472603          	lw	a2,4(a4)
10000cec:	09478713          	addi	a4,a5,148
10000cf0:	00872683          	lw	a3,8(a4)
10000cf4:	09478713          	addi	a4,a5,148
10000cf8:	00c72703          	lw	a4,12(a4)
10000cfc:	f8b42423          	sw	a1,-120(s0)
10000d00:	f8c42623          	sw	a2,-116(s0)
10000d04:	f8d42823          	sw	a3,-112(s0)
10000d08:	f8e42a23          	sw	a4,-108(s0)
10000d0c:	09478793          	addi	a5,a5,148
10000d10:	0107d783          	lhu	a5,16(a5)
10000d14:	f8f41c23          	sh	a5,-104(s0)
10000d18:	f9a40793          	addi	a5,s0,-102
10000d1c:	05200713          	li	a4,82
10000d20:	00070613          	mv	a2,a4
10000d24:	00000593          	li	a1,0
10000d28:	00078513          	mv	a0,a5
10000d2c:	67c010ef          	jal	ra,100023a8 <memset>
    XUartLite * instance0 = &XUartLiteInstances0;
10000d30:	100107b7          	lui	a5,0x10010
10000d34:	77878793          	addi	a5,a5,1912 # 10010778 <XUartLiteInstances0>
10000d38:	fef42623          	sw	a5,-20(s0)
    XUartLite_CfgInitialize(instance0,UARTLITE_BASEADDR_0);
10000d3c:	010005b7          	lui	a1,0x1000
10000d40:	fec42503          	lw	a0,-20(s0)
10000d44:	531010ef          	jal	ra,10002a74 <XUartLite_CfgInitialize>

    XUartLite_SendAll(instance0, (uint8_t *)SendingBuffer, 17);
10000d48:	f8840793          	addi	a5,s0,-120
10000d4c:	01100613          	li	a2,17
10000d50:	00078593          	mv	a1,a5
10000d54:	fec42503          	lw	a0,-20(s0)
10000d58:	2e8020ef          	jal	ra,10003040 <XUartLite_SendAll>

    p2p_demo();
10000d5c:	149030ef          	jal	ra,100046a4 <p2p_demo>
}
10000d60:	00000013          	nop
10000d64:	07c12083          	lw	ra,124(sp)
10000d68:	07812403          	lw	s0,120(sp)
10000d6c:	08010113          	addi	sp,sp,128
10000d70:	00008067          	ret

10000d74 <u_i_mod>:
#if defined(PRINTF_SUPPORT_FLOAT)
#include <float.h>
#endif

int u_i_mod(unsigned long value, unsigned long base)
{
10000d74:	fe010113          	addi	sp,sp,-32
10000d78:	00812e23          	sw	s0,28(sp)
10000d7c:	02010413          	addi	s0,sp,32
10000d80:	fea42623          	sw	a0,-20(s0)
10000d84:	feb42423          	sw	a1,-24(s0)
//    assert(value >= 0);
//    assert(base > 0);
    while(value >= 0 && value >= base)
10000d88:	0140006f          	j	10000d9c <u_i_mod+0x28>
    {
        // _amo_flags[8] = value;
        // _amo_flags[9] = base;
        value = value - base;
10000d8c:	fec42703          	lw	a4,-20(s0)
10000d90:	fe842783          	lw	a5,-24(s0)
10000d94:	40f707b3          	sub	a5,a4,a5
10000d98:	fef42623          	sw	a5,-20(s0)
    while(value >= 0 && value >= base)
10000d9c:	fec42703          	lw	a4,-20(s0)
10000da0:	fe842783          	lw	a5,-24(s0)
10000da4:	fef774e3          	bgeu	a4,a5,10000d8c <u_i_mod+0x18>
    }
    return value;
10000da8:	fec42783          	lw	a5,-20(s0)
}
10000dac:	00078513          	mv	a0,a5
10000db0:	01c12403          	lw	s0,28(sp)
10000db4:	02010113          	addi	sp,sp,32
10000db8:	00008067          	ret

10000dbc <bitwise_div_32>:

uint32_t bitwise_div_32(uint32_t dividend, uint32_t divisor)
{
10000dbc:	fd010113          	addi	sp,sp,-48
10000dc0:	02812623          	sw	s0,44(sp)
10000dc4:	03010413          	addi	s0,sp,48
10000dc8:	fca42e23          	sw	a0,-36(s0)
10000dcc:	fcb42c23          	sw	a1,-40(s0)
    if(divisor==0){
//         printf("³ýÊý²»ÄÜÎªÁã\n");
    }
    uint32_t quot, rem, t;
    int bits_left = 8 * sizeof (uint32_t); //CHAR_BIT *
10000dd0:	02000793          	li	a5,32
10000dd4:	fef42223          	sw	a5,-28(s0)
    quot = dividend;
10000dd8:	fdc42783          	lw	a5,-36(s0)
10000ddc:	fef42623          	sw	a5,-20(s0)
    rem = 0;
10000de0:	fe042423          	sw	zero,-24(s0)
    do {
            // (rem:quot) << 1
            t = quot;
10000de4:	fec42783          	lw	a5,-20(s0)
10000de8:	fef42023          	sw	a5,-32(s0)
            quot = quot + quot;
10000dec:	fec42783          	lw	a5,-20(s0)
10000df0:	00179793          	slli	a5,a5,0x1
10000df4:	fef42623          	sw	a5,-20(s0)
            rem = rem + rem + (quot < t);
10000df8:	fe842783          	lw	a5,-24(s0)
10000dfc:	00179793          	slli	a5,a5,0x1
10000e00:	fec42683          	lw	a3,-20(s0)
10000e04:	fe042703          	lw	a4,-32(s0)
10000e08:	00e6b733          	sltu	a4,a3,a4
10000e0c:	0ff77713          	andi	a4,a4,255
10000e10:	00e787b3          	add	a5,a5,a4
10000e14:	fef42423          	sw	a5,-24(s0)

            if (rem >= divisor) {
10000e18:	fe842703          	lw	a4,-24(s0)
10000e1c:	fd842783          	lw	a5,-40(s0)
10000e20:	02f76063          	bltu	a4,a5,10000e40 <bitwise_div_32+0x84>
                rem = rem - divisor;
10000e24:	fe842703          	lw	a4,-24(s0)
10000e28:	fd842783          	lw	a5,-40(s0)
10000e2c:	40f707b3          	sub	a5,a4,a5
10000e30:	fef42423          	sw	a5,-24(s0)
                quot = quot + 1;
10000e34:	fec42783          	lw	a5,-20(s0)
10000e38:	00178793          	addi	a5,a5,1
10000e3c:	fef42623          	sw	a5,-20(s0)
            }
            bits_left--;
10000e40:	fe442783          	lw	a5,-28(s0)
10000e44:	fff78793          	addi	a5,a5,-1
10000e48:	fef42223          	sw	a5,-28(s0)
    } while (bits_left);
10000e4c:	fe442783          	lw	a5,-28(s0)
10000e50:	f8079ae3          	bnez	a5,10000de4 <bitwise_div_32+0x28>
    return quot;
10000e54:	fec42783          	lw	a5,-20(s0)
}
10000e58:	00078513          	mv	a0,a5
10000e5c:	02c12403          	lw	s0,44(sp)
10000e60:	03010113          	addi	sp,sp,48
10000e64:	00008067          	ret

10000e68 <_out_buffer>:
  void *arg;
} out_fct_wrap_type;

// internal buffer output
static inline void _out_buffer(char character, void *buffer, size_t idx, size_t maxlen)
{
10000e68:	fe010113          	addi	sp,sp,-32
10000e6c:	00812e23          	sw	s0,28(sp)
10000e70:	02010413          	addi	s0,sp,32
10000e74:	00050793          	mv	a5,a0
10000e78:	feb42423          	sw	a1,-24(s0)
10000e7c:	fec42223          	sw	a2,-28(s0)
10000e80:	fed42023          	sw	a3,-32(s0)
10000e84:	fef407a3          	sb	a5,-17(s0)
  if (idx < maxlen)
10000e88:	fe442703          	lw	a4,-28(s0)
10000e8c:	fe042783          	lw	a5,-32(s0)
10000e90:	00f77c63          	bgeu	a4,a5,10000ea8 <_out_buffer+0x40>
  {
    ((char *)buffer)[idx] = character;
10000e94:	fe842703          	lw	a4,-24(s0)
10000e98:	fe442783          	lw	a5,-28(s0)
10000e9c:	00f707b3          	add	a5,a4,a5
10000ea0:	fef44703          	lbu	a4,-17(s0)
10000ea4:	00e78023          	sb	a4,0(a5)
  }
}
10000ea8:	00000013          	nop
10000eac:	01c12403          	lw	s0,28(sp)
10000eb0:	02010113          	addi	sp,sp,32
10000eb4:	00008067          	ret

10000eb8 <_out_null>:

// internal null output
static inline void _out_null(char character, void *buffer, size_t idx, size_t maxlen)
{
10000eb8:	fe010113          	addi	sp,sp,-32
10000ebc:	00812e23          	sw	s0,28(sp)
10000ec0:	02010413          	addi	s0,sp,32
10000ec4:	00050793          	mv	a5,a0
10000ec8:	feb42423          	sw	a1,-24(s0)
10000ecc:	fec42223          	sw	a2,-28(s0)
10000ed0:	fed42023          	sw	a3,-32(s0)
10000ed4:	fef407a3          	sb	a5,-17(s0)
  (void)character;
  (void)buffer;
  (void)idx;
  (void)maxlen;
}
10000ed8:	00000013          	nop
10000edc:	01c12403          	lw	s0,28(sp)
10000ee0:	02010113          	addi	sp,sp,32
10000ee4:	00008067          	ret

10000ee8 <_out_char>:

// internal _putchar wrapper
static inline void _out_char(char character, void *buffer, size_t idx, size_t maxlen)
{
10000ee8:	fe010113          	addi	sp,sp,-32
10000eec:	00112e23          	sw	ra,28(sp)
10000ef0:	00812c23          	sw	s0,24(sp)
10000ef4:	02010413          	addi	s0,sp,32
10000ef8:	00050793          	mv	a5,a0
10000efc:	feb42423          	sw	a1,-24(s0)
10000f00:	fec42223          	sw	a2,-28(s0)
10000f04:	fed42023          	sw	a3,-32(s0)
10000f08:	fef407a3          	sb	a5,-17(s0)
  (void)buffer;
  (void)idx;
  (void)maxlen;
  // if (character) {
  _putchar(character);
10000f0c:	fef44783          	lbu	a5,-17(s0)
10000f10:	00078513          	mv	a0,a5
10000f14:	470010ef          	jal	ra,10002384 <_putchar>
  // }
}
10000f18:	00000013          	nop
10000f1c:	01c12083          	lw	ra,28(sp)
10000f20:	01812403          	lw	s0,24(sp)
10000f24:	02010113          	addi	sp,sp,32
10000f28:	00008067          	ret

10000f2c <_out_fct>:

// internal output function wrapper
static inline void _out_fct(char character, void *buffer, size_t idx, size_t maxlen)
{
10000f2c:	fe010113          	addi	sp,sp,-32
10000f30:	00112e23          	sw	ra,28(sp)
10000f34:	00812c23          	sw	s0,24(sp)
10000f38:	02010413          	addi	s0,sp,32
10000f3c:	00050793          	mv	a5,a0
10000f40:	feb42423          	sw	a1,-24(s0)
10000f44:	fec42223          	sw	a2,-28(s0)
10000f48:	fed42023          	sw	a3,-32(s0)
10000f4c:	fef407a3          	sb	a5,-17(s0)
  (void)idx;
  (void)maxlen;
  if (character)
10000f50:	fef44783          	lbu	a5,-17(s0)
10000f54:	02078263          	beqz	a5,10000f78 <_out_fct+0x4c>
  {
    // buffer is the output fct pointer
    ((out_fct_wrap_type *)buffer)->fct(character, ((out_fct_wrap_type *)buffer)->arg);
10000f58:	fe842783          	lw	a5,-24(s0)
10000f5c:	0007a683          	lw	a3,0(a5)
10000f60:	fe842783          	lw	a5,-24(s0)
10000f64:	0047a703          	lw	a4,4(a5)
10000f68:	fef44783          	lbu	a5,-17(s0)
10000f6c:	00070593          	mv	a1,a4
10000f70:	00078513          	mv	a0,a5
10000f74:	000680e7          	jalr	a3
  }
}
10000f78:	00000013          	nop
10000f7c:	01c12083          	lw	ra,28(sp)
10000f80:	01812403          	lw	s0,24(sp)
10000f84:	02010113          	addi	sp,sp,32
10000f88:	00008067          	ret

10000f8c <_strnlen_s>:

// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char *str, size_t maxsize)
{
10000f8c:	fd010113          	addi	sp,sp,-48
10000f90:	02812623          	sw	s0,44(sp)
10000f94:	03010413          	addi	s0,sp,48
10000f98:	fca42e23          	sw	a0,-36(s0)
10000f9c:	fcb42c23          	sw	a1,-40(s0)
  const char *s;
  for (s = str; *s && maxsize--; ++s)
10000fa0:	fdc42783          	lw	a5,-36(s0)
10000fa4:	fef42623          	sw	a5,-20(s0)
10000fa8:	0100006f          	j	10000fb8 <_strnlen_s+0x2c>
10000fac:	fec42783          	lw	a5,-20(s0)
10000fb0:	00178793          	addi	a5,a5,1
10000fb4:	fef42623          	sw	a5,-20(s0)
10000fb8:	fec42783          	lw	a5,-20(s0)
10000fbc:	0007c783          	lbu	a5,0(a5)
10000fc0:	00078a63          	beqz	a5,10000fd4 <_strnlen_s+0x48>
10000fc4:	fd842783          	lw	a5,-40(s0)
10000fc8:	fff78713          	addi	a4,a5,-1
10000fcc:	fce42c23          	sw	a4,-40(s0)
10000fd0:	fc079ee3          	bnez	a5,10000fac <_strnlen_s+0x20>
    ;
  return (unsigned int)(s - str);
10000fd4:	fec42703          	lw	a4,-20(s0)
10000fd8:	fdc42783          	lw	a5,-36(s0)
10000fdc:	40f707b3          	sub	a5,a4,a5
}
10000fe0:	00078513          	mv	a0,a5
10000fe4:	02c12403          	lw	s0,44(sp)
10000fe8:	03010113          	addi	sp,sp,48
10000fec:	00008067          	ret

10000ff0 <_is_digit>:

// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
10000ff0:	fe010113          	addi	sp,sp,-32
10000ff4:	00812e23          	sw	s0,28(sp)
10000ff8:	02010413          	addi	s0,sp,32
10000ffc:	00050793          	mv	a5,a0
10001000:	fef407a3          	sb	a5,-17(s0)
  return (ch >= '0') && (ch <= '9');
10001004:	fef44703          	lbu	a4,-17(s0)
10001008:	02f00793          	li	a5,47
1000100c:	00e7fc63          	bgeu	a5,a4,10001024 <_is_digit+0x34>
10001010:	fef44703          	lbu	a4,-17(s0)
10001014:	03900793          	li	a5,57
10001018:	00e7e663          	bltu	a5,a4,10001024 <_is_digit+0x34>
1000101c:	00100793          	li	a5,1
10001020:	0080006f          	j	10001028 <_is_digit+0x38>
10001024:	00000793          	li	a5,0
10001028:	0017f793          	andi	a5,a5,1
1000102c:	0ff7f793          	andi	a5,a5,255
}
10001030:	00078513          	mv	a0,a5
10001034:	01c12403          	lw	s0,28(sp)
10001038:	02010113          	addi	sp,sp,32
1000103c:	00008067          	ret

10001040 <_atoi>:

// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char **str)
{
10001040:	fd010113          	addi	sp,sp,-48
10001044:	02112623          	sw	ra,44(sp)
10001048:	02812423          	sw	s0,40(sp)
1000104c:	03010413          	addi	s0,sp,48
10001050:	fca42e23          	sw	a0,-36(s0)
  unsigned int i = 0U;
10001054:	fe042623          	sw	zero,-20(s0)
  while (_is_digit(**str))
10001058:	0400006f          	j	10001098 <_atoi+0x58>
  {
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
1000105c:	fec42703          	lw	a4,-20(s0)
10001060:	00070793          	mv	a5,a4
10001064:	00279793          	slli	a5,a5,0x2
10001068:	00e787b3          	add	a5,a5,a4
1000106c:	00179793          	slli	a5,a5,0x1
10001070:	00078613          	mv	a2,a5
10001074:	fdc42783          	lw	a5,-36(s0)
10001078:	0007a783          	lw	a5,0(a5)
1000107c:	00178693          	addi	a3,a5,1
10001080:	fdc42703          	lw	a4,-36(s0)
10001084:	00d72023          	sw	a3,0(a4)
10001088:	0007c783          	lbu	a5,0(a5)
1000108c:	00f607b3          	add	a5,a2,a5
10001090:	fd078793          	addi	a5,a5,-48
10001094:	fef42623          	sw	a5,-20(s0)
  while (_is_digit(**str))
10001098:	fdc42783          	lw	a5,-36(s0)
1000109c:	0007a783          	lw	a5,0(a5)
100010a0:	0007c783          	lbu	a5,0(a5)
100010a4:	00078513          	mv	a0,a5
100010a8:	f49ff0ef          	jal	ra,10000ff0 <_is_digit>
100010ac:	00050793          	mv	a5,a0
100010b0:	fa0796e3          	bnez	a5,1000105c <_atoi+0x1c>
  }
  return i;
100010b4:	fec42783          	lw	a5,-20(s0)
}
100010b8:	00078513          	mv	a0,a5
100010bc:	02c12083          	lw	ra,44(sp)
100010c0:	02812403          	lw	s0,40(sp)
100010c4:	03010113          	addi	sp,sp,48
100010c8:	00008067          	ret

100010cc <_out_rev>:

// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char *buffer, size_t idx, size_t maxlen, const char *buf, size_t len, unsigned int width, unsigned int flags)
{
100010cc:	fc010113          	addi	sp,sp,-64
100010d0:	02112e23          	sw	ra,60(sp)
100010d4:	02812c23          	sw	s0,56(sp)
100010d8:	04010413          	addi	s0,sp,64
100010dc:	fca42e23          	sw	a0,-36(s0)
100010e0:	fcb42c23          	sw	a1,-40(s0)
100010e4:	fcc42a23          	sw	a2,-44(s0)
100010e8:	fcd42823          	sw	a3,-48(s0)
100010ec:	fce42623          	sw	a4,-52(s0)
100010f0:	fcf42423          	sw	a5,-56(s0)
100010f4:	fd042223          	sw	a6,-60(s0)
100010f8:	fd142023          	sw	a7,-64(s0)
  const size_t start_idx = idx;
100010fc:	fd442783          	lw	a5,-44(s0)
10001100:	fef42423          	sw	a5,-24(s0)

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD))
10001104:	fc042783          	lw	a5,-64(s0)
10001108:	0027f793          	andi	a5,a5,2
1000110c:	08079c63          	bnez	a5,100011a4 <_out_rev+0xd8>
10001110:	fc042783          	lw	a5,-64(s0)
10001114:	0017f793          	andi	a5,a5,1
10001118:	08079663          	bnez	a5,100011a4 <_out_rev+0xd8>
  {
    for (size_t i = len; i < width; i++)
1000111c:	fc842783          	lw	a5,-56(s0)
10001120:	fef42623          	sw	a5,-20(s0)
10001124:	0340006f          	j	10001158 <_out_rev+0x8c>
    {
      out(' ', buffer, idx++, maxlen);
10001128:	fd442783          	lw	a5,-44(s0)
1000112c:	00178713          	addi	a4,a5,1
10001130:	fce42a23          	sw	a4,-44(s0)
10001134:	fdc42703          	lw	a4,-36(s0)
10001138:	fd042683          	lw	a3,-48(s0)
1000113c:	00078613          	mv	a2,a5
10001140:	fd842583          	lw	a1,-40(s0)
10001144:	02000513          	li	a0,32
10001148:	000700e7          	jalr	a4
    for (size_t i = len; i < width; i++)
1000114c:	fec42783          	lw	a5,-20(s0)
10001150:	00178793          	addi	a5,a5,1
10001154:	fef42623          	sw	a5,-20(s0)
10001158:	fec42703          	lw	a4,-20(s0)
1000115c:	fc442783          	lw	a5,-60(s0)
10001160:	fcf764e3          	bltu	a4,a5,10001128 <_out_rev+0x5c>
    }
  }

  // reverse string
  while (len)
10001164:	0400006f          	j	100011a4 <_out_rev+0xd8>
  {
    out(buf[--len], buffer, idx++, maxlen);
10001168:	fc842783          	lw	a5,-56(s0)
1000116c:	fff78793          	addi	a5,a5,-1
10001170:	fcf42423          	sw	a5,-56(s0)
10001174:	fcc42703          	lw	a4,-52(s0)
10001178:	fc842783          	lw	a5,-56(s0)
1000117c:	00f707b3          	add	a5,a4,a5
10001180:	0007c503          	lbu	a0,0(a5)
10001184:	fd442783          	lw	a5,-44(s0)
10001188:	00178713          	addi	a4,a5,1
1000118c:	fce42a23          	sw	a4,-44(s0)
10001190:	fdc42703          	lw	a4,-36(s0)
10001194:	fd042683          	lw	a3,-48(s0)
10001198:	00078613          	mv	a2,a5
1000119c:	fd842583          	lw	a1,-40(s0)
100011a0:	000700e7          	jalr	a4
  while (len)
100011a4:	fc842783          	lw	a5,-56(s0)
100011a8:	fc0790e3          	bnez	a5,10001168 <_out_rev+0x9c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT)
100011ac:	fc042783          	lw	a5,-64(s0)
100011b0:	0027f793          	andi	a5,a5,2
100011b4:	04078063          	beqz	a5,100011f4 <_out_rev+0x128>
  {
    while (idx - start_idx < width)
100011b8:	0280006f          	j	100011e0 <_out_rev+0x114>
    {
      out(' ', buffer, idx++, maxlen);
100011bc:	fd442783          	lw	a5,-44(s0)
100011c0:	00178713          	addi	a4,a5,1
100011c4:	fce42a23          	sw	a4,-44(s0)
100011c8:	fdc42703          	lw	a4,-36(s0)
100011cc:	fd042683          	lw	a3,-48(s0)
100011d0:	00078613          	mv	a2,a5
100011d4:	fd842583          	lw	a1,-40(s0)
100011d8:	02000513          	li	a0,32
100011dc:	000700e7          	jalr	a4
    while (idx - start_idx < width)
100011e0:	fd442703          	lw	a4,-44(s0)
100011e4:	fe842783          	lw	a5,-24(s0)
100011e8:	40f707b3          	sub	a5,a4,a5
100011ec:	fc442703          	lw	a4,-60(s0)
100011f0:	fce7e6e3          	bltu	a5,a4,100011bc <_out_rev+0xf0>
    }
  }

  return idx;
100011f4:	fd442783          	lw	a5,-44(s0)
}
100011f8:	00078513          	mv	a0,a5
100011fc:	03c12083          	lw	ra,60(sp)
10001200:	03812403          	lw	s0,56(sp)
10001204:	04010113          	addi	sp,sp,64
10001208:	00008067          	ret

1000120c <_ntoa_format>:

// internal itoa format
static size_t _ntoa_format(out_fct_type out, char *buffer, size_t idx, size_t maxlen, char *buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
1000120c:	fd010113          	addi	sp,sp,-48
10001210:	02112623          	sw	ra,44(sp)
10001214:	02812423          	sw	s0,40(sp)
10001218:	03010413          	addi	s0,sp,48
1000121c:	fea42623          	sw	a0,-20(s0)
10001220:	feb42423          	sw	a1,-24(s0)
10001224:	fec42223          	sw	a2,-28(s0)
10001228:	fed42023          	sw	a3,-32(s0)
1000122c:	fce42e23          	sw	a4,-36(s0)
10001230:	fcf42c23          	sw	a5,-40(s0)
10001234:	00080793          	mv	a5,a6
10001238:	fd142823          	sw	a7,-48(s0)
1000123c:	fcf40ba3          	sb	a5,-41(s0)
  // pad leading zeros
  if (!(flags & FLAGS_LEFT))
10001240:	00842783          	lw	a5,8(s0)
10001244:	0027f793          	andi	a5,a5,2
10001248:	0a079a63          	bnez	a5,100012fc <_ntoa_format+0xf0>
  {
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE))))
1000124c:	00442783          	lw	a5,4(s0)
10001250:	04078863          	beqz	a5,100012a0 <_ntoa_format+0x94>
10001254:	00842783          	lw	a5,8(s0)
10001258:	0017f793          	andi	a5,a5,1
1000125c:	04078263          	beqz	a5,100012a0 <_ntoa_format+0x94>
10001260:	fd744783          	lbu	a5,-41(s0)
10001264:	00079863          	bnez	a5,10001274 <_ntoa_format+0x68>
10001268:	00842783          	lw	a5,8(s0)
1000126c:	00c7f793          	andi	a5,a5,12
10001270:	02078863          	beqz	a5,100012a0 <_ntoa_format+0x94>
    {
      width--;
10001274:	00442783          	lw	a5,4(s0)
10001278:	fff78793          	addi	a5,a5,-1
1000127c:	00f42223          	sw	a5,4(s0)
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE))
10001280:	0200006f          	j	100012a0 <_ntoa_format+0x94>
    {
      buf[len++] = '0';
10001284:	fd842783          	lw	a5,-40(s0)
10001288:	00178713          	addi	a4,a5,1
1000128c:	fce42c23          	sw	a4,-40(s0)
10001290:	fdc42703          	lw	a4,-36(s0)
10001294:	00f707b3          	add	a5,a4,a5
10001298:	03000713          	li	a4,48
1000129c:	00e78023          	sb	a4,0(a5)
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE))
100012a0:	fd842703          	lw	a4,-40(s0)
100012a4:	00042783          	lw	a5,0(s0)
100012a8:	02f77863          	bgeu	a4,a5,100012d8 <_ntoa_format+0xcc>
100012ac:	fd842703          	lw	a4,-40(s0)
100012b0:	01f00793          	li	a5,31
100012b4:	fce7f8e3          	bgeu	a5,a4,10001284 <_ntoa_format+0x78>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE))
100012b8:	0200006f          	j	100012d8 <_ntoa_format+0xcc>
    {
      buf[len++] = '0';
100012bc:	fd842783          	lw	a5,-40(s0)
100012c0:	00178713          	addi	a4,a5,1
100012c4:	fce42c23          	sw	a4,-40(s0)
100012c8:	fdc42703          	lw	a4,-36(s0)
100012cc:	00f707b3          	add	a5,a4,a5
100012d0:	03000713          	li	a4,48
100012d4:	00e78023          	sb	a4,0(a5)
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE))
100012d8:	00842783          	lw	a5,8(s0)
100012dc:	0017f793          	andi	a5,a5,1
100012e0:	00078e63          	beqz	a5,100012fc <_ntoa_format+0xf0>
100012e4:	fd842703          	lw	a4,-40(s0)
100012e8:	00442783          	lw	a5,4(s0)
100012ec:	00f77863          	bgeu	a4,a5,100012fc <_ntoa_format+0xf0>
100012f0:	fd842703          	lw	a4,-40(s0)
100012f4:	01f00793          	li	a5,31
100012f8:	fce7f2e3          	bgeu	a5,a4,100012bc <_ntoa_format+0xb0>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH)
100012fc:	00842783          	lw	a5,8(s0)
10001300:	0107f793          	andi	a5,a5,16
10001304:	14078063          	beqz	a5,10001444 <_ntoa_format+0x238>
  {
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width)))
10001308:	00842783          	lw	a5,8(s0)
1000130c:	4007f793          	andi	a5,a5,1024
10001310:	04079863          	bnez	a5,10001360 <_ntoa_format+0x154>
10001314:	fd842783          	lw	a5,-40(s0)
10001318:	04078463          	beqz	a5,10001360 <_ntoa_format+0x154>
1000131c:	fd842703          	lw	a4,-40(s0)
10001320:	00042783          	lw	a5,0(s0)
10001324:	00f70863          	beq	a4,a5,10001334 <_ntoa_format+0x128>
10001328:	fd842703          	lw	a4,-40(s0)
1000132c:	00442783          	lw	a5,4(s0)
10001330:	02f71863          	bne	a4,a5,10001360 <_ntoa_format+0x154>
    {
      len--;
10001334:	fd842783          	lw	a5,-40(s0)
10001338:	fff78793          	addi	a5,a5,-1
1000133c:	fcf42c23          	sw	a5,-40(s0)
      if (len && (base == 16U))
10001340:	fd842783          	lw	a5,-40(s0)
10001344:	00078e63          	beqz	a5,10001360 <_ntoa_format+0x154>
10001348:	fd042703          	lw	a4,-48(s0)
1000134c:	01000793          	li	a5,16
10001350:	00f71863          	bne	a4,a5,10001360 <_ntoa_format+0x154>
      {
        len--;
10001354:	fd842783          	lw	a5,-40(s0)
10001358:	fff78793          	addi	a5,a5,-1
1000135c:	fcf42c23          	sw	a5,-40(s0)
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE))
10001360:	fd042703          	lw	a4,-48(s0)
10001364:	01000793          	li	a5,16
10001368:	02f71e63          	bne	a4,a5,100013a4 <_ntoa_format+0x198>
1000136c:	00842783          	lw	a5,8(s0)
10001370:	0207f793          	andi	a5,a5,32
10001374:	02079863          	bnez	a5,100013a4 <_ntoa_format+0x198>
10001378:	fd842703          	lw	a4,-40(s0)
1000137c:	01f00793          	li	a5,31
10001380:	02e7e263          	bltu	a5,a4,100013a4 <_ntoa_format+0x198>
    {
      buf[len++] = 'x';
10001384:	fd842783          	lw	a5,-40(s0)
10001388:	00178713          	addi	a4,a5,1
1000138c:	fce42c23          	sw	a4,-40(s0)
10001390:	fdc42703          	lw	a4,-36(s0)
10001394:	00f707b3          	add	a5,a4,a5
10001398:	07800713          	li	a4,120
1000139c:	00e78023          	sb	a4,0(a5)
100013a0:	07c0006f          	j	1000141c <_ntoa_format+0x210>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE))
100013a4:	fd042703          	lw	a4,-48(s0)
100013a8:	01000793          	li	a5,16
100013ac:	02f71e63          	bne	a4,a5,100013e8 <_ntoa_format+0x1dc>
100013b0:	00842783          	lw	a5,8(s0)
100013b4:	0207f793          	andi	a5,a5,32
100013b8:	02078863          	beqz	a5,100013e8 <_ntoa_format+0x1dc>
100013bc:	fd842703          	lw	a4,-40(s0)
100013c0:	01f00793          	li	a5,31
100013c4:	02e7e263          	bltu	a5,a4,100013e8 <_ntoa_format+0x1dc>
    {
      buf[len++] = 'X';
100013c8:	fd842783          	lw	a5,-40(s0)
100013cc:	00178713          	addi	a4,a5,1
100013d0:	fce42c23          	sw	a4,-40(s0)
100013d4:	fdc42703          	lw	a4,-36(s0)
100013d8:	00f707b3          	add	a5,a4,a5
100013dc:	05800713          	li	a4,88
100013e0:	00e78023          	sb	a4,0(a5)
100013e4:	0380006f          	j	1000141c <_ntoa_format+0x210>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE))
100013e8:	fd042703          	lw	a4,-48(s0)
100013ec:	00200793          	li	a5,2
100013f0:	02f71663          	bne	a4,a5,1000141c <_ntoa_format+0x210>
100013f4:	fd842703          	lw	a4,-40(s0)
100013f8:	01f00793          	li	a5,31
100013fc:	02e7e063          	bltu	a5,a4,1000141c <_ntoa_format+0x210>
    {
      buf[len++] = 'b';
10001400:	fd842783          	lw	a5,-40(s0)
10001404:	00178713          	addi	a4,a5,1
10001408:	fce42c23          	sw	a4,-40(s0)
1000140c:	fdc42703          	lw	a4,-36(s0)
10001410:	00f707b3          	add	a5,a4,a5
10001414:	06200713          	li	a4,98
10001418:	00e78023          	sb	a4,0(a5)
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE)
1000141c:	fd842703          	lw	a4,-40(s0)
10001420:	01f00793          	li	a5,31
10001424:	02e7e063          	bltu	a5,a4,10001444 <_ntoa_format+0x238>
    {
      buf[len++] = '0';
10001428:	fd842783          	lw	a5,-40(s0)
1000142c:	00178713          	addi	a4,a5,1
10001430:	fce42c23          	sw	a4,-40(s0)
10001434:	fdc42703          	lw	a4,-36(s0)
10001438:	00f707b3          	add	a5,a4,a5
1000143c:	03000713          	li	a4,48
10001440:	00e78023          	sb	a4,0(a5)
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE)
10001444:	fd842703          	lw	a4,-40(s0)
10001448:	01f00793          	li	a5,31
1000144c:	08e7e063          	bltu	a5,a4,100014cc <_ntoa_format+0x2c0>
  {
    if (negative)
10001450:	fd744783          	lbu	a5,-41(s0)
10001454:	02078263          	beqz	a5,10001478 <_ntoa_format+0x26c>
    {
      buf[len++] = '-';
10001458:	fd842783          	lw	a5,-40(s0)
1000145c:	00178713          	addi	a4,a5,1
10001460:	fce42c23          	sw	a4,-40(s0)
10001464:	fdc42703          	lw	a4,-36(s0)
10001468:	00f707b3          	add	a5,a4,a5
1000146c:	02d00713          	li	a4,45
10001470:	00e78023          	sb	a4,0(a5)
10001474:	0580006f          	j	100014cc <_ntoa_format+0x2c0>
    }
    else if (flags & FLAGS_PLUS)
10001478:	00842783          	lw	a5,8(s0)
1000147c:	0047f793          	andi	a5,a5,4
10001480:	02078263          	beqz	a5,100014a4 <_ntoa_format+0x298>
    {
      buf[len++] = '+'; // ignore the space if the '+' exists
10001484:	fd842783          	lw	a5,-40(s0)
10001488:	00178713          	addi	a4,a5,1
1000148c:	fce42c23          	sw	a4,-40(s0)
10001490:	fdc42703          	lw	a4,-36(s0)
10001494:	00f707b3          	add	a5,a4,a5
10001498:	02b00713          	li	a4,43
1000149c:	00e78023          	sb	a4,0(a5)
100014a0:	02c0006f          	j	100014cc <_ntoa_format+0x2c0>
    }
    else if (flags & FLAGS_SPACE)
100014a4:	00842783          	lw	a5,8(s0)
100014a8:	0087f793          	andi	a5,a5,8
100014ac:	02078063          	beqz	a5,100014cc <_ntoa_format+0x2c0>
    {
      buf[len++] = ' ';
100014b0:	fd842783          	lw	a5,-40(s0)
100014b4:	00178713          	addi	a4,a5,1
100014b8:	fce42c23          	sw	a4,-40(s0)
100014bc:	fdc42703          	lw	a4,-36(s0)
100014c0:	00f707b3          	add	a5,a4,a5
100014c4:	02000713          	li	a4,32
100014c8:	00e78023          	sb	a4,0(a5)
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
100014cc:	00842883          	lw	a7,8(s0)
100014d0:	00442803          	lw	a6,4(s0)
100014d4:	fd842783          	lw	a5,-40(s0)
100014d8:	fdc42703          	lw	a4,-36(s0)
100014dc:	fe042683          	lw	a3,-32(s0)
100014e0:	fe442603          	lw	a2,-28(s0)
100014e4:	fe842583          	lw	a1,-24(s0)
100014e8:	fec42503          	lw	a0,-20(s0)
100014ec:	be1ff0ef          	jal	ra,100010cc <_out_rev>
100014f0:	00050793          	mv	a5,a0
}
100014f4:	00078513          	mv	a0,a5
100014f8:	02c12083          	lw	ra,44(sp)
100014fc:	02812403          	lw	s0,40(sp)
10001500:	03010113          	addi	sp,sp,48
10001504:	00008067          	ret

10001508 <_ntoa_long>:

// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char *buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
10001508:	f9010113          	addi	sp,sp,-112
1000150c:	06112623          	sw	ra,108(sp)
10001510:	06812423          	sw	s0,104(sp)
10001514:	07010413          	addi	s0,sp,112
10001518:	faa42e23          	sw	a0,-68(s0)
1000151c:	fab42c23          	sw	a1,-72(s0)
10001520:	fac42a23          	sw	a2,-76(s0)
10001524:	fad42823          	sw	a3,-80(s0)
10001528:	fae42623          	sw	a4,-84(s0)
1000152c:	fb042223          	sw	a6,-92(s0)
10001530:	fb142023          	sw	a7,-96(s0)
10001534:	faf405a3          	sb	a5,-85(s0)
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
10001538:	fe042623          	sw	zero,-20(s0)

  // no hash for 0 values
  if (!value)
1000153c:	fac42783          	lw	a5,-84(s0)
10001540:	00079863          	bnez	a5,10001550 <_ntoa_long+0x48>
  {
    flags &= ~FLAGS_HASH;
10001544:	00442783          	lw	a5,4(s0)
10001548:	fef7f793          	andi	a5,a5,-17
1000154c:	00f42223          	sw	a5,4(s0)
  }

      // _amo_flags[3] = value;
  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value)
10001550:	00442783          	lw	a5,4(s0)
10001554:	4007f793          	andi	a5,a5,1024
10001558:	00078663          	beqz	a5,10001564 <_ntoa_long+0x5c>
1000155c:	fac42783          	lw	a5,-84(s0)
10001560:	08078c63          	beqz	a5,100015f8 <_ntoa_long+0xf0>
  {
    do
    {
      // _amo_flags[4] = value;
     const char digit = (char)(value % base);
10001564:	fac42703          	lw	a4,-84(s0)
10001568:	fa442783          	lw	a5,-92(s0)
1000156c:	02f777b3          	remu	a5,a4,a5
10001570:	fef405a3          	sb	a5,-21(s0)
      //  const char digit = (char)(u_i_mod(value, base));
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
10001574:	feb44703          	lbu	a4,-21(s0)
10001578:	00900793          	li	a5,9
1000157c:	00e7ea63          	bltu	a5,a4,10001590 <_ntoa_long+0x88>
10001580:	feb44783          	lbu	a5,-21(s0)
10001584:	03078793          	addi	a5,a5,48
10001588:	0ff7f793          	andi	a5,a5,255
1000158c:	0300006f          	j	100015bc <_ntoa_long+0xb4>
10001590:	00442783          	lw	a5,4(s0)
10001594:	0207f793          	andi	a5,a5,32
10001598:	00078663          	beqz	a5,100015a4 <_ntoa_long+0x9c>
1000159c:	04100793          	li	a5,65
100015a0:	0080006f          	j	100015a8 <_ntoa_long+0xa0>
100015a4:	06100793          	li	a5,97
100015a8:	feb44703          	lbu	a4,-21(s0)
100015ac:	00e787b3          	add	a5,a5,a4
100015b0:	0ff7f793          	andi	a5,a5,255
100015b4:	ff678793          	addi	a5,a5,-10
100015b8:	0ff7f793          	andi	a5,a5,255
100015bc:	fec42703          	lw	a4,-20(s0)
100015c0:	00170693          	addi	a3,a4,1
100015c4:	fed42623          	sw	a3,-20(s0)
100015c8:	ff040693          	addi	a3,s0,-16
100015cc:	00e68733          	add	a4,a3,a4
100015d0:	fcf70c23          	sb	a5,-40(a4)

     value /= base;
100015d4:	fac42703          	lw	a4,-84(s0)
100015d8:	fa442783          	lw	a5,-92(s0)
100015dc:	02f757b3          	divu	a5,a4,a5
100015e0:	faf42623          	sw	a5,-84(s0)
      //  value = bitwise_div_32(value, base);
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
100015e4:	fac42783          	lw	a5,-84(s0)
100015e8:	00078863          	beqz	a5,100015f8 <_ntoa_long+0xf0>
100015ec:	fec42703          	lw	a4,-20(s0)
100015f0:	01f00793          	li	a5,31
100015f4:	f6e7f8e3          	bgeu	a5,a4,10001564 <_ntoa_long+0x5c>
  //      ((char *)_amo_flags)[13] = buf[0];
  //      ((char *)_amo_flags)[14] = len;
  //   // }
  // }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
100015f8:	fab44683          	lbu	a3,-85(s0)
100015fc:	fc840713          	addi	a4,s0,-56
10001600:	00442783          	lw	a5,4(s0)
10001604:	00f12423          	sw	a5,8(sp)
10001608:	00042783          	lw	a5,0(s0)
1000160c:	00f12223          	sw	a5,4(sp)
10001610:	fa042783          	lw	a5,-96(s0)
10001614:	00f12023          	sw	a5,0(sp)
10001618:	fa442883          	lw	a7,-92(s0)
1000161c:	00068813          	mv	a6,a3
10001620:	fec42783          	lw	a5,-20(s0)
10001624:	fb042683          	lw	a3,-80(s0)
10001628:	fb442603          	lw	a2,-76(s0)
1000162c:	fb842583          	lw	a1,-72(s0)
10001630:	fbc42503          	lw	a0,-68(s0)
10001634:	bd9ff0ef          	jal	ra,1000120c <_ntoa_format>
10001638:	00050793          	mv	a5,a0
}
1000163c:	00078513          	mv	a0,a5
10001640:	06c12083          	lw	ra,108(sp)
10001644:	06812403          	lw	s0,104(sp)
10001648:	07010113          	addi	sp,sp,112
1000164c:	00008067          	ret

10001650 <_vsnprintf>:
#endif // PRINTF_SUPPORT_EXPONENTIAL
#endif // PRINTF_SUPPORT_FLOAT

// internal vsnprintf
static int _vsnprintf(out_fct_type out, char *buffer, const size_t maxlen, const char *format, va_list va)
{
10001650:	f8010113          	addi	sp,sp,-128
10001654:	06112e23          	sw	ra,124(sp)
10001658:	06812c23          	sw	s0,120(sp)
1000165c:	08010413          	addi	s0,sp,128
10001660:	faa42623          	sw	a0,-84(s0)
10001664:	fab42423          	sw	a1,-88(s0)
10001668:	fac42223          	sw	a2,-92(s0)
1000166c:	fad42023          	sw	a3,-96(s0)
10001670:	f8e42e23          	sw	a4,-100(s0)
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
10001674:	fc042e23          	sw	zero,-36(s0)

  if (!buffer)
10001678:	fa842783          	lw	a5,-88(s0)
1000167c:	20079ee3          	bnez	a5,10002098 <_vsnprintf+0xa48>
  {
    // use null output function
    out = _out_null;
10001680:	100017b7          	lui	a5,0x10001
10001684:	eb878793          	addi	a5,a5,-328 # 10000eb8 <_out_null>
10001688:	faf42623          	sw	a5,-84(s0)
  }

  while (*format)
1000168c:	20d0006f          	j	10002098 <_vsnprintf+0xa48>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%')
10001690:	fa042783          	lw	a5,-96(s0)
10001694:	0007c703          	lbu	a4,0(a5)
10001698:	02500793          	li	a5,37
1000169c:	02f70e63          	beq	a4,a5,100016d8 <_vsnprintf+0x88>
    {
      // no
      out(*format, buffer, idx++, maxlen);
100016a0:	fa042783          	lw	a5,-96(s0)
100016a4:	0007c503          	lbu	a0,0(a5)
100016a8:	fdc42783          	lw	a5,-36(s0)
100016ac:	00178713          	addi	a4,a5,1
100016b0:	fce42e23          	sw	a4,-36(s0)
100016b4:	fac42703          	lw	a4,-84(s0)
100016b8:	fa442683          	lw	a3,-92(s0)
100016bc:	00078613          	mv	a2,a5
100016c0:	fa842583          	lw	a1,-88(s0)
100016c4:	000700e7          	jalr	a4
      format++;
100016c8:	fa042783          	lw	a5,-96(s0)
100016cc:	00178793          	addi	a5,a5,1
100016d0:	faf42023          	sw	a5,-96(s0)
      continue;
100016d4:	1c50006f          	j	10002098 <_vsnprintf+0xa48>
    }
    else
    {
      // yes, evaluate it
      format++;
100016d8:	fa042783          	lw	a5,-96(s0)
100016dc:	00178793          	addi	a5,a5,1
100016e0:	faf42023          	sw	a5,-96(s0)
    }

    // evaluate flags
    flags = 0U;
100016e4:	fe042623          	sw	zero,-20(s0)
    do
    {
      switch (*format)
100016e8:	fa042783          	lw	a5,-96(s0)
100016ec:	0007c783          	lbu	a5,0(a5)
100016f0:	fe078793          	addi	a5,a5,-32
100016f4:	01000713          	li	a4,16
100016f8:	0cf76863          	bltu	a4,a5,100017c8 <_vsnprintf+0x178>
100016fc:	00279713          	slli	a4,a5,0x2
10001700:	100107b7          	lui	a5,0x10010
10001704:	0f878793          	addi	a5,a5,248 # 100100f8 <p2p_demo+0xba54>
10001708:	00f707b3          	add	a5,a4,a5
1000170c:	0007a783          	lw	a5,0(a5)
10001710:	00078067          	jr	a5
      {
      case '0':
        flags |= FLAGS_ZEROPAD;
10001714:	fec42783          	lw	a5,-20(s0)
10001718:	0017e793          	ori	a5,a5,1
1000171c:	fef42623          	sw	a5,-20(s0)
        format++;
10001720:	fa042783          	lw	a5,-96(s0)
10001724:	00178793          	addi	a5,a5,1
10001728:	faf42023          	sw	a5,-96(s0)
        n = 1U;
1000172c:	00100793          	li	a5,1
10001730:	fef42023          	sw	a5,-32(s0)
        break;
10001734:	09c0006f          	j	100017d0 <_vsnprintf+0x180>
      case '-':
        flags |= FLAGS_LEFT;
10001738:	fec42783          	lw	a5,-20(s0)
1000173c:	0027e793          	ori	a5,a5,2
10001740:	fef42623          	sw	a5,-20(s0)
        format++;
10001744:	fa042783          	lw	a5,-96(s0)
10001748:	00178793          	addi	a5,a5,1
1000174c:	faf42023          	sw	a5,-96(s0)
        n = 1U;
10001750:	00100793          	li	a5,1
10001754:	fef42023          	sw	a5,-32(s0)
        break;
10001758:	0780006f          	j	100017d0 <_vsnprintf+0x180>
      case '+':
        flags |= FLAGS_PLUS;
1000175c:	fec42783          	lw	a5,-20(s0)
10001760:	0047e793          	ori	a5,a5,4
10001764:	fef42623          	sw	a5,-20(s0)
        format++;
10001768:	fa042783          	lw	a5,-96(s0)
1000176c:	00178793          	addi	a5,a5,1
10001770:	faf42023          	sw	a5,-96(s0)
        n = 1U;
10001774:	00100793          	li	a5,1
10001778:	fef42023          	sw	a5,-32(s0)
        break;
1000177c:	0540006f          	j	100017d0 <_vsnprintf+0x180>
      case ' ':
        flags |= FLAGS_SPACE;
10001780:	fec42783          	lw	a5,-20(s0)
10001784:	0087e793          	ori	a5,a5,8
10001788:	fef42623          	sw	a5,-20(s0)
        format++;
1000178c:	fa042783          	lw	a5,-96(s0)
10001790:	00178793          	addi	a5,a5,1
10001794:	faf42023          	sw	a5,-96(s0)
        n = 1U;
10001798:	00100793          	li	a5,1
1000179c:	fef42023          	sw	a5,-32(s0)
        break;
100017a0:	0300006f          	j	100017d0 <_vsnprintf+0x180>
      case '#':
        flags |= FLAGS_HASH;
100017a4:	fec42783          	lw	a5,-20(s0)
100017a8:	0107e793          	ori	a5,a5,16
100017ac:	fef42623          	sw	a5,-20(s0)
        format++;
100017b0:	fa042783          	lw	a5,-96(s0)
100017b4:	00178793          	addi	a5,a5,1
100017b8:	faf42023          	sw	a5,-96(s0)
        n = 1U;
100017bc:	00100793          	li	a5,1
100017c0:	fef42023          	sw	a5,-32(s0)
        break;
100017c4:	00c0006f          	j	100017d0 <_vsnprintf+0x180>
      default:
        n = 0U;
100017c8:	fe042023          	sw	zero,-32(s0)
        break;
100017cc:	00000013          	nop
      }
    } while (n);
100017d0:	fe042783          	lw	a5,-32(s0)
100017d4:	f0079ae3          	bnez	a5,100016e8 <_vsnprintf+0x98>

    // evaluate width field
    width = 0U;
100017d8:	fe042423          	sw	zero,-24(s0)
    if (_is_digit(*format))
100017dc:	fa042783          	lw	a5,-96(s0)
100017e0:	0007c783          	lbu	a5,0(a5)
100017e4:	00078513          	mv	a0,a5
100017e8:	809ff0ef          	jal	ra,10000ff0 <_is_digit>
100017ec:	00050793          	mv	a5,a0
100017f0:	00078c63          	beqz	a5,10001808 <_vsnprintf+0x1b8>
    {
      width = _atoi(&format);
100017f4:	fa040793          	addi	a5,s0,-96
100017f8:	00078513          	mv	a0,a5
100017fc:	845ff0ef          	jal	ra,10001040 <_atoi>
10001800:	fea42423          	sw	a0,-24(s0)
10001804:	0600006f          	j	10001864 <_vsnprintf+0x214>
    }
    else if (*format == '*')
10001808:	fa042783          	lw	a5,-96(s0)
1000180c:	0007c703          	lbu	a4,0(a5)
10001810:	02a00793          	li	a5,42
10001814:	04f71863          	bne	a4,a5,10001864 <_vsnprintf+0x214>
    {
      const int w = va_arg(va, int);
10001818:	f9c42783          	lw	a5,-100(s0)
1000181c:	00478713          	addi	a4,a5,4
10001820:	f8e42e23          	sw	a4,-100(s0)
10001824:	0007a783          	lw	a5,0(a5)
10001828:	fcf42423          	sw	a5,-56(s0)
      if (w < 0)
1000182c:	fc842783          	lw	a5,-56(s0)
10001830:	0207d063          	bgez	a5,10001850 <_vsnprintf+0x200>
      {
        flags |= FLAGS_LEFT; // reverse padding
10001834:	fec42783          	lw	a5,-20(s0)
10001838:	0027e793          	ori	a5,a5,2
1000183c:	fef42623          	sw	a5,-20(s0)
        width = (unsigned int)-w;
10001840:	fc842783          	lw	a5,-56(s0)
10001844:	40f007b3          	neg	a5,a5
10001848:	fef42423          	sw	a5,-24(s0)
1000184c:	00c0006f          	j	10001858 <_vsnprintf+0x208>
      }
      else
      {
        width = (unsigned int)w;
10001850:	fc842783          	lw	a5,-56(s0)
10001854:	fef42423          	sw	a5,-24(s0)
      }
      format++;
10001858:	fa042783          	lw	a5,-96(s0)
1000185c:	00178793          	addi	a5,a5,1
10001860:	faf42023          	sw	a5,-96(s0)
    }

    // evaluate precision field
    precision = 0U;
10001864:	fe042223          	sw	zero,-28(s0)
    if (*format == '.')
10001868:	fa042783          	lw	a5,-96(s0)
1000186c:	0007c703          	lbu	a4,0(a5)
10001870:	02e00793          	li	a5,46
10001874:	08f71463          	bne	a4,a5,100018fc <_vsnprintf+0x2ac>
    {
      flags |= FLAGS_PRECISION;
10001878:	fec42783          	lw	a5,-20(s0)
1000187c:	4007e793          	ori	a5,a5,1024
10001880:	fef42623          	sw	a5,-20(s0)
      format++;
10001884:	fa042783          	lw	a5,-96(s0)
10001888:	00178793          	addi	a5,a5,1
1000188c:	faf42023          	sw	a5,-96(s0)
      if (_is_digit(*format))
10001890:	fa042783          	lw	a5,-96(s0)
10001894:	0007c783          	lbu	a5,0(a5)
10001898:	00078513          	mv	a0,a5
1000189c:	f54ff0ef          	jal	ra,10000ff0 <_is_digit>
100018a0:	00050793          	mv	a5,a0
100018a4:	00078c63          	beqz	a5,100018bc <_vsnprintf+0x26c>
      {
        precision = _atoi(&format);
100018a8:	fa040793          	addi	a5,s0,-96
100018ac:	00078513          	mv	a0,a5
100018b0:	f90ff0ef          	jal	ra,10001040 <_atoi>
100018b4:	fea42223          	sw	a0,-28(s0)
100018b8:	0440006f          	j	100018fc <_vsnprintf+0x2ac>
      }
      else if (*format == '*')
100018bc:	fa042783          	lw	a5,-96(s0)
100018c0:	0007c703          	lbu	a4,0(a5)
100018c4:	02a00793          	li	a5,42
100018c8:	02f71a63          	bne	a4,a5,100018fc <_vsnprintf+0x2ac>
      {
        const int prec = (int)va_arg(va, int);
100018cc:	f9c42783          	lw	a5,-100(s0)
100018d0:	00478713          	addi	a4,a5,4
100018d4:	f8e42e23          	sw	a4,-100(s0)
100018d8:	0007a783          	lw	a5,0(a5)
100018dc:	fcf42223          	sw	a5,-60(s0)
        precision = prec > 0 ? (unsigned int)prec : 0U;
100018e0:	fc442783          	lw	a5,-60(s0)
100018e4:	0007d463          	bgez	a5,100018ec <_vsnprintf+0x29c>
100018e8:	00000793          	li	a5,0
100018ec:	fef42223          	sw	a5,-28(s0)
        format++;
100018f0:	fa042783          	lw	a5,-96(s0)
100018f4:	00178793          	addi	a5,a5,1
100018f8:	faf42023          	sw	a5,-96(s0)
      }
    }

    // evaluate length field
    switch (*format)
100018fc:	fa042783          	lw	a5,-96(s0)
10001900:	0007c783          	lbu	a5,0(a5)
10001904:	f9878793          	addi	a5,a5,-104
10001908:	01200713          	li	a4,18
1000190c:	0ef76c63          	bltu	a4,a5,10001a04 <_vsnprintf+0x3b4>
10001910:	00279713          	slli	a4,a5,0x2
10001914:	100107b7          	lui	a5,0x10010
10001918:	13c78793          	addi	a5,a5,316 # 1001013c <p2p_demo+0xba98>
1000191c:	00f707b3          	add	a5,a4,a5
10001920:	0007a783          	lw	a5,0(a5)
10001924:	00078067          	jr	a5
    {
    case 'l':
      flags |= FLAGS_LONG;
10001928:	fec42783          	lw	a5,-20(s0)
1000192c:	1007e793          	ori	a5,a5,256
10001930:	fef42623          	sw	a5,-20(s0)
      format++;
10001934:	fa042783          	lw	a5,-96(s0)
10001938:	00178793          	addi	a5,a5,1
1000193c:	faf42023          	sw	a5,-96(s0)
      if (*format == 'l')
10001940:	fa042783          	lw	a5,-96(s0)
10001944:	0007c703          	lbu	a4,0(a5)
10001948:	06c00793          	li	a5,108
1000194c:	0cf71063          	bne	a4,a5,10001a0c <_vsnprintf+0x3bc>
      {
        flags |= FLAGS_LONG_LONG;
10001950:	fec42783          	lw	a5,-20(s0)
10001954:	2007e793          	ori	a5,a5,512
10001958:	fef42623          	sw	a5,-20(s0)
        format++;
1000195c:	fa042783          	lw	a5,-96(s0)
10001960:	00178793          	addi	a5,a5,1
10001964:	faf42023          	sw	a5,-96(s0)
      }
      break;
10001968:	0a40006f          	j	10001a0c <_vsnprintf+0x3bc>
    case 'h':
      flags |= FLAGS_SHORT;
1000196c:	fec42783          	lw	a5,-20(s0)
10001970:	0807e793          	ori	a5,a5,128
10001974:	fef42623          	sw	a5,-20(s0)
      format++;
10001978:	fa042783          	lw	a5,-96(s0)
1000197c:	00178793          	addi	a5,a5,1
10001980:	faf42023          	sw	a5,-96(s0)
      if (*format == 'h')
10001984:	fa042783          	lw	a5,-96(s0)
10001988:	0007c703          	lbu	a4,0(a5)
1000198c:	06800793          	li	a5,104
10001990:	08f71263          	bne	a4,a5,10001a14 <_vsnprintf+0x3c4>
      {
        flags |= FLAGS_CHAR;
10001994:	fec42783          	lw	a5,-20(s0)
10001998:	0407e793          	ori	a5,a5,64
1000199c:	fef42623          	sw	a5,-20(s0)
        format++;
100019a0:	fa042783          	lw	a5,-96(s0)
100019a4:	00178793          	addi	a5,a5,1
100019a8:	faf42023          	sw	a5,-96(s0)
      }
      break;
100019ac:	0680006f          	j	10001a14 <_vsnprintf+0x3c4>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
    case 't':
      flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
100019b0:	fec42783          	lw	a5,-20(s0)
100019b4:	1007e793          	ori	a5,a5,256
100019b8:	fef42623          	sw	a5,-20(s0)
      format++;
100019bc:	fa042783          	lw	a5,-96(s0)
100019c0:	00178793          	addi	a5,a5,1
100019c4:	faf42023          	sw	a5,-96(s0)
      break;
100019c8:	0500006f          	j	10001a18 <_vsnprintf+0x3c8>
#endif
    case 'j':
      flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
100019cc:	fec42783          	lw	a5,-20(s0)
100019d0:	2007e793          	ori	a5,a5,512
100019d4:	fef42623          	sw	a5,-20(s0)
      format++;
100019d8:	fa042783          	lw	a5,-96(s0)
100019dc:	00178793          	addi	a5,a5,1
100019e0:	faf42023          	sw	a5,-96(s0)
      break;
100019e4:	0340006f          	j	10001a18 <_vsnprintf+0x3c8>
    case 'z':
      flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
100019e8:	fec42783          	lw	a5,-20(s0)
100019ec:	1007e793          	ori	a5,a5,256
100019f0:	fef42623          	sw	a5,-20(s0)
      format++;
100019f4:	fa042783          	lw	a5,-96(s0)
100019f8:	00178793          	addi	a5,a5,1
100019fc:	faf42023          	sw	a5,-96(s0)
      break;
10001a00:	0180006f          	j	10001a18 <_vsnprintf+0x3c8>
    default:
      break;
10001a04:	00000013          	nop
10001a08:	0100006f          	j	10001a18 <_vsnprintf+0x3c8>
      break;
10001a0c:	00000013          	nop
10001a10:	0080006f          	j	10001a18 <_vsnprintf+0x3c8>
      break;
10001a14:	00000013          	nop
    }

    // evaluate specifier
    switch (*format)
10001a18:	fa042783          	lw	a5,-96(s0)
10001a1c:	0007c783          	lbu	a5,0(a5)
10001a20:	fdb78793          	addi	a5,a5,-37
10001a24:	05300713          	li	a4,83
10001a28:	62f76c63          	bltu	a4,a5,10002060 <_vsnprintf+0xa10>
10001a2c:	00279713          	slli	a4,a5,0x2
10001a30:	100107b7          	lui	a5,0x10010
10001a34:	18878793          	addi	a5,a5,392 # 10010188 <p2p_demo+0xbae4>
10001a38:	00f707b3          	add	a5,a4,a5
10001a3c:	0007a783          	lw	a5,0(a5)
10001a40:	00078067          	jr	a5
    case 'o':
    case 'b':
    {
      // set the base
      unsigned int base;
      if (*format == 'x' || *format == 'X')
10001a44:	fa042783          	lw	a5,-96(s0)
10001a48:	0007c703          	lbu	a4,0(a5)
10001a4c:	07800793          	li	a5,120
10001a50:	00f70a63          	beq	a4,a5,10001a64 <_vsnprintf+0x414>
10001a54:	fa042783          	lw	a5,-96(s0)
10001a58:	0007c703          	lbu	a4,0(a5)
10001a5c:	05800793          	li	a5,88
10001a60:	00f71863          	bne	a4,a5,10001a70 <_vsnprintf+0x420>
      {
        base = 16U;
10001a64:	01000793          	li	a5,16
10001a68:	fcf42c23          	sw	a5,-40(s0)
10001a6c:	0500006f          	j	10001abc <_vsnprintf+0x46c>
      }
      else if (*format == 'o')
10001a70:	fa042783          	lw	a5,-96(s0)
10001a74:	0007c703          	lbu	a4,0(a5)
10001a78:	06f00793          	li	a5,111
10001a7c:	00f71863          	bne	a4,a5,10001a8c <_vsnprintf+0x43c>
      {
        base = 8U;
10001a80:	00800793          	li	a5,8
10001a84:	fcf42c23          	sw	a5,-40(s0)
10001a88:	0340006f          	j	10001abc <_vsnprintf+0x46c>
      }
      else if (*format == 'b')
10001a8c:	fa042783          	lw	a5,-96(s0)
10001a90:	0007c703          	lbu	a4,0(a5)
10001a94:	06200793          	li	a5,98
10001a98:	00f71863          	bne	a4,a5,10001aa8 <_vsnprintf+0x458>
      {
        base = 2U;
10001a9c:	00200793          	li	a5,2
10001aa0:	fcf42c23          	sw	a5,-40(s0)
10001aa4:	0180006f          	j	10001abc <_vsnprintf+0x46c>
      }
      else
      {
        base = 10U;
10001aa8:	00a00793          	li	a5,10
10001aac:	fcf42c23          	sw	a5,-40(s0)
        flags &= ~FLAGS_HASH; // no hash for dec format
10001ab0:	fec42783          	lw	a5,-20(s0)
10001ab4:	fef7f793          	andi	a5,a5,-17
10001ab8:	fef42623          	sw	a5,-20(s0)
      }
      // uppercase
      if (*format == 'X')
10001abc:	fa042783          	lw	a5,-96(s0)
10001ac0:	0007c703          	lbu	a4,0(a5)
10001ac4:	05800793          	li	a5,88
10001ac8:	00f71863          	bne	a4,a5,10001ad8 <_vsnprintf+0x488>
      {
        flags |= FLAGS_UPPERCASE;
10001acc:	fec42783          	lw	a5,-20(s0)
10001ad0:	0207e793          	ori	a5,a5,32
10001ad4:	fef42623          	sw	a5,-20(s0)
      }

      // no plus or space flag for u, x, X, o, b
      if ((*format != 'i') && (*format != 'd'))
10001ad8:	fa042783          	lw	a5,-96(s0)
10001adc:	0007c703          	lbu	a4,0(a5)
10001ae0:	06900793          	li	a5,105
10001ae4:	02f70063          	beq	a4,a5,10001b04 <_vsnprintf+0x4b4>
10001ae8:	fa042783          	lw	a5,-96(s0)
10001aec:	0007c703          	lbu	a4,0(a5)
10001af0:	06400793          	li	a5,100
10001af4:	00f70863          	beq	a4,a5,10001b04 <_vsnprintf+0x4b4>
      {
        flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
10001af8:	fec42783          	lw	a5,-20(s0)
10001afc:	ff37f793          	andi	a5,a5,-13
10001b00:	fef42623          	sw	a5,-20(s0)
      }

      // ignore '0' flag when precision is given
      if (flags & FLAGS_PRECISION)
10001b04:	fec42783          	lw	a5,-20(s0)
10001b08:	4007f793          	andi	a5,a5,1024
10001b0c:	00078863          	beqz	a5,10001b1c <_vsnprintf+0x4cc>
      {
        flags &= ~FLAGS_ZEROPAD;
10001b10:	fec42783          	lw	a5,-20(s0)
10001b14:	ffe7f793          	andi	a5,a5,-2
10001b18:	fef42623          	sw	a5,-20(s0)
      }

      // convert the integer
      if ((*format == 'i') || (*format == 'd'))
10001b1c:	fa042783          	lw	a5,-96(s0)
10001b20:	0007c703          	lbu	a4,0(a5)
10001b24:	06900793          	li	a5,105
10001b28:	00f70a63          	beq	a4,a5,10001b3c <_vsnprintf+0x4ec>
10001b2c:	fa042783          	lw	a5,-96(s0)
10001b30:	0007c703          	lbu	a4,0(a5)
10001b34:	06400793          	li	a5,100
10001b38:	14f71863          	bne	a4,a5,10001c88 <_vsnprintf+0x638>
      {
        // signed
        if (flags & FLAGS_LONG_LONG)
10001b3c:	fec42783          	lw	a5,-20(s0)
10001b40:	2007f793          	andi	a5,a5,512
10001b44:	22079e63          	bnez	a5,10001d80 <_vsnprintf+0x730>
          const long long value = va_arg(va, long long);
          // _amo_flags[9] = value;
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
        }
        else if (flags & FLAGS_LONG)
10001b48:	fec42783          	lw	a5,-20(s0)
10001b4c:	1007f793          	andi	a5,a5,256
10001b50:	06078c63          	beqz	a5,10001bc8 <_vsnprintf+0x578>
        {
          const long value = va_arg(va, long);
10001b54:	f9c42783          	lw	a5,-100(s0)
10001b58:	00478713          	addi	a4,a5,4
10001b5c:	f8e42e23          	sw	a4,-100(s0)
10001b60:	0007a783          	lw	a5,0(a5)
10001b64:	faf42e23          	sw	a5,-68(s0)
          // _amo_flags[10] = value;
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
10001b68:	fbc42783          	lw	a5,-68(s0)
10001b6c:	41f7d713          	srai	a4,a5,0x1f
10001b70:	fbc42783          	lw	a5,-68(s0)
10001b74:	00f747b3          	xor	a5,a4,a5
10001b78:	40e787b3          	sub	a5,a5,a4
10001b7c:	00078693          	mv	a3,a5
10001b80:	fbc42783          	lw	a5,-68(s0)
10001b84:	01f7d793          	srli	a5,a5,0x1f
10001b88:	0ff7f713          	andi	a4,a5,255
10001b8c:	fec42783          	lw	a5,-20(s0)
10001b90:	00f12223          	sw	a5,4(sp)
10001b94:	fe842783          	lw	a5,-24(s0)
10001b98:	00f12023          	sw	a5,0(sp)
10001b9c:	fe442883          	lw	a7,-28(s0)
10001ba0:	fd842803          	lw	a6,-40(s0)
10001ba4:	00070793          	mv	a5,a4
10001ba8:	00068713          	mv	a4,a3
10001bac:	fa442683          	lw	a3,-92(s0)
10001bb0:	fdc42603          	lw	a2,-36(s0)
10001bb4:	fa842583          	lw	a1,-88(s0)
10001bb8:	fac42503          	lw	a0,-84(s0)
10001bbc:	94dff0ef          	jal	ra,10001508 <_ntoa_long>
10001bc0:	fca42e23          	sw	a0,-36(s0)
        if (flags & FLAGS_LONG_LONG)
10001bc4:	1bc0006f          	j	10001d80 <_vsnprintf+0x730>
        }
        else
        {
          const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
10001bc8:	fec42783          	lw	a5,-20(s0)
10001bcc:	0407f793          	andi	a5,a5,64
10001bd0:	00078e63          	beqz	a5,10001bec <_vsnprintf+0x59c>
10001bd4:	f9c42783          	lw	a5,-100(s0)
10001bd8:	00478713          	addi	a4,a5,4
10001bdc:	f8e42e23          	sw	a4,-100(s0)
10001be0:	0007a783          	lw	a5,0(a5)
10001be4:	0ff7f793          	andi	a5,a5,255
10001be8:	03c0006f          	j	10001c24 <_vsnprintf+0x5d4>
10001bec:	fec42783          	lw	a5,-20(s0)
10001bf0:	0807f793          	andi	a5,a5,128
                                                                                                 : va_arg(va, int);
10001bf4:	02078063          	beqz	a5,10001c14 <_vsnprintf+0x5c4>
          const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
10001bf8:	f9c42783          	lw	a5,-100(s0)
10001bfc:	00478713          	addi	a4,a5,4
10001c00:	f8e42e23          	sw	a4,-100(s0)
10001c04:	0007a783          	lw	a5,0(a5)
10001c08:	01079793          	slli	a5,a5,0x10
10001c0c:	4107d793          	srai	a5,a5,0x10
10001c10:	0140006f          	j	10001c24 <_vsnprintf+0x5d4>
                                                                                                 : va_arg(va, int);
10001c14:	f9c42783          	lw	a5,-100(s0)
10001c18:	00478713          	addi	a4,a5,4
10001c1c:	f8e42e23          	sw	a4,-100(s0)
10001c20:	0007a783          	lw	a5,0(a5)
          const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
10001c24:	faf42c23          	sw	a5,-72(s0)
          // _amo_flags[11] = value;
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
10001c28:	fb842783          	lw	a5,-72(s0)
10001c2c:	41f7d713          	srai	a4,a5,0x1f
10001c30:	fb842783          	lw	a5,-72(s0)
10001c34:	00f747b3          	xor	a5,a4,a5
10001c38:	40e787b3          	sub	a5,a5,a4
10001c3c:	00078693          	mv	a3,a5
10001c40:	fb842783          	lw	a5,-72(s0)
10001c44:	01f7d793          	srli	a5,a5,0x1f
10001c48:	0ff7f713          	andi	a4,a5,255
10001c4c:	fec42783          	lw	a5,-20(s0)
10001c50:	00f12223          	sw	a5,4(sp)
10001c54:	fe842783          	lw	a5,-24(s0)
10001c58:	00f12023          	sw	a5,0(sp)
10001c5c:	fe442883          	lw	a7,-28(s0)
10001c60:	fd842803          	lw	a6,-40(s0)
10001c64:	00070793          	mv	a5,a4
10001c68:	00068713          	mv	a4,a3
10001c6c:	fa442683          	lw	a3,-92(s0)
10001c70:	fdc42603          	lw	a2,-36(s0)
10001c74:	fa842583          	lw	a1,-88(s0)
10001c78:	fac42503          	lw	a0,-84(s0)
10001c7c:	88dff0ef          	jal	ra,10001508 <_ntoa_long>
10001c80:	fca42e23          	sw	a0,-36(s0)
        if (flags & FLAGS_LONG_LONG)
10001c84:	0fc0006f          	j	10001d80 <_vsnprintf+0x730>
        }
      }
      else
      {
        // unsigned
        if (flags & FLAGS_LONG_LONG)
10001c88:	fec42783          	lw	a5,-20(s0)
10001c8c:	2007f793          	andi	a5,a5,512
10001c90:	0e079863          	bnez	a5,10001d80 <_vsnprintf+0x730>
        {
#if defined(PRINTF_SUPPORT_LONG_LONG)
          idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
        }
        else if (flags & FLAGS_LONG)
10001c94:	fec42783          	lw	a5,-20(s0)
10001c98:	1007f793          	andi	a5,a5,256
10001c9c:	04078663          	beqz	a5,10001ce8 <_vsnprintf+0x698>
        {
          idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
10001ca0:	f9c42783          	lw	a5,-100(s0)
10001ca4:	00478713          	addi	a4,a5,4
10001ca8:	f8e42e23          	sw	a4,-100(s0)
10001cac:	0007a703          	lw	a4,0(a5)
10001cb0:	fec42783          	lw	a5,-20(s0)
10001cb4:	00f12223          	sw	a5,4(sp)
10001cb8:	fe842783          	lw	a5,-24(s0)
10001cbc:	00f12023          	sw	a5,0(sp)
10001cc0:	fe442883          	lw	a7,-28(s0)
10001cc4:	fd842803          	lw	a6,-40(s0)
10001cc8:	00000793          	li	a5,0
10001ccc:	fa442683          	lw	a3,-92(s0)
10001cd0:	fdc42603          	lw	a2,-36(s0)
10001cd4:	fa842583          	lw	a1,-88(s0)
10001cd8:	fac42503          	lw	a0,-84(s0)
10001cdc:	82dff0ef          	jal	ra,10001508 <_ntoa_long>
10001ce0:	fca42e23          	sw	a0,-36(s0)
10001ce4:	09c0006f          	j	10001d80 <_vsnprintf+0x730>
        }
        else
        {
          const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
10001ce8:	fec42783          	lw	a5,-20(s0)
10001cec:	0407f793          	andi	a5,a5,64
10001cf0:	00078e63          	beqz	a5,10001d0c <_vsnprintf+0x6bc>
10001cf4:	f9c42783          	lw	a5,-100(s0)
10001cf8:	00478713          	addi	a4,a5,4
10001cfc:	f8e42e23          	sw	a4,-100(s0)
10001d00:	0007a783          	lw	a5,0(a5)
10001d04:	0ff7f793          	andi	a5,a5,255
10001d08:	03c0006f          	j	10001d44 <_vsnprintf+0x6f4>
10001d0c:	fec42783          	lw	a5,-20(s0)
10001d10:	0807f793          	andi	a5,a5,128
                                                                                                                            : va_arg(va, unsigned int);
10001d14:	02078063          	beqz	a5,10001d34 <_vsnprintf+0x6e4>
          const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
10001d18:	f9c42783          	lw	a5,-100(s0)
10001d1c:	00478713          	addi	a4,a5,4
10001d20:	f8e42e23          	sw	a4,-100(s0)
10001d24:	0007a783          	lw	a5,0(a5)
10001d28:	01079793          	slli	a5,a5,0x10
10001d2c:	0107d793          	srli	a5,a5,0x10
10001d30:	0140006f          	j	10001d44 <_vsnprintf+0x6f4>
                                                                                                                            : va_arg(va, unsigned int);
10001d34:	f9c42783          	lw	a5,-100(s0)
10001d38:	00478713          	addi	a4,a5,4
10001d3c:	f8e42e23          	sw	a4,-100(s0)
10001d40:	0007a783          	lw	a5,0(a5)
          const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
10001d44:	fcf42023          	sw	a5,-64(s0)
          idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
10001d48:	fec42783          	lw	a5,-20(s0)
10001d4c:	00f12223          	sw	a5,4(sp)
10001d50:	fe842783          	lw	a5,-24(s0)
10001d54:	00f12023          	sw	a5,0(sp)
10001d58:	fe442883          	lw	a7,-28(s0)
10001d5c:	fd842803          	lw	a6,-40(s0)
10001d60:	00000793          	li	a5,0
10001d64:	fc042703          	lw	a4,-64(s0)
10001d68:	fa442683          	lw	a3,-92(s0)
10001d6c:	fdc42603          	lw	a2,-36(s0)
10001d70:	fa842583          	lw	a1,-88(s0)
10001d74:	fac42503          	lw	a0,-84(s0)
10001d78:	f90ff0ef          	jal	ra,10001508 <_ntoa_long>
10001d7c:	fca42e23          	sw	a0,-36(s0)
        }
      }
      format++;
10001d80:	fa042783          	lw	a5,-96(s0)
10001d84:	00178793          	addi	a5,a5,1
10001d88:	faf42023          	sw	a5,-96(s0)
      break;
10001d8c:	30c0006f          	j	10002098 <_vsnprintf+0xa48>
      break;
#endif // PRINTF_SUPPORT_EXPONENTIAL
#endif // PRINTF_SUPPORT_FLOAT
    case 'c':
    {
      unsigned int l = 1U;
10001d90:	00100793          	li	a5,1
10001d94:	fcf42a23          	sw	a5,-44(s0)
      // pre padding
      if (!(flags & FLAGS_LEFT))
10001d98:	fec42783          	lw	a5,-20(s0)
10001d9c:	0027f793          	andi	a5,a5,2
10001da0:	04079063          	bnez	a5,10001de0 <_vsnprintf+0x790>
      {
        while (l++ < width)
10001da4:	0280006f          	j	10001dcc <_vsnprintf+0x77c>
        {
          out(' ', buffer, idx++, maxlen);
10001da8:	fdc42783          	lw	a5,-36(s0)
10001dac:	00178713          	addi	a4,a5,1
10001db0:	fce42e23          	sw	a4,-36(s0)
10001db4:	fac42703          	lw	a4,-84(s0)
10001db8:	fa442683          	lw	a3,-92(s0)
10001dbc:	00078613          	mv	a2,a5
10001dc0:	fa842583          	lw	a1,-88(s0)
10001dc4:	02000513          	li	a0,32
10001dc8:	000700e7          	jalr	a4
        while (l++ < width)
10001dcc:	fd442783          	lw	a5,-44(s0)
10001dd0:	00178713          	addi	a4,a5,1
10001dd4:	fce42a23          	sw	a4,-44(s0)
10001dd8:	fe842703          	lw	a4,-24(s0)
10001ddc:	fce7e6e3          	bltu	a5,a4,10001da8 <_vsnprintf+0x758>
        }
      }
      // char output
      out((char)va_arg(va, int), buffer, idx++, maxlen);
10001de0:	f9c42783          	lw	a5,-100(s0)
10001de4:	00478713          	addi	a4,a5,4
10001de8:	f8e42e23          	sw	a4,-100(s0)
10001dec:	0007a783          	lw	a5,0(a5)
10001df0:	0ff7f513          	andi	a0,a5,255
10001df4:	fdc42783          	lw	a5,-36(s0)
10001df8:	00178713          	addi	a4,a5,1
10001dfc:	fce42e23          	sw	a4,-36(s0)
10001e00:	fac42703          	lw	a4,-84(s0)
10001e04:	fa442683          	lw	a3,-92(s0)
10001e08:	00078613          	mv	a2,a5
10001e0c:	fa842583          	lw	a1,-88(s0)
10001e10:	000700e7          	jalr	a4
      // post padding
      if (flags & FLAGS_LEFT)
10001e14:	fec42783          	lw	a5,-20(s0)
10001e18:	0027f793          	andi	a5,a5,2
10001e1c:	04078063          	beqz	a5,10001e5c <_vsnprintf+0x80c>
      {
        while (l++ < width)
10001e20:	0280006f          	j	10001e48 <_vsnprintf+0x7f8>
        {
          out(' ', buffer, idx++, maxlen);
10001e24:	fdc42783          	lw	a5,-36(s0)
10001e28:	00178713          	addi	a4,a5,1
10001e2c:	fce42e23          	sw	a4,-36(s0)
10001e30:	fac42703          	lw	a4,-84(s0)
10001e34:	fa442683          	lw	a3,-92(s0)
10001e38:	00078613          	mv	a2,a5
10001e3c:	fa842583          	lw	a1,-88(s0)
10001e40:	02000513          	li	a0,32
10001e44:	000700e7          	jalr	a4
        while (l++ < width)
10001e48:	fd442783          	lw	a5,-44(s0)
10001e4c:	00178713          	addi	a4,a5,1
10001e50:	fce42a23          	sw	a4,-44(s0)
10001e54:	fe842703          	lw	a4,-24(s0)
10001e58:	fce7e6e3          	bltu	a5,a4,10001e24 <_vsnprintf+0x7d4>
        }
      }
      format++;
10001e5c:	fa042783          	lw	a5,-96(s0)
10001e60:	00178793          	addi	a5,a5,1
10001e64:	faf42023          	sw	a5,-96(s0)
      break;
10001e68:	2300006f          	j	10002098 <_vsnprintf+0xa48>
    }

    case 's':
    {
      const char *p = va_arg(va, char *);
10001e6c:	f9c42783          	lw	a5,-100(s0)
10001e70:	00478713          	addi	a4,a5,4
10001e74:	f8e42e23          	sw	a4,-100(s0)
10001e78:	0007a783          	lw	a5,0(a5)
10001e7c:	fcf42823          	sw	a5,-48(s0)
      unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
10001e80:	fe442783          	lw	a5,-28(s0)
10001e84:	00078663          	beqz	a5,10001e90 <_vsnprintf+0x840>
10001e88:	fe442783          	lw	a5,-28(s0)
10001e8c:	0080006f          	j	10001e94 <_vsnprintf+0x844>
10001e90:	fff00793          	li	a5,-1
10001e94:	00078593          	mv	a1,a5
10001e98:	fd042503          	lw	a0,-48(s0)
10001e9c:	8f0ff0ef          	jal	ra,10000f8c <_strnlen_s>
10001ea0:	fca42623          	sw	a0,-52(s0)
      // pre padding
      if (flags & FLAGS_PRECISION)
10001ea4:	fec42783          	lw	a5,-20(s0)
10001ea8:	4007f793          	andi	a5,a5,1024
10001eac:	00078c63          	beqz	a5,10001ec4 <_vsnprintf+0x874>
      {
        l = (l < precision ? l : precision);
10001eb0:	fcc42703          	lw	a4,-52(s0)
10001eb4:	fe442783          	lw	a5,-28(s0)
10001eb8:	00f77463          	bgeu	a4,a5,10001ec0 <_vsnprintf+0x870>
10001ebc:	00070793          	mv	a5,a4
10001ec0:	fcf42623          	sw	a5,-52(s0)
      }
      if (!(flags & FLAGS_LEFT))
10001ec4:	fec42783          	lw	a5,-20(s0)
10001ec8:	0027f793          	andi	a5,a5,2
10001ecc:	06079a63          	bnez	a5,10001f40 <_vsnprintf+0x8f0>
      {
        while (l++ < width)
10001ed0:	0280006f          	j	10001ef8 <_vsnprintf+0x8a8>
        {
          out(' ', buffer, idx++, maxlen);
10001ed4:	fdc42783          	lw	a5,-36(s0)
10001ed8:	00178713          	addi	a4,a5,1
10001edc:	fce42e23          	sw	a4,-36(s0)
10001ee0:	fac42703          	lw	a4,-84(s0)
10001ee4:	fa442683          	lw	a3,-92(s0)
10001ee8:	00078613          	mv	a2,a5
10001eec:	fa842583          	lw	a1,-88(s0)
10001ef0:	02000513          	li	a0,32
10001ef4:	000700e7          	jalr	a4
        while (l++ < width)
10001ef8:	fcc42783          	lw	a5,-52(s0)
10001efc:	00178713          	addi	a4,a5,1
10001f00:	fce42623          	sw	a4,-52(s0)
10001f04:	fe842703          	lw	a4,-24(s0)
10001f08:	fce7e6e3          	bltu	a5,a4,10001ed4 <_vsnprintf+0x884>
        }
      }
      // string output
      while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--))
10001f0c:	0340006f          	j	10001f40 <_vsnprintf+0x8f0>
      {
        out(*(p++), buffer, idx++, maxlen);
10001f10:	fd042783          	lw	a5,-48(s0)
10001f14:	00178713          	addi	a4,a5,1
10001f18:	fce42823          	sw	a4,-48(s0)
10001f1c:	0007c503          	lbu	a0,0(a5)
10001f20:	fdc42783          	lw	a5,-36(s0)
10001f24:	00178713          	addi	a4,a5,1
10001f28:	fce42e23          	sw	a4,-36(s0)
10001f2c:	fac42703          	lw	a4,-84(s0)
10001f30:	fa442683          	lw	a3,-92(s0)
10001f34:	00078613          	mv	a2,a5
10001f38:	fa842583          	lw	a1,-88(s0)
10001f3c:	000700e7          	jalr	a4
      while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--))
10001f40:	fd042783          	lw	a5,-48(s0)
10001f44:	0007c783          	lbu	a5,0(a5)
10001f48:	02078063          	beqz	a5,10001f68 <_vsnprintf+0x918>
10001f4c:	fec42783          	lw	a5,-20(s0)
10001f50:	4007f793          	andi	a5,a5,1024
10001f54:	fa078ee3          	beqz	a5,10001f10 <_vsnprintf+0x8c0>
10001f58:	fe442783          	lw	a5,-28(s0)
10001f5c:	fff78713          	addi	a4,a5,-1
10001f60:	fee42223          	sw	a4,-28(s0)
10001f64:	fa0796e3          	bnez	a5,10001f10 <_vsnprintf+0x8c0>
      }
      // post padding
      if (flags & FLAGS_LEFT)
10001f68:	fec42783          	lw	a5,-20(s0)
10001f6c:	0027f793          	andi	a5,a5,2
10001f70:	04078063          	beqz	a5,10001fb0 <_vsnprintf+0x960>
      {
        while (l++ < width)
10001f74:	0280006f          	j	10001f9c <_vsnprintf+0x94c>
        {
          out(' ', buffer, idx++, maxlen);
10001f78:	fdc42783          	lw	a5,-36(s0)
10001f7c:	00178713          	addi	a4,a5,1
10001f80:	fce42e23          	sw	a4,-36(s0)
10001f84:	fac42703          	lw	a4,-84(s0)
10001f88:	fa442683          	lw	a3,-92(s0)
10001f8c:	00078613          	mv	a2,a5
10001f90:	fa842583          	lw	a1,-88(s0)
10001f94:	02000513          	li	a0,32
10001f98:	000700e7          	jalr	a4
        while (l++ < width)
10001f9c:	fcc42783          	lw	a5,-52(s0)
10001fa0:	00178713          	addi	a4,a5,1
10001fa4:	fce42623          	sw	a4,-52(s0)
10001fa8:	fe842703          	lw	a4,-24(s0)
10001fac:	fce7e6e3          	bltu	a5,a4,10001f78 <_vsnprintf+0x928>
        }
      }
      format++;
10001fb0:	fa042783          	lw	a5,-96(s0)
10001fb4:	00178793          	addi	a5,a5,1
10001fb8:	faf42023          	sw	a5,-96(s0)
      break;
10001fbc:	0dc0006f          	j	10002098 <_vsnprintf+0xa48>
    }

    case 'p':
    {
      width = sizeof(void *) * 2U;
10001fc0:	00800793          	li	a5,8
10001fc4:	fef42423          	sw	a5,-24(s0)
      flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
10001fc8:	fec42783          	lw	a5,-20(s0)
10001fcc:	0217e793          	ori	a5,a5,33
10001fd0:	fef42623          	sw	a5,-20(s0)
        idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void *), false, 16U, precision, width, flags);
      }
      else
      {
#endif
        idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void *)), false, 16U, precision, width, flags);
10001fd4:	f9c42783          	lw	a5,-100(s0)
10001fd8:	00478713          	addi	a4,a5,4
10001fdc:	f8e42e23          	sw	a4,-100(s0)
10001fe0:	0007a783          	lw	a5,0(a5)
10001fe4:	00078713          	mv	a4,a5
10001fe8:	fec42783          	lw	a5,-20(s0)
10001fec:	00f12223          	sw	a5,4(sp)
10001ff0:	fe842783          	lw	a5,-24(s0)
10001ff4:	00f12023          	sw	a5,0(sp)
10001ff8:	fe442883          	lw	a7,-28(s0)
10001ffc:	01000813          	li	a6,16
10002000:	00000793          	li	a5,0
10002004:	fa442683          	lw	a3,-92(s0)
10002008:	fdc42603          	lw	a2,-36(s0)
1000200c:	fa842583          	lw	a1,-88(s0)
10002010:	fac42503          	lw	a0,-84(s0)
10002014:	cf4ff0ef          	jal	ra,10001508 <_ntoa_long>
10002018:	fca42e23          	sw	a0,-36(s0)
#if defined(PRINTF_SUPPORT_LONG_LONG)
      }
#endif
      format++;
1000201c:	fa042783          	lw	a5,-96(s0)
10002020:	00178793          	addi	a5,a5,1
10002024:	faf42023          	sw	a5,-96(s0)
      break;
10002028:	0700006f          	j	10002098 <_vsnprintf+0xa48>
    }

    case '%':
      out('%', buffer, idx++, maxlen);
1000202c:	fdc42783          	lw	a5,-36(s0)
10002030:	00178713          	addi	a4,a5,1
10002034:	fce42e23          	sw	a4,-36(s0)
10002038:	fac42703          	lw	a4,-84(s0)
1000203c:	fa442683          	lw	a3,-92(s0)
10002040:	00078613          	mv	a2,a5
10002044:	fa842583          	lw	a1,-88(s0)
10002048:	02500513          	li	a0,37
1000204c:	000700e7          	jalr	a4
      format++;
10002050:	fa042783          	lw	a5,-96(s0)
10002054:	00178793          	addi	a5,a5,1
10002058:	faf42023          	sw	a5,-96(s0)
      break;
1000205c:	03c0006f          	j	10002098 <_vsnprintf+0xa48>

    default:
      out(*format, buffer, idx++, maxlen);
10002060:	fa042783          	lw	a5,-96(s0)
10002064:	0007c503          	lbu	a0,0(a5)
10002068:	fdc42783          	lw	a5,-36(s0)
1000206c:	00178713          	addi	a4,a5,1
10002070:	fce42e23          	sw	a4,-36(s0)
10002074:	fac42703          	lw	a4,-84(s0)
10002078:	fa442683          	lw	a3,-92(s0)
1000207c:	00078613          	mv	a2,a5
10002080:	fa842583          	lw	a1,-88(s0)
10002084:	000700e7          	jalr	a4
      format++;
10002088:	fa042783          	lw	a5,-96(s0)
1000208c:	00178793          	addi	a5,a5,1
10002090:	faf42023          	sw	a5,-96(s0)
      break;
10002094:	00000013          	nop
  while (*format)
10002098:	fa042783          	lw	a5,-96(s0)
1000209c:	0007c783          	lbu	a5,0(a5)
100020a0:	de079863          	bnez	a5,10001690 <_vsnprintf+0x40>
    }
  }
  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
100020a4:	fdc42703          	lw	a4,-36(s0)
100020a8:	fa442783          	lw	a5,-92(s0)
100020ac:	00f76863          	bltu	a4,a5,100020bc <_vsnprintf+0xa6c>
100020b0:	fa442783          	lw	a5,-92(s0)
100020b4:	fff78793          	addi	a5,a5,-1
100020b8:	0080006f          	j	100020c0 <_vsnprintf+0xa70>
100020bc:	fdc42783          	lw	a5,-36(s0)
100020c0:	fac42703          	lw	a4,-84(s0)
100020c4:	fa442683          	lw	a3,-92(s0)
100020c8:	00078613          	mv	a2,a5
100020cc:	fa842583          	lw	a1,-88(s0)
100020d0:	00000513          	li	a0,0
100020d4:	000700e7          	jalr	a4
  // out((char)'\0', buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);

  // return written chars without terminating \0
  return (int)idx;
100020d8:	fdc42783          	lw	a5,-36(s0)
}
100020dc:	00078513          	mv	a0,a5
100020e0:	07c12083          	lw	ra,124(sp)
100020e4:	07812403          	lw	s0,120(sp)
100020e8:	08010113          	addi	sp,sp,128
100020ec:	00008067          	ret

100020f0 <printf_>:

///////////////////////////////////////////////////////////////////////////////

int printf_(const char *format, ...)
{
100020f0:	fb010113          	addi	sp,sp,-80
100020f4:	02112623          	sw	ra,44(sp)
100020f8:	02812423          	sw	s0,40(sp)
100020fc:	03010413          	addi	s0,sp,48
10002100:	fca42e23          	sw	a0,-36(s0)
10002104:	00b42223          	sw	a1,4(s0)
10002108:	00c42423          	sw	a2,8(s0)
1000210c:	00d42623          	sw	a3,12(s0)
10002110:	00e42823          	sw	a4,16(s0)
10002114:	00f42a23          	sw	a5,20(s0)
10002118:	01042c23          	sw	a6,24(s0)
1000211c:	01142e23          	sw	a7,28(s0)
  va_list va;
  va_start(va, format);
10002120:	02040793          	addi	a5,s0,32
10002124:	fe478793          	addi	a5,a5,-28
10002128:	fef42423          	sw	a5,-24(s0)
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
1000212c:	fe842703          	lw	a4,-24(s0)
10002130:	fe440793          	addi	a5,s0,-28
10002134:	fdc42683          	lw	a3,-36(s0)
10002138:	fff00613          	li	a2,-1
1000213c:	00078593          	mv	a1,a5
10002140:	100017b7          	lui	a5,0x10001
10002144:	ee878513          	addi	a0,a5,-280 # 10000ee8 <_out_char>
10002148:	d08ff0ef          	jal	ra,10001650 <_vsnprintf>
1000214c:	fea42623          	sw	a0,-20(s0)
  va_end(va);
  return ret;
10002150:	fec42783          	lw	a5,-20(s0)
}
10002154:	00078513          	mv	a0,a5
10002158:	02c12083          	lw	ra,44(sp)
1000215c:	02812403          	lw	s0,40(sp)
10002160:	05010113          	addi	sp,sp,80
10002164:	00008067          	ret

10002168 <sprintf_>:

int sprintf_(char *buffer, const char *format, ...)
{
10002168:	fb010113          	addi	sp,sp,-80
1000216c:	02112623          	sw	ra,44(sp)
10002170:	02812423          	sw	s0,40(sp)
10002174:	03010413          	addi	s0,sp,48
10002178:	fca42e23          	sw	a0,-36(s0)
1000217c:	fcb42c23          	sw	a1,-40(s0)
10002180:	00c42423          	sw	a2,8(s0)
10002184:	00d42623          	sw	a3,12(s0)
10002188:	00e42823          	sw	a4,16(s0)
1000218c:	00f42a23          	sw	a5,20(s0)
10002190:	01042c23          	sw	a6,24(s0)
10002194:	01142e23          	sw	a7,28(s0)
  va_list va;
  va_start(va, format);
10002198:	02040793          	addi	a5,s0,32
1000219c:	fe878793          	addi	a5,a5,-24
100021a0:	fef42423          	sw	a5,-24(s0)
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
100021a4:	fe842783          	lw	a5,-24(s0)
100021a8:	00078713          	mv	a4,a5
100021ac:	fd842683          	lw	a3,-40(s0)
100021b0:	fff00613          	li	a2,-1
100021b4:	fdc42583          	lw	a1,-36(s0)
100021b8:	100017b7          	lui	a5,0x10001
100021bc:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
100021c0:	c90ff0ef          	jal	ra,10001650 <_vsnprintf>
100021c4:	fea42623          	sw	a0,-20(s0)
  va_end(va);
  return ret;
100021c8:	fec42783          	lw	a5,-20(s0)
}
100021cc:	00078513          	mv	a0,a5
100021d0:	02c12083          	lw	ra,44(sp)
100021d4:	02812403          	lw	s0,40(sp)
100021d8:	05010113          	addi	sp,sp,80
100021dc:	00008067          	ret

100021e0 <snprintf_>:

int snprintf_(char *buffer, size_t count, const char *format, ...)
{
100021e0:	fb010113          	addi	sp,sp,-80
100021e4:	02112623          	sw	ra,44(sp)
100021e8:	02812423          	sw	s0,40(sp)
100021ec:	03010413          	addi	s0,sp,48
100021f0:	fca42e23          	sw	a0,-36(s0)
100021f4:	fcb42c23          	sw	a1,-40(s0)
100021f8:	fcc42a23          	sw	a2,-44(s0)
100021fc:	00d42623          	sw	a3,12(s0)
10002200:	00e42823          	sw	a4,16(s0)
10002204:	00f42a23          	sw	a5,20(s0)
10002208:	01042c23          	sw	a6,24(s0)
1000220c:	01142e23          	sw	a7,28(s0)
  va_list va;
  va_start(va, format);
10002210:	02040793          	addi	a5,s0,32
10002214:	fec78793          	addi	a5,a5,-20
10002218:	fef42423          	sw	a5,-24(s0)
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
1000221c:	fe842783          	lw	a5,-24(s0)
10002220:	00078713          	mv	a4,a5
10002224:	fd442683          	lw	a3,-44(s0)
10002228:	fd842603          	lw	a2,-40(s0)
1000222c:	fdc42583          	lw	a1,-36(s0)
10002230:	100017b7          	lui	a5,0x10001
10002234:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
10002238:	c18ff0ef          	jal	ra,10001650 <_vsnprintf>
1000223c:	fea42623          	sw	a0,-20(s0)
  va_end(va);
  return ret;
10002240:	fec42783          	lw	a5,-20(s0)
}
10002244:	00078513          	mv	a0,a5
10002248:	02c12083          	lw	ra,44(sp)
1000224c:	02812403          	lw	s0,40(sp)
10002250:	05010113          	addi	sp,sp,80
10002254:	00008067          	ret

10002258 <vprintf_>:

int vprintf_(const char *format, va_list va)
{
10002258:	fd010113          	addi	sp,sp,-48
1000225c:	02112623          	sw	ra,44(sp)
10002260:	02812423          	sw	s0,40(sp)
10002264:	03010413          	addi	s0,sp,48
10002268:	fca42e23          	sw	a0,-36(s0)
1000226c:	fcb42c23          	sw	a1,-40(s0)
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
10002270:	fec40793          	addi	a5,s0,-20
10002274:	fd842703          	lw	a4,-40(s0)
10002278:	fdc42683          	lw	a3,-36(s0)
1000227c:	fff00613          	li	a2,-1
10002280:	00078593          	mv	a1,a5
10002284:	100017b7          	lui	a5,0x10001
10002288:	ee878513          	addi	a0,a5,-280 # 10000ee8 <_out_char>
1000228c:	bc4ff0ef          	jal	ra,10001650 <_vsnprintf>
10002290:	00050793          	mv	a5,a0
}
10002294:	00078513          	mv	a0,a5
10002298:	02c12083          	lw	ra,44(sp)
1000229c:	02812403          	lw	s0,40(sp)
100022a0:	03010113          	addi	sp,sp,48
100022a4:	00008067          	ret

100022a8 <vsnprintf_>:

int vsnprintf_(char *buffer, size_t count, const char *format, va_list va)
{
100022a8:	fe010113          	addi	sp,sp,-32
100022ac:	00112e23          	sw	ra,28(sp)
100022b0:	00812c23          	sw	s0,24(sp)
100022b4:	02010413          	addi	s0,sp,32
100022b8:	fea42623          	sw	a0,-20(s0)
100022bc:	feb42423          	sw	a1,-24(s0)
100022c0:	fec42223          	sw	a2,-28(s0)
100022c4:	fed42023          	sw	a3,-32(s0)
  return _vsnprintf(_out_buffer, buffer, count, format, va);
100022c8:	fe042703          	lw	a4,-32(s0)
100022cc:	fe442683          	lw	a3,-28(s0)
100022d0:	fe842603          	lw	a2,-24(s0)
100022d4:	fec42583          	lw	a1,-20(s0)
100022d8:	100017b7          	lui	a5,0x10001
100022dc:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
100022e0:	b70ff0ef          	jal	ra,10001650 <_vsnprintf>
100022e4:	00050793          	mv	a5,a0
}
100022e8:	00078513          	mv	a0,a5
100022ec:	01c12083          	lw	ra,28(sp)
100022f0:	01812403          	lw	s0,24(sp)
100022f4:	02010113          	addi	sp,sp,32
100022f8:	00008067          	ret

100022fc <fctprintf>:

int fctprintf(void (*out)(char character, void *arg), void *arg, const char *format, ...)
{
100022fc:	fb010113          	addi	sp,sp,-80
10002300:	02112623          	sw	ra,44(sp)
10002304:	02812423          	sw	s0,40(sp)
10002308:	03010413          	addi	s0,sp,48
1000230c:	fca42e23          	sw	a0,-36(s0)
10002310:	fcb42c23          	sw	a1,-40(s0)
10002314:	fcc42a23          	sw	a2,-44(s0)
10002318:	00d42623          	sw	a3,12(s0)
1000231c:	00e42823          	sw	a4,16(s0)
10002320:	00f42a23          	sw	a5,20(s0)
10002324:	01042c23          	sw	a6,24(s0)
10002328:	01142e23          	sw	a7,28(s0)
  va_list va;
  va_start(va, format);
1000232c:	02040793          	addi	a5,s0,32
10002330:	fec78793          	addi	a5,a5,-20
10002334:	fef42423          	sw	a5,-24(s0)
  const out_fct_wrap_type out_fct_wrap = {out, arg};
10002338:	fdc42783          	lw	a5,-36(s0)
1000233c:	fef42023          	sw	a5,-32(s0)
10002340:	fd842783          	lw	a5,-40(s0)
10002344:	fef42223          	sw	a5,-28(s0)
  const int ret = _vsnprintf(_out_fct, (char *)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
10002348:	fe842703          	lw	a4,-24(s0)
1000234c:	fe040793          	addi	a5,s0,-32
10002350:	fd442683          	lw	a3,-44(s0)
10002354:	fff00613          	li	a2,-1
10002358:	00078593          	mv	a1,a5
1000235c:	100017b7          	lui	a5,0x10001
10002360:	f2c78513          	addi	a0,a5,-212 # 10000f2c <_out_fct>
10002364:	aecff0ef          	jal	ra,10001650 <_vsnprintf>
10002368:	fea42623          	sw	a0,-20(s0)
  va_end(va);
  return ret;
1000236c:	fec42783          	lw	a5,-20(s0)
}
10002370:	00078513          	mv	a0,a5
10002374:	02c12083          	lw	ra,44(sp)
10002378:	02812403          	lw	s0,40(sp)
1000237c:	05010113          	addi	sp,sp,80
10002380:	00008067          	ret

10002384 <_putchar>:

void _putchar(char character){}
10002384:	fe010113          	addi	sp,sp,-32
10002388:	00812e23          	sw	s0,28(sp)
1000238c:	02010413          	addi	s0,sp,32
10002390:	00050793          	mv	a5,a0
10002394:	fef407a3          	sb	a5,-17(s0)
10002398:	00000013          	nop
1000239c:	01c12403          	lw	s0,28(sp)
100023a0:	02010113          	addi	sp,sp,32
100023a4:	00008067          	ret

100023a8 <memset>:
#include "std_lib_util.h"

void *memset(void *dest, int c, int n)
{
100023a8:	fd010113          	addi	sp,sp,-48
100023ac:	02812623          	sw	s0,44(sp)
100023b0:	03010413          	addi	s0,sp,48
100023b4:	fca42e23          	sw	a0,-36(s0)
100023b8:	fcb42c23          	sw	a1,-40(s0)
100023bc:	fcc42a23          	sw	a2,-44(s0)
    char *p = dest;
100023c0:	fdc42783          	lw	a5,-36(s0)
100023c4:	fef42623          	sw	a5,-20(s0)
    while (n-- > 0) {
100023c8:	01c0006f          	j	100023e4 <memset+0x3c>
        *(char*)dest++ = c;
100023cc:	fdc42783          	lw	a5,-36(s0)
100023d0:	00178713          	addi	a4,a5,1
100023d4:	fce42e23          	sw	a4,-36(s0)
100023d8:	fd842703          	lw	a4,-40(s0)
100023dc:	0ff77713          	andi	a4,a4,255
100023e0:	00e78023          	sb	a4,0(a5)
    while (n-- > 0) {
100023e4:	fd442783          	lw	a5,-44(s0)
100023e8:	fff78713          	addi	a4,a5,-1
100023ec:	fce42a23          	sw	a4,-44(s0)
100023f0:	fcf04ee3          	bgtz	a5,100023cc <memset+0x24>
    }
    return p;
100023f4:	fec42783          	lw	a5,-20(s0)
}
100023f8:	00078513          	mv	a0,a5
100023fc:	02c12403          	lw	s0,44(sp)
10002400:	03010113          	addi	sp,sp,48
10002404:	00008067          	ret

10002408 <strncpy>:


char *strncpy(char *dst, const char *src, int n)
{
10002408:	fd010113          	addi	sp,sp,-48
1000240c:	02812623          	sw	s0,44(sp)
10002410:	03010413          	addi	s0,sp,48
10002414:	fca42e23          	sw	a0,-36(s0)
10002418:	fcb42c23          	sw	a1,-40(s0)
1000241c:	fcc42a23          	sw	a2,-44(s0)
    int i;
    for (i = 0; i < n && src[i]; i++) {
10002420:	fe042623          	sw	zero,-20(s0)
10002424:	0300006f          	j	10002454 <strncpy+0x4c>
        dst[i] = src[i];
10002428:	fec42783          	lw	a5,-20(s0)
1000242c:	fd842703          	lw	a4,-40(s0)
10002430:	00f70733          	add	a4,a4,a5
10002434:	fec42783          	lw	a5,-20(s0)
10002438:	fdc42683          	lw	a3,-36(s0)
1000243c:	00f687b3          	add	a5,a3,a5
10002440:	00074703          	lbu	a4,0(a4)
10002444:	00e78023          	sb	a4,0(a5)
    for (i = 0; i < n && src[i]; i++) {
10002448:	fec42783          	lw	a5,-20(s0)
1000244c:	00178793          	addi	a5,a5,1
10002450:	fef42623          	sw	a5,-20(s0)
10002454:	fec42703          	lw	a4,-20(s0)
10002458:	fd442783          	lw	a5,-44(s0)
1000245c:	02f75c63          	bge	a4,a5,10002494 <strncpy+0x8c>
10002460:	fec42783          	lw	a5,-20(s0)
10002464:	fd842703          	lw	a4,-40(s0)
10002468:	00f707b3          	add	a5,a4,a5
1000246c:	0007c783          	lbu	a5,0(a5)
10002470:	fa079ce3          	bnez	a5,10002428 <strncpy+0x20>
    }
    for (; i < n; i++) {
10002474:	0200006f          	j	10002494 <strncpy+0x8c>
        dst[i] = 0;
10002478:	fec42783          	lw	a5,-20(s0)
1000247c:	fdc42703          	lw	a4,-36(s0)
10002480:	00f707b3          	add	a5,a4,a5
10002484:	00078023          	sb	zero,0(a5)
    for (; i < n; i++) {
10002488:	fec42783          	lw	a5,-20(s0)
1000248c:	00178793          	addi	a5,a5,1
10002490:	fef42623          	sw	a5,-20(s0)
10002494:	fec42703          	lw	a4,-20(s0)
10002498:	fd442783          	lw	a5,-44(s0)
1000249c:	fcf74ee3          	blt	a4,a5,10002478 <strncpy+0x70>
    }
    return dst;
100024a0:	fdc42783          	lw	a5,-36(s0)
}
100024a4:	00078513          	mv	a0,a5
100024a8:	02c12403          	lw	s0,44(sp)
100024ac:	03010113          	addi	sp,sp,48
100024b0:	00008067          	ret

100024b4 <len_of_str>:


int len_of_str(const char *p_string)
{
100024b4:	fd010113          	addi	sp,sp,-48
100024b8:	02812623          	sw	s0,44(sp)
100024bc:	03010413          	addi	s0,sp,48
100024c0:	fca42e23          	sw	a0,-36(s0)
    unsigned int length = 0;
100024c4:	fe042623          	sw	zero,-20(s0)

    while(*p_string++ != 0) {
100024c8:	0100006f          	j	100024d8 <len_of_str+0x24>
        length++;
100024cc:	fec42783          	lw	a5,-20(s0)
100024d0:	00178793          	addi	a5,a5,1
100024d4:	fef42623          	sw	a5,-20(s0)
    while(*p_string++ != 0) {
100024d8:	fdc42783          	lw	a5,-36(s0)
100024dc:	00178713          	addi	a4,a5,1
100024e0:	fce42e23          	sw	a4,-36(s0)
100024e4:	0007c783          	lbu	a5,0(a5)
100024e8:	fe0792e3          	bnez	a5,100024cc <len_of_str+0x18>
    }
    return length;
100024ec:	fec42783          	lw	a5,-20(s0)
}
100024f0:	00078513          	mv	a0,a5
100024f4:	02c12403          	lw	s0,44(sp)
100024f8:	03010113          	addi	sp,sp,48
100024fc:	00008067          	ret

10002500 <Xil_In32>:
/************************** Constant Definitions ****************************/

/************************** Static Inlines ****************************/

static inline uint32_t Xil_In32(uintptr_t Addr)
{
10002500:	fe010113          	addi	sp,sp,-32
10002504:	00812e23          	sw	s0,28(sp)
10002508:	02010413          	addi	s0,sp,32
1000250c:	fea42623          	sw	a0,-20(s0)
	return *(volatile uint32_t *) Addr;
10002510:	fec42783          	lw	a5,-20(s0)
10002514:	0007a783          	lw	a5,0(a5)
}
10002518:	00078513          	mv	a0,a5
1000251c:	01c12403          	lw	s0,28(sp)
10002520:	02010113          	addi	sp,sp,32
10002524:	00008067          	ret

10002528 <Xil_Out32>:

static inline void Xil_Out32(uintptr_t Addr, uint32_t Value)
{
10002528:	fd010113          	addi	sp,sp,-48
1000252c:	02812623          	sw	s0,44(sp)
10002530:	03010413          	addi	s0,sp,48
10002534:	fca42e23          	sw	a0,-36(s0)
10002538:	fcb42c23          	sw	a1,-40(s0)
	volatile uint32_t *LocalAddr = (volatile uint32_t *)Addr;
1000253c:	fdc42783          	lw	a5,-36(s0)
10002540:	fef42623          	sw	a5,-20(s0)
	*LocalAddr = Value;
10002544:	fec42783          	lw	a5,-20(s0)
10002548:	fd842703          	lw	a4,-40(s0)
1000254c:	00e7a023          	sw	a4,0(a5)
}
10002550:	00000013          	nop
10002554:	02c12403          	lw	s0,44(sp)
10002558:	03010113          	addi	sp,sp,48
1000255c:	00008067          	ret

10002560 <XUartLite_InterruptHandlerWrapper>:
enum PROTO_STATE{
    INVALID = 0,
    HEADER1, 
    VALID    
};
unsigned int XUartLite_InterruptHandlerWrapper(int id){
10002560:	fd010113          	addi	sp,sp,-48
10002564:	02112623          	sw	ra,44(sp)
10002568:	02812423          	sw	s0,40(sp)
1000256c:	03010413          	addi	s0,sp,48
10002570:	fca42e23          	sw	a0,-36(s0)
    XUartLite * InstancePtr;
	uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    uint8_t fifo_in;
    unsigned int ReceivedCount = 0;
10002574:	fe042423          	sw	zero,-24(s0)
    static  int recv_cnt = 0;
    static enum PROTO_STATE header_state = INVALID;
    if(id == 0){
10002578:	fdc42783          	lw	a5,-36(s0)
1000257c:	00079a63          	bnez	a5,10002590 <XUartLite_InterruptHandlerWrapper+0x30>
        InstancePtr = & XUartLiteInstances0;
10002580:	100107b7          	lui	a5,0x10010
10002584:	77878793          	addi	a5,a5,1912 # 10010778 <XUartLiteInstances0>
10002588:	fef42623          	sw	a5,-20(s0)
1000258c:	01c0006f          	j	100025a8 <XUartLite_InterruptHandlerWrapper+0x48>
    }else if(id==1){
10002590:	fdc42703          	lw	a4,-36(s0)
10002594:	00100793          	li	a5,1
10002598:	00f71863          	bne	a4,a5,100025a8 <XUartLite_InterruptHandlerWrapper+0x48>
        InstancePtr = & XUartLiteInstances1;
1000259c:	100117b7          	lui	a5,0x10011
100025a0:	85878793          	addi	a5,a5,-1960 # 10010858 <XUartLiteInstances1>
100025a4:	fef42623          	sw	a5,-20(s0)
    }


    if(id==0){
100025a8:	fdc42783          	lw	a5,-36(s0)
100025ac:	04079663          	bnez	a5,100025f8 <XUartLite_InterruptHandlerWrapper+0x98>
        while (1) {
            StatusRegister =
                XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
100025b0:	fec42783          	lw	a5,-20(s0)
100025b4:	01c7a783          	lw	a5,28(a5)
100025b8:	00878793          	addi	a5,a5,8
100025bc:	00078513          	mv	a0,a5
100025c0:	f41ff0ef          	jal	ra,10002500 <Xil_In32>
100025c4:	00050793          	mv	a5,a0
            StatusRegister =
100025c8:	fef403a3          	sb	a5,-25(s0)
            if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
100025cc:	fe744783          	lbu	a5,-25(s0)
100025d0:	0017f793          	andi	a5,a5,1
100025d4:	02078063          	beqz	a5,100025f4 <XUartLite_InterruptHandlerWrapper+0x94>
                   //InstancePtr->ForwardBuffer[recv_cnt] = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
                                //XUL_RX_FIFO_OFFSET);
                   fifo_in = XUartLite_ReadReg(InstancePtr->RegBaseAddress,XUL_RX_FIFO_OFFSET);
100025d8:	fec42783          	lw	a5,-20(s0)
100025dc:	01c7a783          	lw	a5,28(a5)
100025e0:	00078513          	mv	a0,a5
100025e4:	f1dff0ef          	jal	ra,10002500 <Xil_In32>
100025e8:	00050793          	mv	a5,a0
100025ec:	fef40323          	sb	a5,-26(s0)
            StatusRegister =
100025f0:	fc1ff06f          	j	100025b0 <XUartLite_InterruptHandlerWrapper+0x50>
                   //            InstancePtr->ReceiveBuffer.locked = 1;
                   //        }
                   //    }
                   //}
            }else {
                break;
100025f4:	00000013          	nop
        //}

    }
    //XUartLite_InterruptHandler(InstancePtr);

    if(id == 0){
100025f8:	fdc42783          	lw	a5,-36(s0)
100025fc:	00079c63          	bnez	a5,10002614 <XUartLite_InterruptHandlerWrapper+0xb4>
        *uart0_intr_clr  = 1;
10002600:	100117b7          	lui	a5,0x10011
10002604:	a087a783          	lw	a5,-1528(a5) # 10010a08 <uart0_intr_clr>
10002608:	00100713          	li	a4,1
1000260c:	00e7a023          	sw	a4,0(a5)
10002610:	0200006f          	j	10002630 <XUartLite_InterruptHandlerWrapper+0xd0>
    }else if(id==1){
10002614:	fdc42703          	lw	a4,-36(s0)
10002618:	00100793          	li	a5,1
1000261c:	00f71a63          	bne	a4,a5,10002630 <XUartLite_InterruptHandlerWrapper+0xd0>
        *uart1_intr_clr  = 1;
10002620:	100117b7          	lui	a5,0x10011
10002624:	a0c7a783          	lw	a5,-1524(a5) # 10010a0c <uart1_intr_clr>
10002628:	00100713          	li	a4,1
1000262c:	00e7a023          	sw	a4,0(a5)
    }
}
10002630:	00000013          	nop
10002634:	00078513          	mv	a0,a5
10002638:	02c12083          	lw	ra,44(sp)
1000263c:	02812403          	lw	s0,40(sp)
10002640:	03010113          	addi	sp,sp,48
10002644:	00008067          	ret

10002648 <XUartLite_SendBuffer>:

unsigned int XUartLite_SendBuffer(XUartLite *InstancePtr)
{
10002648:	fd010113          	addi	sp,sp,-48
1000264c:	02112623          	sw	ra,44(sp)
10002650:	02812423          	sw	s0,40(sp)
10002654:	03010413          	addi	s0,sp,48
10002658:	fca42e23          	sw	a0,-36(s0)
	unsigned int SentCount = 0;
1000265c:	fe042623          	sw	zero,-20(s0)
	uint8_t IntrEnableStatus;

	/*
	 * Read the status register to determine if the transmitter is full
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002660:	fdc42783          	lw	a5,-36(s0)
10002664:	01c7a783          	lw	a5,28(a5)
10002668:	00878793          	addi	a5,a5,8
1000266c:	00078513          	mv	a0,a5
10002670:	e91ff0ef          	jal	ra,10002500 <Xil_In32>
10002674:	00050793          	mv	a5,a0
10002678:	fef405a3          	sb	a5,-21(s0)

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
1000267c:	fdc42783          	lw	a5,-36(s0)
10002680:	01c7a783          	lw	a5,28(a5)
10002684:	00878793          	addi	a5,a5,8
10002688:	00078513          	mv	a0,a5
1000268c:	e75ff0ef          	jal	ra,10002500 <Xil_In32>
10002690:	00050793          	mv	a5,a0
10002694:	fef405a3          	sb	a5,-21(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002698:	fdc42783          	lw	a5,-36(s0)
1000269c:	01c7a783          	lw	a5,28(a5)
100026a0:	00c78793          	addi	a5,a5,12
100026a4:	00000593          	li	a1,0
100026a8:	00078513          	mv	a0,a5
100026ac:	e7dff0ef          	jal	ra,10002528 <Xil_Out32>
	/*
	 * Save the status register contents to restore the interrupt enable
	 * register to it's previous value when that the critical region is
	 * exited
	 */
	IntrEnableStatus = StatusRegister;
100026b0:	feb44783          	lbu	a5,-21(s0)
100026b4:	fef40523          	sb	a5,-22(s0)

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
100026b8:	0580006f          	j	10002710 <XUartLite_SendBuffer+0xc8>
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
		XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100026bc:	fdc42783          	lw	a5,-36(s0)
100026c0:	01c7a783          	lw	a5,28(a5)
100026c4:	00478693          	addi	a3,a5,4
100026c8:	fdc42783          	lw	a5,-36(s0)
100026cc:	0407a703          	lw	a4,64(a5)
100026d0:	fec42783          	lw	a5,-20(s0)
100026d4:	00f707b3          	add	a5,a4,a5
100026d8:	0007c783          	lbu	a5,0(a5)
100026dc:	00078593          	mv	a1,a5
100026e0:	00068513          	mv	a0,a3
100026e4:	e45ff0ef          	jal	ra,10002528 <Xil_Out32>
					XUL_TX_FIFO_OFFSET,
					InstancePtr->SendBuffer.NextBytePtr[
					SentCount]);

		SentCount++;
100026e8:	fec42783          	lw	a5,-20(s0)
100026ec:	00178793          	addi	a5,a5,1
100026f0:	fef42623          	sw	a5,-20(s0)

		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
100026f4:	fdc42783          	lw	a5,-36(s0)
100026f8:	01c7a783          	lw	a5,28(a5)
100026fc:	00878793          	addi	a5,a5,8
10002700:	00078513          	mv	a0,a5
10002704:	dfdff0ef          	jal	ra,10002500 <Xil_In32>
10002708:	00050793          	mv	a5,a0
		StatusRegister =
1000270c:	fef405a3          	sb	a5,-21(s0)
	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
10002710:	feb44783          	lbu	a5,-21(s0)
10002714:	0087f793          	andi	a5,a5,8
10002718:	00079a63          	bnez	a5,1000272c <XUartLite_SendBuffer+0xe4>
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
1000271c:	fdc42783          	lw	a5,-36(s0)
10002720:	0487a783          	lw	a5,72(a5)
	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
10002724:	fec42703          	lw	a4,-20(s0)
10002728:	f8f76ae3          	bltu	a4,a5,100026bc <XUartLite_SendBuffer+0x74>
	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
1000272c:	fdc42783          	lw	a5,-36(s0)
10002730:	0407a703          	lw	a4,64(a5)
10002734:	fec42783          	lw	a5,-20(s0)
10002738:	00f70733          	add	a4,a4,a5
1000273c:	fdc42783          	lw	a5,-36(s0)
10002740:	04e7a023          	sw	a4,64(a5)
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;
10002744:	fdc42783          	lw	a5,-36(s0)
10002748:	0487a703          	lw	a4,72(a5)
1000274c:	fec42783          	lw	a5,-20(s0)
10002750:	40f70733          	sub	a4,a4,a5
10002754:	fdc42783          	lw	a5,-36(s0)
10002758:	04e7a423          	sw	a4,72(a5)

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;
1000275c:	fdc42783          	lw	a5,-36(s0)
10002760:	0087a703          	lw	a4,8(a5)
10002764:	fec42783          	lw	a5,-20(s0)
10002768:	00f70733          	add	a4,a4,a5
1000276c:	fdc42783          	lw	a5,-36(s0)
10002770:	00e7a423          	sw	a4,8(a5)

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	IntrEnableStatus &= XUL_CR_ENABLE_INTR;
10002774:	fea44783          	lbu	a5,-22(s0)
10002778:	0107f793          	andi	a5,a5,16
1000277c:	fef40523          	sb	a5,-22(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
10002780:	fdc42783          	lw	a5,-36(s0)
10002784:	01c7a783          	lw	a5,28(a5)
10002788:	00c78793          	addi	a5,a5,12
1000278c:	fea44703          	lbu	a4,-22(s0)
10002790:	00070593          	mv	a1,a4
10002794:	00078513          	mv	a0,a5
10002798:	d91ff0ef          	jal	ra,10002528 <Xil_Out32>

	/*
	 * Return the number of bytes that were sent, althought they really were
	 * only put into the FIFO, not completely sent yet
	 */
	return SentCount;
1000279c:	fec42783          	lw	a5,-20(s0)
}
100027a0:	00078513          	mv	a0,a5
100027a4:	02c12083          	lw	ra,44(sp)
100027a8:	02812403          	lw	s0,40(sp)
100027ac:	03010113          	addi	sp,sp,48
100027b0:	00008067          	ret

100027b4 <XUartLite_ReceiveBuffer>:

unsigned int XUartLite_ReceiveBuffer(XUartLite *InstancePtr)
{
100027b4:	fd010113          	addi	sp,sp,-48
100027b8:	02112623          	sw	ra,44(sp)
100027bc:	02812423          	sw	s0,40(sp)
100027c0:	03010413          	addi	s0,sp,48
100027c4:	fca42e23          	sw	a0,-36(s0)
    uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    unsigned int ReceivedCount = 0;
100027c8:	fe042623          	sw	zero,-20(s0)

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegisterVal = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
100027cc:	fdc42783          	lw	a5,-36(s0)
100027d0:	01c7a783          	lw	a5,28(a5)
100027d4:	00878793          	addi	a5,a5,8
100027d8:	00078513          	mv	a0,a5
100027dc:	d25ff0ef          	jal	ra,10002500 <Xil_In32>
100027e0:	00050793          	mv	a5,a0
100027e4:	fef405a3          	sb	a5,-21(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100027e8:	fdc42783          	lw	a5,-36(s0)
100027ec:	01c7a783          	lw	a5,28(a5)
100027f0:	00c78793          	addi	a5,a5,12
100027f4:	00000593          	li	a1,0
100027f8:	00078513          	mv	a0,a5
100027fc:	d2dff0ef          	jal	ra,10002528 <Xil_Out32>
    /*
     * Loop until there is not more data buffered by the UART or the
     * specified number of bytes is received
     */

    while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
10002800:	0600006f          	j	10002860 <XUartLite_ReceiveBuffer+0xac>
        /*
         * Read the Status Register to determine if there is any data in
         * the receiver/FIFO
         */
        StatusRegister =
            XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002804:	fdc42783          	lw	a5,-36(s0)
10002808:	01c7a783          	lw	a5,28(a5)
1000280c:	00878793          	addi	a5,a5,8
10002810:	00078513          	mv	a0,a5
10002814:	cedff0ef          	jal	ra,10002500 <Xil_In32>
10002818:	00050793          	mv	a5,a0
        StatusRegister =
1000281c:	fef40523          	sb	a5,-22(s0)
        /*
         * If there is data ready to be removed, then put the next byte
         * received into the specified buffer and update the stats to
         * reflect any receive errors for the byte
         */
        if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
10002820:	fea44783          	lbu	a5,-22(s0)
10002824:	0017f793          	andi	a5,a5,1
10002828:	04078663          	beqz	a5,10002874 <XUartLite_ReceiveBuffer+0xc0>
            InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
                XUartLite_ReadReg(InstancePtr->RegBaseAddress,
1000282c:	fdc42783          	lw	a5,-36(s0)
10002830:	01c7a783          	lw	a5,28(a5)
10002834:	00078513          	mv	a0,a5
10002838:	cc9ff0ef          	jal	ra,10002500 <Xil_In32>
1000283c:	00050613          	mv	a2,a0
            InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
10002840:	fdc42783          	lw	a5,-36(s0)
10002844:	0507a703          	lw	a4,80(a5)
10002848:	fec42783          	lw	a5,-20(s0)
1000284c:	00178693          	addi	a3,a5,1
10002850:	fed42623          	sw	a3,-20(s0)
10002854:	00f707b3          	add	a5,a4,a5
10002858:	0ff67713          	andi	a4,a2,255
1000285c:	00e78023          	sb	a4,0(a5)
    while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
10002860:	fdc42783          	lw	a5,-36(s0)
10002864:	0587a783          	lw	a5,88(a5)
10002868:	fec42703          	lw	a4,-20(s0)
1000286c:	f8f76ce3          	bltu	a4,a5,10002804 <XUartLite_ReceiveBuffer+0x50>
10002870:	0080006f          	j	10002878 <XUartLite_ReceiveBuffer+0xc4>
        /*
         * There's no more data buffered, so exit such that this
         * function does not block waiting for data
         */
        else {
            break;
10002874:	00000013          	nop

    /*
     * Update the receive buffer to reflect the number of bytes that was
     * received
     */
    InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
10002878:	fdc42783          	lw	a5,-36(s0)
1000287c:	0507a703          	lw	a4,80(a5)
10002880:	fec42783          	lw	a5,-20(s0)
10002884:	00f70733          	add	a4,a4,a5
10002888:	fdc42783          	lw	a5,-36(s0)
1000288c:	04e7a823          	sw	a4,80(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;
10002890:	fdc42783          	lw	a5,-36(s0)
10002894:	0587a703          	lw	a4,88(a5)
10002898:	fec42783          	lw	a5,-20(s0)
1000289c:	40f70733          	sub	a4,a4,a5
100028a0:	fdc42783          	lw	a5,-36(s0)
100028a4:	04e7ac23          	sw	a4,88(a5)

    /*
     * Increment associated counters in the statistics
     */
    InstancePtr->Stats.CharactersReceived += ReceivedCount;
100028a8:	fdc42783          	lw	a5,-36(s0)
100028ac:	00c7a703          	lw	a4,12(a5)
100028b0:	fec42783          	lw	a5,-20(s0)
100028b4:	00f70733          	add	a4,a4,a5
100028b8:	fdc42783          	lw	a5,-36(s0)
100028bc:	00e7a623          	sw	a4,12(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegisterVal &= XUL_CR_ENABLE_INTR;
100028c0:	feb44783          	lbu	a5,-21(s0)
100028c4:	0107f793          	andi	a5,a5,16
100028c8:	fef405a3          	sb	a5,-21(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100028cc:	fdc42783          	lw	a5,-36(s0)
100028d0:	01c7a783          	lw	a5,28(a5)
100028d4:	00c78793          	addi	a5,a5,12
100028d8:	feb44703          	lbu	a4,-21(s0)
100028dc:	00070593          	mv	a1,a4
100028e0:	00078513          	mv	a0,a5
100028e4:	c45ff0ef          	jal	ra,10002528 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, StatusRegisterVal);

    return ReceivedCount;
100028e8:	fec42783          	lw	a5,-20(s0)
}
100028ec:	00078513          	mv	a0,a5
100028f0:	02c12083          	lw	ra,44(sp)
100028f4:	02812403          	lw	s0,40(sp)
100028f8:	03010113          	addi	sp,sp,48
100028fc:	00008067          	ret

10002900 <XUartLite_InterruptHandler>:

void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
10002900:	fd010113          	addi	sp,sp,-48
10002904:	02112623          	sw	ra,44(sp)
10002908:	02812423          	sw	s0,40(sp)
1000290c:	03010413          	addi	s0,sp,48
10002910:	fca42e23          	sw	a0,-36(s0)

    /*
     * Read the status register to determine which, coulb be both
     * interrupt is active
     */
    IsrStatus = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
10002914:	fdc42783          	lw	a5,-36(s0)
10002918:	01c7a783          	lw	a5,28(a5)
1000291c:	00878793          	addi	a5,a5,8
10002920:	00078513          	mv	a0,a5
10002924:	bddff0ef          	jal	ra,10002500 <Xil_In32>
10002928:	fea42623          	sw	a0,-20(s0)
                    XUL_STATUS_REG_OFFSET);

    if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
1000292c:	fec42783          	lw	a5,-20(s0)
10002930:	0037f793          	andi	a5,a5,3
10002934:	00078663          	beqz	a5,10002940 <XUartLite_InterruptHandler+0x40>
        XUL_SR_RX_FIFO_VALID_DATA)) != 0) {
        ReceiveDataHandler(InstancePtr);
10002938:	fdc42503          	lw	a0,-36(s0)
1000293c:	018000ef          	jal	ra,10002954 <ReceiveDataHandler>
	//if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
	//	(InstancePtr->SendBuffer.RequestedBytes > 0)) {
	//	SendDataHandler(InstancePtr);
	//}

}
10002940:	00000013          	nop
10002944:	02c12083          	lw	ra,44(sp)
10002948:	02812403          	lw	s0,40(sp)
1000294c:	03010113          	addi	sp,sp,48
10002950:	00008067          	ret

10002954 <ReceiveDataHandler>:
//        InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    }
//}

static void ReceiveDataHandler(XUartLite *InstancePtr)
{
10002954:	fd010113          	addi	sp,sp,-48
10002958:	02112623          	sw	ra,44(sp)
1000295c:	02812423          	sw	s0,40(sp)
10002960:	03010413          	addi	s0,sp,48
10002964:	fca42e23          	sw	a0,-36(s0)
	int NewMsgReceivedCount;
    /*
     * If there are bytes still to be received in the specified buffer
     * go ahead and receive them
     */
    if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
10002968:	fdc42783          	lw	a5,-36(s0)
1000296c:	0587a783          	lw	a5,88(a5)
10002970:	00078a63          	beqz	a5,10002984 <ReceiveDataHandler+0x30>
        NewMsgReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
10002974:	fdc42503          	lw	a0,-36(s0)
10002978:	e3dff0ef          	jal	ra,100027b4 <XUartLite_ReceiveBuffer>
1000297c:	00050793          	mv	a5,a0
10002980:	fef42623          	sw	a5,-20(s0)
     * handler, this code should not use an else from the previous check of
     * the number of bytes to receive because the call to receive the buffer
     * updates the bytes to receive
     */
    
	TotalReceivedCount = TotalReceivedCountOf(InstancePtr);
10002984:	fdc42503          	lw	a0,-36(s0)
10002988:	0b8000ef          	jal	ra,10002a40 <TotalReceivedCountOf>
1000298c:	fea42423          	sw	a0,-24(s0)
    InstancePtr->Stats.ReceiveInterrupts++;
10002990:	fdc42783          	lw	a5,-36(s0)
10002994:	0047a783          	lw	a5,4(a5)
10002998:	00178713          	addi	a4,a5,1
1000299c:	fdc42783          	lw	a5,-36(s0)
100029a0:	00e7a223          	sw	a4,4(a5)
    //    //XUartLite_Send(&XUartLiteInstances1, "abc\n", 4);
    //    //XUartLite_Send(&XUartLiteInstances1, &TotalReceivedCount, 4);
	//	//ProcessAndForward(InstancePtr);
	//}

}
100029a4:	00000013          	nop
100029a8:	02c12083          	lw	ra,44(sp)
100029ac:	02812403          	lw	s0,40(sp)
100029b0:	03010113          	addi	sp,sp,48
100029b4:	00008067          	ret

100029b8 <SendDataHandler>:

static void SendDataHandler(XUartLite *InstancePtr)
{
100029b8:	fd010113          	addi	sp,sp,-48
100029bc:	02112623          	sw	ra,44(sp)
100029c0:	02812423          	sw	s0,40(sp)
100029c4:	03010413          	addi	s0,sp,48
100029c8:	fca42e23          	sw	a0,-36(s0)
	/*
	 * If there are not bytes to be sent from the specified buffer,
	 * call the callback function
	 */
	if (InstancePtr->SendBuffer.RemainingBytes == 0) {
100029cc:	fdc42783          	lw	a5,-36(s0)
100029d0:	0487a783          	lw	a5,72(a5)
100029d4:	02079e63          	bnez	a5,10002a10 <SendDataHandler+0x58>

		/*
		 * Save and zero the requested bytes since transmission
		 * is complete
		 */
		SaveReq = InstancePtr->SendBuffer.RequestedBytes;
100029d8:	fdc42783          	lw	a5,-36(s0)
100029dc:	0447a783          	lw	a5,68(a5)
100029e0:	fef42623          	sw	a5,-20(s0)
		InstancePtr->SendBuffer.RequestedBytes = 0;
100029e4:	fdc42783          	lw	a5,-36(s0)
100029e8:	0407a223          	sw	zero,68(a5)

		/*
		 * Call the application handler to indicate
		 * the data has been sent
		 */
		InstancePtr->SendHandler(InstancePtr->SendCallBackRef, SaveReq);
100029ec:	fdc42783          	lw	a5,-36(s0)
100029f0:	0687a683          	lw	a3,104(a5)
100029f4:	fdc42783          	lw	a5,-36(s0)
100029f8:	06c7a783          	lw	a5,108(a5)
100029fc:	fec42703          	lw	a4,-20(s0)
10002a00:	00070593          	mv	a1,a4
10002a04:	00078513          	mv	a0,a5
10002a08:	000680e7          	jalr	a3
10002a0c:	00c0006f          	j	10002a18 <SendDataHandler+0x60>
	/*
	 * Otherwise there is still more data to send in the specified buffer
	 * so go ahead and send it
	 */
	else {
		XUartLite_SendBuffer(InstancePtr);
10002a10:	fdc42503          	lw	a0,-36(s0)
10002a14:	c35ff0ef          	jal	ra,10002648 <XUartLite_SendBuffer>
	}

	/*
	 * Update the transmit stats to reflect the transmit interrupt
	 */
	InstancePtr->Stats.TransmitInterrupts++;
10002a18:	fdc42783          	lw	a5,-36(s0)
10002a1c:	0007a783          	lw	a5,0(a5)
10002a20:	00178713          	addi	a4,a5,1
10002a24:	fdc42783          	lw	a5,-36(s0)
10002a28:	00e7a023          	sw	a4,0(a5)
}
10002a2c:	00000013          	nop
10002a30:	02c12083          	lw	ra,44(sp)
10002a34:	02812403          	lw	s0,40(sp)
10002a38:	03010113          	addi	sp,sp,48
10002a3c:	00008067          	ret

10002a40 <TotalReceivedCountOf>:

int TotalReceivedCountOf(XUartLite * InstancePtr){
10002a40:	fe010113          	addi	sp,sp,-32
10002a44:	00812e23          	sw	s0,28(sp)
10002a48:	02010413          	addi	s0,sp,32
10002a4c:	fea42623          	sw	a0,-20(s0)
    return InstancePtr->ReceiveBuffer.RequestedBytes
10002a50:	fec42783          	lw	a5,-20(s0)
10002a54:	0547a703          	lw	a4,84(a5)
        - InstancePtr->ReceiveBuffer.RemainingBytes;
10002a58:	fec42783          	lw	a5,-20(s0)
10002a5c:	0587a783          	lw	a5,88(a5)
10002a60:	40f707b3          	sub	a5,a4,a5

}
10002a64:	00078513          	mv	a0,a5
10002a68:	01c12403          	lw	s0,28(sp)
10002a6c:	02010113          	addi	sp,sp,32
10002a70:	00008067          	ret

10002a74 <XUartLite_CfgInitialize>:
//    InstancePtr->RecvHandler = FuncPtr;
//    InstancePtr->RecvCallBackRef = CallBackRef;
//}

int XUartLite_CfgInitialize(XUartLite *InstancePtr, uintptr_t EffectiveAddr)
{
10002a74:	fe010113          	addi	sp,sp,-32
10002a78:	00112e23          	sw	ra,28(sp)
10002a7c:	00812c23          	sw	s0,24(sp)
10002a80:	02010413          	addi	s0,sp,32
10002a84:	fea42623          	sw	a0,-20(s0)
10002a88:	feb42423          	sw	a1,-24(s0)

    /*
     * Set some default values, including setting the callback
     * handlers to stubs.
     */
    InstancePtr->SendBuffer.NextBytePtr = NULL;
10002a8c:	fec42783          	lw	a5,-20(s0)
10002a90:	0407a023          	sw	zero,64(a5)
    InstancePtr->SendBuffer.RemainingBytes = 0;
10002a94:	fec42783          	lw	a5,-20(s0)
10002a98:	0407a423          	sw	zero,72(a5)
    InstancePtr->SendBuffer.RequestedBytes = 0;
10002a9c:	fec42783          	lw	a5,-20(s0)
10002aa0:	0407a223          	sw	zero,68(a5)

    InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
10002aa4:	fec42783          	lw	a5,-20(s0)
10002aa8:	0407a823          	sw	zero,80(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = 0;
10002aac:	fec42783          	lw	a5,-20(s0)
10002ab0:	0407ac23          	sw	zero,88(a5)
    InstancePtr->ReceiveBuffer.RequestedBytes = 0;
10002ab4:	fec42783          	lw	a5,-20(s0)
10002ab8:	0407aa23          	sw	zero,84(a5)

    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
10002abc:	fec42783          	lw	a5,-20(s0)
10002ac0:	11111737          	lui	a4,0x11111
10002ac4:	11170713          	addi	a4,a4,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002ac8:	02e7a023          	sw	a4,32(a5)

    InstancePtr->RegBaseAddress = EffectiveAddr;
10002acc:	fec42783          	lw	a5,-20(s0)
10002ad0:	fe842703          	lw	a4,-24(s0)
10002ad4:	00e7ae23          	sw	a4,28(a5)

    InstancePtr->RecvHandler = NULL;
10002ad8:	fec42783          	lw	a5,-20(s0)
10002adc:	0607a023          	sw	zero,96(a5)
    InstancePtr->SendHandler = NULL;
10002ae0:	fec42783          	lw	a5,-20(s0)
10002ae4:	0607a423          	sw	zero,104(a5)

    InstancePtr->AutoForward = 0;
10002ae8:	fec42783          	lw	a5,-20(s0)
10002aec:	0207a223          	sw	zero,36(a5)
    InstancePtr->ForwardBytes = 0;
10002af0:	fec42783          	lw	a5,-20(s0)
10002af4:	0207a423          	sw	zero,40(a5)
    InstancePtr->ForwardBuffer = NULL;
10002af8:	fec42783          	lw	a5,-20(s0)
10002afc:	0207a623          	sw	zero,44(a5)
    InstancePtr->ForwardInstPtr = NULL;
10002b00:	fec42783          	lw	a5,-20(s0)
10002b04:	0207ac23          	sw	zero,56(a5)
//    connect_rxproto(&InstancePtr->RxProto,InstancePtr->ForwardBuffer);

    /* Write to the control register to disable the interrupts, don't
     * reset the FIFOs are the user may want the data that's present
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002b08:	fec42783          	lw	a5,-20(s0)
10002b0c:	01c7a783          	lw	a5,28(a5)
10002b10:	00c78793          	addi	a5,a5,12
10002b14:	00000593          	li	a1,0
10002b18:	00078513          	mv	a0,a5
10002b1c:	a0dff0ef          	jal	ra,10002528 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, 0);

    /*
     * Clear the statistics for this driver
     */
    XUartLite_ClearStats(InstancePtr);
10002b20:	fec42503          	lw	a0,-20(s0)
10002b24:	01c000ef          	jal	ra,10002b40 <XUartLite_ClearStats>

    return 0;
10002b28:	00000793          	li	a5,0
}
10002b2c:	00078513          	mv	a0,a5
10002b30:	01c12083          	lw	ra,28(sp)
10002b34:	01812403          	lw	s0,24(sp)
10002b38:	02010113          	addi	sp,sp,32
10002b3c:	00008067          	ret

10002b40 <XUartLite_ClearStats>:
//    //    InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    //}
//}

void XUartLite_ClearStats(XUartLite *InstancePtr)
{
10002b40:	fe010113          	addi	sp,sp,-32
10002b44:	00812e23          	sw	s0,28(sp)
10002b48:	02010413          	addi	s0,sp,32
10002b4c:	fea42623          	sw	a0,-20(s0)
     * Assert validates the input arguments
     */
    //Xil_AssertVoid(InstancePtr != NULL);
    //Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    InstancePtr->Stats.TransmitInterrupts = 0;
10002b50:	fec42783          	lw	a5,-20(s0)
10002b54:	0007a023          	sw	zero,0(a5)
    InstancePtr->Stats.ReceiveInterrupts = 0;
10002b58:	fec42783          	lw	a5,-20(s0)
10002b5c:	0007a223          	sw	zero,4(a5)
    InstancePtr->Stats.CharactersTransmitted = 0;
10002b60:	fec42783          	lw	a5,-20(s0)
10002b64:	0007a423          	sw	zero,8(a5)
    InstancePtr->Stats.CharactersReceived = 0;
10002b68:	fec42783          	lw	a5,-20(s0)
10002b6c:	0007a623          	sw	zero,12(a5)
    InstancePtr->Stats.ReceiveOverrunErrors = 0;
10002b70:	fec42783          	lw	a5,-20(s0)
10002b74:	0007a823          	sw	zero,16(a5)
    InstancePtr->Stats.ReceiveFramingErrors = 0;
10002b78:	fec42783          	lw	a5,-20(s0)
10002b7c:	0007ac23          	sw	zero,24(a5)
    InstancePtr->Stats.ReceiveParityErrors = 0;
10002b80:	fec42783          	lw	a5,-20(s0)
10002b84:	0007aa23          	sw	zero,20(a5)

}
10002b88:	00000013          	nop
10002b8c:	01c12403          	lw	s0,28(sp)
10002b90:	02010113          	addi	sp,sp,32
10002b94:	00008067          	ret

10002b98 <XUartLite_Recv>:


unsigned int XUartLite_Recv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
10002b98:	fd010113          	addi	sp,sp,-48
10002b9c:	02112623          	sw	ra,44(sp)
10002ba0:	02812423          	sw	s0,40(sp)
10002ba4:	03010413          	addi	s0,sp,48
10002ba8:	fca42e23          	sw	a0,-36(s0)
10002bac:	fcb42c23          	sw	a1,-40(s0)
10002bb0:	fcc42a23          	sw	a2,-44(s0)
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002bb4:	fdc42783          	lw	a5,-36(s0)
10002bb8:	02078063          	beqz	a5,10002bd8 <XUartLite_Recv+0x40>
10002bbc:	fd842783          	lw	a5,-40(s0)
10002bc0:	00078c63          	beqz	a5,10002bd8 <XUartLite_Recv+0x40>
10002bc4:	fdc42783          	lw	a5,-36(s0)
10002bc8:	0207a703          	lw	a4,32(a5)
10002bcc:	111117b7          	lui	a5,0x11111
10002bd0:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002bd4:	00f70663          	beq	a4,a5,10002be0 <XUartLite_Recv+0x48>
        return 0;
10002bd8:	00000793          	li	a5,0
10002bdc:	0940006f          	j	10002c70 <XUartLite_Recv+0xd8>

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002be0:	fdc42783          	lw	a5,-36(s0)
10002be4:	01c7a783          	lw	a5,28(a5)
10002be8:	00878793          	addi	a5,a5,8
10002bec:	00078513          	mv	a0,a5
10002bf0:	911ff0ef          	jal	ra,10002500 <Xil_In32>
10002bf4:	fea42623          	sw	a0,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002bf8:	fdc42783          	lw	a5,-36(s0)
10002bfc:	01c7a783          	lw	a5,28(a5)
10002c00:	00c78793          	addi	a5,a5,12
10002c04:	00000593          	li	a1,0
10002c08:	00078513          	mv	a0,a5
10002c0c:	91dff0ef          	jal	ra,10002528 <Xil_Out32>

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
10002c10:	fdc42783          	lw	a5,-36(s0)
10002c14:	fd442703          	lw	a4,-44(s0)
10002c18:	04e7aa23          	sw	a4,84(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
10002c1c:	fdc42783          	lw	a5,-36(s0)
10002c20:	fd442703          	lw	a4,-44(s0)
10002c24:	04e7ac23          	sw	a4,88(a5)
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
10002c28:	fdc42783          	lw	a5,-36(s0)
10002c2c:	fd842703          	lw	a4,-40(s0)
10002c30:	04e7a823          	sw	a4,80(a5)
    InstancePtr->ReceiveBuffer.locked = 0;
10002c34:	fdc42783          	lw	a5,-36(s0)
10002c38:	0407ae23          	sw	zero,92(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
10002c3c:	fec42783          	lw	a5,-20(s0)
10002c40:	0107f793          	andi	a5,a5,16
10002c44:	fef42623          	sw	a5,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002c48:	fdc42783          	lw	a5,-36(s0)
10002c4c:	01c7a783          	lw	a5,28(a5)
10002c50:	00c78793          	addi	a5,a5,12
10002c54:	fec42583          	lw	a1,-20(s0)
10002c58:	00078513          	mv	a0,a5
10002c5c:	8cdff0ef          	jal	ra,10002528 <Xil_Out32>
     * received
     * This is done here to minimize the amount of time the interrupt is
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
10002c60:	fdc42503          	lw	a0,-36(s0)
10002c64:	b51ff0ef          	jal	ra,100027b4 <XUartLite_ReceiveBuffer>
10002c68:	fea42423          	sw	a0,-24(s0)

    return ReceivedCount;
10002c6c:	fe842783          	lw	a5,-24(s0)

}
10002c70:	00078513          	mv	a0,a5
10002c74:	02c12083          	lw	ra,44(sp)
10002c78:	02812403          	lw	s0,40(sp)
10002c7c:	03010113          	addi	sp,sp,48
10002c80:	00008067          	ret

10002c84 <XUartLite_RepeatRecv>:

unsigned int XUartLite_RepeatRecv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
10002c84:	fd010113          	addi	sp,sp,-48
10002c88:	02112623          	sw	ra,44(sp)
10002c8c:	02812423          	sw	s0,40(sp)
10002c90:	03010413          	addi	s0,sp,48
10002c94:	fca42e23          	sw	a0,-36(s0)
10002c98:	fcb42c23          	sw	a1,-40(s0)
10002c9c:	fcc42a23          	sw	a2,-44(s0)
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002ca0:	fdc42783          	lw	a5,-36(s0)
10002ca4:	02078063          	beqz	a5,10002cc4 <XUartLite_RepeatRecv+0x40>
10002ca8:	fd842783          	lw	a5,-40(s0)
10002cac:	00078c63          	beqz	a5,10002cc4 <XUartLite_RepeatRecv+0x40>
10002cb0:	fdc42783          	lw	a5,-36(s0)
10002cb4:	0207a703          	lw	a4,32(a5)
10002cb8:	111117b7          	lui	a5,0x11111
10002cbc:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002cc0:	00f70663          	beq	a4,a5,10002ccc <XUartLite_RepeatRecv+0x48>
        return 0;
10002cc4:	00000793          	li	a5,0
10002cc8:	0800006f          	j	10002d48 <XUartLite_RepeatRecv+0xc4>

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002ccc:	fdc42783          	lw	a5,-36(s0)
10002cd0:	01c7a783          	lw	a5,28(a5)
10002cd4:	00878793          	addi	a5,a5,8
10002cd8:	00078513          	mv	a0,a5
10002cdc:	825ff0ef          	jal	ra,10002500 <Xil_In32>
10002ce0:	fea42623          	sw	a0,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002ce4:	fdc42783          	lw	a5,-36(s0)
10002ce8:	01c7a783          	lw	a5,28(a5)
10002cec:	00c78793          	addi	a5,a5,12
10002cf0:	00000593          	li	a1,0
10002cf4:	00078513          	mv	a0,a5
10002cf8:	831ff0ef          	jal	ra,10002528 <Xil_Out32>

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
10002cfc:	fdc42783          	lw	a5,-36(s0)
10002d00:	fd442703          	lw	a4,-44(s0)
10002d04:	04e7aa23          	sw	a4,84(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
10002d08:	fdc42783          	lw	a5,-36(s0)
10002d0c:	fd442703          	lw	a4,-44(s0)
10002d10:	04e7ac23          	sw	a4,88(a5)
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
10002d14:	fdc42783          	lw	a5,-36(s0)
10002d18:	fd842703          	lw	a4,-40(s0)
10002d1c:	04e7a823          	sw	a4,80(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
10002d20:	fec42783          	lw	a5,-20(s0)
10002d24:	0107f793          	andi	a5,a5,16
10002d28:	fef42623          	sw	a5,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002d2c:	fdc42783          	lw	a5,-36(s0)
10002d30:	01c7a783          	lw	a5,28(a5)
10002d34:	00c78793          	addi	a5,a5,12
10002d38:	fec42583          	lw	a1,-20(s0)
10002d3c:	00078513          	mv	a0,a5
10002d40:	fe8ff0ef          	jal	ra,10002528 <Xil_Out32>
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    //ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

    return ReceivedCount;
10002d44:	fe842783          	lw	a5,-24(s0)

}
10002d48:	00078513          	mv	a0,a5
10002d4c:	02c12083          	lw	ra,44(sp)
10002d50:	02812403          	lw	s0,40(sp)
10002d54:	03010113          	addi	sp,sp,48
10002d58:	00008067          	ret

10002d5c <XUartLite_Send>:
//    }
//}

unsigned int XUartLite_Send(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
				unsigned int NumBytes)
{
10002d5c:	fd010113          	addi	sp,sp,-48
10002d60:	02112623          	sw	ra,44(sp)
10002d64:	02812423          	sw	s0,40(sp)
10002d68:	03010413          	addi	s0,sp,48
10002d6c:	fca42e23          	sw	a0,-36(s0)
10002d70:	fcb42c23          	sw	a1,-40(s0)
10002d74:	fcc42a23          	sw	a2,-44(s0)
	uint32_t StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002d78:	fdc42783          	lw	a5,-36(s0)
10002d7c:	02078063          	beqz	a5,10002d9c <XUartLite_Send+0x40>
10002d80:	fd842783          	lw	a5,-40(s0)
10002d84:	00078c63          	beqz	a5,10002d9c <XUartLite_Send+0x40>
10002d88:	fdc42783          	lw	a5,-36(s0)
10002d8c:	0207a703          	lw	a4,32(a5)
10002d90:	111117b7          	lui	a5,0x11111
10002d94:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002d98:	00f70663          	beq	a4,a5,10002da4 <XUartLite_Send+0x48>
        return 0;
10002d9c:	00000793          	li	a5,0
10002da0:	08c0006f          	j	10002e2c <XUartLite_Send+0xd0>

	/*
	 * Enter a critical region by disabling the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven.
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002da4:	fdc42783          	lw	a5,-36(s0)
10002da8:	01c7a783          	lw	a5,28(a5)
10002dac:	00878793          	addi	a5,a5,8
10002db0:	00078513          	mv	a0,a5
10002db4:	f4cff0ef          	jal	ra,10002500 <Xil_In32>
10002db8:	fea42623          	sw	a0,-20(s0)

	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002dbc:	fdc42783          	lw	a5,-36(s0)
10002dc0:	01c7a783          	lw	a5,28(a5)
10002dc4:	00c78793          	addi	a5,a5,12
10002dc8:	00000593          	li	a1,0
10002dcc:	00078513          	mv	a0,a5
10002dd0:	f58ff0ef          	jal	ra,10002528 <Xil_Out32>

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
10002dd4:	fdc42783          	lw	a5,-36(s0)
10002dd8:	fd442703          	lw	a4,-44(s0)
10002ddc:	04e7a223          	sw	a4,68(a5)
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
10002de0:	fdc42783          	lw	a5,-36(s0)
10002de4:	fd442703          	lw	a4,-44(s0)
10002de8:	04e7a423          	sw	a4,72(a5)
	InstancePtr->SendBuffer.NextBytePtr = DataBufferPtr;
10002dec:	fdc42783          	lw	a5,-36(s0)
10002df0:	fd842703          	lw	a4,-40(s0)
10002df4:	04e7a023          	sw	a4,64(a5)
	 * This is done here to minimize the amount of time the interrupt is
	 * disabled since there is only one interrupt and the receive could
	 * be filling up while interrupts are blocked.
	 */

	StatusRegister &= XUL_CR_ENABLE_INTR;
10002df8:	fec42783          	lw	a5,-20(s0)
10002dfc:	0107f793          	andi	a5,a5,16
10002e00:	fef42623          	sw	a5,-20(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002e04:	fdc42783          	lw	a5,-36(s0)
10002e08:	01c7a783          	lw	a5,28(a5)
10002e0c:	00c78793          	addi	a5,a5,12
10002e10:	fec42583          	lw	a1,-20(s0)
10002e14:	00078513          	mv	a0,a5
10002e18:	f10ff0ef          	jal	ra,10002528 <Xil_Out32>
				XUL_CONTROL_REG_OFFSET, StatusRegister);

	/*
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);
10002e1c:	fdc42503          	lw	a0,-36(s0)
10002e20:	829ff0ef          	jal	ra,10002648 <XUartLite_SendBuffer>
10002e24:	fea42423          	sw	a0,-24(s0)

	return BytesSent;
10002e28:	fe842783          	lw	a5,-24(s0)
}
10002e2c:	00078513          	mv	a0,a5
10002e30:	02c12083          	lw	ra,44(sp)
10002e34:	02812403          	lw	s0,40(sp)
10002e38:	03010113          	addi	sp,sp,48
10002e3c:	00008067          	ret

10002e40 <XUartLite_EnableInterrupt>:

void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
10002e40:	fe010113          	addi	sp,sp,-32
10002e44:	00112e23          	sw	ra,28(sp)
10002e48:	00812c23          	sw	s0,24(sp)
10002e4c:	02010413          	addi	s0,sp,32
10002e50:	fea42623          	sw	a0,-20(s0)
    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002e54:	fec42783          	lw	a5,-20(s0)
10002e58:	01c7a783          	lw	a5,28(a5)
10002e5c:	00c78793          	addi	a5,a5,12
10002e60:	01000593          	li	a1,16
10002e64:	00078513          	mv	a0,a5
10002e68:	ec0ff0ef          	jal	ra,10002528 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR);
}
10002e6c:	00000013          	nop
10002e70:	01c12083          	lw	ra,28(sp)
10002e74:	01812403          	lw	s0,24(sp)
10002e78:	02010113          	addi	sp,sp,32
10002e7c:	00008067          	ret

10002e80 <XUartLite_DisableInterrupt>:
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
10002e80:	fe010113          	addi	sp,sp,-32
10002e84:	00112e23          	sw	ra,28(sp)
10002e88:	00812c23          	sw	s0,24(sp)
10002e8c:	02010413          	addi	s0,sp,32
10002e90:	fea42623          	sw	a0,-20(s0)
    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002e94:	fec42783          	lw	a5,-20(s0)
10002e98:	01c7a783          	lw	a5,28(a5)
10002e9c:	00c78793          	addi	a5,a5,12
10002ea0:	00000593          	li	a1,0
10002ea4:	00078513          	mv	a0,a5
10002ea8:	e80ff0ef          	jal	ra,10002528 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, 0);
}
10002eac:	00000013          	nop
10002eb0:	01c12083          	lw	ra,28(sp)
10002eb4:	01812403          	lw	s0,24(sp)
10002eb8:	02010113          	addi	sp,sp,32
10002ebc:	00008067          	ret

10002ec0 <XUartLite_ResetFifos>:

void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
10002ec0:	fd010113          	addi	sp,sp,-48
10002ec4:	02112623          	sw	ra,44(sp)
10002ec8:	02812423          	sw	s0,40(sp)
10002ecc:	03010413          	addi	s0,sp,48
10002ed0:	fca42e23          	sw	a0,-36(s0)
	uint32_t Register;

    if(!(InstancePtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002ed4:	fdc42783          	lw	a5,-36(s0)
10002ed8:	06078063          	beqz	a5,10002f38 <XUartLite_ResetFifos+0x78>
10002edc:	fdc42783          	lw	a5,-36(s0)
10002ee0:	0207a703          	lw	a4,32(a5)
10002ee4:	111117b7          	lui	a5,0x11111
10002ee8:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002eec:	04f71663          	bne	a4,a5,10002f38 <XUartLite_ResetFifos+0x78>

	/*
	 * Read the status register 1st such that the next write to the control
	 * register won't destroy the state of the interrupt enable bit
	 */
	Register = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
10002ef0:	fdc42783          	lw	a5,-36(s0)
10002ef4:	01c7a783          	lw	a5,28(a5)
10002ef8:	00878793          	addi	a5,a5,8
10002efc:	00078513          	mv	a0,a5
10002f00:	e00ff0ef          	jal	ra,10002500 <Xil_In32>
10002f04:	fea42623          	sw	a0,-20(s0)
					XUL_STATUS_REG_OFFSET);

	/*
	 * Mask off the interrupt enable bit to maintain it's state.
	 */
	Register &= XUL_SR_INTR_ENABLED;
10002f08:	fec42783          	lw	a5,-20(s0)
10002f0c:	0107f793          	andi	a5,a5,16
10002f10:	fef42623          	sw	a5,-20(s0)

	/*
	 * Write to the control register to reset both FIFOs, these bits are
	 * self-clearing such that there's no need to clear them
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
10002f14:	fdc42783          	lw	a5,-36(s0)
10002f18:	01c7a783          	lw	a5,28(a5)
10002f1c:	00c78713          	addi	a4,a5,12
10002f20:	fec42783          	lw	a5,-20(s0)
10002f24:	0037e793          	ori	a5,a5,3
10002f28:	00078593          	mv	a1,a5
10002f2c:	00070513          	mv	a0,a4
10002f30:	df8ff0ef          	jal	ra,10002528 <Xil_Out32>
10002f34:	0080006f          	j	10002f3c <XUartLite_ResetFifos+0x7c>
        return;
10002f38:	00000013          	nop
			Register | XUL_CR_FIFO_TX_RESET | XUL_CR_FIFO_RX_RESET);
}
10002f3c:	02c12083          	lw	ra,44(sp)
10002f40:	02812403          	lw	s0,40(sp)
10002f44:	03010113          	addi	sp,sp,48
10002f48:	00008067          	ret

10002f4c <XUartLite_RxUnlock>:
//            //TODO do something to align the Protocol
//	}
//    }
//    return 0;
//}
void XUartLite_RxUnlock(XUartLite * inst){
10002f4c:	fe010113          	addi	sp,sp,-32
10002f50:	00812e23          	sw	s0,28(sp)
10002f54:	02010413          	addi	s0,sp,32
10002f58:	fea42623          	sw	a0,-20(s0)
    inst->ReceiveBuffer.locked = 0;
10002f5c:	fec42783          	lw	a5,-20(s0)
10002f60:	0407ae23          	sw	zero,92(a5)
}
10002f64:	00000013          	nop
10002f68:	01c12403          	lw	s0,28(sp)
10002f6c:	02010113          	addi	sp,sp,32
10002f70:	00008067          	ret

10002f74 <hw_uart0_is_valid>:

int hw_uart0_is_valid(){
10002f74:	ff010113          	addi	sp,sp,-16
10002f78:	00812623          	sw	s0,12(sp)
10002f7c:	01010413          	addi	s0,sp,16
    return (*(uint32_t *)UARTLITE_BASEADDR_0)& 0x1;
10002f80:	010007b7          	lui	a5,0x1000
10002f84:	0007a783          	lw	a5,0(a5) # 1000000 <DTCM+0xff8000>
10002f88:	0017f793          	andi	a5,a5,1
}
10002f8c:	00078513          	mv	a0,a5
10002f90:	00c12403          	lw	s0,12(sp)
10002f94:	01010113          	addi	sp,sp,16
10002f98:	00008067          	ret

10002f9c <hw_uart0_get_data>:
void hw_uart0_get_data(uint8_t * buffer){
10002f9c:	fd010113          	addi	sp,sp,-48
10002fa0:	02812623          	sw	s0,44(sp)
10002fa4:	03010413          	addi	s0,sp,48
10002fa8:	fca42e23          	sw	a0,-36(s0)
    int size = 15;//15*4==60, 27's protocol is 60 byte;
10002fac:	00f00793          	li	a5,15
10002fb0:	fef42423          	sw	a5,-24(s0)
    for(int i = 0; i< size ; i++){
10002fb4:	fe042623          	sw	zero,-20(s0)
10002fb8:	0480006f          	j	10003000 <hw_uart0_get_data+0x64>
        *(uint32_t*)(buffer + i*4) = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
10002fbc:	fec42783          	lw	a5,-20(s0)
10002fc0:	00178793          	addi	a5,a5,1
10002fc4:	00279793          	slli	a5,a5,0x2
10002fc8:	00078713          	mv	a4,a5
10002fcc:	010007b7          	lui	a5,0x1000
10002fd0:	00f707b3          	add	a5,a4,a5
10002fd4:	00078713          	mv	a4,a5
10002fd8:	fec42783          	lw	a5,-20(s0)
10002fdc:	00279793          	slli	a5,a5,0x2
10002fe0:	00078693          	mv	a3,a5
10002fe4:	fdc42783          	lw	a5,-36(s0)
10002fe8:	00d787b3          	add	a5,a5,a3
10002fec:	00072703          	lw	a4,0(a4)
10002ff0:	00e7a023          	sw	a4,0(a5) # 1000000 <DTCM+0xff8000>
    for(int i = 0; i< size ; i++){
10002ff4:	fec42783          	lw	a5,-20(s0)
10002ff8:	00178793          	addi	a5,a5,1
10002ffc:	fef42623          	sw	a5,-20(s0)
10003000:	fec42703          	lw	a4,-20(s0)
10003004:	fe842783          	lw	a5,-24(s0)
10003008:	faf74ae3          	blt	a4,a5,10002fbc <hw_uart0_get_data+0x20>
    }
    //for(int i = 0; i< size ; i++){
    //    uint32_t temp = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
    //    *(uint32_t*)(buffer + i*4) = (temp>>24)|((temp&0x00ff0000)>>8)|((temp&0x0000ff00)<<8)|((temp&0x000000ff)<<24);
    //}
}
1000300c:	00000013          	nop
10003010:	02c12403          	lw	s0,44(sp)
10003014:	03010113          	addi	sp,sp,48
10003018:	00008067          	ret

1000301c <hw_uart0_clr_state>:
void hw_uart0_clr_state(){
1000301c:	ff010113          	addi	sp,sp,-16
10003020:	00812623          	sw	s0,12(sp)
10003024:	01010413          	addi	s0,sp,16
    *(uint32_t *)UARTLITE_BASEADDR_0 = 0;
10003028:	010007b7          	lui	a5,0x1000
1000302c:	0007a023          	sw	zero,0(a5) # 1000000 <DTCM+0xff8000>
}
10003030:	00000013          	nop
10003034:	00c12403          	lw	s0,12(sp)
10003038:	01010113          	addi	sp,sp,16
1000303c:	00008067          	ret

10003040 <XUartLite_SendAll>:
void XUartLite_SendAll(XUartLite *InstancePtr, uint8_t *DataBufferPtr, unsigned int NumBytes) {
10003040:	fd010113          	addi	sp,sp,-48
10003044:	02112623          	sw	ra,44(sp)
10003048:	02812423          	sw	s0,40(sp)
1000304c:	03010413          	addi	s0,sp,48
10003050:	fca42e23          	sw	a0,-36(s0)
10003054:	fcb42c23          	sw	a1,-40(s0)
10003058:	fcc42a23          	sw	a2,-44(s0)
    int sentbytes=0;
1000305c:	fe042623          	sw	zero,-20(s0)
    int remainbytes = NumBytes;
10003060:	fd442783          	lw	a5,-44(s0)
10003064:	fef42423          	sw	a5,-24(s0)
    while(sentbytes<NumBytes){
10003068:	0440006f          	j	100030ac <XUartLite_SendAll+0x6c>
        sentbytes += XUartLite_Send(InstancePtr, DataBufferPtr + sentbytes  , remainbytes);
1000306c:	fec42783          	lw	a5,-20(s0)
10003070:	fd842703          	lw	a4,-40(s0)
10003074:	00f707b3          	add	a5,a4,a5
10003078:	fe842703          	lw	a4,-24(s0)
1000307c:	00070613          	mv	a2,a4
10003080:	00078593          	mv	a1,a5
10003084:	fdc42503          	lw	a0,-36(s0)
10003088:	cd5ff0ef          	jal	ra,10002d5c <XUartLite_Send>
1000308c:	00050713          	mv	a4,a0
10003090:	fec42783          	lw	a5,-20(s0)
10003094:	00f707b3          	add	a5,a4,a5
10003098:	fef42623          	sw	a5,-20(s0)
        remainbytes = NumBytes - sentbytes;
1000309c:	fec42783          	lw	a5,-20(s0)
100030a0:	fd442703          	lw	a4,-44(s0)
100030a4:	40f707b3          	sub	a5,a4,a5
100030a8:	fef42423          	sw	a5,-24(s0)
    while(sentbytes<NumBytes){
100030ac:	fec42783          	lw	a5,-20(s0)
100030b0:	fd442703          	lw	a4,-44(s0)
100030b4:	fae7ece3          	bltu	a5,a4,1000306c <XUartLite_SendAll+0x2c>
    }
}
100030b8:	00000013          	nop
100030bc:	02c12083          	lw	ra,44(sp)
100030c0:	02812403          	lw	s0,40(sp)
100030c4:	03010113          	addi	sp,sp,48
100030c8:	00008067          	ret

100030cc <dma_check>:
#include "p2p_demo.h"

#define CLOCK 250 * 1000 * 1000

int dma_check()
{
100030cc:	ff010113          	addi	sp,sp,-16
100030d0:	00812623          	sw	s0,12(sp)
100030d4:	01010413          	addi	s0,sp,16
    return (3 - *(volatile int *)(DMA_STATUS));
100030d8:	000147b7          	lui	a5,0x14
100030dc:	00478793          	addi	a5,a5,4 # 14004 <DTCM+0xc004>
100030e0:	0007a783          	lw	a5,0(a5)
100030e4:	00300713          	li	a4,3
100030e8:	40f707b3          	sub	a5,a4,a5
}
100030ec:	00078513          	mv	a0,a5
100030f0:	00c12403          	lw	s0,12(sp)
100030f4:	01010113          	addi	sp,sp,16
100030f8:	00008067          	ret

100030fc <dma_set_done>:

void dma_set_done(int done)
{
100030fc:	fe010113          	addi	sp,sp,-32
10003100:	00812e23          	sw	s0,28(sp)
10003104:	02010413          	addi	s0,sp,32
10003108:	fea42623          	sw	a0,-20(s0)
    *(volatile int *)(DMA_STATUS) = done;
1000310c:	000147b7          	lui	a5,0x14
10003110:	00478793          	addi	a5,a5,4 # 14004 <DTCM+0xc004>
10003114:	fec42703          	lw	a4,-20(s0)
10003118:	00e7a023          	sw	a4,0(a5)
    // int dma_status = *(volatile int*)(DMA_STATUS);
    // KRNL_LOG_INFO(LOG_SYSTEM, "DMA_STATUS:%08d", "PRINT", dma_status);
}
1000311c:	00000013          	nop
10003120:	01c12403          	lw	s0,28(sp)
10003124:	02010113          	addi	sp,sp,32
10003128:	00008067          	ret

1000312c <fetchDMA>:

void fetchDMA(uint32_t ddr_addr, uint32_t lm_addr_i, uint32_t len)
{
1000312c:	bd010113          	addi	sp,sp,-1072
10003130:	42112623          	sw	ra,1068(sp)
10003134:	42812423          	sw	s0,1064(sp)
10003138:	43010413          	addi	s0,sp,1072
1000313c:	bca42e23          	sw	a0,-1060(s0)
10003140:	bcb42c23          	sw	a1,-1064(s0)
10003144:	bcc42a23          	sw	a2,-1068(s0)
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
10003148:	bd442783          	lw	a5,-1068(s0)
1000314c:	03f7f793          	andi	a5,a5,63
10003150:	00079863          	bnez	a5,10003160 <fetchDMA+0x34>
    {
        len_align = len;
10003154:	bd442783          	lw	a5,-1068(s0)
10003158:	fef42623          	sw	a5,-20(s0)
1000315c:	0140006f          	j	10003170 <fetchDMA+0x44>
    }
    else
    {
        len_align = ((len + 63) / 64) * 64;
10003160:	bd442783          	lw	a5,-1068(s0)
10003164:	03f78793          	addi	a5,a5,63
10003168:	fc07f793          	andi	a5,a5,-64
1000316c:	fef42623          	sw	a5,-20(s0)
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_i_ = lm_addr_i >> 6;
10003170:	bd842783          	lw	a5,-1064(s0)
10003174:	0067d793          	srli	a5,a5,0x6
10003178:	fef42423          	sw	a5,-24(s0)
    int p_ld_option[1] = {0 | (0x1 << 20) | (0x1 << 16)};
1000317c:	001107b7          	lui	a5,0x110
10003180:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "start fetch");
10003184:	100117b7          	lui	a5,0x10011
10003188:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000318c:	04078463          	beqz	a5,100031d4 <fetchDMA+0xa8>
10003190:	be440793          	addi	a5,s0,-1052
10003194:	40000713          	li	a4,1024
10003198:	00070613          	mv	a2,a4
1000319c:	00000593          	li	a1,0
100031a0:	00078513          	mv	a0,a5
100031a4:	a04ff0ef          	jal	ra,100023a8 <memset>
100031a8:	be440713          	addi	a4,s0,-1052
100031ac:	100107b7          	lui	a5,0x10010
100031b0:	2d878613          	addi	a2,a5,728 # 100102d8 <p2p_demo+0xbc34>
100031b4:	3ff00593          	li	a1,1023
100031b8:	00070513          	mv	a0,a4
100031bc:	824ff0ef          	jal	ra,100021e0 <snprintf_>
100031c0:	be440793          	addi	a5,s0,-1052
100031c4:	00078593          	mv	a1,a5
100031c8:	00400513          	li	a0,4
100031cc:	ba4fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100031d0:	0080006f          	j	100031d8 <fetchDMA+0xac>
100031d4:	00000013          	nop
    *((volatile uint32_t *)DMA_LD_DDR_ADDR) = (uint32_t)ddr_addr;
100031d8:	000147b7          	lui	a5,0x14
100031dc:	00878793          	addi	a5,a5,8 # 14008 <DTCM+0xc008>
100031e0:	bdc42703          	lw	a4,-1060(s0)
100031e4:	00e7a023          	sw	a4,0(a5)
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
100031e8:	100117b7          	lui	a5,0x10011
100031ec:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100031f0:	04078663          	beqz	a5,1000323c <fetchDMA+0x110>
100031f4:	be440793          	addi	a5,s0,-1052
100031f8:	40000713          	li	a4,1024
100031fc:	00070613          	mv	a2,a4
10003200:	00000593          	li	a1,0
10003204:	00078513          	mv	a0,a5
10003208:	9a0ff0ef          	jal	ra,100023a8 <memset>
1000320c:	be440713          	addi	a4,s0,-1052
10003210:	bdc42683          	lw	a3,-1060(s0)
10003214:	100107b7          	lui	a5,0x10010
10003218:	2e878613          	addi	a2,a5,744 # 100102e8 <p2p_demo+0xbc44>
1000321c:	3ff00593          	li	a1,1023
10003220:	00070513          	mv	a0,a4
10003224:	fbdfe0ef          	jal	ra,100021e0 <snprintf_>
10003228:	be440793          	addi	a5,s0,-1052
1000322c:	00078593          	mv	a1,a5
10003230:	00400513          	li	a0,4
10003234:	b3cfd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003238:	0080006f          	j	10003240 <fetchDMA+0x114>
1000323c:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_i);
10003240:	100117b7          	lui	a5,0x10011
10003244:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003248:	04078663          	beqz	a5,10003294 <fetchDMA+0x168>
1000324c:	be440793          	addi	a5,s0,-1052
10003250:	40000713          	li	a4,1024
10003254:	00070613          	mv	a2,a4
10003258:	00000593          	li	a1,0
1000325c:	00078513          	mv	a0,a5
10003260:	948ff0ef          	jal	ra,100023a8 <memset>
10003264:	be440713          	addi	a4,s0,-1052
10003268:	bd842683          	lw	a3,-1064(s0)
1000326c:	100107b7          	lui	a5,0x10010
10003270:	2fc78613          	addi	a2,a5,764 # 100102fc <p2p_demo+0xbc58>
10003274:	3ff00593          	li	a1,1023
10003278:	00070513          	mv	a0,a4
1000327c:	f65fe0ef          	jal	ra,100021e0 <snprintf_>
10003280:	be440793          	addi	a5,s0,-1052
10003284:	00078593          	mv	a1,a5
10003288:	00400513          	li	a0,4
1000328c:	ae4fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003290:	0080006f          	j	10003298 <fetchDMA+0x16c>
10003294:	00000013          	nop
    *(volatile int *)(DMA_LD_LEN) = (int)(len_align >> 6);
10003298:	fec42783          	lw	a5,-20(s0)
1000329c:	0067d713          	srli	a4,a5,0x6
100032a0:	000147b7          	lui	a5,0x14
100032a4:	01078793          	addi	a5,a5,16 # 14010 <DTCM+0xc010>
100032a8:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_LD_LM_ADDR) = (int)(lm_addr_i_);
100032ac:	000147b7          	lui	a5,0x14
100032b0:	00c78793          	addi	a5,a5,12 # 1400c <DTCM+0xc00c>
100032b4:	fe842703          	lw	a4,-24(s0)
100032b8:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_LD_CONCAT) = (int)(len_align >> 6);
100032bc:	fec42783          	lw	a5,-20(s0)
100032c0:	0067d713          	srli	a4,a5,0x6
100032c4:	000147b7          	lui	a5,0x14
100032c8:	02478793          	addi	a5,a5,36 # 14024 <DTCM+0xc024>
100032cc:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_OPTION) = (int)(p_ld_option[0]);
100032d0:	000147b7          	lui	a5,0x14
100032d4:	01478793          	addi	a5,a5,20 # 14014 <DTCM+0xc014>
100032d8:	fe442703          	lw	a4,-28(s0)
100032dc:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_CTRL) = (int)1;
100032e0:	000147b7          	lui	a5,0x14
100032e4:	00100713          	li	a4,1
100032e8:	00e7a023          	sw	a4,0(a5) # 14000 <DTCM+0xc000>
}
100032ec:	00000013          	nop
100032f0:	42c12083          	lw	ra,1068(sp)
100032f4:	42812403          	lw	s0,1064(sp)
100032f8:	43010113          	addi	sp,sp,1072
100032fc:	00008067          	ret

10003300 <putDMA>:


void putDMA(int ddr_addr, int lm_addr_o, int len)
{
10003300:	bd010113          	addi	sp,sp,-1072
10003304:	42112623          	sw	ra,1068(sp)
10003308:	42812423          	sw	s0,1064(sp)
1000330c:	43010413          	addi	s0,sp,1072
10003310:	bca42e23          	sw	a0,-1060(s0)
10003314:	bcb42c23          	sw	a1,-1064(s0)
10003318:	bcc42a23          	sw	a2,-1068(s0)
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
1000331c:	bd442783          	lw	a5,-1068(s0)
10003320:	03f7f793          	andi	a5,a5,63
10003324:	00079863          	bnez	a5,10003334 <putDMA+0x34>
    {
        len_align = len;
10003328:	bd442783          	lw	a5,-1068(s0)
1000332c:	fef42623          	sw	a5,-20(s0)
10003330:	0240006f          	j	10003354 <putDMA+0x54>
    }
    else
    {
        len_align = ((len / 64) + 1) * 64;
10003334:	bd442783          	lw	a5,-1068(s0)
10003338:	41f7d713          	srai	a4,a5,0x1f
1000333c:	03f77713          	andi	a4,a4,63
10003340:	00f707b3          	add	a5,a4,a5
10003344:	4067d793          	srai	a5,a5,0x6
10003348:	00178793          	addi	a5,a5,1
1000334c:	00679793          	slli	a5,a5,0x6
10003350:	fef42623          	sw	a5,-20(s0)
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_o_ = lm_addr_o >> 6;
10003354:	bd842783          	lw	a5,-1064(s0)
10003358:	4067d793          	srai	a5,a5,0x6
1000335c:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "start put");
10003360:	100117b7          	lui	a5,0x10011
10003364:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003368:	04078463          	beqz	a5,100033b0 <putDMA+0xb0>
1000336c:	be840793          	addi	a5,s0,-1048
10003370:	40000713          	li	a4,1024
10003374:	00070613          	mv	a2,a4
10003378:	00000593          	li	a1,0
1000337c:	00078513          	mv	a0,a5
10003380:	828ff0ef          	jal	ra,100023a8 <memset>
10003384:	be840713          	addi	a4,s0,-1048
10003388:	100107b7          	lui	a5,0x10010
1000338c:	31478613          	addi	a2,a5,788 # 10010314 <p2p_demo+0xbc70>
10003390:	3ff00593          	li	a1,1023
10003394:	00070513          	mv	a0,a4
10003398:	e49fe0ef          	jal	ra,100021e0 <snprintf_>
1000339c:	be840793          	addi	a5,s0,-1048
100033a0:	00078593          	mv	a1,a5
100033a4:	00400513          	li	a0,4
100033a8:	9c8fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100033ac:	0080006f          	j	100033b4 <putDMA+0xb4>
100033b0:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
100033b4:	100117b7          	lui	a5,0x10011
100033b8:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100033bc:	04078663          	beqz	a5,10003408 <putDMA+0x108>
100033c0:	be840793          	addi	a5,s0,-1048
100033c4:	40000713          	li	a4,1024
100033c8:	00070613          	mv	a2,a4
100033cc:	00000593          	li	a1,0
100033d0:	00078513          	mv	a0,a5
100033d4:	fd5fe0ef          	jal	ra,100023a8 <memset>
100033d8:	be840713          	addi	a4,s0,-1048
100033dc:	bdc42683          	lw	a3,-1060(s0)
100033e0:	100107b7          	lui	a5,0x10010
100033e4:	2e878613          	addi	a2,a5,744 # 100102e8 <p2p_demo+0xbc44>
100033e8:	3ff00593          	li	a1,1023
100033ec:	00070513          	mv	a0,a4
100033f0:	df1fe0ef          	jal	ra,100021e0 <snprintf_>
100033f4:	be840793          	addi	a5,s0,-1048
100033f8:	00078593          	mv	a1,a5
100033fc:	00400513          	li	a0,4
10003400:	970fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003404:	0080006f          	j	1000340c <putDMA+0x10c>
10003408:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_o);
1000340c:	100117b7          	lui	a5,0x10011
10003410:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003414:	04078663          	beqz	a5,10003460 <putDMA+0x160>
10003418:	be840793          	addi	a5,s0,-1048
1000341c:	40000713          	li	a4,1024
10003420:	00070613          	mv	a2,a4
10003424:	00000593          	li	a1,0
10003428:	00078513          	mv	a0,a5
1000342c:	f7dfe0ef          	jal	ra,100023a8 <memset>
10003430:	be840713          	addi	a4,s0,-1048
10003434:	bd842683          	lw	a3,-1064(s0)
10003438:	100107b7          	lui	a5,0x10010
1000343c:	2fc78613          	addi	a2,a5,764 # 100102fc <p2p_demo+0xbc58>
10003440:	3ff00593          	li	a1,1023
10003444:	00070513          	mv	a0,a4
10003448:	d99fe0ef          	jal	ra,100021e0 <snprintf_>
1000344c:	be840793          	addi	a5,s0,-1048
10003450:	00078593          	mv	a1,a5
10003454:	00400513          	li	a0,4
10003458:	918fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000345c:	0080006f          	j	10003464 <putDMA+0x164>
10003460:	00000013          	nop
    *(volatile int *)(DMA_ST_DDR_ADDR) = (int)ddr_addr;
10003464:	000147b7          	lui	a5,0x14
10003468:	01878793          	addi	a5,a5,24 # 14018 <DTCM+0xc018>
1000346c:	bdc42703          	lw	a4,-1060(s0)
10003470:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_ST_LM_ADDR) = (int)lm_addr_o_;
10003474:	000147b7          	lui	a5,0x14
10003478:	01c78793          	addi	a5,a5,28 # 1401c <DTCM+0xc01c>
1000347c:	fe842703          	lw	a4,-24(s0)
10003480:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_ST_LEN) = (int)(len_align >> 6);
10003484:	fec42783          	lw	a5,-20(s0)
10003488:	0067d713          	srli	a4,a5,0x6
1000348c:	000147b7          	lui	a5,0x14
10003490:	02078793          	addi	a5,a5,32 # 14020 <DTCM+0xc020>
10003494:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_OPTION) = (int)((0x1 << 20) | (0x1 << 16));
10003498:	000147b7          	lui	a5,0x14
1000349c:	01478793          	addi	a5,a5,20 # 14014 <DTCM+0xc014>
100034a0:	00110737          	lui	a4,0x110
100034a4:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_CTRL) = (int)2;
100034a8:	000147b7          	lui	a5,0x14
100034ac:	00200713          	li	a4,2
100034b0:	00e7a023          	sw	a4,0(a5) # 14000 <DTCM+0xc000>
}
100034b4:	00000013          	nop
100034b8:	42c12083          	lw	ra,1068(sp)
100034bc:	42812403          	lw	s0,1064(sp)
100034c0:	43010113          	addi	sp,sp,1072
100034c4:	00008067          	ret

100034c8 <IP>:

void IP(uint32_t dst_lm_addr, uint32_t src_lm_addr, uint32_t SliceSize, uint32_t PlusNum)
{
100034c8:	bc010113          	addi	sp,sp,-1088
100034cc:	42112e23          	sw	ra,1084(sp)
100034d0:	42812c23          	sw	s0,1080(sp)
100034d4:	44010413          	addi	s0,sp,1088
100034d8:	bca42623          	sw	a0,-1076(s0)
100034dc:	bcb42423          	sw	a1,-1080(s0)
100034e0:	bcc42223          	sw	a2,-1084(s0)
100034e4:	bcd42023          	sw	a3,-1088(s0)
    uint32_t slicesize = ((SliceSize + 63) / 64) * 64;
100034e8:	bc442783          	lw	a5,-1084(s0)
100034ec:	03f78793          	addi	a5,a5,63
100034f0:	fc07f793          	andi	a5,a5,-64
100034f4:	fef42623          	sw	a5,-20(s0)
    uint32_t res_dst_lm_addr = dst_lm_addr >> 6;
100034f8:	bcc42783          	lw	a5,-1076(s0)
100034fc:	0067d793          	srli	a5,a5,0x6
10003500:	fef42423          	sw	a5,-24(s0)
    uint32_t res_src_lm_addr = src_lm_addr >> 6;
10003504:	bc842783          	lw	a5,-1080(s0)
10003508:	0067d793          	srli	a5,a5,0x6
1000350c:	fef42223          	sw	a5,-28(s0)

    uint32_t data_npu_conv_fm = ((res_dst_lm_addr) & 0xFFFF) << 16 | ((res_src_lm_addr) & 0xFFFF);
10003510:	fe842783          	lw	a5,-24(s0)
10003514:	01079713          	slli	a4,a5,0x10
10003518:	fe442683          	lw	a3,-28(s0)
1000351c:	000107b7          	lui	a5,0x10
10003520:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
10003524:	00f6f7b3          	and	a5,a3,a5
10003528:	00f767b3          	or	a5,a4,a5
1000352c:	fef42023          	sw	a5,-32(s0)
    uint32_t data_npu_conv_wbc = ((PlusNum) & 0xFFFF) << 16 | ((slicesize) & 0xFFFF);
10003530:	bc042783          	lw	a5,-1088(s0)
10003534:	01079713          	slli	a4,a5,0x10
10003538:	fec42683          	lw	a3,-20(s0)
1000353c:	000107b7          	lui	a5,0x10
10003540:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
10003544:	00f6f7b3          	and	a5,a3,a5
10003548:	00f767b3          	or	a5,a4,a5
1000354c:	fcf42e23          	sw	a5,-36(s0)
    uint32_t data_npu_ctrl = 0x1;
10003550:	00100793          	li	a5,1
10003554:	fcf42c23          	sw	a5,-40(s0)

    *(volatile uint32_t *)NPU_CONV_FM = data_npu_conv_fm;
10003558:	010117b7          	lui	a5,0x1011
1000355c:	10078793          	addi	a5,a5,256 # 1011100 <DTCM+0x1009100>
10003560:	fe042703          	lw	a4,-32(s0)
10003564:	00e7a023          	sw	a4,0(a5)
    *(volatile uint32_t *)NPU_CONV_WBC = data_npu_conv_wbc;
10003568:	010117b7          	lui	a5,0x1011
1000356c:	10478793          	addi	a5,a5,260 # 1011104 <DTCM+0x1009104>
10003570:	fdc42703          	lw	a4,-36(s0)
10003574:	00e7a023          	sw	a4,0(a5)
    *(volatile uint32_t *)NPU_CTRL = data_npu_ctrl;
10003578:	010107b7          	lui	a5,0x1010
1000357c:	fd842703          	lw	a4,-40(s0)
10003580:	00e7a023          	sw	a4,0(a5) # 1010000 <DTCM+0x1008000>

    KRNL_LOG_INFO(LOG_SYSTEM, "_____IP______");
10003584:	100117b7          	lui	a5,0x10011
10003588:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000358c:	04078463          	beqz	a5,100035d4 <IP+0x10c>
10003590:	bd840793          	addi	a5,s0,-1064
10003594:	40000713          	li	a4,1024
10003598:	00070613          	mv	a2,a4
1000359c:	00000593          	li	a1,0
100035a0:	00078513          	mv	a0,a5
100035a4:	e05fe0ef          	jal	ra,100023a8 <memset>
100035a8:	bd840713          	addi	a4,s0,-1064
100035ac:	100107b7          	lui	a5,0x10010
100035b0:	32478613          	addi	a2,a5,804 # 10010324 <p2p_demo+0xbc80>
100035b4:	3ff00593          	li	a1,1023
100035b8:	00070513          	mv	a0,a4
100035bc:	c25fe0ef          	jal	ra,100021e0 <snprintf_>
100035c0:	bd840793          	addi	a5,s0,-1064
100035c4:	00078593          	mv	a1,a5
100035c8:	00400513          	li	a0,4
100035cc:	fa5fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100035d0:	0080006f          	j	100035d8 <IP+0x110>
100035d4:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "dst lm addr : %08x, src lm addr : %08x", dst_lm_addr, src_lm_addr);
100035d8:	100117b7          	lui	a5,0x10011
100035dc:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100035e0:	04078663          	beqz	a5,1000362c <IP+0x164>
100035e4:	bd840793          	addi	a5,s0,-1064
100035e8:	40000713          	li	a4,1024
100035ec:	00070613          	mv	a2,a4
100035f0:	00000593          	li	a1,0
100035f4:	00078513          	mv	a0,a5
100035f8:	db1fe0ef          	jal	ra,100023a8 <memset>
100035fc:	bd840513          	addi	a0,s0,-1064
10003600:	bc842703          	lw	a4,-1080(s0)
10003604:	bcc42683          	lw	a3,-1076(s0)
10003608:	100107b7          	lui	a5,0x10010
1000360c:	33878613          	addi	a2,a5,824 # 10010338 <p2p_demo+0xbc94>
10003610:	3ff00593          	li	a1,1023
10003614:	bcdfe0ef          	jal	ra,100021e0 <snprintf_>
10003618:	bd840793          	addi	a5,s0,-1064
1000361c:	00078593          	mv	a1,a5
10003620:	00400513          	li	a0,4
10003624:	f4dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003628:	0080006f          	j	10003630 <IP+0x168>
1000362c:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV FM : %08x", data_npu_conv_fm);
10003630:	100117b7          	lui	a5,0x10011
10003634:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003638:	04078663          	beqz	a5,10003684 <IP+0x1bc>
1000363c:	bd840793          	addi	a5,s0,-1064
10003640:	40000713          	li	a4,1024
10003644:	00070613          	mv	a2,a4
10003648:	00000593          	li	a1,0
1000364c:	00078513          	mv	a0,a5
10003650:	d59fe0ef          	jal	ra,100023a8 <memset>
10003654:	bd840713          	addi	a4,s0,-1064
10003658:	fe042683          	lw	a3,-32(s0)
1000365c:	100107b7          	lui	a5,0x10010
10003660:	36478613          	addi	a2,a5,868 # 10010364 <p2p_demo+0xbcc0>
10003664:	3ff00593          	li	a1,1023
10003668:	00070513          	mv	a0,a4
1000366c:	b75fe0ef          	jal	ra,100021e0 <snprintf_>
10003670:	bd840793          	addi	a5,s0,-1064
10003674:	00078593          	mv	a1,a5
10003678:	00400513          	li	a0,4
1000367c:	ef5fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003680:	0080006f          	j	10003688 <IP+0x1c0>
10003684:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV WBC : %08x", data_npu_conv_wbc);
10003688:	100117b7          	lui	a5,0x10011
1000368c:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003690:	00079663          	bnez	a5,1000369c <IP+0x1d4>
10003694:	00000013          	nop
}
10003698:	0480006f          	j	100036e0 <IP+0x218>
    KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV WBC : %08x", data_npu_conv_wbc);
1000369c:	bd840793          	addi	a5,s0,-1064
100036a0:	40000713          	li	a4,1024
100036a4:	00070613          	mv	a2,a4
100036a8:	00000593          	li	a1,0
100036ac:	00078513          	mv	a0,a5
100036b0:	cf9fe0ef          	jal	ra,100023a8 <memset>
100036b4:	bd840713          	addi	a4,s0,-1064
100036b8:	fdc42683          	lw	a3,-36(s0)
100036bc:	100107b7          	lui	a5,0x10010
100036c0:	37c78613          	addi	a2,a5,892 # 1001037c <p2p_demo+0xbcd8>
100036c4:	3ff00593          	li	a1,1023
100036c8:	00070513          	mv	a0,a4
100036cc:	b15fe0ef          	jal	ra,100021e0 <snprintf_>
100036d0:	bd840793          	addi	a5,s0,-1064
100036d4:	00078593          	mv	a1,a5
100036d8:	00400513          	li	a0,4
100036dc:	e95fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
100036e0:	00000013          	nop
100036e4:	43c12083          	lw	ra,1084(sp)
100036e8:	43812403          	lw	s0,1080(sp)
100036ec:	44010113          	addi	sp,sp,1088
100036f0:	00008067          	ret

100036f4 <wait_ip>:

void wait_ip()
{
100036f4:	bf010113          	addi	sp,sp,-1040
100036f8:	40112623          	sw	ra,1036(sp)
100036fc:	40812423          	sw	s0,1032(sp)
10003700:	41010413          	addi	s0,sp,1040
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP OVER______");
10003704:	100117b7          	lui	a5,0x10011
10003708:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000370c:	04078463          	beqz	a5,10003754 <wait_ip+0x60>
10003710:	bf040793          	addi	a5,s0,-1040
10003714:	40000713          	li	a4,1024
10003718:	00070613          	mv	a2,a4
1000371c:	00000593          	li	a1,0
10003720:	00078513          	mv	a0,a5
10003724:	c85fe0ef          	jal	ra,100023a8 <memset>
10003728:	bf040713          	addi	a4,s0,-1040
1000372c:	100107b7          	lui	a5,0x10010
10003730:	39478613          	addi	a2,a5,916 # 10010394 <p2p_demo+0xbcf0>
10003734:	3ff00593          	li	a1,1023
10003738:	00070513          	mv	a0,a4
1000373c:	aa5fe0ef          	jal	ra,100021e0 <snprintf_>
10003740:	bf040793          	addi	a5,s0,-1040
10003744:	00078593          	mv	a1,a5
10003748:	00400513          	li	a0,4
1000374c:	e25fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003750:	0080006f          	j	10003758 <wait_ip+0x64>
10003754:	00000013          	nop
    while (!(*(volatile uint32_t *)NPU_STATUS1 & 0x1));
10003758:	00000013          	nop
1000375c:	010117b7          	lui	a5,0x1011
10003760:	00478793          	addi	a5,a5,4 # 1011004 <DTCM+0x1009004>
10003764:	0007a783          	lw	a5,0(a5)
10003768:	0017f793          	andi	a5,a5,1
1000376c:	fe0788e3          	beqz	a5,1000375c <wait_ip+0x68>
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP really OVER______");
10003770:	100117b7          	lui	a5,0x10011
10003774:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003778:	00079663          	bnez	a5,10003784 <wait_ip+0x90>
1000377c:	00000013          	nop
}
10003780:	0440006f          	j	100037c4 <wait_ip+0xd0>
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP really OVER______");
10003784:	bf040793          	addi	a5,s0,-1040
10003788:	40000713          	li	a4,1024
1000378c:	00070613          	mv	a2,a4
10003790:	00000593          	li	a1,0
10003794:	00078513          	mv	a0,a5
10003798:	c11fe0ef          	jal	ra,100023a8 <memset>
1000379c:	bf040713          	addi	a4,s0,-1040
100037a0:	100107b7          	lui	a5,0x10010
100037a4:	3ac78613          	addi	a2,a5,940 # 100103ac <p2p_demo+0xbd08>
100037a8:	3ff00593          	li	a1,1023
100037ac:	00070513          	mv	a0,a4
100037b0:	a31fe0ef          	jal	ra,100021e0 <snprintf_>
100037b4:	bf040793          	addi	a5,s0,-1040
100037b8:	00078593          	mv	a1,a5
100037bc:	00400513          	li	a0,4
100037c0:	db1fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
100037c4:	00000013          	nop
100037c8:	40c12083          	lw	ra,1036(sp)
100037cc:	40812403          	lw	s0,1032(sp)
100037d0:	41010113          	addi	sp,sp,1040
100037d4:	00008067          	ret

100037d8 <init_acc>:

void init_acc(uint32_t out_buf)
{
100037d8:	fe010113          	addi	sp,sp,-32
100037dc:	00812e23          	sw	s0,28(sp)
100037e0:	02010413          	addi	s0,sp,32
100037e4:	fea42623          	sw	a0,-20(s0)
    // init IP head and tail
    // head
    *(uint32_t*)(BASE_FLAG_BRAM | 0x0) = out_buf;
100037e8:	100107b7          	lui	a5,0x10010
100037ec:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
100037f0:	00078713          	mv	a4,a5
100037f4:	fec42783          	lw	a5,-20(s0)
100037f8:	00f72023          	sw	a5,0(a4) # 110000 <DTCM+0x108000>
    // tail
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = out_buf;
100037fc:	100107b7          	lui	a5,0x10010
10003800:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003804:	0047e793          	ori	a5,a5,4
10003808:	00078713          	mv	a4,a5
1000380c:	fec42783          	lw	a5,-20(s0)
10003810:	00f72023          	sw	a5,0(a4)

    *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024)) = 0;
10003814:	100107b7          	lui	a5,0x10010
10003818:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
1000381c:	000027b7          	lui	a5,0x2
10003820:	00878793          	addi	a5,a5,8 # 2008 <NPU_UPADD_PARA2+0xbf4>
10003824:	00f767b3          	or	a5,a4,a5
10003828:	0007a023          	sw	zero,0(a5)

    // 0 : head catch up tail
    // 1 : tail catch up head
    *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 0;
1000382c:	100107b7          	lui	a5,0x10010
10003830:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003834:	000027b7          	lui	a5,0x2
10003838:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
1000383c:	00f767b3          	or	a5,a4,a5
10003840:	0007a023          	sw	zero,0(a5)
}
10003844:	00000013          	nop
10003848:	01c12403          	lw	s0,28(sp)
1000384c:	02010113          	addi	sp,sp,32
10003850:	00008067          	ret

10003854 <wrap_buf>:

void wrap_buf(uint32_t lo, uint32_t hi, uint32_t size, uint32_t num, uint32_t addr, uint32_t over)
{
10003854:	fc010113          	addi	sp,sp,-64
10003858:	02812e23          	sw	s0,60(sp)
1000385c:	04010413          	addi	s0,sp,64
10003860:	fca42e23          	sw	a0,-36(s0)
10003864:	fcb42c23          	sw	a1,-40(s0)
10003868:	fcc42a23          	sw	a2,-44(s0)
1000386c:	fcd42823          	sw	a3,-48(s0)
10003870:	fce42623          	sw	a4,-52(s0)
10003874:	fcf42423          	sw	a5,-56(s0)
    uint32_t ddr = addr;
10003878:	fcc42783          	lw	a5,-52(s0)
1000387c:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = over;
10003880:	fec42783          	lw	a5,-20(s0)
10003884:	fc842703          	lw	a4,-56(s0)
10003888:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
1000388c:	fec42783          	lw	a5,-20(s0)
10003890:	00478793          	addi	a5,a5,4
10003894:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = 0x0;
10003898:	fec42783          	lw	a5,-20(s0)
1000389c:	0007a023          	sw	zero,0(a5)
    ddr += 4;
100038a0:	fec42783          	lw	a5,-20(s0)
100038a4:	00478793          	addi	a5,a5,4
100038a8:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = lo;
100038ac:	fec42783          	lw	a5,-20(s0)
100038b0:	fdc42703          	lw	a4,-36(s0)
100038b4:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
100038b8:	fec42783          	lw	a5,-20(s0)
100038bc:	00478793          	addi	a5,a5,4
100038c0:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = hi;
100038c4:	fec42783          	lw	a5,-20(s0)
100038c8:	fd842703          	lw	a4,-40(s0)
100038cc:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
100038d0:	fec42783          	lw	a5,-20(s0)
100038d4:	00478793          	addi	a5,a5,4
100038d8:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = size;
100038dc:	fec42783          	lw	a5,-20(s0)
100038e0:	fd442703          	lw	a4,-44(s0)
100038e4:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
100038e8:	fec42783          	lw	a5,-20(s0)
100038ec:	00478793          	addi	a5,a5,4
100038f0:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = 0x0;
100038f4:	fec42783          	lw	a5,-20(s0)
100038f8:	0007a023          	sw	zero,0(a5)
    ddr += 4;
100038fc:	fec42783          	lw	a5,-20(s0)
10003900:	00478793          	addi	a5,a5,4
10003904:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = (lo + size);
10003908:	fec42783          	lw	a5,-20(s0)
1000390c:	fdc42683          	lw	a3,-36(s0)
10003910:	fd442703          	lw	a4,-44(s0)
10003914:	00e68733          	add	a4,a3,a4
10003918:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
1000391c:	fec42783          	lw	a5,-20(s0)
10003920:	00478793          	addi	a5,a5,4
10003924:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = hi;
10003928:	fec42783          	lw	a5,-20(s0)
1000392c:	fd842703          	lw	a4,-40(s0)
10003930:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
10003934:	fec42783          	lw	a5,-20(s0)
10003938:	00478793          	addi	a5,a5,4
1000393c:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)ddr = num;
10003940:	fec42783          	lw	a5,-20(s0)
10003944:	fd042703          	lw	a4,-48(s0)
10003948:	00e7a023          	sw	a4,0(a5)
    ddr += 4;
1000394c:	fec42783          	lw	a5,-20(s0)
10003950:	00478793          	addi	a5,a5,4
10003954:	fef42623          	sw	a5,-20(s0)
}
10003958:	00000013          	nop
1000395c:	03c12403          	lw	s0,60(sp)
10003960:	04010113          	addi	sp,sp,64
10003964:	00008067          	ret

10003968 <all_proc_head_tail>:
#define BANK_SIZE_LM 32 * 1024

uint32_t all_proc_head_tail(uint32_t inbuf, uint32_t outbuf, uint32_t input_length, uint32_t plus, uint32_t buf_size, uint32_t buf_num,
                            uint32_t plus_g, uint32_t gpu_addr_plddr, uint32_t gpu_buf_num,
                            uint32_t slice_num)
{
10003968:	b6010113          	addi	sp,sp,-1184
1000396c:	48112e23          	sw	ra,1180(sp)
10003970:	48812c23          	sw	s0,1176(sp)
10003974:	4a010413          	addi	s0,sp,1184
10003978:	b6a42e23          	sw	a0,-1156(s0)
1000397c:	b6b42c23          	sw	a1,-1160(s0)
10003980:	b6c42a23          	sw	a2,-1164(s0)
10003984:	b6d42823          	sw	a3,-1168(s0)
10003988:	b6e42623          	sw	a4,-1172(s0)
1000398c:	b6f42423          	sw	a5,-1176(s0)
10003990:	b7042223          	sw	a6,-1180(s0)
10003994:	b7142023          	sw	a7,-1184(s0)
    init_acc(outbuf);
10003998:	b7842503          	lw	a0,-1160(s0)
1000399c:	e3dff0ef          	jal	ra,100037d8 <init_acc>
    dma_set_done(3);
100039a0:	00300513          	li	a0,3
100039a4:	f58ff0ef          	jal	ra,100030fc <dma_set_done>
    uint32_t data = inbuf;
100039a8:	b7c42783          	lw	a5,-1156(s0)
100039ac:	fcf42c23          	sw	a5,-40(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "data: %08x", data);
100039b0:	100117b7          	lui	a5,0x10011
100039b4:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100039b8:	04078663          	beqz	a5,10003a04 <all_proc_head_tail+0x9c>
100039bc:	b8440793          	addi	a5,s0,-1148
100039c0:	40000713          	li	a4,1024
100039c4:	00070613          	mv	a2,a4
100039c8:	00000593          	li	a1,0
100039cc:	00078513          	mv	a0,a5
100039d0:	9d9fe0ef          	jal	ra,100023a8 <memset>
100039d4:	b8440713          	addi	a4,s0,-1148
100039d8:	fd842683          	lw	a3,-40(s0)
100039dc:	100107b7          	lui	a5,0x10010
100039e0:	3cc78613          	addi	a2,a5,972 # 100103cc <p2p_demo+0xbd28>
100039e4:	3ff00593          	li	a1,1023
100039e8:	00070513          	mv	a0,a4
100039ec:	ff4fe0ef          	jal	ra,100021e0 <snprintf_>
100039f0:	b8440793          	addi	a5,s0,-1148
100039f4:	00078593          	mv	a1,a5
100039f8:	00400513          	li	a0,4
100039fc:	b75fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003a00:	0080006f          	j	10003a08 <all_proc_head_tail+0xa0>
10003a04:	00000013          	nop
    uint32_t tail = outbuf;
10003a08:	b7842783          	lw	a5,-1160(s0)
10003a0c:	fef42623          	sw	a5,-20(s0)
    uint32_t head = outbuf;
10003a10:	b7842783          	lw	a5,-1160(s0)
10003a14:	fef42423          	sw	a5,-24(s0)
    uint32_t gpu_addr_lo[10];
    uint32_t gpu_addr_hi[10];
    uint32_t slice_size = input_length * sizeof(uint8_t);
10003a18:	b7442783          	lw	a5,-1164(s0)
10003a1c:	fcf42a23          	sw	a5,-44(s0)

    for(int i = 0; i < gpu_buf_num; i++)
10003a20:	fe042223          	sw	zero,-28(s0)
10003a24:	06c0006f          	j	10003a90 <all_proc_head_tail+0x128>
    {
        // little-endian
        gpu_addr_lo[i] = *(uint32_t*)(gpu_addr_plddr + 8 * i);
10003a28:	fe442783          	lw	a5,-28(s0)
10003a2c:	00379793          	slli	a5,a5,0x3
10003a30:	00078713          	mv	a4,a5
10003a34:	b6042783          	lw	a5,-1184(s0)
10003a38:	00f707b3          	add	a5,a4,a5
10003a3c:	0007a703          	lw	a4,0(a5)
10003a40:	fe442783          	lw	a5,-28(s0)
10003a44:	00279793          	slli	a5,a5,0x2
10003a48:	ff040693          	addi	a3,s0,-16
10003a4c:	00f687b3          	add	a5,a3,a5
10003a50:	fae7ae23          	sw	a4,-68(a5)
        gpu_addr_hi[i] = *(uint32_t*)(gpu_addr_plddr + 4 + 8 * i);
10003a54:	fe442783          	lw	a5,-28(s0)
10003a58:	00379793          	slli	a5,a5,0x3
10003a5c:	00078713          	mv	a4,a5
10003a60:	b6042783          	lw	a5,-1184(s0)
10003a64:	00f707b3          	add	a5,a4,a5
10003a68:	00478793          	addi	a5,a5,4
10003a6c:	0007a703          	lw	a4,0(a5)
10003a70:	fe442783          	lw	a5,-28(s0)
10003a74:	00279793          	slli	a5,a5,0x2
10003a78:	ff040693          	addi	a3,s0,-16
10003a7c:	00f687b3          	add	a5,a3,a5
10003a80:	f8e7aa23          	sw	a4,-108(a5)
    for(int i = 0; i < gpu_buf_num; i++)
10003a84:	fe442783          	lw	a5,-28(s0)
10003a88:	00178793          	addi	a5,a5,1
10003a8c:	fef42223          	sw	a5,-28(s0)
10003a90:	fe442783          	lw	a5,-28(s0)
10003a94:	00042703          	lw	a4,0(s0)
10003a98:	f8e7e8e3          	bltu	a5,a4,10003a28 <all_proc_head_tail+0xc0>
    }

    uint32_t k = 0;
10003a9c:	fe042023          	sw	zero,-32(s0)
    fetchDMA(data, MMA_START_ADDR, slice_size);
10003aa0:	fd442603          	lw	a2,-44(s0)
10003aa4:	00000593          	li	a1,0
10003aa8:	fd842503          	lw	a0,-40(s0)
10003aac:	e80ff0ef          	jal	ra,1000312c <fetchDMA>
    DMA_CHECK;
10003ab0:	00000013          	nop
10003ab4:	e18ff0ef          	jal	ra,100030cc <dma_check>
10003ab8:	00050793          	mv	a5,a0
10003abc:	fe079ce3          	bnez	a5,10003ab4 <all_proc_head_tail+0x14c>
    k++;
10003ac0:	fe042783          	lw	a5,-32(s0)
10003ac4:	00178793          	addi	a5,a5,1
10003ac8:	fef42023          	sw	a5,-32(s0)

    fetchDMA((data + k * slice_size), (MMA_START_ADDR + (k % 4) * BANK_SIZE_LM), slice_size);
10003acc:	fe042703          	lw	a4,-32(s0)
10003ad0:	fd442783          	lw	a5,-44(s0)
10003ad4:	02f70733          	mul	a4,a4,a5
10003ad8:	fd842783          	lw	a5,-40(s0)
10003adc:	00f70733          	add	a4,a4,a5
10003ae0:	fe042783          	lw	a5,-32(s0)
10003ae4:	0037f793          	andi	a5,a5,3
10003ae8:	00f79793          	slli	a5,a5,0xf
10003aec:	fd442603          	lw	a2,-44(s0)
10003af0:	00078593          	mv	a1,a5
10003af4:	00070513          	mv	a0,a4
10003af8:	e34ff0ef          	jal	ra,1000312c <fetchDMA>
    IP(MMA_BANK_RES_ADDR, MMA_START_ADDR, slice_size, plus);
10003afc:	b7042683          	lw	a3,-1168(s0)
10003b00:	fd442603          	lw	a2,-44(s0)
10003b04:	00000593          	li	a1,0
10003b08:	00020537          	lui	a0,0x20
10003b0c:	9bdff0ef          	jal	ra,100034c8 <IP>
    DMA_CHECK;
10003b10:	00000013          	nop
10003b14:	db8ff0ef          	jal	ra,100030cc <dma_check>
10003b18:	00050793          	mv	a5,a0
10003b1c:	fe079ce3          	bnez	a5,10003b14 <all_proc_head_tail+0x1ac>
    wait_ip();
10003b20:	bd5ff0ef          	jal	ra,100036f4 <wait_ip>
    k++;
10003b24:	fe042783          	lw	a5,-32(s0)
10003b28:	00178793          	addi	a5,a5,1
10003b2c:	fef42023          	sw	a5,-32(s0)
    uint32_t cycle = slice_num - 2;
10003b30:	00442783          	lw	a5,4(s0)
10003b34:	ffe78793          	addi	a5,a5,-2
10003b38:	fcf42e23          	sw	a5,-36(s0)
    while(cycle > 0)
10003b3c:	2800006f          	j	10003dbc <all_proc_head_tail+0x454>
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
10003b40:	100107b7          	lui	a5,0x10010
10003b44:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003b48:	0007a783          	lw	a5,0(a5)
10003b4c:	fef42423          	sw	a5,-24(s0)
        if((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
10003b50:	fec42703          	lw	a4,-20(s0)
10003b54:	fe842783          	lw	a5,-24(s0)
10003b58:	40f707b3          	sub	a5,a4,a5
10003b5c:	0017b793          	seqz	a5,a5
10003b60:	0ff7f713          	andi	a4,a5,255
10003b64:	100107b7          	lui	a5,0x10010
10003b68:	5bc7a683          	lw	a3,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003b6c:	000027b7          	lui	a5,0x2
10003b70:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003b74:	00f6e7b3          	or	a5,a3,a5
10003b78:	0007a783          	lw	a5,0(a5)
10003b7c:	fff78793          	addi	a5,a5,-1
10003b80:	0017b793          	seqz	a5,a5
10003b84:	0ff7f793          	andi	a5,a5,255
10003b88:	00f777b3          	and	a5,a4,a5
10003b8c:	0ff7f793          	andi	a5,a5,255
10003b90:	04078e63          	beqz	a5,10003bec <all_proc_head_tail+0x284>
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "tail = head!");
10003b94:	100117b7          	lui	a5,0x10011
10003b98:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10003b9c:	00079663          	bnez	a5,10003ba8 <all_proc_head_tail+0x240>
10003ba0:	00000013          	nop
            break;
10003ba4:	2200006f          	j	10003dc4 <all_proc_head_tail+0x45c>
            KRNL_LOG_INFO(LOG_SYSTEM, "tail = head!");
10003ba8:	b8440793          	addi	a5,s0,-1148
10003bac:	40000713          	li	a4,1024
10003bb0:	00070613          	mv	a2,a4
10003bb4:	00000593          	li	a1,0
10003bb8:	00078513          	mv	a0,a5
10003bbc:	fecfe0ef          	jal	ra,100023a8 <memset>
10003bc0:	b8440713          	addi	a4,s0,-1148
10003bc4:	100107b7          	lui	a5,0x10010
10003bc8:	3dc78613          	addi	a2,a5,988 # 100103dc <p2p_demo+0xbd38>
10003bcc:	3ff00593          	li	a1,1023
10003bd0:	00070513          	mv	a0,a4
10003bd4:	e0cfe0ef          	jal	ra,100021e0 <snprintf_>
10003bd8:	b8440793          	addi	a5,s0,-1148
10003bdc:	00078593          	mv	a1,a5
10003be0:	00400513          	li	a0,4
10003be4:	98dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
            break;
10003be8:	1dc0006f          	j	10003dc4 <all_proc_head_tail+0x45c>
        }
        wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0);
10003bec:	fe042783          	lw	a5,-32(s0)
10003bf0:	ffe78713          	addi	a4,a5,-2
10003bf4:	00042783          	lw	a5,0(s0)
10003bf8:	02f777b3          	remu	a5,a4,a5
10003bfc:	00279793          	slli	a5,a5,0x2
10003c00:	ff040713          	addi	a4,s0,-16
10003c04:	00f707b3          	add	a5,a4,a5
10003c08:	fbc7a503          	lw	a0,-68(a5)
10003c0c:	fe042783          	lw	a5,-32(s0)
10003c10:	ffe78713          	addi	a4,a5,-2
10003c14:	00042783          	lw	a5,0(s0)
10003c18:	02f777b3          	remu	a5,a4,a5
10003c1c:	00279793          	slli	a5,a5,0x2
10003c20:	ff040713          	addi	a4,s0,-16
10003c24:	00f707b3          	add	a5,a4,a5
10003c28:	f947a583          	lw	a1,-108(a5)
10003c2c:	fe042783          	lw	a5,-32(s0)
10003c30:	ffe78713          	addi	a4,a5,-2
10003c34:	b6842783          	lw	a5,-1176(s0)
10003c38:	02f77733          	remu	a4,a4,a5
10003c3c:	b6c42783          	lw	a5,-1172(s0)
10003c40:	02f70733          	mul	a4,a4,a5
10003c44:	b7842783          	lw	a5,-1160(s0)
10003c48:	00f70733          	add	a4,a4,a5
10003c4c:	00000793          	li	a5,0
10003c50:	b6442683          	lw	a3,-1180(s0)
10003c54:	fd442603          	lw	a2,-44(s0)
10003c58:	bfdff0ef          	jal	ra,10003854 <wrap_buf>
        putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
10003c5c:	fe042783          	lw	a5,-32(s0)
10003c60:	ffe78713          	addi	a4,a5,-2
10003c64:	b6842783          	lw	a5,-1176(s0)
10003c68:	02f77733          	remu	a4,a4,a5
10003c6c:	b6c42783          	lw	a5,-1172(s0)
10003c70:	02f70733          	mul	a4,a4,a5
10003c74:	b7842783          	lw	a5,-1160(s0)
10003c78:	00f707b3          	add	a5,a4,a5
10003c7c:	02078793          	addi	a5,a5,32
10003c80:	00078713          	mv	a4,a5
10003c84:	fe042783          	lw	a5,-32(s0)
10003c88:	fff78793          	addi	a5,a5,-1
10003c8c:	0037f793          	andi	a5,a5,3
10003c90:	00478793          	addi	a5,a5,4
10003c94:	00f79793          	slli	a5,a5,0xf
10003c98:	00078693          	mv	a3,a5
10003c9c:	fd442783          	lw	a5,-44(s0)
10003ca0:	00078613          	mv	a2,a5
10003ca4:	00068593          	mv	a1,a3
10003ca8:	00070513          	mv	a0,a4
10003cac:	e54ff0ef          	jal	ra,10003300 <putDMA>
        IP((MMA_BANK_RES_ADDR + ((k-1) % 4) * BANK_SIZE_LM), (MMA_START_ADDR + ((k-1) % 4) * BANK_SIZE_LM), slice_size, plus);
10003cb0:	fe042783          	lw	a5,-32(s0)
10003cb4:	fff78793          	addi	a5,a5,-1
10003cb8:	0037f793          	andi	a5,a5,3
10003cbc:	00478793          	addi	a5,a5,4
10003cc0:	00f79713          	slli	a4,a5,0xf
10003cc4:	fe042783          	lw	a5,-32(s0)
10003cc8:	fff78793          	addi	a5,a5,-1
10003ccc:	0037f793          	andi	a5,a5,3
10003cd0:	00f79793          	slli	a5,a5,0xf
10003cd4:	b7042683          	lw	a3,-1168(s0)
10003cd8:	fd442603          	lw	a2,-44(s0)
10003cdc:	00078593          	mv	a1,a5
10003ce0:	00070513          	mv	a0,a4
10003ce4:	fe4ff0ef          	jal	ra,100034c8 <IP>
        DMA_CHECK;
10003ce8:	00000013          	nop
10003cec:	be0ff0ef          	jal	ra,100030cc <dma_check>
10003cf0:	00050793          	mv	a5,a0
10003cf4:	fe079ce3          	bnez	a5,10003cec <all_proc_head_tail+0x384>
        fetchDMA((data + k * slice_size), (MMA_START_ADDR + (k % 4) * BANK_SIZE_LM), slice_size);
10003cf8:	fe042703          	lw	a4,-32(s0)
10003cfc:	fd442783          	lw	a5,-44(s0)
10003d00:	02f70733          	mul	a4,a4,a5
10003d04:	fd842783          	lw	a5,-40(s0)
10003d08:	00f70733          	add	a4,a4,a5
10003d0c:	fe042783          	lw	a5,-32(s0)
10003d10:	0037f793          	andi	a5,a5,3
10003d14:	00f79793          	slli	a5,a5,0xf
10003d18:	fd442603          	lw	a2,-44(s0)
10003d1c:	00078593          	mv	a1,a5
10003d20:	00070513          	mv	a0,a4
10003d24:	c08ff0ef          	jal	ra,1000312c <fetchDMA>
        wait_ip();
10003d28:	9cdff0ef          	jal	ra,100036f4 <wait_ip>
        DMA_CHECK;
10003d2c:	00000013          	nop
10003d30:	b9cff0ef          	jal	ra,100030cc <dma_check>
10003d34:	00050793          	mv	a5,a0
10003d38:	fe079ce3          	bnez	a5,10003d30 <all_proc_head_tail+0x3c8>
        tail = (outbuf + (((k-1) % buf_num) * buf_size));
10003d3c:	fe042783          	lw	a5,-32(s0)
10003d40:	fff78713          	addi	a4,a5,-1
10003d44:	b6842783          	lw	a5,-1176(s0)
10003d48:	02f77733          	remu	a4,a4,a5
10003d4c:	b6c42783          	lw	a5,-1172(s0)
10003d50:	02f707b3          	mul	a5,a4,a5
10003d54:	b7842703          	lw	a4,-1160(s0)
10003d58:	00f707b3          	add	a5,a4,a5
10003d5c:	fef42623          	sw	a5,-20(s0)
        if(tail == head)
10003d60:	fec42703          	lw	a4,-20(s0)
10003d64:	fe842783          	lw	a5,-24(s0)
10003d68:	02f71263          	bne	a4,a5,10003d8c <all_proc_head_tail+0x424>
        {
            *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
10003d6c:	100107b7          	lui	a5,0x10010
10003d70:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003d74:	000027b7          	lui	a5,0x2
10003d78:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003d7c:	00f767b3          	or	a5,a4,a5
10003d80:	00078713          	mv	a4,a5
10003d84:	00100793          	li	a5,1
10003d88:	00f72023          	sw	a5,0(a4)
        }
        *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;
10003d8c:	100107b7          	lui	a5,0x10010
10003d90:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003d94:	0047e793          	ori	a5,a5,4
10003d98:	00078713          	mv	a4,a5
10003d9c:	fec42783          	lw	a5,-20(s0)
10003da0:	00f72023          	sw	a5,0(a4)
        cycle--;
10003da4:	fdc42783          	lw	a5,-36(s0)
10003da8:	fff78793          	addi	a5,a5,-1
10003dac:	fcf42e23          	sw	a5,-36(s0)
        k++;
10003db0:	fe042783          	lw	a5,-32(s0)
10003db4:	00178793          	addi	a5,a5,1
10003db8:	fef42023          	sw	a5,-32(s0)
    while(cycle > 0)
10003dbc:	fdc42783          	lw	a5,-36(s0)
10003dc0:	d80790e3          	bnez	a5,10003b40 <all_proc_head_tail+0x1d8>
    }
    head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
10003dc4:	100107b7          	lui	a5,0x10010
10003dc8:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003dcc:	0007a783          	lw	a5,0(a5)
10003dd0:	fef42423          	sw	a5,-24(s0)
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
10003dd4:	0140006f          	j	10003de8 <all_proc_head_tail+0x480>
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
10003dd8:	100107b7          	lui	a5,0x10010
10003ddc:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003de0:	0007a783          	lw	a5,0(a5)
10003de4:	fef42423          	sw	a5,-24(s0)
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
10003de8:	fec42703          	lw	a4,-20(s0)
10003dec:	fe842783          	lw	a5,-24(s0)
10003df0:	40f707b3          	sub	a5,a4,a5
10003df4:	0017b793          	seqz	a5,a5
10003df8:	0ff7f713          	andi	a4,a5,255
10003dfc:	100107b7          	lui	a5,0x10010
10003e00:	5bc7a683          	lw	a3,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003e04:	000027b7          	lui	a5,0x2
10003e08:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003e0c:	00f6e7b3          	or	a5,a3,a5
10003e10:	0007a783          	lw	a5,0(a5)
10003e14:	fff78793          	addi	a5,a5,-1
10003e18:	0017b793          	seqz	a5,a5
10003e1c:	0ff7f793          	andi	a5,a5,255
10003e20:	00f777b3          	and	a5,a4,a5
10003e24:	0ff7f793          	andi	a5,a5,255
10003e28:	fa0798e3          	bnez	a5,10003dd8 <all_proc_head_tail+0x470>
    }
    wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0);
10003e2c:	fe042783          	lw	a5,-32(s0)
10003e30:	ffe78713          	addi	a4,a5,-2
10003e34:	00042783          	lw	a5,0(s0)
10003e38:	02f777b3          	remu	a5,a4,a5
10003e3c:	00279793          	slli	a5,a5,0x2
10003e40:	ff040713          	addi	a4,s0,-16
10003e44:	00f707b3          	add	a5,a4,a5
10003e48:	fbc7a503          	lw	a0,-68(a5)
10003e4c:	fe042783          	lw	a5,-32(s0)
10003e50:	ffe78713          	addi	a4,a5,-2
10003e54:	00042783          	lw	a5,0(s0)
10003e58:	02f777b3          	remu	a5,a4,a5
10003e5c:	00279793          	slli	a5,a5,0x2
10003e60:	ff040713          	addi	a4,s0,-16
10003e64:	00f707b3          	add	a5,a4,a5
10003e68:	f947a583          	lw	a1,-108(a5)
10003e6c:	fe042783          	lw	a5,-32(s0)
10003e70:	ffe78713          	addi	a4,a5,-2
10003e74:	b6842783          	lw	a5,-1176(s0)
10003e78:	02f77733          	remu	a4,a4,a5
10003e7c:	b6c42783          	lw	a5,-1172(s0)
10003e80:	02f70733          	mul	a4,a4,a5
10003e84:	b7842783          	lw	a5,-1160(s0)
10003e88:	00f70733          	add	a4,a4,a5
10003e8c:	00000793          	li	a5,0
10003e90:	b6442683          	lw	a3,-1180(s0)
10003e94:	fd442603          	lw	a2,-44(s0)
10003e98:	9bdff0ef          	jal	ra,10003854 <wrap_buf>
    putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
10003e9c:	fe042783          	lw	a5,-32(s0)
10003ea0:	ffe78713          	addi	a4,a5,-2
10003ea4:	b6842783          	lw	a5,-1176(s0)
10003ea8:	02f77733          	remu	a4,a4,a5
10003eac:	b6c42783          	lw	a5,-1172(s0)
10003eb0:	02f70733          	mul	a4,a4,a5
10003eb4:	b7842783          	lw	a5,-1160(s0)
10003eb8:	00f707b3          	add	a5,a4,a5
10003ebc:	02078793          	addi	a5,a5,32
10003ec0:	00078713          	mv	a4,a5
10003ec4:	fe042783          	lw	a5,-32(s0)
10003ec8:	fff78793          	addi	a5,a5,-1
10003ecc:	0037f793          	andi	a5,a5,3
10003ed0:	00478793          	addi	a5,a5,4
10003ed4:	00f79793          	slli	a5,a5,0xf
10003ed8:	00078693          	mv	a3,a5
10003edc:	fd442783          	lw	a5,-44(s0)
10003ee0:	00078613          	mv	a2,a5
10003ee4:	00068593          	mv	a1,a3
10003ee8:	00070513          	mv	a0,a4
10003eec:	c14ff0ef          	jal	ra,10003300 <putDMA>
    IP((MMA_BANK_RES_ADDR + ((k-1) % 4) * BANK_SIZE_LM), (MMA_START_ADDR + ((k-1) % 4) * BANK_SIZE_LM), slice_size, plus);
10003ef0:	fe042783          	lw	a5,-32(s0)
10003ef4:	fff78793          	addi	a5,a5,-1
10003ef8:	0037f793          	andi	a5,a5,3
10003efc:	00478793          	addi	a5,a5,4
10003f00:	00f79713          	slli	a4,a5,0xf
10003f04:	fe042783          	lw	a5,-32(s0)
10003f08:	fff78793          	addi	a5,a5,-1
10003f0c:	0037f793          	andi	a5,a5,3
10003f10:	00f79793          	slli	a5,a5,0xf
10003f14:	b7042683          	lw	a3,-1168(s0)
10003f18:	fd442603          	lw	a2,-44(s0)
10003f1c:	00078593          	mv	a1,a5
10003f20:	00070513          	mv	a0,a4
10003f24:	da4ff0ef          	jal	ra,100034c8 <IP>
    DMA_CHECK;
10003f28:	00000013          	nop
10003f2c:	9a0ff0ef          	jal	ra,100030cc <dma_check>
10003f30:	00050793          	mv	a5,a0
10003f34:	fe079ce3          	bnez	a5,10003f2c <all_proc_head_tail+0x5c4>
    wait_ip();
10003f38:	fbcff0ef          	jal	ra,100036f4 <wait_ip>
    tail = (outbuf + (((k-1) % buf_num) * buf_size));
10003f3c:	fe042783          	lw	a5,-32(s0)
10003f40:	fff78713          	addi	a4,a5,-1
10003f44:	b6842783          	lw	a5,-1176(s0)
10003f48:	02f77733          	remu	a4,a4,a5
10003f4c:	b6c42783          	lw	a5,-1172(s0)
10003f50:	02f707b3          	mul	a5,a4,a5
10003f54:	b7842703          	lw	a4,-1160(s0)
10003f58:	00f707b3          	add	a5,a4,a5
10003f5c:	fef42623          	sw	a5,-20(s0)
    if(tail == head)
10003f60:	fec42703          	lw	a4,-20(s0)
10003f64:	fe842783          	lw	a5,-24(s0)
10003f68:	02f71263          	bne	a4,a5,10003f8c <all_proc_head_tail+0x624>
    {
        *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
10003f6c:	100107b7          	lui	a5,0x10010
10003f70:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003f74:	000027b7          	lui	a5,0x2
10003f78:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003f7c:	00f767b3          	or	a5,a4,a5
10003f80:	00078713          	mv	a4,a5
10003f84:	00100793          	li	a5,1
10003f88:	00f72023          	sw	a5,0(a4)
    }
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;
10003f8c:	100107b7          	lui	a5,0x10010
10003f90:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003f94:	0047e793          	ori	a5,a5,4
10003f98:	00078713          	mv	a4,a5
10003f9c:	fec42783          	lw	a5,-20(s0)
10003fa0:	00f72023          	sw	a5,0(a4)
    k++;
10003fa4:	fe042783          	lw	a5,-32(s0)
10003fa8:	00178793          	addi	a5,a5,1
10003fac:	fef42023          	sw	a5,-32(s0)


    head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
10003fb0:	100107b7          	lui	a5,0x10010
10003fb4:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003fb8:	0007a783          	lw	a5,0(a5)
10003fbc:	fef42423          	sw	a5,-24(s0)
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
10003fc0:	0140006f          	j	10003fd4 <all_proc_head_tail+0x66c>
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
10003fc4:	100107b7          	lui	a5,0x10010
10003fc8:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003fcc:	0007a783          	lw	a5,0(a5)
10003fd0:	fef42423          	sw	a5,-24(s0)
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
10003fd4:	fec42703          	lw	a4,-20(s0)
10003fd8:	fe842783          	lw	a5,-24(s0)
10003fdc:	40f707b3          	sub	a5,a4,a5
10003fe0:	0017b793          	seqz	a5,a5
10003fe4:	0ff7f713          	andi	a4,a5,255
10003fe8:	100107b7          	lui	a5,0x10010
10003fec:	5bc7a683          	lw	a3,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10003ff0:	000027b7          	lui	a5,0x2
10003ff4:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003ff8:	00f6e7b3          	or	a5,a3,a5
10003ffc:	0007a783          	lw	a5,0(a5)
10004000:	fff78793          	addi	a5,a5,-1
10004004:	0017b793          	seqz	a5,a5
10004008:	0ff7f793          	andi	a5,a5,255
1000400c:	00f777b3          	and	a5,a4,a5
10004010:	0ff7f793          	andi	a5,a5,255
10004014:	fa0798e3          	bnez	a5,10003fc4 <all_proc_head_tail+0x65c>
    }
    wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0xffffffff);
10004018:	fe042783          	lw	a5,-32(s0)
1000401c:	ffe78713          	addi	a4,a5,-2
10004020:	00042783          	lw	a5,0(s0)
10004024:	02f777b3          	remu	a5,a4,a5
10004028:	00279793          	slli	a5,a5,0x2
1000402c:	ff040713          	addi	a4,s0,-16
10004030:	00f707b3          	add	a5,a4,a5
10004034:	fbc7a503          	lw	a0,-68(a5)
10004038:	fe042783          	lw	a5,-32(s0)
1000403c:	ffe78713          	addi	a4,a5,-2
10004040:	00042783          	lw	a5,0(s0)
10004044:	02f777b3          	remu	a5,a4,a5
10004048:	00279793          	slli	a5,a5,0x2
1000404c:	ff040713          	addi	a4,s0,-16
10004050:	00f707b3          	add	a5,a4,a5
10004054:	f947a583          	lw	a1,-108(a5)
10004058:	fe042783          	lw	a5,-32(s0)
1000405c:	ffe78713          	addi	a4,a5,-2
10004060:	b6842783          	lw	a5,-1176(s0)
10004064:	02f77733          	remu	a4,a4,a5
10004068:	b6c42783          	lw	a5,-1172(s0)
1000406c:	02f70733          	mul	a4,a4,a5
10004070:	b7842783          	lw	a5,-1160(s0)
10004074:	00f70733          	add	a4,a4,a5
10004078:	fff00793          	li	a5,-1
1000407c:	b6442683          	lw	a3,-1180(s0)
10004080:	fd442603          	lw	a2,-44(s0)
10004084:	fd0ff0ef          	jal	ra,10003854 <wrap_buf>
    putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
10004088:	fe042783          	lw	a5,-32(s0)
1000408c:	ffe78713          	addi	a4,a5,-2
10004090:	b6842783          	lw	a5,-1176(s0)
10004094:	02f77733          	remu	a4,a4,a5
10004098:	b6c42783          	lw	a5,-1172(s0)
1000409c:	02f70733          	mul	a4,a4,a5
100040a0:	b7842783          	lw	a5,-1160(s0)
100040a4:	00f707b3          	add	a5,a4,a5
100040a8:	02078793          	addi	a5,a5,32
100040ac:	00078713          	mv	a4,a5
100040b0:	fe042783          	lw	a5,-32(s0)
100040b4:	fff78793          	addi	a5,a5,-1
100040b8:	0037f793          	andi	a5,a5,3
100040bc:	00478793          	addi	a5,a5,4
100040c0:	00f79793          	slli	a5,a5,0xf
100040c4:	00078693          	mv	a3,a5
100040c8:	fd442783          	lw	a5,-44(s0)
100040cc:	00078613          	mv	a2,a5
100040d0:	00068593          	mv	a1,a3
100040d4:	00070513          	mv	a0,a4
100040d8:	a28ff0ef          	jal	ra,10003300 <putDMA>
    tail = (outbuf + (((k-1) % buf_num) * buf_size));
100040dc:	fe042783          	lw	a5,-32(s0)
100040e0:	fff78713          	addi	a4,a5,-1
100040e4:	b6842783          	lw	a5,-1176(s0)
100040e8:	02f77733          	remu	a4,a4,a5
100040ec:	b6c42783          	lw	a5,-1172(s0)
100040f0:	02f707b3          	mul	a5,a4,a5
100040f4:	b7842703          	lw	a4,-1160(s0)
100040f8:	00f707b3          	add	a5,a4,a5
100040fc:	fef42623          	sw	a5,-20(s0)
    if(tail == head)
10004100:	fec42703          	lw	a4,-20(s0)
10004104:	fe842783          	lw	a5,-24(s0)
10004108:	02f71263          	bne	a4,a5,1000412c <all_proc_head_tail+0x7c4>
    {
        *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
1000410c:	100107b7          	lui	a5,0x10010
10004110:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10004114:	000027b7          	lui	a5,0x2
10004118:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
1000411c:	00f767b3          	or	a5,a4,a5
10004120:	00078713          	mv	a4,a5
10004124:	00100793          	li	a5,1
10004128:	00f72023          	sw	a5,0(a4)
    }
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;
1000412c:	100107b7          	lui	a5,0x10010
10004130:	5bc7a783          	lw	a5,1468(a5) # 100105bc <BASE_FLAG_BRAM>
10004134:	0047e793          	ori	a5,a5,4
10004138:	00078713          	mv	a4,a5
1000413c:	fec42783          	lw	a5,-20(s0)
10004140:	00f72023          	sw	a5,0(a4)


    *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024)) = 1;
10004144:	100107b7          	lui	a5,0x10010
10004148:	5bc7a703          	lw	a4,1468(a5) # 100105bc <BASE_FLAG_BRAM>
1000414c:	000027b7          	lui	a5,0x2
10004150:	00878793          	addi	a5,a5,8 # 2008 <NPU_UPADD_PARA2+0xbf4>
10004154:	00f767b3          	or	a5,a4,a5
10004158:	00078713          	mv	a4,a5
1000415c:	00100793          	li	a5,1
10004160:	00f72023          	sw	a5,0(a4)
}
10004164:	00000013          	nop
10004168:	00078513          	mv	a0,a5
1000416c:	49c12083          	lw	ra,1180(sp)
10004170:	49812403          	lw	s0,1176(sp)
10004174:	4a010113          	addi	sp,sp,1184
10004178:	00008067          	ret

1000417c <all_proc_no_head>:

uint32_t all_proc_no_head(uint32_t inbuf, uint32_t outbuf, uint32_t input_length, uint32_t plus)
{
1000417c:	bd010113          	addi	sp,sp,-1072
10004180:	42112623          	sw	ra,1068(sp)
10004184:	42812423          	sw	s0,1064(sp)
10004188:	43010413          	addi	s0,sp,1072
1000418c:	bca42e23          	sw	a0,-1060(s0)
10004190:	bcb42c23          	sw	a1,-1064(s0)
10004194:	bcc42a23          	sw	a2,-1068(s0)
10004198:	bcd42823          	sw	a3,-1072(s0)
    // inbuf : source data
    // outbuf : IP result in ddr
    // input_length
    // plus : plus num
    uint32_t slice_size = input_length * sizeof(uint8_t);
1000419c:	bd442783          	lw	a5,-1068(s0)
100041a0:	fef42623          	sw	a5,-20(s0)
    uint32_t data = (uint32_t)inbuf;
100041a4:	bdc42783          	lw	a5,-1060(s0)
100041a8:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "data: %08x", data);
100041ac:	100117b7          	lui	a5,0x10011
100041b0:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100041b4:	04078663          	beqz	a5,10004200 <all_proc_no_head+0x84>
100041b8:	be440793          	addi	a5,s0,-1052
100041bc:	40000713          	li	a4,1024
100041c0:	00070613          	mv	a2,a4
100041c4:	00000593          	li	a1,0
100041c8:	00078513          	mv	a0,a5
100041cc:	9dcfe0ef          	jal	ra,100023a8 <memset>
100041d0:	be440713          	addi	a4,s0,-1052
100041d4:	fe842683          	lw	a3,-24(s0)
100041d8:	100107b7          	lui	a5,0x10010
100041dc:	3cc78613          	addi	a2,a5,972 # 100103cc <p2p_demo+0xbd28>
100041e0:	3ff00593          	li	a1,1023
100041e4:	00070513          	mv	a0,a4
100041e8:	ff9fd0ef          	jal	ra,100021e0 <snprintf_>
100041ec:	be440793          	addi	a5,s0,-1052
100041f0:	00078593          	mv	a1,a5
100041f4:	00400513          	li	a0,4
100041f8:	b78fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100041fc:	0080006f          	j	10004204 <all_proc_no_head+0x88>
10004200:	00000013          	nop
    uint32_t result = (uint32_t)outbuf;
10004204:	bd842783          	lw	a5,-1064(s0)
10004208:	fef42223          	sw	a5,-28(s0)

    dma_set_done(3);
1000420c:	00300513          	li	a0,3
10004210:	eedfe0ef          	jal	ra,100030fc <dma_set_done>
    KRNL_LOG_INFO(LOG_SYSTEM, "dma set done");
10004214:	100117b7          	lui	a5,0x10011
10004218:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000421c:	04078463          	beqz	a5,10004264 <all_proc_no_head+0xe8>
10004220:	be440793          	addi	a5,s0,-1052
10004224:	40000713          	li	a4,1024
10004228:	00070613          	mv	a2,a4
1000422c:	00000593          	li	a1,0
10004230:	00078513          	mv	a0,a5
10004234:	974fe0ef          	jal	ra,100023a8 <memset>
10004238:	be440713          	addi	a4,s0,-1052
1000423c:	100107b7          	lui	a5,0x10010
10004240:	3ec78613          	addi	a2,a5,1004 # 100103ec <p2p_demo+0xbd48>
10004244:	3ff00593          	li	a1,1023
10004248:	00070513          	mv	a0,a4
1000424c:	f95fd0ef          	jal	ra,100021e0 <snprintf_>
10004250:	be440793          	addi	a5,s0,-1052
10004254:	00078593          	mv	a1,a5
10004258:	00400513          	li	a0,4
1000425c:	b14fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004260:	0080006f          	j	10004268 <all_proc_no_head+0xec>
10004264:	00000013          	nop

    fetchDMA(data, (MMA_START_ADDR), slice_size);
10004268:	fec42603          	lw	a2,-20(s0)
1000426c:	00000593          	li	a1,0
10004270:	fe842503          	lw	a0,-24(s0)
10004274:	eb9fe0ef          	jal	ra,1000312c <fetchDMA>
    KRNL_LOG_INFO(LOG_SYSTEM, "DMA CHECK!");
10004278:	100117b7          	lui	a5,0x10011
1000427c:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004280:	04078463          	beqz	a5,100042c8 <all_proc_no_head+0x14c>
10004284:	be440793          	addi	a5,s0,-1052
10004288:	40000713          	li	a4,1024
1000428c:	00070613          	mv	a2,a4
10004290:	00000593          	li	a1,0
10004294:	00078513          	mv	a0,a5
10004298:	910fe0ef          	jal	ra,100023a8 <memset>
1000429c:	be440713          	addi	a4,s0,-1052
100042a0:	100107b7          	lui	a5,0x10010
100042a4:	3fc78613          	addi	a2,a5,1020 # 100103fc <p2p_demo+0xbd58>
100042a8:	3ff00593          	li	a1,1023
100042ac:	00070513          	mv	a0,a4
100042b0:	f31fd0ef          	jal	ra,100021e0 <snprintf_>
100042b4:	be440793          	addi	a5,s0,-1052
100042b8:	00078593          	mv	a1,a5
100042bc:	00400513          	li	a0,4
100042c0:	ab0fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100042c4:	0080006f          	j	100042cc <all_proc_no_head+0x150>
100042c8:	00000013          	nop
    DMA_CHECK;
100042cc:	00000013          	nop
100042d0:	dfdfe0ef          	jal	ra,100030cc <dma_check>
100042d4:	00050793          	mv	a5,a0
100042d8:	fe079ce3          	bnez	a5,100042d0 <all_proc_no_head+0x154>

    IP((MMA_BANK_RES_ADDR), (MMA_START_ADDR), slice_size, plus);
100042dc:	bd042683          	lw	a3,-1072(s0)
100042e0:	fec42603          	lw	a2,-20(s0)
100042e4:	00000593          	li	a1,0
100042e8:	00020537          	lui	a0,0x20
100042ec:	9dcff0ef          	jal	ra,100034c8 <IP>
    KRNL_LOG_INFO(LOG_SYSTEM, "IP ###### is working");
100042f0:	100117b7          	lui	a5,0x10011
100042f4:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100042f8:	04078463          	beqz	a5,10004340 <all_proc_no_head+0x1c4>
100042fc:	be440793          	addi	a5,s0,-1052
10004300:	40000713          	li	a4,1024
10004304:	00070613          	mv	a2,a4
10004308:	00000593          	li	a1,0
1000430c:	00078513          	mv	a0,a5
10004310:	898fe0ef          	jal	ra,100023a8 <memset>
10004314:	be440713          	addi	a4,s0,-1052
10004318:	100107b7          	lui	a5,0x10010
1000431c:	40c78613          	addi	a2,a5,1036 # 1001040c <p2p_demo+0xbd68>
10004320:	3ff00593          	li	a1,1023
10004324:	00070513          	mv	a0,a4
10004328:	eb9fd0ef          	jal	ra,100021e0 <snprintf_>
1000432c:	be440793          	addi	a5,s0,-1052
10004330:	00078593          	mv	a1,a5
10004334:	00400513          	li	a0,4
10004338:	a38fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000433c:	0080006f          	j	10004344 <all_proc_no_head+0x1c8>
10004340:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "start wait ip!!!!");
10004344:	100117b7          	lui	a5,0x10011
10004348:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000434c:	04078463          	beqz	a5,10004394 <all_proc_no_head+0x218>
10004350:	be440793          	addi	a5,s0,-1052
10004354:	40000713          	li	a4,1024
10004358:	00070613          	mv	a2,a4
1000435c:	00000593          	li	a1,0
10004360:	00078513          	mv	a0,a5
10004364:	844fe0ef          	jal	ra,100023a8 <memset>
10004368:	be440713          	addi	a4,s0,-1052
1000436c:	100107b7          	lui	a5,0x10010
10004370:	42478613          	addi	a2,a5,1060 # 10010424 <p2p_demo+0xbd80>
10004374:	3ff00593          	li	a1,1023
10004378:	00070513          	mv	a0,a4
1000437c:	e65fd0ef          	jal	ra,100021e0 <snprintf_>
10004380:	be440793          	addi	a5,s0,-1052
10004384:	00078593          	mv	a1,a5
10004388:	00400513          	li	a0,4
1000438c:	9e4fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004390:	0080006f          	j	10004398 <all_proc_no_head+0x21c>
10004394:	00000013          	nop
    wait_ip();
10004398:	b5cff0ef          	jal	ra,100036f4 <wait_ip>

    putDMA((result), (MMA_BANK_RES_ADDR), slice_size);
1000439c:	fe442783          	lw	a5,-28(s0)
100043a0:	fec42703          	lw	a4,-20(s0)
100043a4:	00070613          	mv	a2,a4
100043a8:	000205b7          	lui	a1,0x20
100043ac:	00078513          	mv	a0,a5
100043b0:	f51fe0ef          	jal	ra,10003300 <putDMA>
    DMA_CHECK;
100043b4:	00000013          	nop
100043b8:	d15fe0ef          	jal	ra,100030cc <dma_check>
100043bc:	00050793          	mv	a5,a0
100043c0:	fe079ce3          	bnez	a5,100043b8 <all_proc_no_head+0x23c>
}
100043c4:	00000013          	nop
100043c8:	00078513          	mv	a0,a5
100043cc:	42c12083          	lw	ra,1068(sp)
100043d0:	42812403          	lw	s0,1064(sp)
100043d4:	43010113          	addi	sp,sp,1072
100043d8:	00008067          	ret

100043dc <test_uart_print>:

void test_uart_print()
{
100043dc:	be010113          	addi	sp,sp,-1056
100043e0:	40112e23          	sw	ra,1052(sp)
100043e4:	40812c23          	sw	s0,1048(sp)
100043e8:	42010413          	addi	s0,sp,1056
    uint32_t var = 0xdeadbeef;
100043ec:	deadc7b7          	lui	a5,0xdeadc
100043f0:	eef78793          	addi	a5,a5,-273 # deadbeef <STACK_BASE_ADDR+0xceabbef3>
100043f4:	fef42623          	sw	a5,-20(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
100043f8:	100117b7          	lui	a5,0x10011
100043fc:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004400:	00079663          	bnez	a5,1000440c <test_uart_print+0x30>
10004404:	00000013          	nop
}
10004408:	0500006f          	j	10004458 <test_uart_print+0x7c>
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
1000440c:	bec40793          	addi	a5,s0,-1044
10004410:	40000713          	li	a4,1024
10004414:	00070613          	mv	a2,a4
10004418:	00000593          	li	a1,0
1000441c:	00078513          	mv	a0,a5
10004420:	f89fd0ef          	jal	ra,100023a8 <memset>
10004424:	bec40513          	addi	a0,s0,-1044
10004428:	fec42783          	lw	a5,-20(s0)
1000442c:	fec42703          	lw	a4,-20(s0)
10004430:	100106b7          	lui	a3,0x10010
10004434:	43c68693          	addi	a3,a3,1084 # 1001043c <p2p_demo+0xbd98>
10004438:	10010637          	lui	a2,0x10010
1000443c:	44460613          	addi	a2,a2,1092 # 10010444 <p2p_demo+0xbda0>
10004440:	3ff00593          	li	a1,1023
10004444:	d9dfd0ef          	jal	ra,100021e0 <snprintf_>
10004448:	bec40793          	addi	a5,s0,-1044
1000444c:	00078593          	mv	a1,a5
10004450:	00400513          	li	a0,4
10004454:	91cfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10004458:	00000013          	nop
1000445c:	41c12083          	lw	ra,1052(sp)
10004460:	41812403          	lw	s0,1048(sp)
10004464:	42010113          	addi	sp,sp,1056
10004468:	00008067          	ret

1000446c <all_proc_>:

void all_proc_()
{
1000446c:	be010113          	addi	sp,sp,-1056
10004470:	40112e23          	sw	ra,1052(sp)
10004474:	40812c23          	sw	s0,1048(sp)
10004478:	42010413          	addi	s0,sp,1056
    uint32_t length;
    uint32_t plus;

    // BASE H2C BRAM: the base addr of BRAM
    static uint32_t DDR_BASE_INFO = 0x20000000;
    in_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x0);
1000447c:	100117b7          	lui	a5,0x10011
10004480:	a107a783          	lw	a5,-1520(a5) # 10010a10 <DDR_BASE_INFO.1829>
10004484:	0007a783          	lw	a5,0(a5)
10004488:	fef42623          	sw	a5,-20(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "in buf %08x", in_buf);
1000448c:	100117b7          	lui	a5,0x10011
10004490:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004494:	04078663          	beqz	a5,100044e0 <all_proc_+0x74>
10004498:	be040793          	addi	a5,s0,-1056
1000449c:	40000713          	li	a4,1024
100044a0:	00070613          	mv	a2,a4
100044a4:	00000593          	li	a1,0
100044a8:	00078513          	mv	a0,a5
100044ac:	efdfd0ef          	jal	ra,100023a8 <memset>
100044b0:	be040713          	addi	a4,s0,-1056
100044b4:	fec42683          	lw	a3,-20(s0)
100044b8:	100107b7          	lui	a5,0x10010
100044bc:	47078613          	addi	a2,a5,1136 # 10010470 <p2p_demo+0xbdcc>
100044c0:	3ff00593          	li	a1,1023
100044c4:	00070513          	mv	a0,a4
100044c8:	d19fd0ef          	jal	ra,100021e0 <snprintf_>
100044cc:	be040793          	addi	a5,s0,-1056
100044d0:	00078593          	mv	a1,a5
100044d4:	00400513          	li	a0,4
100044d8:	898fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100044dc:	0080006f          	j	100044e4 <all_proc_+0x78>
100044e0:	00000013          	nop
    out_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x4);
100044e4:	100117b7          	lui	a5,0x10011
100044e8:	a107a783          	lw	a5,-1520(a5) # 10010a10 <DDR_BASE_INFO.1829>
100044ec:	0047e793          	ori	a5,a5,4
100044f0:	0007a783          	lw	a5,0(a5)
100044f4:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "out buf %08x", out_buf);
100044f8:	100117b7          	lui	a5,0x10011
100044fc:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004500:	04078663          	beqz	a5,1000454c <all_proc_+0xe0>
10004504:	be040793          	addi	a5,s0,-1056
10004508:	40000713          	li	a4,1024
1000450c:	00070613          	mv	a2,a4
10004510:	00000593          	li	a1,0
10004514:	00078513          	mv	a0,a5
10004518:	e91fd0ef          	jal	ra,100023a8 <memset>
1000451c:	be040713          	addi	a4,s0,-1056
10004520:	fe842683          	lw	a3,-24(s0)
10004524:	100107b7          	lui	a5,0x10010
10004528:	48078613          	addi	a2,a5,1152 # 10010480 <p2p_demo+0xbddc>
1000452c:	3ff00593          	li	a1,1023
10004530:	00070513          	mv	a0,a4
10004534:	cadfd0ef          	jal	ra,100021e0 <snprintf_>
10004538:	be040793          	addi	a5,s0,-1056
1000453c:	00078593          	mv	a1,a5
10004540:	00400513          	li	a0,4
10004544:	82cfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004548:	0080006f          	j	10004550 <all_proc_+0xe4>
1000454c:	00000013          	nop
    length = *(volatile uint32_t *)(DDR_BASE_INFO | 0x8);
10004550:	100117b7          	lui	a5,0x10011
10004554:	a107a783          	lw	a5,-1520(a5) # 10010a10 <DDR_BASE_INFO.1829>
10004558:	0087e793          	ori	a5,a5,8
1000455c:	0007a783          	lw	a5,0(a5)
10004560:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "slice length %08x", length);
10004564:	100117b7          	lui	a5,0x10011
10004568:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000456c:	04078663          	beqz	a5,100045b8 <all_proc_+0x14c>
10004570:	be040793          	addi	a5,s0,-1056
10004574:	40000713          	li	a4,1024
10004578:	00070613          	mv	a2,a4
1000457c:	00000593          	li	a1,0
10004580:	00078513          	mv	a0,a5
10004584:	e25fd0ef          	jal	ra,100023a8 <memset>
10004588:	be040713          	addi	a4,s0,-1056
1000458c:	fe442683          	lw	a3,-28(s0)
10004590:	100107b7          	lui	a5,0x10010
10004594:	49078613          	addi	a2,a5,1168 # 10010490 <p2p_demo+0xbdec>
10004598:	3ff00593          	li	a1,1023
1000459c:	00070513          	mv	a0,a4
100045a0:	c41fd0ef          	jal	ra,100021e0 <snprintf_>
100045a4:	be040793          	addi	a5,s0,-1056
100045a8:	00078593          	mv	a1,a5
100045ac:	00400513          	li	a0,4
100045b0:	fc1fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100045b4:	0080006f          	j	100045bc <all_proc_+0x150>
100045b8:	00000013          	nop
    plus = *(volatile uint32_t *)(DDR_BASE_INFO | 0xc);
100045bc:	100117b7          	lui	a5,0x10011
100045c0:	a107a783          	lw	a5,-1520(a5) # 10010a10 <DDR_BASE_INFO.1829>
100045c4:	00c7e793          	ori	a5,a5,12
100045c8:	0007a783          	lw	a5,0(a5)
100045cc:	fef42023          	sw	a5,-32(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "plus %08x", plus);
100045d0:	100117b7          	lui	a5,0x10011
100045d4:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100045d8:	04078663          	beqz	a5,10004624 <all_proc_+0x1b8>
100045dc:	be040793          	addi	a5,s0,-1056
100045e0:	40000713          	li	a4,1024
100045e4:	00070613          	mv	a2,a4
100045e8:	00000593          	li	a1,0
100045ec:	00078513          	mv	a0,a5
100045f0:	db9fd0ef          	jal	ra,100023a8 <memset>
100045f4:	be040713          	addi	a4,s0,-1056
100045f8:	fe042683          	lw	a3,-32(s0)
100045fc:	100107b7          	lui	a5,0x10010
10004600:	4a878613          	addi	a2,a5,1192 # 100104a8 <p2p_demo+0xbe04>
10004604:	3ff00593          	li	a1,1023
10004608:	00070513          	mv	a0,a4
1000460c:	bd5fd0ef          	jal	ra,100021e0 <snprintf_>
10004610:	be040793          	addi	a5,s0,-1056
10004614:	00078593          	mv	a1,a5
10004618:	00400513          	li	a0,4
1000461c:	f55fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004620:	0080006f          	j	10004628 <all_proc_+0x1bc>
10004624:	00000013          	nop

    all_proc_no_head(in_buf, out_buf, length, plus);
10004628:	fe042683          	lw	a3,-32(s0)
1000462c:	fe442603          	lw	a2,-28(s0)
10004630:	fe842583          	lw	a1,-24(s0)
10004634:	fec42503          	lw	a0,-20(s0)
10004638:	b45ff0ef          	jal	ra,1000417c <all_proc_no_head>
    KRNL_LOG_INFO(LOG_SYSTEM, "_________________OVER!!!!!");
1000463c:	100117b7          	lui	a5,0x10011
10004640:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004644:	00079663          	bnez	a5,10004650 <all_proc_+0x1e4>
10004648:	00000013          	nop
}
1000464c:	0440006f          	j	10004690 <all_proc_+0x224>
    KRNL_LOG_INFO(LOG_SYSTEM, "_________________OVER!!!!!");
10004650:	be040793          	addi	a5,s0,-1056
10004654:	40000713          	li	a4,1024
10004658:	00070613          	mv	a2,a4
1000465c:	00000593          	li	a1,0
10004660:	00078513          	mv	a0,a5
10004664:	d45fd0ef          	jal	ra,100023a8 <memset>
10004668:	be040713          	addi	a4,s0,-1056
1000466c:	100107b7          	lui	a5,0x10010
10004670:	4b878613          	addi	a2,a5,1208 # 100104b8 <p2p_demo+0xbe14>
10004674:	3ff00593          	li	a1,1023
10004678:	00070513          	mv	a0,a4
1000467c:	b65fd0ef          	jal	ra,100021e0 <snprintf_>
10004680:	be040793          	addi	a5,s0,-1056
10004684:	00078593          	mv	a1,a5
10004688:	00400513          	li	a0,4
1000468c:	ee5fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10004690:	00000013          	nop
10004694:	41c12083          	lw	ra,1052(sp)
10004698:	41812403          	lw	s0,1048(sp)
1000469c:	42010113          	addi	sp,sp,1056
100046a0:	00008067          	ret

100046a4 <p2p_demo>:

void p2p_demo()
{
100046a4:	bf010113          	addi	sp,sp,-1040
100046a8:	40112623          	sw	ra,1036(sp)
100046ac:	40812423          	sw	s0,1032(sp)
100046b0:	41010413          	addi	s0,sp,1040
    // initial the interrupt signal
    test_uart_print();
100046b4:	d29ff0ef          	jal	ra,100043dc <test_uart_print>

    KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");
100046b8:	100117b7          	lui	a5,0x10011
100046bc:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100046c0:	04078463          	beqz	a5,10004708 <p2p_demo+0x64>
100046c4:	bf040793          	addi	a5,s0,-1040
100046c8:	40000713          	li	a4,1024
100046cc:	00070613          	mv	a2,a4
100046d0:	00000593          	li	a1,0
100046d4:	00078513          	mv	a0,a5
100046d8:	cd1fd0ef          	jal	ra,100023a8 <memset>
100046dc:	bf040713          	addi	a4,s0,-1040
100046e0:	100107b7          	lui	a5,0x10010
100046e4:	4d878613          	addi	a2,a5,1240 # 100104d8 <p2p_demo+0xbe34>
100046e8:	3ff00593          	li	a1,1023
100046ec:	00070513          	mv	a0,a4
100046f0:	af1fd0ef          	jal	ra,100021e0 <snprintf_>
100046f4:	bf040793          	addi	a5,s0,-1040
100046f8:	00078593          	mv	a1,a5
100046fc:	00400513          	li	a0,4
10004700:	e71fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004704:	0080006f          	j	1000470c <p2p_demo+0x68>
10004708:	00000013          	nop

    while(*pCmdStart_0x04 == 0);
1000470c:	00000013          	nop
10004710:	100117b7          	lui	a5,0x10011
10004714:	9107a783          	lw	a5,-1776(a5) # 10010910 <pCmdStart_0x04>
10004718:	0007a783          	lw	a5,0(a5)
1000471c:	fe078ae3          	beqz	a5,10004710 <p2p_demo+0x6c>

    // set rv status to busy
    *pCmdStatus_0x08 = 1;
10004720:	100117b7          	lui	a5,0x10011
10004724:	9147a783          	lw	a5,-1772(a5) # 10010914 <pCmdStatus_0x08>
10004728:	00100713          	li	a4,1
1000472c:	00e7a023          	sw	a4,0(a5)

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");
10004730:	100117b7          	lui	a5,0x10011
10004734:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004738:	04078463          	beqz	a5,10004780 <p2p_demo+0xdc>
1000473c:	bf040793          	addi	a5,s0,-1040
10004740:	40000713          	li	a4,1024
10004744:	00070613          	mv	a2,a4
10004748:	00000593          	li	a1,0
1000474c:	00078513          	mv	a0,a5
10004750:	c59fd0ef          	jal	ra,100023a8 <memset>
10004754:	bf040713          	addi	a4,s0,-1040
10004758:	100107b7          	lui	a5,0x10010
1000475c:	4fc78613          	addi	a2,a5,1276 # 100104fc <p2p_demo+0xbe58>
10004760:	3ff00593          	li	a1,1023
10004764:	00070513          	mv	a0,a4
10004768:	a79fd0ef          	jal	ra,100021e0 <snprintf_>
1000476c:	bf040793          	addi	a5,s0,-1040
10004770:	00078593          	mv	a1,a5
10004774:	00400513          	li	a0,4
10004778:	df9fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000477c:	0080006f          	j	10004784 <p2p_demo+0xe0>
10004780:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "12345678901234567890");
10004784:	100117b7          	lui	a5,0x10011
10004788:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
1000478c:	04078463          	beqz	a5,100047d4 <p2p_demo+0x130>
10004790:	bf040793          	addi	a5,s0,-1040
10004794:	40000713          	li	a4,1024
10004798:	00070613          	mv	a2,a4
1000479c:	00000593          	li	a1,0
100047a0:	00078513          	mv	a0,a5
100047a4:	c05fd0ef          	jal	ra,100023a8 <memset>
100047a8:	bf040713          	addi	a4,s0,-1040
100047ac:	100107b7          	lui	a5,0x10010
100047b0:	52478613          	addi	a2,a5,1316 # 10010524 <p2p_demo+0xbe80>
100047b4:	3ff00593          	li	a1,1023
100047b8:	00070513          	mv	a0,a4
100047bc:	a25fd0ef          	jal	ra,100021e0 <snprintf_>
100047c0:	bf040793          	addi	a5,s0,-1040
100047c4:	00078593          	mv	a1,a5
100047c8:	00400513          	li	a0,4
100047cc:	da5fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100047d0:	0080006f          	j	100047d8 <p2p_demo+0x134>
100047d4:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "12345678901234567890");
100047d8:	100117b7          	lui	a5,0x10011
100047dc:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100047e0:	04078463          	beqz	a5,10004828 <p2p_demo+0x184>
100047e4:	bf040793          	addi	a5,s0,-1040
100047e8:	40000713          	li	a4,1024
100047ec:	00070613          	mv	a2,a4
100047f0:	00000593          	li	a1,0
100047f4:	00078513          	mv	a0,a5
100047f8:	bb1fd0ef          	jal	ra,100023a8 <memset>
100047fc:	bf040713          	addi	a4,s0,-1040
10004800:	100107b7          	lui	a5,0x10010
10004804:	52478613          	addi	a2,a5,1316 # 10010524 <p2p_demo+0xbe80>
10004808:	3ff00593          	li	a1,1023
1000480c:	00070513          	mv	a0,a4
10004810:	9d1fd0ef          	jal	ra,100021e0 <snprintf_>
10004814:	bf040793          	addi	a5,s0,-1040
10004818:	00078593          	mv	a1,a5
1000481c:	00400513          	li	a0,4
10004820:	d51fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004824:	0080006f          	j	1000482c <p2p_demo+0x188>
10004828:	00000013          	nop

    all_proc_();
1000482c:	c41ff0ef          	jal	ra,1000446c <all_proc_>


    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");
10004830:	100117b7          	lui	a5,0x10011
10004834:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004838:	04078463          	beqz	a5,10004880 <p2p_demo+0x1dc>
1000483c:	bf040793          	addi	a5,s0,-1040
10004840:	40000713          	li	a4,1024
10004844:	00070613          	mv	a2,a4
10004848:	00000593          	li	a1,0
1000484c:	00078513          	mv	a0,a5
10004850:	b59fd0ef          	jal	ra,100023a8 <memset>
10004854:	bf040713          	addi	a4,s0,-1040
10004858:	100107b7          	lui	a5,0x10010
1000485c:	53c78613          	addi	a2,a5,1340 # 1001053c <p2p_demo+0xbe98>
10004860:	3ff00593          	li	a1,1023
10004864:	00070513          	mv	a0,a4
10004868:	979fd0ef          	jal	ra,100021e0 <snprintf_>
1000486c:	bf040793          	addi	a5,s0,-1040
10004870:	00078593          	mv	a1,a5
10004874:	00400513          	li	a0,4
10004878:	cf9fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000487c:	0080006f          	j	10004884 <p2p_demo+0x1e0>
10004880:	00000013          	nop

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
10004884:	100117b7          	lui	a5,0x10011
10004888:	9147a783          	lw	a5,-1772(a5) # 10010914 <pCmdStatus_0x08>
1000488c:	0007a023          	sw	zero,0(a5)
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
10004890:	100117b7          	lui	a5,0x10011
10004894:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004898:	04078463          	beqz	a5,100048e0 <p2p_demo+0x23c>
1000489c:	bf040793          	addi	a5,s0,-1040
100048a0:	40000713          	li	a4,1024
100048a4:	00070613          	mv	a2,a4
100048a8:	00000593          	li	a1,0
100048ac:	00078513          	mv	a0,a5
100048b0:	af9fd0ef          	jal	ra,100023a8 <memset>
100048b4:	bf040713          	addi	a4,s0,-1040
100048b8:	100107b7          	lui	a5,0x10010
100048bc:	55478613          	addi	a2,a5,1364 # 10010554 <p2p_demo+0xbeb0>
100048c0:	3ff00593          	li	a1,1023
100048c4:	00070513          	mv	a0,a4
100048c8:	919fd0ef          	jal	ra,100021e0 <snprintf_>
100048cc:	bf040793          	addi	a5,s0,-1040
100048d0:	00078593          	mv	a1,a5
100048d4:	00400513          	li	a0,4
100048d8:	c99fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100048dc:	0080006f          	j	100048e4 <p2p_demo+0x240>
100048e0:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
100048e4:	100117b7          	lui	a5,0x10011
100048e8:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
100048ec:	04078463          	beqz	a5,10004934 <p2p_demo+0x290>
100048f0:	bf040793          	addi	a5,s0,-1040
100048f4:	40000713          	li	a4,1024
100048f8:	00070613          	mv	a2,a4
100048fc:	00000593          	li	a1,0
10004900:	00078513          	mv	a0,a5
10004904:	aa5fd0ef          	jal	ra,100023a8 <memset>
10004908:	bf040713          	addi	a4,s0,-1040
1000490c:	100107b7          	lui	a5,0x10010
10004910:	57078613          	addi	a2,a5,1392 # 10010570 <p2p_demo+0xbecc>
10004914:	3ff00593          	li	a1,1023
10004918:	00070513          	mv	a0,a4
1000491c:	8c5fd0ef          	jal	ra,100021e0 <snprintf_>
10004920:	bf040793          	addi	a5,s0,-1040
10004924:	00078593          	mv	a1,a5
10004928:	00400513          	li	a0,4
1000492c:	c45fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004930:	0080006f          	j	10004938 <p2p_demo+0x294>
10004934:	00000013          	nop
    asm volatile("wfi");
10004938:	10500073          	wfi

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
1000493c:	100117b7          	lui	a5,0x10011
10004940:	9fc7a783          	lw	a5,-1540(a5) # 100109fc <g_ulPrintSYSLogFlag>
10004944:	04078463          	beqz	a5,1000498c <p2p_demo+0x2e8>
10004948:	bf040793          	addi	a5,s0,-1040
1000494c:	40000713          	li	a4,1024
10004950:	00070613          	mv	a2,a4
10004954:	00000593          	li	a1,0
10004958:	00078513          	mv	a0,a5
1000495c:	a4dfd0ef          	jal	ra,100023a8 <memset>
10004960:	bf040713          	addi	a4,s0,-1040
10004964:	100107b7          	lui	a5,0x10010
10004968:	58478613          	addi	a2,a5,1412 # 10010584 <p2p_demo+0xbee0>
1000496c:	3ff00593          	li	a1,1023
10004970:	00070513          	mv	a0,a4
10004974:	86dfd0ef          	jal	ra,100021e0 <snprintf_>
10004978:	bf040793          	addi	a5,s0,-1040
1000497c:	00078593          	mv	a1,a5
10004980:	00400513          	li	a0,4
10004984:	bedfb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004988:	0080006f          	j	10004990 <p2p_demo+0x2ec>
1000498c:	00000013          	nop
    while (1);
10004990:	0000006f          	j	10004990 <p2p_demo+0x2ec>
