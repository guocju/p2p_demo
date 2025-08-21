
output/swf_code.elf:     file format elf32-littleriscv
output/swf_code.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x10000200

Program Header:
    LOAD off    0x00001000 vaddr 0x10000000 paddr 0x10000000 align 2**12
         filesz 0x0000479c memsz 0x0000479c flags r-x
    LOAD off    0x00006000 vaddr 0x10010000 paddr 0x10010000 align 2**12
         filesz 0x00000ba8 memsz 0x00000ba8 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text.init    000000c4  10000000  10000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         0000459c  10000200  10000200  00001200  2**9
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000730  10010000  10010000  00006000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .srodata      00000028  10010730  10010730  00006730  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .bss          0000030c  10010758  10010758  00006758  2**2
                  ALLOC
  5 .sbss         0000000c  10010a64  10010a64  00006758  2**2
                  ALLOC
  6 .data         00000004  10010a70  10010a70  00006a70  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .sdata        00000134  10010a74  10010a74  00006a74  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  8 .debug_line   00003074  00000000  00000000  00006ba8  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_info   00003a95  00000000  00000000  00009c1c  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00000aad  00000000  00000000  0000d6b1  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_aranges 00000100  00000000  00000000  0000e160  2**3
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_str    00001146  00000000  00000000  0000e260  2**0
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 000000b0  00000000  00000000  0000f3a8  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .comment      00000011  00000000  00000000  0000f458  2**0
                  CONTENTS, READONLY
 15 .debug_frame  00000998  00000000  00000000  0000f46c  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
10000000 l    d  .text.init	00000000 .text.init
10000200 l    d  .text	00000000 .text
10010000 l    d  .rodata	00000000 .rodata
10010730 l    d  .srodata	00000000 .srodata
10010758 l    d  .bss	00000000 .bss
10010a64 l    d  .sbss	00000000 .sbss
10010a70 l    d  .data	00000000 .data
10010a74 l    d  .sdata	00000000 .sdata
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
10010758 l     O .bss	00000004 header_state.1698
1001075c l     O .bss	00000004 recv_cnt.1697
00000000 l    df *ABS*	00000000 p2p_demo.c
10000dbc g     F .text	000000ac bitwise_div_32
10010ae4 g     O .sdata	00000004 pInitFinishedFlag_0x30
10003040 g     F .text	0000008c XUartLite_SendAll
10002384 g     F .text	00000024 _putchar
1001073c g     O .srodata	00000004 BASE_ADDR_DSC_CTL
10010ac0 g     O .sdata	00000004 pSimDebug_0x18
10010ac4 g     O .sdata	00000004 pPSWTAddr_0x20
10010acc g     O .sdata	00000004 pPSBCAddr_0x24
10010b90 g     O .sdata	00000004 g_ulPrintDebugLogFlag
10010a90 g     O .sdata	00000004 pDescH2CPerfDescSent
1000315c g     F .text	0000013c pool_c2h
10010ba0 g     O .sdata	00000004 uart0_intr_clr
1001074c g     O .srodata	00000004 BASE_H2C_BRAM
10010b48 g     O .sdata	00000004 pStartCalc_0x70
100006ec g     F .text	00000028 get_local_falg
10002c84 g     F .text	000000d8 XUartLite_RepeatRecv
10002258 g     F .text	00000050 vprintf_
10000b1c g     F .text	000001ac transfer_set
10002900 g     F .text	00000054 XUartLite_InterruptHandler
10000d74 g     F .text	00000048 u_i_mod
10010b30 g     O .sdata	00000004 pData_0x5c
10010ad4 g     O .sdata	00000004 pPSInputData_0x28
10010b18 g     O .sdata	00000004 pInputData_sz_0x4c
10010a94 g     O .sdata	00000004 pDescC2HAddr
10000570 g     F .text	00000118 krnlLOGPrintLog
10010b58 g     O .sdata	00000004 pDebug_Value_0x80
10010b6c g     O .sdata	00000004 pHWDbgDumpDstBaseAddr_0x94
10002f4c g     F .text	00000028 XUartLite_RxUnlock
1000009c g       .text.init	00000000 clr_single_intr
10010910 g     O .bss	00000070 XUartLiteInstances0
10010b74 g     O .sdata	00000004 pHWDebugDumpLength_0x9c
1000008c g       .text.init	00000000 set_single_intr
10010b64 g     O .sdata	00000004 pDebug_start_layer_idx_0x8c
10010b80 g     O .sdata	00000004 pHpuIC_0xa8
10010760 g     O .bss	00000090 test_mc
10010b38 g     O .sdata	00000004 pData_0x64
10000864 g     F .text	00000128 get_remote_flag
10002168 g     F .text	00000078 sprintf_
10000714 g     F .text	00000150 trans_xdma
10010980 g     O .bss	00000070 XUartLiteInstances2
10010b0c g     O .sdata	00000004 pData_0x44
10010b88 g     O .sdata	00000004 pVersion600_0xd0
10010b28 g     O .sdata	00000004 pData_0x54
10010a98 g     O .sdata	00000004 pDescC2HNum
10002560 g     F .text	000000e8 XUartLite_InterruptHandlerWrapper
10010b94 g     O .sdata	00000004 g_ulPrintSYSLogFlag
10010738 g     O .srodata	00000004 BASE_ADDR_UART
10004568 g     F .text	00000234 p2p_demo
100107f0 g     O .bss	00000090 test_ma
10010b08 g     O .sdata	00000004 pBC_sz_0x44
10010754 g     O .srodata	00000004 BASE_FLAG_BRAM
100109f0 g     O .bss	00000070 XUartLiteInstances1
10010740 g     O .srodata	00000004 BASE_H2C_RAW_BRAM
10010744 g     O .srodata	00000004 BASE_C2H_RAW_BRAM
10010adc g     O .sdata	00000004 pPSOutputData_0x2c
100022a8 g     F .text	00000054 vsnprintf_
1000352c g     F .text	00000160 update_tail
10010a68 g     O .sbss	00000004 g_ulPrintOPLogFlag
10010b9c g     O .sdata	00000004 pAxiAddr
10010750 g     O .srodata	00000004 BASE_C2H_BRAM
10010b70 g     O .sdata	00000004 pHWDbgDumpSrcBaseAddr_0x98
10010a70 g       .data	00000000 start_calc
100022fc g     F .text	00000088 fctprintf
10000a38 g     F .text	000000e4 set_remote_falg
10010b4c g     O .sdata	00000004 pData_0x74
10003aa4 g     F .text	00000718 process_desc
10002f74 g     F .text	00000028 hw_uart0_is_valid
10002ec0 g     F .text	0000008c XUartLite_ResetFifos
10010b00 g     O .sdata	00000004 pWT_sz_0x40
10010730 g     O .srodata	00000004 BRAM0_BASE_ADDR
10010ac8 g     O .sdata	00000004 pData_0x20
100000b8 g       .text.init	00000000 disable_intr
10010ae8 g     O .sdata	00000004 pPLWTAddr_0x34
10000200 g       .text	00000000 _start
10002b98 g     F .text	000000ec XUartLite_Recv
10002b40 g     F .text	00000058 XUartLite_ClearStats
10010a78 g     O .sdata	00000004 pDescSR
10002d5c g     F .text	000000e4 XUartLite_Send
10010b8c g     O .sdata	00000004 pVersion_0x100
10010734 g     O .srodata	00000004 BRAM1_BASE_ADDR
10002408 g     F .text	000000ac strncpy
10010b1c g     O .sdata	00000004 pData_0x4c
1000098c g     F .text	000000ac update_count
10010aac g     O .sdata	00000004 pCmdStatus_0x08
10010a84 g     O .sdata	00000004 pDescH2CNum
10010abc g     O .sdata	00000004 pData_0x14
10003298 g     F .text	0000013c pool_h2c
10010a64 g     O .sbss	00000004 g_ulPrintHardwareCmdLogFlag
10002a40 g     F .text	00000034 TotalReceivedCountOf
100000ac g       .text.init	00000000 enable_intr
10010a88 g     O .sdata	00000004 pDescH2CPerfCycle
10010ab8 g     O .sdata	00000004 pErrCode_0x14
10002e80 g     F .text	00000040 XUartLite_DisableInterrupt
100023a8 g     F .text	00000060 memset
10000cc8 g     F .text	000000ac main
10010b44 g     O .sdata	00000004 pData_0x70
10010b68 g     O .sdata	00000004 pHWDebugCtrlFlag_0x90
100033d4 g     F .text	00000158 get_head
10010b84 g     O .sdata	00000004 pHpuImsc_0xac
10002e40 g     F .text	00000040 XUartLite_EnableInterrupt
10010748 g     O .srodata	00000004 BASE_DESC_ST
10010ba4 g     O .sdata	00000004 uart1_intr_clr
10010b7c g     O .sdata	00000004 pHpuMis_0xa4
10010a60 g     O .bss	00000004 TotalSentCount
10010a7c g     O .sdata	00000004 pVID
1000301c g     F .text	00000024 hw_uart0_clr_state
10010afc g     O .sdata	00000004 pData_0x3c
10010b04 g     O .sdata	00000004 pData_0x40
10010b50 g     O .sdata	00000004 pDebug_stop_layer_idx_0x78
10010a6c g     O .sbss	00000004 count
10010b34 g     O .sdata	00000004 pData_0x60
10010a74 g     O .sdata	00000004 pDescCR
10010b54 g     O .sdata	00000004 pDebug_Value_0x7c
100021e0 g     F .text	00000078 snprintf_
10002f9c g     F .text	00000080 hw_uart0_get_data
10010af4 g     O .sdata	00000004 pData_0x38
10010b3c g     O .sdata	00000004 pData_0x68
1000368c g     F .text	00000418 trans
10010b98 g     O .sdata	00000004 g_ulPrintNDMALogFlag
10010ad0 g     O .sdata	00000004 pData_0x24
10010ae0 g     O .sdata	00000004 pData_0x2c
10010a80 g     O .sdata	00000004 pDescH2CAddr
10010b40 g     O .sdata	00000004 pData_0x6c
100041bc g     F .text	000003ac performance_monitor
100020f0 g     F .text	00000078 printf_
10010a9c g     O .sdata	00000004 pDescC2HPerfCycle
10010ab4 g     O .sdata	00000004 pSimDebug_0x10
10002648 g     F .text	0000016c XUartLite_SendBuffer
10010aa8 g     O .sdata	00000004 pCmdStart_0x04
10010af8 g     O .sdata	00000004 pPLFMAddr_0x3c
10010b14 g     O .sdata	00000004 pData_0x48
10010aa4 g     O .sdata	00000004 pDescC2HPerfDescSent
10010b5c g     O .sdata	00000004 pDebug_Time_H_0x84
10010b60 g     O .sdata	00000004 pDebug_Time_L_0x88
100027b4 g     F .text	0000014c XUartLite_ReceiveBuffer
10000688 g     F .text	00000030 reg_write
10010ad8 g     O .sdata	00000004 pData_0x28
10010880 g     O .bss	00000090 test_mb
10010b20 g     O .sdata	00000004 pOutputData_sz_0x50
10010ab0 g     O .sdata	00000004 pSysBaseAddr_0x0c
10010af0 g     O .sdata	00000004 pPLBCAddr_0x38
10010aa0 g     O .sdata	00000004 pDescC2HPerfLen
10002a74 g     F .text	000000cc XUartLite_CfgInitialize
100024b4 g     F .text	0000004c len_of_str
100006b8 g     F .text	00000034 read_reg
10010b78 g     O .sdata	00000004 pHpuRis_0xa0
10010b10 g     O .sdata	00000004 pFM_sz_0x48
10010b24 g     O .sdata	00000004 pData_0x50
10010b2c g     O .sdata	00000004 pData_0x58
100030cc g     F .text	00000090 test_uart_print
100003fc g     F .text	00000174 krnlLOGLogTypeToStr
10010aec g     O .sdata	00000004 pData_0x34
10010a8c g     O .sdata	00000004 pDescH2CPerfLen



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
10000228:	00011317          	auipc	t1,0x11
1000022c:	84830313          	addi	t1,t1,-1976 # 10010a70 <start_calc>
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
1000044c:	03478793          	addi	a5,a5,52 # 10010034 <p2p_demo+0xbacc>
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
10000484:	00478593          	addi	a1,a5,4 # 10010004 <p2p_demo+0xba9c>
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
100004a0:	00878593          	addi	a1,a5,8 # 10010008 <p2p_demo+0xbaa0>
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
100004bc:	00c78593          	addi	a1,a5,12 # 1001000c <p2p_demo+0xbaa4>
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
100004d8:	01078593          	addi	a1,a5,16 # 10010010 <p2p_demo+0xbaa8>
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
100004f4:	01478593          	addi	a1,a5,20 # 10010014 <p2p_demo+0xbaac>
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
10000510:	02478593          	addi	a1,a5,36 # 10010024 <p2p_demo+0xbabc>
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
1000052c:	02c78593          	addi	a1,a5,44 # 1001002c <p2p_demo+0xbac4>
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
10000548:	03078593          	addi	a1,a5,48 # 10010030 <p2p_demo+0xbac8>
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
10000628:	05468693          	addi	a3,a3,84 # 10010054 <p2p_demo+0xbaec>
1000062c:	10010637          	lui	a2,0x10010
10000630:	06060613          	addi	a2,a2,96 # 10010060 <p2p_demo+0xbaf8>
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
10000650:	100117b7          	lui	a5,0x10011
10000654:	91078793          	addi	a5,a5,-1776 # 10010910 <XUartLiteInstances0>
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
1000078c:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10000790:	00f767b3          	or	a5,a4,a5
10000794:	00078713          	mv	a4,a5
10000798:	fec42783          	lw	a5,-20(s0)
1000079c:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 4)   | BASE_H2C_BRAM))       = dsc_byp_src_addr_hi;
100007a0:	fb842783          	lw	a5,-72(s0)
100007a4:	00579793          	slli	a5,a5,0x5
100007a8:	00478713          	addi	a4,a5,4
100007ac:	100107b7          	lui	a5,0x10010
100007b0:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
100007b4:	00f767b3          	or	a5,a4,a5
100007b8:	00078713          	mv	a4,a5
100007bc:	fe842783          	lw	a5,-24(s0)
100007c0:	00f72023          	sw	a5,0(a4)
            
    *((volatile int*)((0x00000000 + count*32 + 8)   | BASE_H2C_BRAM)) = dsc_byp_dst_addr_lo;
100007c4:	fb842783          	lw	a5,-72(s0)
100007c8:	00579793          	slli	a5,a5,0x5
100007cc:	00878713          	addi	a4,a5,8
100007d0:	100107b7          	lui	a5,0x10010
100007d4:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
100007d8:	00f767b3          	or	a5,a4,a5
100007dc:	00078713          	mv	a4,a5
100007e0:	fdc42783          	lw	a5,-36(s0)
100007e4:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 12)  | BASE_H2C_BRAM)) = dsc_byp_dst_addr_hi;
100007e8:	fb842783          	lw	a5,-72(s0)
100007ec:	00579793          	slli	a5,a5,0x5
100007f0:	00c78713          	addi	a4,a5,12
100007f4:	100107b7          	lui	a5,0x10010
100007f8:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
100007fc:	00f767b3          	or	a5,a4,a5
10000800:	00078713          	mv	a4,a5
10000804:	fd842783          	lw	a5,-40(s0)
10000808:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 20)  | BASE_H2C_BRAM)) = dsc_byp_ctl;
1000080c:	fb842783          	lw	a5,-72(s0)
10000810:	00579793          	slli	a5,a5,0x5
10000814:	01478713          	addi	a4,a5,20
10000818:	100107b7          	lui	a5,0x10010
1000081c:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10000820:	00f767b3          	or	a5,a4,a5
10000824:	00078713          	mv	a4,a5
10000828:	fe442783          	lw	a5,-28(s0)
1000082c:	00f72023          	sw	a5,0(a4)
    *((volatile int*)((0x00000000 + count*32 + 16)  | BASE_H2C_BRAM)) = dsc_byp_len;
10000830:	fb842783          	lw	a5,-72(s0)
10000834:	00579793          	slli	a5,a5,0x5
10000838:	01078713          	addi	a4,a5,16
1000083c:	100107b7          	lui	a5,0x10010
10000840:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
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
10000884:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
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
100008b0:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xbb08>
100008b4:	3ff00593          	li	a1,1023
100008b8:	00070513          	mv	a0,a4
100008bc:	125010ef          	jal	ra,100021e0 <snprintf_>
100008c0:	be840793          	addi	a5,s0,-1048
100008c4:	00078593          	mv	a1,a5
100008c8:	00400513          	li	a0,4
100008cc:	ca5ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
100008d0:	100117b7          	lui	a5,0x10011
100008d4:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
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
10000934:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10000938:	00c7e793          	ori	a5,a5,12
1000093c:	02000593          	li	a1,32
10000940:	00078513          	mv	a0,a5
10000944:	d45ff0ef          	jal	ra,10000688 <reg_write>
    reg_write(BASE_ADDR_DSC_CTL | 0x10, 1);
10000948:	100107b7          	lui	a5,0x10010
1000094c:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10000950:	0107e793          	ori	a5,a5,16
10000954:	00100593          	li	a1,1
10000958:	00078513          	mv	a0,a5
1000095c:	d2dff0ef          	jal	ra,10000688 <reg_write>
    reg_write(BASE_ADDR_DSC_CTL | 0x0, 1);
10000960:	100107b7          	lui	a5,0x10010
10000964:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
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
100009a8:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
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
100009d4:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xbb08>
100009d8:	3ff00593          	li	a1,1023
100009dc:	00070513          	mv	a0,a4
100009e0:	001010ef          	jal	ra,100021e0 <snprintf_>
100009e4:	bf040793          	addi	a5,s0,-1040
100009e8:	00078593          	mv	a1,a5
100009ec:	00400513          	li	a0,4
100009f0:	b81ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
100009f4:	100117b7          	lui	a5,0x10011
100009f8:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
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
10000a14:	a6c7a783          	lw	a5,-1428(a5) # 10010a6c <count>
10000a18:	00178713          	addi	a4,a5,1
10000a1c:	100117b7          	lui	a5,0x10011
10000a20:	a6e7a623          	sw	a4,-1428(a5) # 10010a6c <count>
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
10000aac:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
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
10000ad8:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xbb08>
10000adc:	3ff00593          	li	a1,1023
10000ae0:	00070513          	mv	a0,a4
10000ae4:	6fc010ef          	jal	ra,100021e0 <snprintf_>
10000ae8:	be840793          	addi	a5,s0,-1048
10000aec:	00078593          	mv	a1,a5
10000af0:	00400513          	li	a0,4
10000af4:	a7dff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
10000af8:	100117b7          	lui	a5,0x10011
10000afc:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
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
10000c50:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
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
10000c7c:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xbb08>
10000c80:	3ff00593          	li	a1,1023
10000c84:	00070513          	mv	a0,a4
10000c88:	558010ef          	jal	ra,100021e0 <snprintf_>
10000c8c:	be440793          	addi	a5,s0,-1052
10000c90:	00078593          	mv	a1,a5
10000c94:	00400513          	li	a0,4
10000c98:	8d9ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
    while(*pDescSR != 0)
10000c9c:	100117b7          	lui	a5,0x10011
10000ca0:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
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
10000ce0:	0947a583          	lw	a1,148(a5) # 10010094 <p2p_demo+0xbb2c>
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
10000d30:	100117b7          	lui	a5,0x10011
10000d34:	91078793          	addi	a5,a5,-1776 # 10010910 <XUartLiteInstances0>
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
10000d5c:	00d030ef          	jal	ra,10004568 <p2p_demo>
}
10000d60:	00000013          	nop
10000d64:	07c12083          	lw	ra,124(sp)
10000d68:	07812403          	lw	s0,120(sp)
10000d6c:	08010113          	addi	sp,sp,128
10000d70:	00008067          	ret

10000d74 <u_i_mod>:
10000d74:	fe010113          	addi	sp,sp,-32
10000d78:	00812e23          	sw	s0,28(sp)
10000d7c:	02010413          	addi	s0,sp,32
10000d80:	fea42623          	sw	a0,-20(s0)
10000d84:	feb42423          	sw	a1,-24(s0)
10000d88:	0140006f          	j	10000d9c <u_i_mod+0x28>
10000d8c:	fec42703          	lw	a4,-20(s0)
10000d90:	fe842783          	lw	a5,-24(s0)
10000d94:	40f707b3          	sub	a5,a4,a5
10000d98:	fef42623          	sw	a5,-20(s0)
10000d9c:	fec42703          	lw	a4,-20(s0)
10000da0:	fe842783          	lw	a5,-24(s0)
10000da4:	fef774e3          	bgeu	a4,a5,10000d8c <u_i_mod+0x18>
10000da8:	fec42783          	lw	a5,-20(s0)
10000dac:	00078513          	mv	a0,a5
10000db0:	01c12403          	lw	s0,28(sp)
10000db4:	02010113          	addi	sp,sp,32
10000db8:	00008067          	ret

10000dbc <bitwise_div_32>:
10000dbc:	fd010113          	addi	sp,sp,-48
10000dc0:	02812623          	sw	s0,44(sp)
10000dc4:	03010413          	addi	s0,sp,48
10000dc8:	fca42e23          	sw	a0,-36(s0)
10000dcc:	fcb42c23          	sw	a1,-40(s0)
10000dd0:	02000793          	li	a5,32
10000dd4:	fef42223          	sw	a5,-28(s0)
10000dd8:	fdc42783          	lw	a5,-36(s0)
10000ddc:	fef42623          	sw	a5,-20(s0)
10000de0:	fe042423          	sw	zero,-24(s0)
10000de4:	fec42783          	lw	a5,-20(s0)
10000de8:	fef42023          	sw	a5,-32(s0)
10000dec:	fec42783          	lw	a5,-20(s0)
10000df0:	00179793          	slli	a5,a5,0x1
10000df4:	fef42623          	sw	a5,-20(s0)
10000df8:	fe842783          	lw	a5,-24(s0)
10000dfc:	00179793          	slli	a5,a5,0x1
10000e00:	fec42683          	lw	a3,-20(s0)
10000e04:	fe042703          	lw	a4,-32(s0)
10000e08:	00e6b733          	sltu	a4,a3,a4
10000e0c:	0ff77713          	andi	a4,a4,255
10000e10:	00e787b3          	add	a5,a5,a4
10000e14:	fef42423          	sw	a5,-24(s0)
10000e18:	fe842703          	lw	a4,-24(s0)
10000e1c:	fd842783          	lw	a5,-40(s0)
10000e20:	02f76063          	bltu	a4,a5,10000e40 <bitwise_div_32+0x84>
10000e24:	fe842703          	lw	a4,-24(s0)
10000e28:	fd842783          	lw	a5,-40(s0)
10000e2c:	40f707b3          	sub	a5,a4,a5
10000e30:	fef42423          	sw	a5,-24(s0)
10000e34:	fec42783          	lw	a5,-20(s0)
10000e38:	00178793          	addi	a5,a5,1
10000e3c:	fef42623          	sw	a5,-20(s0)
10000e40:	fe442783          	lw	a5,-28(s0)
10000e44:	fff78793          	addi	a5,a5,-1
10000e48:	fef42223          	sw	a5,-28(s0)
10000e4c:	fe442783          	lw	a5,-28(s0)
10000e50:	f8079ae3          	bnez	a5,10000de4 <bitwise_div_32+0x28>
10000e54:	fec42783          	lw	a5,-20(s0)
10000e58:	00078513          	mv	a0,a5
10000e5c:	02c12403          	lw	s0,44(sp)
10000e60:	03010113          	addi	sp,sp,48
10000e64:	00008067          	ret

10000e68 <_out_buffer>:
10000e68:	fe010113          	addi	sp,sp,-32
10000e6c:	00812e23          	sw	s0,28(sp)
10000e70:	02010413          	addi	s0,sp,32
10000e74:	00050793          	mv	a5,a0
10000e78:	feb42423          	sw	a1,-24(s0)
10000e7c:	fec42223          	sw	a2,-28(s0)
10000e80:	fed42023          	sw	a3,-32(s0)
10000e84:	fef407a3          	sb	a5,-17(s0)
10000e88:	fe442703          	lw	a4,-28(s0)
10000e8c:	fe042783          	lw	a5,-32(s0)
10000e90:	00f77c63          	bgeu	a4,a5,10000ea8 <_out_buffer+0x40>
10000e94:	fe842703          	lw	a4,-24(s0)
10000e98:	fe442783          	lw	a5,-28(s0)
10000e9c:	00f707b3          	add	a5,a4,a5
10000ea0:	fef44703          	lbu	a4,-17(s0)
10000ea4:	00e78023          	sb	a4,0(a5)
10000ea8:	00000013          	nop
10000eac:	01c12403          	lw	s0,28(sp)
10000eb0:	02010113          	addi	sp,sp,32
10000eb4:	00008067          	ret

10000eb8 <_out_null>:
10000eb8:	fe010113          	addi	sp,sp,-32
10000ebc:	00812e23          	sw	s0,28(sp)
10000ec0:	02010413          	addi	s0,sp,32
10000ec4:	00050793          	mv	a5,a0
10000ec8:	feb42423          	sw	a1,-24(s0)
10000ecc:	fec42223          	sw	a2,-28(s0)
10000ed0:	fed42023          	sw	a3,-32(s0)
10000ed4:	fef407a3          	sb	a5,-17(s0)
10000ed8:	00000013          	nop
10000edc:	01c12403          	lw	s0,28(sp)
10000ee0:	02010113          	addi	sp,sp,32
10000ee4:	00008067          	ret

10000ee8 <_out_char>:
10000ee8:	fe010113          	addi	sp,sp,-32
10000eec:	00112e23          	sw	ra,28(sp)
10000ef0:	00812c23          	sw	s0,24(sp)
10000ef4:	02010413          	addi	s0,sp,32
10000ef8:	00050793          	mv	a5,a0
10000efc:	feb42423          	sw	a1,-24(s0)
10000f00:	fec42223          	sw	a2,-28(s0)
10000f04:	fed42023          	sw	a3,-32(s0)
10000f08:	fef407a3          	sb	a5,-17(s0)
10000f0c:	fef44783          	lbu	a5,-17(s0)
10000f10:	00078513          	mv	a0,a5
10000f14:	470010ef          	jal	ra,10002384 <_putchar>
10000f18:	00000013          	nop
10000f1c:	01c12083          	lw	ra,28(sp)
10000f20:	01812403          	lw	s0,24(sp)
10000f24:	02010113          	addi	sp,sp,32
10000f28:	00008067          	ret

10000f2c <_out_fct>:
10000f2c:	fe010113          	addi	sp,sp,-32
10000f30:	00112e23          	sw	ra,28(sp)
10000f34:	00812c23          	sw	s0,24(sp)
10000f38:	02010413          	addi	s0,sp,32
10000f3c:	00050793          	mv	a5,a0
10000f40:	feb42423          	sw	a1,-24(s0)
10000f44:	fec42223          	sw	a2,-28(s0)
10000f48:	fed42023          	sw	a3,-32(s0)
10000f4c:	fef407a3          	sb	a5,-17(s0)
10000f50:	fef44783          	lbu	a5,-17(s0)
10000f54:	02078263          	beqz	a5,10000f78 <_out_fct+0x4c>
10000f58:	fe842783          	lw	a5,-24(s0)
10000f5c:	0007a683          	lw	a3,0(a5)
10000f60:	fe842783          	lw	a5,-24(s0)
10000f64:	0047a703          	lw	a4,4(a5)
10000f68:	fef44783          	lbu	a5,-17(s0)
10000f6c:	00070593          	mv	a1,a4
10000f70:	00078513          	mv	a0,a5
10000f74:	000680e7          	jalr	a3
10000f78:	00000013          	nop
10000f7c:	01c12083          	lw	ra,28(sp)
10000f80:	01812403          	lw	s0,24(sp)
10000f84:	02010113          	addi	sp,sp,32
10000f88:	00008067          	ret

10000f8c <_strnlen_s>:
10000f8c:	fd010113          	addi	sp,sp,-48
10000f90:	02812623          	sw	s0,44(sp)
10000f94:	03010413          	addi	s0,sp,48
10000f98:	fca42e23          	sw	a0,-36(s0)
10000f9c:	fcb42c23          	sw	a1,-40(s0)
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
10000fd4:	fec42703          	lw	a4,-20(s0)
10000fd8:	fdc42783          	lw	a5,-36(s0)
10000fdc:	40f707b3          	sub	a5,a4,a5
10000fe0:	00078513          	mv	a0,a5
10000fe4:	02c12403          	lw	s0,44(sp)
10000fe8:	03010113          	addi	sp,sp,48
10000fec:	00008067          	ret

10000ff0 <_is_digit>:
10000ff0:	fe010113          	addi	sp,sp,-32
10000ff4:	00812e23          	sw	s0,28(sp)
10000ff8:	02010413          	addi	s0,sp,32
10000ffc:	00050793          	mv	a5,a0
10001000:	fef407a3          	sb	a5,-17(s0)
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
10001030:	00078513          	mv	a0,a5
10001034:	01c12403          	lw	s0,28(sp)
10001038:	02010113          	addi	sp,sp,32
1000103c:	00008067          	ret

10001040 <_atoi>:
10001040:	fd010113          	addi	sp,sp,-48
10001044:	02112623          	sw	ra,44(sp)
10001048:	02812423          	sw	s0,40(sp)
1000104c:	03010413          	addi	s0,sp,48
10001050:	fca42e23          	sw	a0,-36(s0)
10001054:	fe042623          	sw	zero,-20(s0)
10001058:	0400006f          	j	10001098 <_atoi+0x58>
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
10001098:	fdc42783          	lw	a5,-36(s0)
1000109c:	0007a783          	lw	a5,0(a5)
100010a0:	0007c783          	lbu	a5,0(a5)
100010a4:	00078513          	mv	a0,a5
100010a8:	f49ff0ef          	jal	ra,10000ff0 <_is_digit>
100010ac:	00050793          	mv	a5,a0
100010b0:	fa0796e3          	bnez	a5,1000105c <_atoi+0x1c>
100010b4:	fec42783          	lw	a5,-20(s0)
100010b8:	00078513          	mv	a0,a5
100010bc:	02c12083          	lw	ra,44(sp)
100010c0:	02812403          	lw	s0,40(sp)
100010c4:	03010113          	addi	sp,sp,48
100010c8:	00008067          	ret

100010cc <_out_rev>:
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
100010fc:	fd442783          	lw	a5,-44(s0)
10001100:	fef42423          	sw	a5,-24(s0)
10001104:	fc042783          	lw	a5,-64(s0)
10001108:	0027f793          	andi	a5,a5,2
1000110c:	08079c63          	bnez	a5,100011a4 <_out_rev+0xd8>
10001110:	fc042783          	lw	a5,-64(s0)
10001114:	0017f793          	andi	a5,a5,1
10001118:	08079663          	bnez	a5,100011a4 <_out_rev+0xd8>
1000111c:	fc842783          	lw	a5,-56(s0)
10001120:	fef42623          	sw	a5,-20(s0)
10001124:	0340006f          	j	10001158 <_out_rev+0x8c>
10001128:	fd442783          	lw	a5,-44(s0)
1000112c:	00178713          	addi	a4,a5,1
10001130:	fce42a23          	sw	a4,-44(s0)
10001134:	fdc42703          	lw	a4,-36(s0)
10001138:	fd042683          	lw	a3,-48(s0)
1000113c:	00078613          	mv	a2,a5
10001140:	fd842583          	lw	a1,-40(s0)
10001144:	02000513          	li	a0,32
10001148:	000700e7          	jalr	a4
1000114c:	fec42783          	lw	a5,-20(s0)
10001150:	00178793          	addi	a5,a5,1
10001154:	fef42623          	sw	a5,-20(s0)
10001158:	fec42703          	lw	a4,-20(s0)
1000115c:	fc442783          	lw	a5,-60(s0)
10001160:	fcf764e3          	bltu	a4,a5,10001128 <_out_rev+0x5c>
10001164:	0400006f          	j	100011a4 <_out_rev+0xd8>
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
100011a4:	fc842783          	lw	a5,-56(s0)
100011a8:	fc0790e3          	bnez	a5,10001168 <_out_rev+0x9c>
100011ac:	fc042783          	lw	a5,-64(s0)
100011b0:	0027f793          	andi	a5,a5,2
100011b4:	04078063          	beqz	a5,100011f4 <_out_rev+0x128>
100011b8:	0280006f          	j	100011e0 <_out_rev+0x114>
100011bc:	fd442783          	lw	a5,-44(s0)
100011c0:	00178713          	addi	a4,a5,1
100011c4:	fce42a23          	sw	a4,-44(s0)
100011c8:	fdc42703          	lw	a4,-36(s0)
100011cc:	fd042683          	lw	a3,-48(s0)
100011d0:	00078613          	mv	a2,a5
100011d4:	fd842583          	lw	a1,-40(s0)
100011d8:	02000513          	li	a0,32
100011dc:	000700e7          	jalr	a4
100011e0:	fd442703          	lw	a4,-44(s0)
100011e4:	fe842783          	lw	a5,-24(s0)
100011e8:	40f707b3          	sub	a5,a4,a5
100011ec:	fc442703          	lw	a4,-60(s0)
100011f0:	fce7e6e3          	bltu	a5,a4,100011bc <_out_rev+0xf0>
100011f4:	fd442783          	lw	a5,-44(s0)
100011f8:	00078513          	mv	a0,a5
100011fc:	03c12083          	lw	ra,60(sp)
10001200:	03812403          	lw	s0,56(sp)
10001204:	04010113          	addi	sp,sp,64
10001208:	00008067          	ret

1000120c <_ntoa_format>:
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
10001240:	00842783          	lw	a5,8(s0)
10001244:	0027f793          	andi	a5,a5,2
10001248:	0a079a63          	bnez	a5,100012fc <_ntoa_format+0xf0>
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
10001274:	00442783          	lw	a5,4(s0)
10001278:	fff78793          	addi	a5,a5,-1
1000127c:	00f42223          	sw	a5,4(s0)
10001280:	0200006f          	j	100012a0 <_ntoa_format+0x94>
10001284:	fd842783          	lw	a5,-40(s0)
10001288:	00178713          	addi	a4,a5,1
1000128c:	fce42c23          	sw	a4,-40(s0)
10001290:	fdc42703          	lw	a4,-36(s0)
10001294:	00f707b3          	add	a5,a4,a5
10001298:	03000713          	li	a4,48
1000129c:	00e78023          	sb	a4,0(a5)
100012a0:	fd842703          	lw	a4,-40(s0)
100012a4:	00042783          	lw	a5,0(s0)
100012a8:	02f77863          	bgeu	a4,a5,100012d8 <_ntoa_format+0xcc>
100012ac:	fd842703          	lw	a4,-40(s0)
100012b0:	01f00793          	li	a5,31
100012b4:	fce7f8e3          	bgeu	a5,a4,10001284 <_ntoa_format+0x78>
100012b8:	0200006f          	j	100012d8 <_ntoa_format+0xcc>
100012bc:	fd842783          	lw	a5,-40(s0)
100012c0:	00178713          	addi	a4,a5,1
100012c4:	fce42c23          	sw	a4,-40(s0)
100012c8:	fdc42703          	lw	a4,-36(s0)
100012cc:	00f707b3          	add	a5,a4,a5
100012d0:	03000713          	li	a4,48
100012d4:	00e78023          	sb	a4,0(a5)
100012d8:	00842783          	lw	a5,8(s0)
100012dc:	0017f793          	andi	a5,a5,1
100012e0:	00078e63          	beqz	a5,100012fc <_ntoa_format+0xf0>
100012e4:	fd842703          	lw	a4,-40(s0)
100012e8:	00442783          	lw	a5,4(s0)
100012ec:	00f77863          	bgeu	a4,a5,100012fc <_ntoa_format+0xf0>
100012f0:	fd842703          	lw	a4,-40(s0)
100012f4:	01f00793          	li	a5,31
100012f8:	fce7f2e3          	bgeu	a5,a4,100012bc <_ntoa_format+0xb0>
100012fc:	00842783          	lw	a5,8(s0)
10001300:	0107f793          	andi	a5,a5,16
10001304:	14078063          	beqz	a5,10001444 <_ntoa_format+0x238>
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
10001334:	fd842783          	lw	a5,-40(s0)
10001338:	fff78793          	addi	a5,a5,-1
1000133c:	fcf42c23          	sw	a5,-40(s0)
10001340:	fd842783          	lw	a5,-40(s0)
10001344:	00078e63          	beqz	a5,10001360 <_ntoa_format+0x154>
10001348:	fd042703          	lw	a4,-48(s0)
1000134c:	01000793          	li	a5,16
10001350:	00f71863          	bne	a4,a5,10001360 <_ntoa_format+0x154>
10001354:	fd842783          	lw	a5,-40(s0)
10001358:	fff78793          	addi	a5,a5,-1
1000135c:	fcf42c23          	sw	a5,-40(s0)
10001360:	fd042703          	lw	a4,-48(s0)
10001364:	01000793          	li	a5,16
10001368:	02f71e63          	bne	a4,a5,100013a4 <_ntoa_format+0x198>
1000136c:	00842783          	lw	a5,8(s0)
10001370:	0207f793          	andi	a5,a5,32
10001374:	02079863          	bnez	a5,100013a4 <_ntoa_format+0x198>
10001378:	fd842703          	lw	a4,-40(s0)
1000137c:	01f00793          	li	a5,31
10001380:	02e7e263          	bltu	a5,a4,100013a4 <_ntoa_format+0x198>
10001384:	fd842783          	lw	a5,-40(s0)
10001388:	00178713          	addi	a4,a5,1
1000138c:	fce42c23          	sw	a4,-40(s0)
10001390:	fdc42703          	lw	a4,-36(s0)
10001394:	00f707b3          	add	a5,a4,a5
10001398:	07800713          	li	a4,120
1000139c:	00e78023          	sb	a4,0(a5)
100013a0:	07c0006f          	j	1000141c <_ntoa_format+0x210>
100013a4:	fd042703          	lw	a4,-48(s0)
100013a8:	01000793          	li	a5,16
100013ac:	02f71e63          	bne	a4,a5,100013e8 <_ntoa_format+0x1dc>
100013b0:	00842783          	lw	a5,8(s0)
100013b4:	0207f793          	andi	a5,a5,32
100013b8:	02078863          	beqz	a5,100013e8 <_ntoa_format+0x1dc>
100013bc:	fd842703          	lw	a4,-40(s0)
100013c0:	01f00793          	li	a5,31
100013c4:	02e7e263          	bltu	a5,a4,100013e8 <_ntoa_format+0x1dc>
100013c8:	fd842783          	lw	a5,-40(s0)
100013cc:	00178713          	addi	a4,a5,1
100013d0:	fce42c23          	sw	a4,-40(s0)
100013d4:	fdc42703          	lw	a4,-36(s0)
100013d8:	00f707b3          	add	a5,a4,a5
100013dc:	05800713          	li	a4,88
100013e0:	00e78023          	sb	a4,0(a5)
100013e4:	0380006f          	j	1000141c <_ntoa_format+0x210>
100013e8:	fd042703          	lw	a4,-48(s0)
100013ec:	00200793          	li	a5,2
100013f0:	02f71663          	bne	a4,a5,1000141c <_ntoa_format+0x210>
100013f4:	fd842703          	lw	a4,-40(s0)
100013f8:	01f00793          	li	a5,31
100013fc:	02e7e063          	bltu	a5,a4,1000141c <_ntoa_format+0x210>
10001400:	fd842783          	lw	a5,-40(s0)
10001404:	00178713          	addi	a4,a5,1
10001408:	fce42c23          	sw	a4,-40(s0)
1000140c:	fdc42703          	lw	a4,-36(s0)
10001410:	00f707b3          	add	a5,a4,a5
10001414:	06200713          	li	a4,98
10001418:	00e78023          	sb	a4,0(a5)
1000141c:	fd842703          	lw	a4,-40(s0)
10001420:	01f00793          	li	a5,31
10001424:	02e7e063          	bltu	a5,a4,10001444 <_ntoa_format+0x238>
10001428:	fd842783          	lw	a5,-40(s0)
1000142c:	00178713          	addi	a4,a5,1
10001430:	fce42c23          	sw	a4,-40(s0)
10001434:	fdc42703          	lw	a4,-36(s0)
10001438:	00f707b3          	add	a5,a4,a5
1000143c:	03000713          	li	a4,48
10001440:	00e78023          	sb	a4,0(a5)
10001444:	fd842703          	lw	a4,-40(s0)
10001448:	01f00793          	li	a5,31
1000144c:	08e7e063          	bltu	a5,a4,100014cc <_ntoa_format+0x2c0>
10001450:	fd744783          	lbu	a5,-41(s0)
10001454:	02078263          	beqz	a5,10001478 <_ntoa_format+0x26c>
10001458:	fd842783          	lw	a5,-40(s0)
1000145c:	00178713          	addi	a4,a5,1
10001460:	fce42c23          	sw	a4,-40(s0)
10001464:	fdc42703          	lw	a4,-36(s0)
10001468:	00f707b3          	add	a5,a4,a5
1000146c:	02d00713          	li	a4,45
10001470:	00e78023          	sb	a4,0(a5)
10001474:	0580006f          	j	100014cc <_ntoa_format+0x2c0>
10001478:	00842783          	lw	a5,8(s0)
1000147c:	0047f793          	andi	a5,a5,4
10001480:	02078263          	beqz	a5,100014a4 <_ntoa_format+0x298>
10001484:	fd842783          	lw	a5,-40(s0)
10001488:	00178713          	addi	a4,a5,1
1000148c:	fce42c23          	sw	a4,-40(s0)
10001490:	fdc42703          	lw	a4,-36(s0)
10001494:	00f707b3          	add	a5,a4,a5
10001498:	02b00713          	li	a4,43
1000149c:	00e78023          	sb	a4,0(a5)
100014a0:	02c0006f          	j	100014cc <_ntoa_format+0x2c0>
100014a4:	00842783          	lw	a5,8(s0)
100014a8:	0087f793          	andi	a5,a5,8
100014ac:	02078063          	beqz	a5,100014cc <_ntoa_format+0x2c0>
100014b0:	fd842783          	lw	a5,-40(s0)
100014b4:	00178713          	addi	a4,a5,1
100014b8:	fce42c23          	sw	a4,-40(s0)
100014bc:	fdc42703          	lw	a4,-36(s0)
100014c0:	00f707b3          	add	a5,a4,a5
100014c4:	02000713          	li	a4,32
100014c8:	00e78023          	sb	a4,0(a5)
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
100014f4:	00078513          	mv	a0,a5
100014f8:	02c12083          	lw	ra,44(sp)
100014fc:	02812403          	lw	s0,40(sp)
10001500:	03010113          	addi	sp,sp,48
10001504:	00008067          	ret

10001508 <_ntoa_long>:
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
10001538:	fe042623          	sw	zero,-20(s0)
1000153c:	fac42783          	lw	a5,-84(s0)
10001540:	00079863          	bnez	a5,10001550 <_ntoa_long+0x48>
10001544:	00442783          	lw	a5,4(s0)
10001548:	fef7f793          	andi	a5,a5,-17
1000154c:	00f42223          	sw	a5,4(s0)
10001550:	00442783          	lw	a5,4(s0)
10001554:	4007f793          	andi	a5,a5,1024
10001558:	00078663          	beqz	a5,10001564 <_ntoa_long+0x5c>
1000155c:	fac42783          	lw	a5,-84(s0)
10001560:	08078c63          	beqz	a5,100015f8 <_ntoa_long+0xf0>
10001564:	fac42703          	lw	a4,-84(s0)
10001568:	fa442783          	lw	a5,-92(s0)
1000156c:	02f777b3          	remu	a5,a4,a5
10001570:	fef405a3          	sb	a5,-21(s0)
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
100015d4:	fac42703          	lw	a4,-84(s0)
100015d8:	fa442783          	lw	a5,-92(s0)
100015dc:	02f757b3          	divu	a5,a4,a5
100015e0:	faf42623          	sw	a5,-84(s0)
100015e4:	fac42783          	lw	a5,-84(s0)
100015e8:	00078863          	beqz	a5,100015f8 <_ntoa_long+0xf0>
100015ec:	fec42703          	lw	a4,-20(s0)
100015f0:	01f00793          	li	a5,31
100015f4:	f6e7f8e3          	bgeu	a5,a4,10001564 <_ntoa_long+0x5c>
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
1000163c:	00078513          	mv	a0,a5
10001640:	06c12083          	lw	ra,108(sp)
10001644:	06812403          	lw	s0,104(sp)
10001648:	07010113          	addi	sp,sp,112
1000164c:	00008067          	ret

10001650 <_vsnprintf>:
10001650:	f8010113          	addi	sp,sp,-128
10001654:	06112e23          	sw	ra,124(sp)
10001658:	06812c23          	sw	s0,120(sp)
1000165c:	08010413          	addi	s0,sp,128
10001660:	faa42623          	sw	a0,-84(s0)
10001664:	fab42423          	sw	a1,-88(s0)
10001668:	fac42223          	sw	a2,-92(s0)
1000166c:	fad42023          	sw	a3,-96(s0)
10001670:	f8e42e23          	sw	a4,-100(s0)
10001674:	fc042e23          	sw	zero,-36(s0)
10001678:	fa842783          	lw	a5,-88(s0)
1000167c:	20079ee3          	bnez	a5,10002098 <_vsnprintf+0xa48>
10001680:	100017b7          	lui	a5,0x10001
10001684:	eb878793          	addi	a5,a5,-328 # 10000eb8 <_out_null>
10001688:	faf42623          	sw	a5,-84(s0)
1000168c:	20d0006f          	j	10002098 <_vsnprintf+0xa48>
10001690:	fa042783          	lw	a5,-96(s0)
10001694:	0007c703          	lbu	a4,0(a5)
10001698:	02500793          	li	a5,37
1000169c:	02f70e63          	beq	a4,a5,100016d8 <_vsnprintf+0x88>
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
100016c8:	fa042783          	lw	a5,-96(s0)
100016cc:	00178793          	addi	a5,a5,1
100016d0:	faf42023          	sw	a5,-96(s0)
100016d4:	1c50006f          	j	10002098 <_vsnprintf+0xa48>
100016d8:	fa042783          	lw	a5,-96(s0)
100016dc:	00178793          	addi	a5,a5,1
100016e0:	faf42023          	sw	a5,-96(s0)
100016e4:	fe042623          	sw	zero,-20(s0)
100016e8:	fa042783          	lw	a5,-96(s0)
100016ec:	0007c783          	lbu	a5,0(a5)
100016f0:	fe078793          	addi	a5,a5,-32
100016f4:	01000713          	li	a4,16
100016f8:	0cf76863          	bltu	a4,a5,100017c8 <_vsnprintf+0x178>
100016fc:	00279713          	slli	a4,a5,0x2
10001700:	100107b7          	lui	a5,0x10010
10001704:	0f878793          	addi	a5,a5,248 # 100100f8 <p2p_demo+0xbb90>
10001708:	00f707b3          	add	a5,a4,a5
1000170c:	0007a783          	lw	a5,0(a5)
10001710:	00078067          	jr	a5
10001714:	fec42783          	lw	a5,-20(s0)
10001718:	0017e793          	ori	a5,a5,1
1000171c:	fef42623          	sw	a5,-20(s0)
10001720:	fa042783          	lw	a5,-96(s0)
10001724:	00178793          	addi	a5,a5,1
10001728:	faf42023          	sw	a5,-96(s0)
1000172c:	00100793          	li	a5,1
10001730:	fef42023          	sw	a5,-32(s0)
10001734:	09c0006f          	j	100017d0 <_vsnprintf+0x180>
10001738:	fec42783          	lw	a5,-20(s0)
1000173c:	0027e793          	ori	a5,a5,2
10001740:	fef42623          	sw	a5,-20(s0)
10001744:	fa042783          	lw	a5,-96(s0)
10001748:	00178793          	addi	a5,a5,1
1000174c:	faf42023          	sw	a5,-96(s0)
10001750:	00100793          	li	a5,1
10001754:	fef42023          	sw	a5,-32(s0)
10001758:	0780006f          	j	100017d0 <_vsnprintf+0x180>
1000175c:	fec42783          	lw	a5,-20(s0)
10001760:	0047e793          	ori	a5,a5,4
10001764:	fef42623          	sw	a5,-20(s0)
10001768:	fa042783          	lw	a5,-96(s0)
1000176c:	00178793          	addi	a5,a5,1
10001770:	faf42023          	sw	a5,-96(s0)
10001774:	00100793          	li	a5,1
10001778:	fef42023          	sw	a5,-32(s0)
1000177c:	0540006f          	j	100017d0 <_vsnprintf+0x180>
10001780:	fec42783          	lw	a5,-20(s0)
10001784:	0087e793          	ori	a5,a5,8
10001788:	fef42623          	sw	a5,-20(s0)
1000178c:	fa042783          	lw	a5,-96(s0)
10001790:	00178793          	addi	a5,a5,1
10001794:	faf42023          	sw	a5,-96(s0)
10001798:	00100793          	li	a5,1
1000179c:	fef42023          	sw	a5,-32(s0)
100017a0:	0300006f          	j	100017d0 <_vsnprintf+0x180>
100017a4:	fec42783          	lw	a5,-20(s0)
100017a8:	0107e793          	ori	a5,a5,16
100017ac:	fef42623          	sw	a5,-20(s0)
100017b0:	fa042783          	lw	a5,-96(s0)
100017b4:	00178793          	addi	a5,a5,1
100017b8:	faf42023          	sw	a5,-96(s0)
100017bc:	00100793          	li	a5,1
100017c0:	fef42023          	sw	a5,-32(s0)
100017c4:	00c0006f          	j	100017d0 <_vsnprintf+0x180>
100017c8:	fe042023          	sw	zero,-32(s0)
100017cc:	00000013          	nop
100017d0:	fe042783          	lw	a5,-32(s0)
100017d4:	f0079ae3          	bnez	a5,100016e8 <_vsnprintf+0x98>
100017d8:	fe042423          	sw	zero,-24(s0)
100017dc:	fa042783          	lw	a5,-96(s0)
100017e0:	0007c783          	lbu	a5,0(a5)
100017e4:	00078513          	mv	a0,a5
100017e8:	809ff0ef          	jal	ra,10000ff0 <_is_digit>
100017ec:	00050793          	mv	a5,a0
100017f0:	00078c63          	beqz	a5,10001808 <_vsnprintf+0x1b8>
100017f4:	fa040793          	addi	a5,s0,-96
100017f8:	00078513          	mv	a0,a5
100017fc:	845ff0ef          	jal	ra,10001040 <_atoi>
10001800:	fea42423          	sw	a0,-24(s0)
10001804:	0600006f          	j	10001864 <_vsnprintf+0x214>
10001808:	fa042783          	lw	a5,-96(s0)
1000180c:	0007c703          	lbu	a4,0(a5)
10001810:	02a00793          	li	a5,42
10001814:	04f71863          	bne	a4,a5,10001864 <_vsnprintf+0x214>
10001818:	f9c42783          	lw	a5,-100(s0)
1000181c:	00478713          	addi	a4,a5,4
10001820:	f8e42e23          	sw	a4,-100(s0)
10001824:	0007a783          	lw	a5,0(a5)
10001828:	fcf42423          	sw	a5,-56(s0)
1000182c:	fc842783          	lw	a5,-56(s0)
10001830:	0207d063          	bgez	a5,10001850 <_vsnprintf+0x200>
10001834:	fec42783          	lw	a5,-20(s0)
10001838:	0027e793          	ori	a5,a5,2
1000183c:	fef42623          	sw	a5,-20(s0)
10001840:	fc842783          	lw	a5,-56(s0)
10001844:	40f007b3          	neg	a5,a5
10001848:	fef42423          	sw	a5,-24(s0)
1000184c:	00c0006f          	j	10001858 <_vsnprintf+0x208>
10001850:	fc842783          	lw	a5,-56(s0)
10001854:	fef42423          	sw	a5,-24(s0)
10001858:	fa042783          	lw	a5,-96(s0)
1000185c:	00178793          	addi	a5,a5,1
10001860:	faf42023          	sw	a5,-96(s0)
10001864:	fe042223          	sw	zero,-28(s0)
10001868:	fa042783          	lw	a5,-96(s0)
1000186c:	0007c703          	lbu	a4,0(a5)
10001870:	02e00793          	li	a5,46
10001874:	08f71463          	bne	a4,a5,100018fc <_vsnprintf+0x2ac>
10001878:	fec42783          	lw	a5,-20(s0)
1000187c:	4007e793          	ori	a5,a5,1024
10001880:	fef42623          	sw	a5,-20(s0)
10001884:	fa042783          	lw	a5,-96(s0)
10001888:	00178793          	addi	a5,a5,1
1000188c:	faf42023          	sw	a5,-96(s0)
10001890:	fa042783          	lw	a5,-96(s0)
10001894:	0007c783          	lbu	a5,0(a5)
10001898:	00078513          	mv	a0,a5
1000189c:	f54ff0ef          	jal	ra,10000ff0 <_is_digit>
100018a0:	00050793          	mv	a5,a0
100018a4:	00078c63          	beqz	a5,100018bc <_vsnprintf+0x26c>
100018a8:	fa040793          	addi	a5,s0,-96
100018ac:	00078513          	mv	a0,a5
100018b0:	f90ff0ef          	jal	ra,10001040 <_atoi>
100018b4:	fea42223          	sw	a0,-28(s0)
100018b8:	0440006f          	j	100018fc <_vsnprintf+0x2ac>
100018bc:	fa042783          	lw	a5,-96(s0)
100018c0:	0007c703          	lbu	a4,0(a5)
100018c4:	02a00793          	li	a5,42
100018c8:	02f71a63          	bne	a4,a5,100018fc <_vsnprintf+0x2ac>
100018cc:	f9c42783          	lw	a5,-100(s0)
100018d0:	00478713          	addi	a4,a5,4
100018d4:	f8e42e23          	sw	a4,-100(s0)
100018d8:	0007a783          	lw	a5,0(a5)
100018dc:	fcf42223          	sw	a5,-60(s0)
100018e0:	fc442783          	lw	a5,-60(s0)
100018e4:	0007d463          	bgez	a5,100018ec <_vsnprintf+0x29c>
100018e8:	00000793          	li	a5,0
100018ec:	fef42223          	sw	a5,-28(s0)
100018f0:	fa042783          	lw	a5,-96(s0)
100018f4:	00178793          	addi	a5,a5,1
100018f8:	faf42023          	sw	a5,-96(s0)
100018fc:	fa042783          	lw	a5,-96(s0)
10001900:	0007c783          	lbu	a5,0(a5)
10001904:	f9878793          	addi	a5,a5,-104
10001908:	01200713          	li	a4,18
1000190c:	0ef76c63          	bltu	a4,a5,10001a04 <_vsnprintf+0x3b4>
10001910:	00279713          	slli	a4,a5,0x2
10001914:	100107b7          	lui	a5,0x10010
10001918:	13c78793          	addi	a5,a5,316 # 1001013c <p2p_demo+0xbbd4>
1000191c:	00f707b3          	add	a5,a4,a5
10001920:	0007a783          	lw	a5,0(a5)
10001924:	00078067          	jr	a5
10001928:	fec42783          	lw	a5,-20(s0)
1000192c:	1007e793          	ori	a5,a5,256
10001930:	fef42623          	sw	a5,-20(s0)
10001934:	fa042783          	lw	a5,-96(s0)
10001938:	00178793          	addi	a5,a5,1
1000193c:	faf42023          	sw	a5,-96(s0)
10001940:	fa042783          	lw	a5,-96(s0)
10001944:	0007c703          	lbu	a4,0(a5)
10001948:	06c00793          	li	a5,108
1000194c:	0cf71063          	bne	a4,a5,10001a0c <_vsnprintf+0x3bc>
10001950:	fec42783          	lw	a5,-20(s0)
10001954:	2007e793          	ori	a5,a5,512
10001958:	fef42623          	sw	a5,-20(s0)
1000195c:	fa042783          	lw	a5,-96(s0)
10001960:	00178793          	addi	a5,a5,1
10001964:	faf42023          	sw	a5,-96(s0)
10001968:	0a40006f          	j	10001a0c <_vsnprintf+0x3bc>
1000196c:	fec42783          	lw	a5,-20(s0)
10001970:	0807e793          	ori	a5,a5,128
10001974:	fef42623          	sw	a5,-20(s0)
10001978:	fa042783          	lw	a5,-96(s0)
1000197c:	00178793          	addi	a5,a5,1
10001980:	faf42023          	sw	a5,-96(s0)
10001984:	fa042783          	lw	a5,-96(s0)
10001988:	0007c703          	lbu	a4,0(a5)
1000198c:	06800793          	li	a5,104
10001990:	08f71263          	bne	a4,a5,10001a14 <_vsnprintf+0x3c4>
10001994:	fec42783          	lw	a5,-20(s0)
10001998:	0407e793          	ori	a5,a5,64
1000199c:	fef42623          	sw	a5,-20(s0)
100019a0:	fa042783          	lw	a5,-96(s0)
100019a4:	00178793          	addi	a5,a5,1
100019a8:	faf42023          	sw	a5,-96(s0)
100019ac:	0680006f          	j	10001a14 <_vsnprintf+0x3c4>
100019b0:	fec42783          	lw	a5,-20(s0)
100019b4:	1007e793          	ori	a5,a5,256
100019b8:	fef42623          	sw	a5,-20(s0)
100019bc:	fa042783          	lw	a5,-96(s0)
100019c0:	00178793          	addi	a5,a5,1
100019c4:	faf42023          	sw	a5,-96(s0)
100019c8:	0500006f          	j	10001a18 <_vsnprintf+0x3c8>
100019cc:	fec42783          	lw	a5,-20(s0)
100019d0:	2007e793          	ori	a5,a5,512
100019d4:	fef42623          	sw	a5,-20(s0)
100019d8:	fa042783          	lw	a5,-96(s0)
100019dc:	00178793          	addi	a5,a5,1
100019e0:	faf42023          	sw	a5,-96(s0)
100019e4:	0340006f          	j	10001a18 <_vsnprintf+0x3c8>
100019e8:	fec42783          	lw	a5,-20(s0)
100019ec:	1007e793          	ori	a5,a5,256
100019f0:	fef42623          	sw	a5,-20(s0)
100019f4:	fa042783          	lw	a5,-96(s0)
100019f8:	00178793          	addi	a5,a5,1
100019fc:	faf42023          	sw	a5,-96(s0)
10001a00:	0180006f          	j	10001a18 <_vsnprintf+0x3c8>
10001a04:	00000013          	nop
10001a08:	0100006f          	j	10001a18 <_vsnprintf+0x3c8>
10001a0c:	00000013          	nop
10001a10:	0080006f          	j	10001a18 <_vsnprintf+0x3c8>
10001a14:	00000013          	nop
10001a18:	fa042783          	lw	a5,-96(s0)
10001a1c:	0007c783          	lbu	a5,0(a5)
10001a20:	fdb78793          	addi	a5,a5,-37
10001a24:	05300713          	li	a4,83
10001a28:	62f76c63          	bltu	a4,a5,10002060 <_vsnprintf+0xa10>
10001a2c:	00279713          	slli	a4,a5,0x2
10001a30:	100107b7          	lui	a5,0x10010
10001a34:	18878793          	addi	a5,a5,392 # 10010188 <p2p_demo+0xbc20>
10001a38:	00f707b3          	add	a5,a4,a5
10001a3c:	0007a783          	lw	a5,0(a5)
10001a40:	00078067          	jr	a5
10001a44:	fa042783          	lw	a5,-96(s0)
10001a48:	0007c703          	lbu	a4,0(a5)
10001a4c:	07800793          	li	a5,120
10001a50:	00f70a63          	beq	a4,a5,10001a64 <_vsnprintf+0x414>
10001a54:	fa042783          	lw	a5,-96(s0)
10001a58:	0007c703          	lbu	a4,0(a5)
10001a5c:	05800793          	li	a5,88
10001a60:	00f71863          	bne	a4,a5,10001a70 <_vsnprintf+0x420>
10001a64:	01000793          	li	a5,16
10001a68:	fcf42c23          	sw	a5,-40(s0)
10001a6c:	0500006f          	j	10001abc <_vsnprintf+0x46c>
10001a70:	fa042783          	lw	a5,-96(s0)
10001a74:	0007c703          	lbu	a4,0(a5)
10001a78:	06f00793          	li	a5,111
10001a7c:	00f71863          	bne	a4,a5,10001a8c <_vsnprintf+0x43c>
10001a80:	00800793          	li	a5,8
10001a84:	fcf42c23          	sw	a5,-40(s0)
10001a88:	0340006f          	j	10001abc <_vsnprintf+0x46c>
10001a8c:	fa042783          	lw	a5,-96(s0)
10001a90:	0007c703          	lbu	a4,0(a5)
10001a94:	06200793          	li	a5,98
10001a98:	00f71863          	bne	a4,a5,10001aa8 <_vsnprintf+0x458>
10001a9c:	00200793          	li	a5,2
10001aa0:	fcf42c23          	sw	a5,-40(s0)
10001aa4:	0180006f          	j	10001abc <_vsnprintf+0x46c>
10001aa8:	00a00793          	li	a5,10
10001aac:	fcf42c23          	sw	a5,-40(s0)
10001ab0:	fec42783          	lw	a5,-20(s0)
10001ab4:	fef7f793          	andi	a5,a5,-17
10001ab8:	fef42623          	sw	a5,-20(s0)
10001abc:	fa042783          	lw	a5,-96(s0)
10001ac0:	0007c703          	lbu	a4,0(a5)
10001ac4:	05800793          	li	a5,88
10001ac8:	00f71863          	bne	a4,a5,10001ad8 <_vsnprintf+0x488>
10001acc:	fec42783          	lw	a5,-20(s0)
10001ad0:	0207e793          	ori	a5,a5,32
10001ad4:	fef42623          	sw	a5,-20(s0)
10001ad8:	fa042783          	lw	a5,-96(s0)
10001adc:	0007c703          	lbu	a4,0(a5)
10001ae0:	06900793          	li	a5,105
10001ae4:	02f70063          	beq	a4,a5,10001b04 <_vsnprintf+0x4b4>
10001ae8:	fa042783          	lw	a5,-96(s0)
10001aec:	0007c703          	lbu	a4,0(a5)
10001af0:	06400793          	li	a5,100
10001af4:	00f70863          	beq	a4,a5,10001b04 <_vsnprintf+0x4b4>
10001af8:	fec42783          	lw	a5,-20(s0)
10001afc:	ff37f793          	andi	a5,a5,-13
10001b00:	fef42623          	sw	a5,-20(s0)
10001b04:	fec42783          	lw	a5,-20(s0)
10001b08:	4007f793          	andi	a5,a5,1024
10001b0c:	00078863          	beqz	a5,10001b1c <_vsnprintf+0x4cc>
10001b10:	fec42783          	lw	a5,-20(s0)
10001b14:	ffe7f793          	andi	a5,a5,-2
10001b18:	fef42623          	sw	a5,-20(s0)
10001b1c:	fa042783          	lw	a5,-96(s0)
10001b20:	0007c703          	lbu	a4,0(a5)
10001b24:	06900793          	li	a5,105
10001b28:	00f70a63          	beq	a4,a5,10001b3c <_vsnprintf+0x4ec>
10001b2c:	fa042783          	lw	a5,-96(s0)
10001b30:	0007c703          	lbu	a4,0(a5)
10001b34:	06400793          	li	a5,100
10001b38:	14f71863          	bne	a4,a5,10001c88 <_vsnprintf+0x638>
10001b3c:	fec42783          	lw	a5,-20(s0)
10001b40:	2007f793          	andi	a5,a5,512
10001b44:	22079e63          	bnez	a5,10001d80 <_vsnprintf+0x730>
10001b48:	fec42783          	lw	a5,-20(s0)
10001b4c:	1007f793          	andi	a5,a5,256
10001b50:	06078c63          	beqz	a5,10001bc8 <_vsnprintf+0x578>
10001b54:	f9c42783          	lw	a5,-100(s0)
10001b58:	00478713          	addi	a4,a5,4
10001b5c:	f8e42e23          	sw	a4,-100(s0)
10001b60:	0007a783          	lw	a5,0(a5)
10001b64:	faf42e23          	sw	a5,-68(s0)
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
10001bc4:	1bc0006f          	j	10001d80 <_vsnprintf+0x730>
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
10001bf4:	02078063          	beqz	a5,10001c14 <_vsnprintf+0x5c4>
10001bf8:	f9c42783          	lw	a5,-100(s0)
10001bfc:	00478713          	addi	a4,a5,4
10001c00:	f8e42e23          	sw	a4,-100(s0)
10001c04:	0007a783          	lw	a5,0(a5)
10001c08:	01079793          	slli	a5,a5,0x10
10001c0c:	4107d793          	srai	a5,a5,0x10
10001c10:	0140006f          	j	10001c24 <_vsnprintf+0x5d4>
10001c14:	f9c42783          	lw	a5,-100(s0)
10001c18:	00478713          	addi	a4,a5,4
10001c1c:	f8e42e23          	sw	a4,-100(s0)
10001c20:	0007a783          	lw	a5,0(a5)
10001c24:	faf42c23          	sw	a5,-72(s0)
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
10001c84:	0fc0006f          	j	10001d80 <_vsnprintf+0x730>
10001c88:	fec42783          	lw	a5,-20(s0)
10001c8c:	2007f793          	andi	a5,a5,512
10001c90:	0e079863          	bnez	a5,10001d80 <_vsnprintf+0x730>
10001c94:	fec42783          	lw	a5,-20(s0)
10001c98:	1007f793          	andi	a5,a5,256
10001c9c:	04078663          	beqz	a5,10001ce8 <_vsnprintf+0x698>
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
10001d14:	02078063          	beqz	a5,10001d34 <_vsnprintf+0x6e4>
10001d18:	f9c42783          	lw	a5,-100(s0)
10001d1c:	00478713          	addi	a4,a5,4
10001d20:	f8e42e23          	sw	a4,-100(s0)
10001d24:	0007a783          	lw	a5,0(a5)
10001d28:	01079793          	slli	a5,a5,0x10
10001d2c:	0107d793          	srli	a5,a5,0x10
10001d30:	0140006f          	j	10001d44 <_vsnprintf+0x6f4>
10001d34:	f9c42783          	lw	a5,-100(s0)
10001d38:	00478713          	addi	a4,a5,4
10001d3c:	f8e42e23          	sw	a4,-100(s0)
10001d40:	0007a783          	lw	a5,0(a5)
10001d44:	fcf42023          	sw	a5,-64(s0)
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
10001d80:	fa042783          	lw	a5,-96(s0)
10001d84:	00178793          	addi	a5,a5,1
10001d88:	faf42023          	sw	a5,-96(s0)
10001d8c:	30c0006f          	j	10002098 <_vsnprintf+0xa48>
10001d90:	00100793          	li	a5,1
10001d94:	fcf42a23          	sw	a5,-44(s0)
10001d98:	fec42783          	lw	a5,-20(s0)
10001d9c:	0027f793          	andi	a5,a5,2
10001da0:	04079063          	bnez	a5,10001de0 <_vsnprintf+0x790>
10001da4:	0280006f          	j	10001dcc <_vsnprintf+0x77c>
10001da8:	fdc42783          	lw	a5,-36(s0)
10001dac:	00178713          	addi	a4,a5,1
10001db0:	fce42e23          	sw	a4,-36(s0)
10001db4:	fac42703          	lw	a4,-84(s0)
10001db8:	fa442683          	lw	a3,-92(s0)
10001dbc:	00078613          	mv	a2,a5
10001dc0:	fa842583          	lw	a1,-88(s0)
10001dc4:	02000513          	li	a0,32
10001dc8:	000700e7          	jalr	a4
10001dcc:	fd442783          	lw	a5,-44(s0)
10001dd0:	00178713          	addi	a4,a5,1
10001dd4:	fce42a23          	sw	a4,-44(s0)
10001dd8:	fe842703          	lw	a4,-24(s0)
10001ddc:	fce7e6e3          	bltu	a5,a4,10001da8 <_vsnprintf+0x758>
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
10001e14:	fec42783          	lw	a5,-20(s0)
10001e18:	0027f793          	andi	a5,a5,2
10001e1c:	04078063          	beqz	a5,10001e5c <_vsnprintf+0x80c>
10001e20:	0280006f          	j	10001e48 <_vsnprintf+0x7f8>
10001e24:	fdc42783          	lw	a5,-36(s0)
10001e28:	00178713          	addi	a4,a5,1
10001e2c:	fce42e23          	sw	a4,-36(s0)
10001e30:	fac42703          	lw	a4,-84(s0)
10001e34:	fa442683          	lw	a3,-92(s0)
10001e38:	00078613          	mv	a2,a5
10001e3c:	fa842583          	lw	a1,-88(s0)
10001e40:	02000513          	li	a0,32
10001e44:	000700e7          	jalr	a4
10001e48:	fd442783          	lw	a5,-44(s0)
10001e4c:	00178713          	addi	a4,a5,1
10001e50:	fce42a23          	sw	a4,-44(s0)
10001e54:	fe842703          	lw	a4,-24(s0)
10001e58:	fce7e6e3          	bltu	a5,a4,10001e24 <_vsnprintf+0x7d4>
10001e5c:	fa042783          	lw	a5,-96(s0)
10001e60:	00178793          	addi	a5,a5,1
10001e64:	faf42023          	sw	a5,-96(s0)
10001e68:	2300006f          	j	10002098 <_vsnprintf+0xa48>
10001e6c:	f9c42783          	lw	a5,-100(s0)
10001e70:	00478713          	addi	a4,a5,4
10001e74:	f8e42e23          	sw	a4,-100(s0)
10001e78:	0007a783          	lw	a5,0(a5)
10001e7c:	fcf42823          	sw	a5,-48(s0)
10001e80:	fe442783          	lw	a5,-28(s0)
10001e84:	00078663          	beqz	a5,10001e90 <_vsnprintf+0x840>
10001e88:	fe442783          	lw	a5,-28(s0)
10001e8c:	0080006f          	j	10001e94 <_vsnprintf+0x844>
10001e90:	fff00793          	li	a5,-1
10001e94:	00078593          	mv	a1,a5
10001e98:	fd042503          	lw	a0,-48(s0)
10001e9c:	8f0ff0ef          	jal	ra,10000f8c <_strnlen_s>
10001ea0:	fca42623          	sw	a0,-52(s0)
10001ea4:	fec42783          	lw	a5,-20(s0)
10001ea8:	4007f793          	andi	a5,a5,1024
10001eac:	00078c63          	beqz	a5,10001ec4 <_vsnprintf+0x874>
10001eb0:	fcc42703          	lw	a4,-52(s0)
10001eb4:	fe442783          	lw	a5,-28(s0)
10001eb8:	00f77463          	bgeu	a4,a5,10001ec0 <_vsnprintf+0x870>
10001ebc:	00070793          	mv	a5,a4
10001ec0:	fcf42623          	sw	a5,-52(s0)
10001ec4:	fec42783          	lw	a5,-20(s0)
10001ec8:	0027f793          	andi	a5,a5,2
10001ecc:	06079a63          	bnez	a5,10001f40 <_vsnprintf+0x8f0>
10001ed0:	0280006f          	j	10001ef8 <_vsnprintf+0x8a8>
10001ed4:	fdc42783          	lw	a5,-36(s0)
10001ed8:	00178713          	addi	a4,a5,1
10001edc:	fce42e23          	sw	a4,-36(s0)
10001ee0:	fac42703          	lw	a4,-84(s0)
10001ee4:	fa442683          	lw	a3,-92(s0)
10001ee8:	00078613          	mv	a2,a5
10001eec:	fa842583          	lw	a1,-88(s0)
10001ef0:	02000513          	li	a0,32
10001ef4:	000700e7          	jalr	a4
10001ef8:	fcc42783          	lw	a5,-52(s0)
10001efc:	00178713          	addi	a4,a5,1
10001f00:	fce42623          	sw	a4,-52(s0)
10001f04:	fe842703          	lw	a4,-24(s0)
10001f08:	fce7e6e3          	bltu	a5,a4,10001ed4 <_vsnprintf+0x884>
10001f0c:	0340006f          	j	10001f40 <_vsnprintf+0x8f0>
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
10001f68:	fec42783          	lw	a5,-20(s0)
10001f6c:	0027f793          	andi	a5,a5,2
10001f70:	04078063          	beqz	a5,10001fb0 <_vsnprintf+0x960>
10001f74:	0280006f          	j	10001f9c <_vsnprintf+0x94c>
10001f78:	fdc42783          	lw	a5,-36(s0)
10001f7c:	00178713          	addi	a4,a5,1
10001f80:	fce42e23          	sw	a4,-36(s0)
10001f84:	fac42703          	lw	a4,-84(s0)
10001f88:	fa442683          	lw	a3,-92(s0)
10001f8c:	00078613          	mv	a2,a5
10001f90:	fa842583          	lw	a1,-88(s0)
10001f94:	02000513          	li	a0,32
10001f98:	000700e7          	jalr	a4
10001f9c:	fcc42783          	lw	a5,-52(s0)
10001fa0:	00178713          	addi	a4,a5,1
10001fa4:	fce42623          	sw	a4,-52(s0)
10001fa8:	fe842703          	lw	a4,-24(s0)
10001fac:	fce7e6e3          	bltu	a5,a4,10001f78 <_vsnprintf+0x928>
10001fb0:	fa042783          	lw	a5,-96(s0)
10001fb4:	00178793          	addi	a5,a5,1
10001fb8:	faf42023          	sw	a5,-96(s0)
10001fbc:	0dc0006f          	j	10002098 <_vsnprintf+0xa48>
10001fc0:	00800793          	li	a5,8
10001fc4:	fef42423          	sw	a5,-24(s0)
10001fc8:	fec42783          	lw	a5,-20(s0)
10001fcc:	0217e793          	ori	a5,a5,33
10001fd0:	fef42623          	sw	a5,-20(s0)
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
1000201c:	fa042783          	lw	a5,-96(s0)
10002020:	00178793          	addi	a5,a5,1
10002024:	faf42023          	sw	a5,-96(s0)
10002028:	0700006f          	j	10002098 <_vsnprintf+0xa48>
1000202c:	fdc42783          	lw	a5,-36(s0)
10002030:	00178713          	addi	a4,a5,1
10002034:	fce42e23          	sw	a4,-36(s0)
10002038:	fac42703          	lw	a4,-84(s0)
1000203c:	fa442683          	lw	a3,-92(s0)
10002040:	00078613          	mv	a2,a5
10002044:	fa842583          	lw	a1,-88(s0)
10002048:	02500513          	li	a0,37
1000204c:	000700e7          	jalr	a4
10002050:	fa042783          	lw	a5,-96(s0)
10002054:	00178793          	addi	a5,a5,1
10002058:	faf42023          	sw	a5,-96(s0)
1000205c:	03c0006f          	j	10002098 <_vsnprintf+0xa48>
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
10002088:	fa042783          	lw	a5,-96(s0)
1000208c:	00178793          	addi	a5,a5,1
10002090:	faf42023          	sw	a5,-96(s0)
10002094:	00000013          	nop
10002098:	fa042783          	lw	a5,-96(s0)
1000209c:	0007c783          	lbu	a5,0(a5)
100020a0:	de079863          	bnez	a5,10001690 <_vsnprintf+0x40>
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
100020d8:	fdc42783          	lw	a5,-36(s0)
100020dc:	00078513          	mv	a0,a5
100020e0:	07c12083          	lw	ra,124(sp)
100020e4:	07812403          	lw	s0,120(sp)
100020e8:	08010113          	addi	sp,sp,128
100020ec:	00008067          	ret

100020f0 <printf_>:
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
10002120:	02040793          	addi	a5,s0,32
10002124:	fe478793          	addi	a5,a5,-28
10002128:	fef42423          	sw	a5,-24(s0)
1000212c:	fe842703          	lw	a4,-24(s0)
10002130:	fe440793          	addi	a5,s0,-28
10002134:	fdc42683          	lw	a3,-36(s0)
10002138:	fff00613          	li	a2,-1
1000213c:	00078593          	mv	a1,a5
10002140:	100017b7          	lui	a5,0x10001
10002144:	ee878513          	addi	a0,a5,-280 # 10000ee8 <_out_char>
10002148:	d08ff0ef          	jal	ra,10001650 <_vsnprintf>
1000214c:	fea42623          	sw	a0,-20(s0)
10002150:	fec42783          	lw	a5,-20(s0)
10002154:	00078513          	mv	a0,a5
10002158:	02c12083          	lw	ra,44(sp)
1000215c:	02812403          	lw	s0,40(sp)
10002160:	05010113          	addi	sp,sp,80
10002164:	00008067          	ret

10002168 <sprintf_>:
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
10002198:	02040793          	addi	a5,s0,32
1000219c:	fe878793          	addi	a5,a5,-24
100021a0:	fef42423          	sw	a5,-24(s0)
100021a4:	fe842783          	lw	a5,-24(s0)
100021a8:	00078713          	mv	a4,a5
100021ac:	fd842683          	lw	a3,-40(s0)
100021b0:	fff00613          	li	a2,-1
100021b4:	fdc42583          	lw	a1,-36(s0)
100021b8:	100017b7          	lui	a5,0x10001
100021bc:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
100021c0:	c90ff0ef          	jal	ra,10001650 <_vsnprintf>
100021c4:	fea42623          	sw	a0,-20(s0)
100021c8:	fec42783          	lw	a5,-20(s0)
100021cc:	00078513          	mv	a0,a5
100021d0:	02c12083          	lw	ra,44(sp)
100021d4:	02812403          	lw	s0,40(sp)
100021d8:	05010113          	addi	sp,sp,80
100021dc:	00008067          	ret

100021e0 <snprintf_>:
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
10002210:	02040793          	addi	a5,s0,32
10002214:	fec78793          	addi	a5,a5,-20
10002218:	fef42423          	sw	a5,-24(s0)
1000221c:	fe842783          	lw	a5,-24(s0)
10002220:	00078713          	mv	a4,a5
10002224:	fd442683          	lw	a3,-44(s0)
10002228:	fd842603          	lw	a2,-40(s0)
1000222c:	fdc42583          	lw	a1,-36(s0)
10002230:	100017b7          	lui	a5,0x10001
10002234:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
10002238:	c18ff0ef          	jal	ra,10001650 <_vsnprintf>
1000223c:	fea42623          	sw	a0,-20(s0)
10002240:	fec42783          	lw	a5,-20(s0)
10002244:	00078513          	mv	a0,a5
10002248:	02c12083          	lw	ra,44(sp)
1000224c:	02812403          	lw	s0,40(sp)
10002250:	05010113          	addi	sp,sp,80
10002254:	00008067          	ret

10002258 <vprintf_>:
10002258:	fd010113          	addi	sp,sp,-48
1000225c:	02112623          	sw	ra,44(sp)
10002260:	02812423          	sw	s0,40(sp)
10002264:	03010413          	addi	s0,sp,48
10002268:	fca42e23          	sw	a0,-36(s0)
1000226c:	fcb42c23          	sw	a1,-40(s0)
10002270:	fec40793          	addi	a5,s0,-20
10002274:	fd842703          	lw	a4,-40(s0)
10002278:	fdc42683          	lw	a3,-36(s0)
1000227c:	fff00613          	li	a2,-1
10002280:	00078593          	mv	a1,a5
10002284:	100017b7          	lui	a5,0x10001
10002288:	ee878513          	addi	a0,a5,-280 # 10000ee8 <_out_char>
1000228c:	bc4ff0ef          	jal	ra,10001650 <_vsnprintf>
10002290:	00050793          	mv	a5,a0
10002294:	00078513          	mv	a0,a5
10002298:	02c12083          	lw	ra,44(sp)
1000229c:	02812403          	lw	s0,40(sp)
100022a0:	03010113          	addi	sp,sp,48
100022a4:	00008067          	ret

100022a8 <vsnprintf_>:
100022a8:	fe010113          	addi	sp,sp,-32
100022ac:	00112e23          	sw	ra,28(sp)
100022b0:	00812c23          	sw	s0,24(sp)
100022b4:	02010413          	addi	s0,sp,32
100022b8:	fea42623          	sw	a0,-20(s0)
100022bc:	feb42423          	sw	a1,-24(s0)
100022c0:	fec42223          	sw	a2,-28(s0)
100022c4:	fed42023          	sw	a3,-32(s0)
100022c8:	fe042703          	lw	a4,-32(s0)
100022cc:	fe442683          	lw	a3,-28(s0)
100022d0:	fe842603          	lw	a2,-24(s0)
100022d4:	fec42583          	lw	a1,-20(s0)
100022d8:	100017b7          	lui	a5,0x10001
100022dc:	e6878513          	addi	a0,a5,-408 # 10000e68 <_out_buffer>
100022e0:	b70ff0ef          	jal	ra,10001650 <_vsnprintf>
100022e4:	00050793          	mv	a5,a0
100022e8:	00078513          	mv	a0,a5
100022ec:	01c12083          	lw	ra,28(sp)
100022f0:	01812403          	lw	s0,24(sp)
100022f4:	02010113          	addi	sp,sp,32
100022f8:	00008067          	ret

100022fc <fctprintf>:
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
1000232c:	02040793          	addi	a5,s0,32
10002330:	fec78793          	addi	a5,a5,-20
10002334:	fef42423          	sw	a5,-24(s0)
10002338:	fdc42783          	lw	a5,-36(s0)
1000233c:	fef42023          	sw	a5,-32(s0)
10002340:	fd842783          	lw	a5,-40(s0)
10002344:	fef42223          	sw	a5,-28(s0)
10002348:	fe842703          	lw	a4,-24(s0)
1000234c:	fe040793          	addi	a5,s0,-32
10002350:	fd442683          	lw	a3,-44(s0)
10002354:	fff00613          	li	a2,-1
10002358:	00078593          	mv	a1,a5
1000235c:	100017b7          	lui	a5,0x10001
10002360:	f2c78513          	addi	a0,a5,-212 # 10000f2c <_out_fct>
10002364:	aecff0ef          	jal	ra,10001650 <_vsnprintf>
10002368:	fea42623          	sw	a0,-20(s0)
1000236c:	fec42783          	lw	a5,-20(s0)
10002370:	00078513          	mv	a0,a5
10002374:	02c12083          	lw	ra,44(sp)
10002378:	02812403          	lw	s0,40(sp)
1000237c:	05010113          	addi	sp,sp,80
10002380:	00008067          	ret

10002384 <_putchar>:
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
100023a8:	fd010113          	addi	sp,sp,-48
100023ac:	02812623          	sw	s0,44(sp)
100023b0:	03010413          	addi	s0,sp,48
100023b4:	fca42e23          	sw	a0,-36(s0)
100023b8:	fcb42c23          	sw	a1,-40(s0)
100023bc:	fcc42a23          	sw	a2,-44(s0)
100023c0:	fdc42783          	lw	a5,-36(s0)
100023c4:	fef42623          	sw	a5,-20(s0)
100023c8:	01c0006f          	j	100023e4 <memset+0x3c>
100023cc:	fdc42783          	lw	a5,-36(s0)
100023d0:	00178713          	addi	a4,a5,1
100023d4:	fce42e23          	sw	a4,-36(s0)
100023d8:	fd842703          	lw	a4,-40(s0)
100023dc:	0ff77713          	andi	a4,a4,255
100023e0:	00e78023          	sb	a4,0(a5)
100023e4:	fd442783          	lw	a5,-44(s0)
100023e8:	fff78713          	addi	a4,a5,-1
100023ec:	fce42a23          	sw	a4,-44(s0)
100023f0:	fcf04ee3          	bgtz	a5,100023cc <memset+0x24>
100023f4:	fec42783          	lw	a5,-20(s0)
100023f8:	00078513          	mv	a0,a5
100023fc:	02c12403          	lw	s0,44(sp)
10002400:	03010113          	addi	sp,sp,48
10002404:	00008067          	ret

10002408 <strncpy>:
10002408:	fd010113          	addi	sp,sp,-48
1000240c:	02812623          	sw	s0,44(sp)
10002410:	03010413          	addi	s0,sp,48
10002414:	fca42e23          	sw	a0,-36(s0)
10002418:	fcb42c23          	sw	a1,-40(s0)
1000241c:	fcc42a23          	sw	a2,-44(s0)
10002420:	fe042623          	sw	zero,-20(s0)
10002424:	0300006f          	j	10002454 <strncpy+0x4c>
10002428:	fec42783          	lw	a5,-20(s0)
1000242c:	fd842703          	lw	a4,-40(s0)
10002430:	00f70733          	add	a4,a4,a5
10002434:	fec42783          	lw	a5,-20(s0)
10002438:	fdc42683          	lw	a3,-36(s0)
1000243c:	00f687b3          	add	a5,a3,a5
10002440:	00074703          	lbu	a4,0(a4)
10002444:	00e78023          	sb	a4,0(a5)
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
10002474:	0200006f          	j	10002494 <strncpy+0x8c>
10002478:	fec42783          	lw	a5,-20(s0)
1000247c:	fdc42703          	lw	a4,-36(s0)
10002480:	00f707b3          	add	a5,a4,a5
10002484:	00078023          	sb	zero,0(a5)
10002488:	fec42783          	lw	a5,-20(s0)
1000248c:	00178793          	addi	a5,a5,1
10002490:	fef42623          	sw	a5,-20(s0)
10002494:	fec42703          	lw	a4,-20(s0)
10002498:	fd442783          	lw	a5,-44(s0)
1000249c:	fcf74ee3          	blt	a4,a5,10002478 <strncpy+0x70>
100024a0:	fdc42783          	lw	a5,-36(s0)
100024a4:	00078513          	mv	a0,a5
100024a8:	02c12403          	lw	s0,44(sp)
100024ac:	03010113          	addi	sp,sp,48
100024b0:	00008067          	ret

100024b4 <len_of_str>:
100024b4:	fd010113          	addi	sp,sp,-48
100024b8:	02812623          	sw	s0,44(sp)
100024bc:	03010413          	addi	s0,sp,48
100024c0:	fca42e23          	sw	a0,-36(s0)
100024c4:	fe042623          	sw	zero,-20(s0)
100024c8:	0100006f          	j	100024d8 <len_of_str+0x24>
100024cc:	fec42783          	lw	a5,-20(s0)
100024d0:	00178793          	addi	a5,a5,1
100024d4:	fef42623          	sw	a5,-20(s0)
100024d8:	fdc42783          	lw	a5,-36(s0)
100024dc:	00178713          	addi	a4,a5,1
100024e0:	fce42e23          	sw	a4,-36(s0)
100024e4:	0007c783          	lbu	a5,0(a5)
100024e8:	fe0792e3          	bnez	a5,100024cc <len_of_str+0x18>
100024ec:	fec42783          	lw	a5,-20(s0)
100024f0:	00078513          	mv	a0,a5
100024f4:	02c12403          	lw	s0,44(sp)
100024f8:	03010113          	addi	sp,sp,48
100024fc:	00008067          	ret

10002500 <Xil_In32>:
10002500:	fe010113          	addi	sp,sp,-32
10002504:	00812e23          	sw	s0,28(sp)
10002508:	02010413          	addi	s0,sp,32
1000250c:	fea42623          	sw	a0,-20(s0)
10002510:	fec42783          	lw	a5,-20(s0)
10002514:	0007a783          	lw	a5,0(a5)
10002518:	00078513          	mv	a0,a5
1000251c:	01c12403          	lw	s0,28(sp)
10002520:	02010113          	addi	sp,sp,32
10002524:	00008067          	ret

10002528 <Xil_Out32>:
10002528:	fd010113          	addi	sp,sp,-48
1000252c:	02812623          	sw	s0,44(sp)
10002530:	03010413          	addi	s0,sp,48
10002534:	fca42e23          	sw	a0,-36(s0)
10002538:	fcb42c23          	sw	a1,-40(s0)
1000253c:	fdc42783          	lw	a5,-36(s0)
10002540:	fef42623          	sw	a5,-20(s0)
10002544:	fec42783          	lw	a5,-20(s0)
10002548:	fd842703          	lw	a4,-40(s0)
1000254c:	00e7a023          	sw	a4,0(a5)
10002550:	00000013          	nop
10002554:	02c12403          	lw	s0,44(sp)
10002558:	03010113          	addi	sp,sp,48
1000255c:	00008067          	ret

10002560 <XUartLite_InterruptHandlerWrapper>:
10002560:	fd010113          	addi	sp,sp,-48
10002564:	02112623          	sw	ra,44(sp)
10002568:	02812423          	sw	s0,40(sp)
1000256c:	03010413          	addi	s0,sp,48
10002570:	fca42e23          	sw	a0,-36(s0)
10002574:	fe042423          	sw	zero,-24(s0)
10002578:	fdc42783          	lw	a5,-36(s0)
1000257c:	00079a63          	bnez	a5,10002590 <XUartLite_InterruptHandlerWrapper+0x30>
10002580:	100117b7          	lui	a5,0x10011
10002584:	91078793          	addi	a5,a5,-1776 # 10010910 <XUartLiteInstances0>
10002588:	fef42623          	sw	a5,-20(s0)
1000258c:	01c0006f          	j	100025a8 <XUartLite_InterruptHandlerWrapper+0x48>
10002590:	fdc42703          	lw	a4,-36(s0)
10002594:	00100793          	li	a5,1
10002598:	00f71863          	bne	a4,a5,100025a8 <XUartLite_InterruptHandlerWrapper+0x48>
1000259c:	100117b7          	lui	a5,0x10011
100025a0:	9f078793          	addi	a5,a5,-1552 # 100109f0 <XUartLiteInstances1>
100025a4:	fef42623          	sw	a5,-20(s0)
100025a8:	fdc42783          	lw	a5,-36(s0)
100025ac:	04079663          	bnez	a5,100025f8 <XUartLite_InterruptHandlerWrapper+0x98>
100025b0:	fec42783          	lw	a5,-20(s0)
100025b4:	01c7a783          	lw	a5,28(a5)
100025b8:	00878793          	addi	a5,a5,8
100025bc:	00078513          	mv	a0,a5
100025c0:	f41ff0ef          	jal	ra,10002500 <Xil_In32>
100025c4:	00050793          	mv	a5,a0
100025c8:	fef403a3          	sb	a5,-25(s0)
100025cc:	fe744783          	lbu	a5,-25(s0)
100025d0:	0017f793          	andi	a5,a5,1
100025d4:	02078063          	beqz	a5,100025f4 <XUartLite_InterruptHandlerWrapper+0x94>
100025d8:	fec42783          	lw	a5,-20(s0)
100025dc:	01c7a783          	lw	a5,28(a5)
100025e0:	00078513          	mv	a0,a5
100025e4:	f1dff0ef          	jal	ra,10002500 <Xil_In32>
100025e8:	00050793          	mv	a5,a0
100025ec:	fef40323          	sb	a5,-26(s0)
100025f0:	fc1ff06f          	j	100025b0 <XUartLite_InterruptHandlerWrapper+0x50>
100025f4:	00000013          	nop
100025f8:	fdc42783          	lw	a5,-36(s0)
100025fc:	00079c63          	bnez	a5,10002614 <XUartLite_InterruptHandlerWrapper+0xb4>
10002600:	100117b7          	lui	a5,0x10011
10002604:	ba07a783          	lw	a5,-1120(a5) # 10010ba0 <uart0_intr_clr>
10002608:	00100713          	li	a4,1
1000260c:	00e7a023          	sw	a4,0(a5)
10002610:	0200006f          	j	10002630 <XUartLite_InterruptHandlerWrapper+0xd0>
10002614:	fdc42703          	lw	a4,-36(s0)
10002618:	00100793          	li	a5,1
1000261c:	00f71a63          	bne	a4,a5,10002630 <XUartLite_InterruptHandlerWrapper+0xd0>
10002620:	100117b7          	lui	a5,0x10011
10002624:	ba47a783          	lw	a5,-1116(a5) # 10010ba4 <uart1_intr_clr>
10002628:	00100713          	li	a4,1
1000262c:	00e7a023          	sw	a4,0(a5)
10002630:	00000013          	nop
10002634:	00078513          	mv	a0,a5
10002638:	02c12083          	lw	ra,44(sp)
1000263c:	02812403          	lw	s0,40(sp)
10002640:	03010113          	addi	sp,sp,48
10002644:	00008067          	ret

10002648 <XUartLite_SendBuffer>:
10002648:	fd010113          	addi	sp,sp,-48
1000264c:	02112623          	sw	ra,44(sp)
10002650:	02812423          	sw	s0,40(sp)
10002654:	03010413          	addi	s0,sp,48
10002658:	fca42e23          	sw	a0,-36(s0)
1000265c:	fe042623          	sw	zero,-20(s0)
10002660:	fdc42783          	lw	a5,-36(s0)
10002664:	01c7a783          	lw	a5,28(a5)
10002668:	00878793          	addi	a5,a5,8
1000266c:	00078513          	mv	a0,a5
10002670:	e91ff0ef          	jal	ra,10002500 <Xil_In32>
10002674:	00050793          	mv	a5,a0
10002678:	fef405a3          	sb	a5,-21(s0)
1000267c:	fdc42783          	lw	a5,-36(s0)
10002680:	01c7a783          	lw	a5,28(a5)
10002684:	00878793          	addi	a5,a5,8
10002688:	00078513          	mv	a0,a5
1000268c:	e75ff0ef          	jal	ra,10002500 <Xil_In32>
10002690:	00050793          	mv	a5,a0
10002694:	fef405a3          	sb	a5,-21(s0)
10002698:	fdc42783          	lw	a5,-36(s0)
1000269c:	01c7a783          	lw	a5,28(a5)
100026a0:	00c78793          	addi	a5,a5,12
100026a4:	00000593          	li	a1,0
100026a8:	00078513          	mv	a0,a5
100026ac:	e7dff0ef          	jal	ra,10002528 <Xil_Out32>
100026b0:	feb44783          	lbu	a5,-21(s0)
100026b4:	fef40523          	sb	a5,-22(s0)
100026b8:	0580006f          	j	10002710 <XUartLite_SendBuffer+0xc8>
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
100026e8:	fec42783          	lw	a5,-20(s0)
100026ec:	00178793          	addi	a5,a5,1
100026f0:	fef42623          	sw	a5,-20(s0)
100026f4:	fdc42783          	lw	a5,-36(s0)
100026f8:	01c7a783          	lw	a5,28(a5)
100026fc:	00878793          	addi	a5,a5,8
10002700:	00078513          	mv	a0,a5
10002704:	dfdff0ef          	jal	ra,10002500 <Xil_In32>
10002708:	00050793          	mv	a5,a0
1000270c:	fef405a3          	sb	a5,-21(s0)
10002710:	feb44783          	lbu	a5,-21(s0)
10002714:	0087f793          	andi	a5,a5,8
10002718:	00079a63          	bnez	a5,1000272c <XUartLite_SendBuffer+0xe4>
1000271c:	fdc42783          	lw	a5,-36(s0)
10002720:	0487a783          	lw	a5,72(a5)
10002724:	fec42703          	lw	a4,-20(s0)
10002728:	f8f76ae3          	bltu	a4,a5,100026bc <XUartLite_SendBuffer+0x74>
1000272c:	fdc42783          	lw	a5,-36(s0)
10002730:	0407a703          	lw	a4,64(a5)
10002734:	fec42783          	lw	a5,-20(s0)
10002738:	00f70733          	add	a4,a4,a5
1000273c:	fdc42783          	lw	a5,-36(s0)
10002740:	04e7a023          	sw	a4,64(a5)
10002744:	fdc42783          	lw	a5,-36(s0)
10002748:	0487a703          	lw	a4,72(a5)
1000274c:	fec42783          	lw	a5,-20(s0)
10002750:	40f70733          	sub	a4,a4,a5
10002754:	fdc42783          	lw	a5,-36(s0)
10002758:	04e7a423          	sw	a4,72(a5)
1000275c:	fdc42783          	lw	a5,-36(s0)
10002760:	0087a703          	lw	a4,8(a5)
10002764:	fec42783          	lw	a5,-20(s0)
10002768:	00f70733          	add	a4,a4,a5
1000276c:	fdc42783          	lw	a5,-36(s0)
10002770:	00e7a423          	sw	a4,8(a5)
10002774:	fea44783          	lbu	a5,-22(s0)
10002778:	0107f793          	andi	a5,a5,16
1000277c:	fef40523          	sb	a5,-22(s0)
10002780:	fdc42783          	lw	a5,-36(s0)
10002784:	01c7a783          	lw	a5,28(a5)
10002788:	00c78793          	addi	a5,a5,12
1000278c:	fea44703          	lbu	a4,-22(s0)
10002790:	00070593          	mv	a1,a4
10002794:	00078513          	mv	a0,a5
10002798:	d91ff0ef          	jal	ra,10002528 <Xil_Out32>
1000279c:	fec42783          	lw	a5,-20(s0)
100027a0:	00078513          	mv	a0,a5
100027a4:	02c12083          	lw	ra,44(sp)
100027a8:	02812403          	lw	s0,40(sp)
100027ac:	03010113          	addi	sp,sp,48
100027b0:	00008067          	ret

100027b4 <XUartLite_ReceiveBuffer>:
100027b4:	fd010113          	addi	sp,sp,-48
100027b8:	02112623          	sw	ra,44(sp)
100027bc:	02812423          	sw	s0,40(sp)
100027c0:	03010413          	addi	s0,sp,48
100027c4:	fca42e23          	sw	a0,-36(s0)
100027c8:	fe042623          	sw	zero,-20(s0)
100027cc:	fdc42783          	lw	a5,-36(s0)
100027d0:	01c7a783          	lw	a5,28(a5)
100027d4:	00878793          	addi	a5,a5,8
100027d8:	00078513          	mv	a0,a5
100027dc:	d25ff0ef          	jal	ra,10002500 <Xil_In32>
100027e0:	00050793          	mv	a5,a0
100027e4:	fef405a3          	sb	a5,-21(s0)
100027e8:	fdc42783          	lw	a5,-36(s0)
100027ec:	01c7a783          	lw	a5,28(a5)
100027f0:	00c78793          	addi	a5,a5,12
100027f4:	00000593          	li	a1,0
100027f8:	00078513          	mv	a0,a5
100027fc:	d2dff0ef          	jal	ra,10002528 <Xil_Out32>
10002800:	0600006f          	j	10002860 <XUartLite_ReceiveBuffer+0xac>
10002804:	fdc42783          	lw	a5,-36(s0)
10002808:	01c7a783          	lw	a5,28(a5)
1000280c:	00878793          	addi	a5,a5,8
10002810:	00078513          	mv	a0,a5
10002814:	cedff0ef          	jal	ra,10002500 <Xil_In32>
10002818:	00050793          	mv	a5,a0
1000281c:	fef40523          	sb	a5,-22(s0)
10002820:	fea44783          	lbu	a5,-22(s0)
10002824:	0017f793          	andi	a5,a5,1
10002828:	04078663          	beqz	a5,10002874 <XUartLite_ReceiveBuffer+0xc0>
1000282c:	fdc42783          	lw	a5,-36(s0)
10002830:	01c7a783          	lw	a5,28(a5)
10002834:	00078513          	mv	a0,a5
10002838:	cc9ff0ef          	jal	ra,10002500 <Xil_In32>
1000283c:	00050613          	mv	a2,a0
10002840:	fdc42783          	lw	a5,-36(s0)
10002844:	0507a703          	lw	a4,80(a5)
10002848:	fec42783          	lw	a5,-20(s0)
1000284c:	00178693          	addi	a3,a5,1
10002850:	fed42623          	sw	a3,-20(s0)
10002854:	00f707b3          	add	a5,a4,a5
10002858:	0ff67713          	andi	a4,a2,255
1000285c:	00e78023          	sb	a4,0(a5)
10002860:	fdc42783          	lw	a5,-36(s0)
10002864:	0587a783          	lw	a5,88(a5)
10002868:	fec42703          	lw	a4,-20(s0)
1000286c:	f8f76ce3          	bltu	a4,a5,10002804 <XUartLite_ReceiveBuffer+0x50>
10002870:	0080006f          	j	10002878 <XUartLite_ReceiveBuffer+0xc4>
10002874:	00000013          	nop
10002878:	fdc42783          	lw	a5,-36(s0)
1000287c:	0507a703          	lw	a4,80(a5)
10002880:	fec42783          	lw	a5,-20(s0)
10002884:	00f70733          	add	a4,a4,a5
10002888:	fdc42783          	lw	a5,-36(s0)
1000288c:	04e7a823          	sw	a4,80(a5)
10002890:	fdc42783          	lw	a5,-36(s0)
10002894:	0587a703          	lw	a4,88(a5)
10002898:	fec42783          	lw	a5,-20(s0)
1000289c:	40f70733          	sub	a4,a4,a5
100028a0:	fdc42783          	lw	a5,-36(s0)
100028a4:	04e7ac23          	sw	a4,88(a5)
100028a8:	fdc42783          	lw	a5,-36(s0)
100028ac:	00c7a703          	lw	a4,12(a5)
100028b0:	fec42783          	lw	a5,-20(s0)
100028b4:	00f70733          	add	a4,a4,a5
100028b8:	fdc42783          	lw	a5,-36(s0)
100028bc:	00e7a623          	sw	a4,12(a5)
100028c0:	feb44783          	lbu	a5,-21(s0)
100028c4:	0107f793          	andi	a5,a5,16
100028c8:	fef405a3          	sb	a5,-21(s0)
100028cc:	fdc42783          	lw	a5,-36(s0)
100028d0:	01c7a783          	lw	a5,28(a5)
100028d4:	00c78793          	addi	a5,a5,12
100028d8:	feb44703          	lbu	a4,-21(s0)
100028dc:	00070593          	mv	a1,a4
100028e0:	00078513          	mv	a0,a5
100028e4:	c45ff0ef          	jal	ra,10002528 <Xil_Out32>
100028e8:	fec42783          	lw	a5,-20(s0)
100028ec:	00078513          	mv	a0,a5
100028f0:	02c12083          	lw	ra,44(sp)
100028f4:	02812403          	lw	s0,40(sp)
100028f8:	03010113          	addi	sp,sp,48
100028fc:	00008067          	ret

10002900 <XUartLite_InterruptHandler>:
10002900:	fd010113          	addi	sp,sp,-48
10002904:	02112623          	sw	ra,44(sp)
10002908:	02812423          	sw	s0,40(sp)
1000290c:	03010413          	addi	s0,sp,48
10002910:	fca42e23          	sw	a0,-36(s0)
10002914:	fdc42783          	lw	a5,-36(s0)
10002918:	01c7a783          	lw	a5,28(a5)
1000291c:	00878793          	addi	a5,a5,8
10002920:	00078513          	mv	a0,a5
10002924:	bddff0ef          	jal	ra,10002500 <Xil_In32>
10002928:	fea42623          	sw	a0,-20(s0)
1000292c:	fec42783          	lw	a5,-20(s0)
10002930:	0037f793          	andi	a5,a5,3
10002934:	00078663          	beqz	a5,10002940 <XUartLite_InterruptHandler+0x40>
10002938:	fdc42503          	lw	a0,-36(s0)
1000293c:	018000ef          	jal	ra,10002954 <ReceiveDataHandler>
10002940:	00000013          	nop
10002944:	02c12083          	lw	ra,44(sp)
10002948:	02812403          	lw	s0,40(sp)
1000294c:	03010113          	addi	sp,sp,48
10002950:	00008067          	ret

10002954 <ReceiveDataHandler>:
10002954:	fd010113          	addi	sp,sp,-48
10002958:	02112623          	sw	ra,44(sp)
1000295c:	02812423          	sw	s0,40(sp)
10002960:	03010413          	addi	s0,sp,48
10002964:	fca42e23          	sw	a0,-36(s0)
10002968:	fdc42783          	lw	a5,-36(s0)
1000296c:	0587a783          	lw	a5,88(a5)
10002970:	00078a63          	beqz	a5,10002984 <ReceiveDataHandler+0x30>
10002974:	fdc42503          	lw	a0,-36(s0)
10002978:	e3dff0ef          	jal	ra,100027b4 <XUartLite_ReceiveBuffer>
1000297c:	00050793          	mv	a5,a0
10002980:	fef42623          	sw	a5,-20(s0)
10002984:	fdc42503          	lw	a0,-36(s0)
10002988:	0b8000ef          	jal	ra,10002a40 <TotalReceivedCountOf>
1000298c:	fea42423          	sw	a0,-24(s0)
10002990:	fdc42783          	lw	a5,-36(s0)
10002994:	0047a783          	lw	a5,4(a5)
10002998:	00178713          	addi	a4,a5,1
1000299c:	fdc42783          	lw	a5,-36(s0)
100029a0:	00e7a223          	sw	a4,4(a5)
100029a4:	00000013          	nop
100029a8:	02c12083          	lw	ra,44(sp)
100029ac:	02812403          	lw	s0,40(sp)
100029b0:	03010113          	addi	sp,sp,48
100029b4:	00008067          	ret

100029b8 <SendDataHandler>:
100029b8:	fd010113          	addi	sp,sp,-48
100029bc:	02112623          	sw	ra,44(sp)
100029c0:	02812423          	sw	s0,40(sp)
100029c4:	03010413          	addi	s0,sp,48
100029c8:	fca42e23          	sw	a0,-36(s0)
100029cc:	fdc42783          	lw	a5,-36(s0)
100029d0:	0487a783          	lw	a5,72(a5)
100029d4:	02079e63          	bnez	a5,10002a10 <SendDataHandler+0x58>
100029d8:	fdc42783          	lw	a5,-36(s0)
100029dc:	0447a783          	lw	a5,68(a5)
100029e0:	fef42623          	sw	a5,-20(s0)
100029e4:	fdc42783          	lw	a5,-36(s0)
100029e8:	0407a223          	sw	zero,68(a5)
100029ec:	fdc42783          	lw	a5,-36(s0)
100029f0:	0687a683          	lw	a3,104(a5)
100029f4:	fdc42783          	lw	a5,-36(s0)
100029f8:	06c7a783          	lw	a5,108(a5)
100029fc:	fec42703          	lw	a4,-20(s0)
10002a00:	00070593          	mv	a1,a4
10002a04:	00078513          	mv	a0,a5
10002a08:	000680e7          	jalr	a3
10002a0c:	00c0006f          	j	10002a18 <SendDataHandler+0x60>
10002a10:	fdc42503          	lw	a0,-36(s0)
10002a14:	c35ff0ef          	jal	ra,10002648 <XUartLite_SendBuffer>
10002a18:	fdc42783          	lw	a5,-36(s0)
10002a1c:	0007a783          	lw	a5,0(a5)
10002a20:	00178713          	addi	a4,a5,1
10002a24:	fdc42783          	lw	a5,-36(s0)
10002a28:	00e7a023          	sw	a4,0(a5)
10002a2c:	00000013          	nop
10002a30:	02c12083          	lw	ra,44(sp)
10002a34:	02812403          	lw	s0,40(sp)
10002a38:	03010113          	addi	sp,sp,48
10002a3c:	00008067          	ret

10002a40 <TotalReceivedCountOf>:
10002a40:	fe010113          	addi	sp,sp,-32
10002a44:	00812e23          	sw	s0,28(sp)
10002a48:	02010413          	addi	s0,sp,32
10002a4c:	fea42623          	sw	a0,-20(s0)
10002a50:	fec42783          	lw	a5,-20(s0)
10002a54:	0547a703          	lw	a4,84(a5)
10002a58:	fec42783          	lw	a5,-20(s0)
10002a5c:	0587a783          	lw	a5,88(a5)
10002a60:	40f707b3          	sub	a5,a4,a5
10002a64:	00078513          	mv	a0,a5
10002a68:	01c12403          	lw	s0,28(sp)
10002a6c:	02010113          	addi	sp,sp,32
10002a70:	00008067          	ret

10002a74 <XUartLite_CfgInitialize>:
10002a74:	fe010113          	addi	sp,sp,-32
10002a78:	00112e23          	sw	ra,28(sp)
10002a7c:	00812c23          	sw	s0,24(sp)
10002a80:	02010413          	addi	s0,sp,32
10002a84:	fea42623          	sw	a0,-20(s0)
10002a88:	feb42423          	sw	a1,-24(s0)
10002a8c:	fec42783          	lw	a5,-20(s0)
10002a90:	0407a023          	sw	zero,64(a5)
10002a94:	fec42783          	lw	a5,-20(s0)
10002a98:	0407a423          	sw	zero,72(a5)
10002a9c:	fec42783          	lw	a5,-20(s0)
10002aa0:	0407a223          	sw	zero,68(a5)
10002aa4:	fec42783          	lw	a5,-20(s0)
10002aa8:	0407a823          	sw	zero,80(a5)
10002aac:	fec42783          	lw	a5,-20(s0)
10002ab0:	0407ac23          	sw	zero,88(a5)
10002ab4:	fec42783          	lw	a5,-20(s0)
10002ab8:	0407aa23          	sw	zero,84(a5)
10002abc:	fec42783          	lw	a5,-20(s0)
10002ac0:	11111737          	lui	a4,0x11111
10002ac4:	11170713          	addi	a4,a4,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002ac8:	02e7a023          	sw	a4,32(a5)
10002acc:	fec42783          	lw	a5,-20(s0)
10002ad0:	fe842703          	lw	a4,-24(s0)
10002ad4:	00e7ae23          	sw	a4,28(a5)
10002ad8:	fec42783          	lw	a5,-20(s0)
10002adc:	0607a023          	sw	zero,96(a5)
10002ae0:	fec42783          	lw	a5,-20(s0)
10002ae4:	0607a423          	sw	zero,104(a5)
10002ae8:	fec42783          	lw	a5,-20(s0)
10002aec:	0207a223          	sw	zero,36(a5)
10002af0:	fec42783          	lw	a5,-20(s0)
10002af4:	0207a423          	sw	zero,40(a5)
10002af8:	fec42783          	lw	a5,-20(s0)
10002afc:	0207a623          	sw	zero,44(a5)
10002b00:	fec42783          	lw	a5,-20(s0)
10002b04:	0207ac23          	sw	zero,56(a5)
10002b08:	fec42783          	lw	a5,-20(s0)
10002b0c:	01c7a783          	lw	a5,28(a5)
10002b10:	00c78793          	addi	a5,a5,12
10002b14:	00000593          	li	a1,0
10002b18:	00078513          	mv	a0,a5
10002b1c:	a0dff0ef          	jal	ra,10002528 <Xil_Out32>
10002b20:	fec42503          	lw	a0,-20(s0)
10002b24:	01c000ef          	jal	ra,10002b40 <XUartLite_ClearStats>
10002b28:	00000793          	li	a5,0
10002b2c:	00078513          	mv	a0,a5
10002b30:	01c12083          	lw	ra,28(sp)
10002b34:	01812403          	lw	s0,24(sp)
10002b38:	02010113          	addi	sp,sp,32
10002b3c:	00008067          	ret

10002b40 <XUartLite_ClearStats>:
10002b40:	fe010113          	addi	sp,sp,-32
10002b44:	00812e23          	sw	s0,28(sp)
10002b48:	02010413          	addi	s0,sp,32
10002b4c:	fea42623          	sw	a0,-20(s0)
10002b50:	fec42783          	lw	a5,-20(s0)
10002b54:	0007a023          	sw	zero,0(a5)
10002b58:	fec42783          	lw	a5,-20(s0)
10002b5c:	0007a223          	sw	zero,4(a5)
10002b60:	fec42783          	lw	a5,-20(s0)
10002b64:	0007a423          	sw	zero,8(a5)
10002b68:	fec42783          	lw	a5,-20(s0)
10002b6c:	0007a623          	sw	zero,12(a5)
10002b70:	fec42783          	lw	a5,-20(s0)
10002b74:	0007a823          	sw	zero,16(a5)
10002b78:	fec42783          	lw	a5,-20(s0)
10002b7c:	0007ac23          	sw	zero,24(a5)
10002b80:	fec42783          	lw	a5,-20(s0)
10002b84:	0007aa23          	sw	zero,20(a5)
10002b88:	00000013          	nop
10002b8c:	01c12403          	lw	s0,28(sp)
10002b90:	02010113          	addi	sp,sp,32
10002b94:	00008067          	ret

10002b98 <XUartLite_Recv>:
10002b98:	fd010113          	addi	sp,sp,-48
10002b9c:	02112623          	sw	ra,44(sp)
10002ba0:	02812423          	sw	s0,40(sp)
10002ba4:	03010413          	addi	s0,sp,48
10002ba8:	fca42e23          	sw	a0,-36(s0)
10002bac:	fcb42c23          	sw	a1,-40(s0)
10002bb0:	fcc42a23          	sw	a2,-44(s0)
10002bb4:	fdc42783          	lw	a5,-36(s0)
10002bb8:	02078063          	beqz	a5,10002bd8 <XUartLite_Recv+0x40>
10002bbc:	fd842783          	lw	a5,-40(s0)
10002bc0:	00078c63          	beqz	a5,10002bd8 <XUartLite_Recv+0x40>
10002bc4:	fdc42783          	lw	a5,-36(s0)
10002bc8:	0207a703          	lw	a4,32(a5)
10002bcc:	111117b7          	lui	a5,0x11111
10002bd0:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002bd4:	00f70663          	beq	a4,a5,10002be0 <XUartLite_Recv+0x48>
10002bd8:	00000793          	li	a5,0
10002bdc:	0940006f          	j	10002c70 <XUartLite_Recv+0xd8>
10002be0:	fdc42783          	lw	a5,-36(s0)
10002be4:	01c7a783          	lw	a5,28(a5)
10002be8:	00878793          	addi	a5,a5,8
10002bec:	00078513          	mv	a0,a5
10002bf0:	911ff0ef          	jal	ra,10002500 <Xil_In32>
10002bf4:	fea42623          	sw	a0,-20(s0)
10002bf8:	fdc42783          	lw	a5,-36(s0)
10002bfc:	01c7a783          	lw	a5,28(a5)
10002c00:	00c78793          	addi	a5,a5,12
10002c04:	00000593          	li	a1,0
10002c08:	00078513          	mv	a0,a5
10002c0c:	91dff0ef          	jal	ra,10002528 <Xil_Out32>
10002c10:	fdc42783          	lw	a5,-36(s0)
10002c14:	fd442703          	lw	a4,-44(s0)
10002c18:	04e7aa23          	sw	a4,84(a5)
10002c1c:	fdc42783          	lw	a5,-36(s0)
10002c20:	fd442703          	lw	a4,-44(s0)
10002c24:	04e7ac23          	sw	a4,88(a5)
10002c28:	fdc42783          	lw	a5,-36(s0)
10002c2c:	fd842703          	lw	a4,-40(s0)
10002c30:	04e7a823          	sw	a4,80(a5)
10002c34:	fdc42783          	lw	a5,-36(s0)
10002c38:	0407ae23          	sw	zero,92(a5)
10002c3c:	fec42783          	lw	a5,-20(s0)
10002c40:	0107f793          	andi	a5,a5,16
10002c44:	fef42623          	sw	a5,-20(s0)
10002c48:	fdc42783          	lw	a5,-36(s0)
10002c4c:	01c7a783          	lw	a5,28(a5)
10002c50:	00c78793          	addi	a5,a5,12
10002c54:	fec42583          	lw	a1,-20(s0)
10002c58:	00078513          	mv	a0,a5
10002c5c:	8cdff0ef          	jal	ra,10002528 <Xil_Out32>
10002c60:	fdc42503          	lw	a0,-36(s0)
10002c64:	b51ff0ef          	jal	ra,100027b4 <XUartLite_ReceiveBuffer>
10002c68:	fea42423          	sw	a0,-24(s0)
10002c6c:	fe842783          	lw	a5,-24(s0)
10002c70:	00078513          	mv	a0,a5
10002c74:	02c12083          	lw	ra,44(sp)
10002c78:	02812403          	lw	s0,40(sp)
10002c7c:	03010113          	addi	sp,sp,48
10002c80:	00008067          	ret

10002c84 <XUartLite_RepeatRecv>:
10002c84:	fd010113          	addi	sp,sp,-48
10002c88:	02112623          	sw	ra,44(sp)
10002c8c:	02812423          	sw	s0,40(sp)
10002c90:	03010413          	addi	s0,sp,48
10002c94:	fca42e23          	sw	a0,-36(s0)
10002c98:	fcb42c23          	sw	a1,-40(s0)
10002c9c:	fcc42a23          	sw	a2,-44(s0)
10002ca0:	fdc42783          	lw	a5,-36(s0)
10002ca4:	02078063          	beqz	a5,10002cc4 <XUartLite_RepeatRecv+0x40>
10002ca8:	fd842783          	lw	a5,-40(s0)
10002cac:	00078c63          	beqz	a5,10002cc4 <XUartLite_RepeatRecv+0x40>
10002cb0:	fdc42783          	lw	a5,-36(s0)
10002cb4:	0207a703          	lw	a4,32(a5)
10002cb8:	111117b7          	lui	a5,0x11111
10002cbc:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002cc0:	00f70663          	beq	a4,a5,10002ccc <XUartLite_RepeatRecv+0x48>
10002cc4:	00000793          	li	a5,0
10002cc8:	0800006f          	j	10002d48 <XUartLite_RepeatRecv+0xc4>
10002ccc:	fdc42783          	lw	a5,-36(s0)
10002cd0:	01c7a783          	lw	a5,28(a5)
10002cd4:	00878793          	addi	a5,a5,8
10002cd8:	00078513          	mv	a0,a5
10002cdc:	825ff0ef          	jal	ra,10002500 <Xil_In32>
10002ce0:	fea42623          	sw	a0,-20(s0)
10002ce4:	fdc42783          	lw	a5,-36(s0)
10002ce8:	01c7a783          	lw	a5,28(a5)
10002cec:	00c78793          	addi	a5,a5,12
10002cf0:	00000593          	li	a1,0
10002cf4:	00078513          	mv	a0,a5
10002cf8:	831ff0ef          	jal	ra,10002528 <Xil_Out32>
10002cfc:	fdc42783          	lw	a5,-36(s0)
10002d00:	fd442703          	lw	a4,-44(s0)
10002d04:	04e7aa23          	sw	a4,84(a5)
10002d08:	fdc42783          	lw	a5,-36(s0)
10002d0c:	fd442703          	lw	a4,-44(s0)
10002d10:	04e7ac23          	sw	a4,88(a5)
10002d14:	fdc42783          	lw	a5,-36(s0)
10002d18:	fd842703          	lw	a4,-40(s0)
10002d1c:	04e7a823          	sw	a4,80(a5)
10002d20:	fec42783          	lw	a5,-20(s0)
10002d24:	0107f793          	andi	a5,a5,16
10002d28:	fef42623          	sw	a5,-20(s0)
10002d2c:	fdc42783          	lw	a5,-36(s0)
10002d30:	01c7a783          	lw	a5,28(a5)
10002d34:	00c78793          	addi	a5,a5,12
10002d38:	fec42583          	lw	a1,-20(s0)
10002d3c:	00078513          	mv	a0,a5
10002d40:	fe8ff0ef          	jal	ra,10002528 <Xil_Out32>
10002d44:	fe842783          	lw	a5,-24(s0)
10002d48:	00078513          	mv	a0,a5
10002d4c:	02c12083          	lw	ra,44(sp)
10002d50:	02812403          	lw	s0,40(sp)
10002d54:	03010113          	addi	sp,sp,48
10002d58:	00008067          	ret

10002d5c <XUartLite_Send>:
10002d5c:	fd010113          	addi	sp,sp,-48
10002d60:	02112623          	sw	ra,44(sp)
10002d64:	02812423          	sw	s0,40(sp)
10002d68:	03010413          	addi	s0,sp,48
10002d6c:	fca42e23          	sw	a0,-36(s0)
10002d70:	fcb42c23          	sw	a1,-40(s0)
10002d74:	fcc42a23          	sw	a2,-44(s0)
10002d78:	fdc42783          	lw	a5,-36(s0)
10002d7c:	02078063          	beqz	a5,10002d9c <XUartLite_Send+0x40>
10002d80:	fd842783          	lw	a5,-40(s0)
10002d84:	00078c63          	beqz	a5,10002d9c <XUartLite_Send+0x40>
10002d88:	fdc42783          	lw	a5,-36(s0)
10002d8c:	0207a703          	lw	a4,32(a5)
10002d90:	111117b7          	lui	a5,0x11111
10002d94:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002d98:	00f70663          	beq	a4,a5,10002da4 <XUartLite_Send+0x48>
10002d9c:	00000793          	li	a5,0
10002da0:	08c0006f          	j	10002e2c <XUartLite_Send+0xd0>
10002da4:	fdc42783          	lw	a5,-36(s0)
10002da8:	01c7a783          	lw	a5,28(a5)
10002dac:	00878793          	addi	a5,a5,8
10002db0:	00078513          	mv	a0,a5
10002db4:	f4cff0ef          	jal	ra,10002500 <Xil_In32>
10002db8:	fea42623          	sw	a0,-20(s0)
10002dbc:	fdc42783          	lw	a5,-36(s0)
10002dc0:	01c7a783          	lw	a5,28(a5)
10002dc4:	00c78793          	addi	a5,a5,12
10002dc8:	00000593          	li	a1,0
10002dcc:	00078513          	mv	a0,a5
10002dd0:	f58ff0ef          	jal	ra,10002528 <Xil_Out32>
10002dd4:	fdc42783          	lw	a5,-36(s0)
10002dd8:	fd442703          	lw	a4,-44(s0)
10002ddc:	04e7a223          	sw	a4,68(a5)
10002de0:	fdc42783          	lw	a5,-36(s0)
10002de4:	fd442703          	lw	a4,-44(s0)
10002de8:	04e7a423          	sw	a4,72(a5)
10002dec:	fdc42783          	lw	a5,-36(s0)
10002df0:	fd842703          	lw	a4,-40(s0)
10002df4:	04e7a023          	sw	a4,64(a5)
10002df8:	fec42783          	lw	a5,-20(s0)
10002dfc:	0107f793          	andi	a5,a5,16
10002e00:	fef42623          	sw	a5,-20(s0)
10002e04:	fdc42783          	lw	a5,-36(s0)
10002e08:	01c7a783          	lw	a5,28(a5)
10002e0c:	00c78793          	addi	a5,a5,12
10002e10:	fec42583          	lw	a1,-20(s0)
10002e14:	00078513          	mv	a0,a5
10002e18:	f10ff0ef          	jal	ra,10002528 <Xil_Out32>
10002e1c:	fdc42503          	lw	a0,-36(s0)
10002e20:	829ff0ef          	jal	ra,10002648 <XUartLite_SendBuffer>
10002e24:	fea42423          	sw	a0,-24(s0)
10002e28:	fe842783          	lw	a5,-24(s0)
10002e2c:	00078513          	mv	a0,a5
10002e30:	02c12083          	lw	ra,44(sp)
10002e34:	02812403          	lw	s0,40(sp)
10002e38:	03010113          	addi	sp,sp,48
10002e3c:	00008067          	ret

10002e40 <XUartLite_EnableInterrupt>:
10002e40:	fe010113          	addi	sp,sp,-32
10002e44:	00112e23          	sw	ra,28(sp)
10002e48:	00812c23          	sw	s0,24(sp)
10002e4c:	02010413          	addi	s0,sp,32
10002e50:	fea42623          	sw	a0,-20(s0)
10002e54:	fec42783          	lw	a5,-20(s0)
10002e58:	01c7a783          	lw	a5,28(a5)
10002e5c:	00c78793          	addi	a5,a5,12
10002e60:	01000593          	li	a1,16
10002e64:	00078513          	mv	a0,a5
10002e68:	ec0ff0ef          	jal	ra,10002528 <Xil_Out32>
10002e6c:	00000013          	nop
10002e70:	01c12083          	lw	ra,28(sp)
10002e74:	01812403          	lw	s0,24(sp)
10002e78:	02010113          	addi	sp,sp,32
10002e7c:	00008067          	ret

10002e80 <XUartLite_DisableInterrupt>:
10002e80:	fe010113          	addi	sp,sp,-32
10002e84:	00112e23          	sw	ra,28(sp)
10002e88:	00812c23          	sw	s0,24(sp)
10002e8c:	02010413          	addi	s0,sp,32
10002e90:	fea42623          	sw	a0,-20(s0)
10002e94:	fec42783          	lw	a5,-20(s0)
10002e98:	01c7a783          	lw	a5,28(a5)
10002e9c:	00c78793          	addi	a5,a5,12
10002ea0:	00000593          	li	a1,0
10002ea4:	00078513          	mv	a0,a5
10002ea8:	e80ff0ef          	jal	ra,10002528 <Xil_Out32>
10002eac:	00000013          	nop
10002eb0:	01c12083          	lw	ra,28(sp)
10002eb4:	01812403          	lw	s0,24(sp)
10002eb8:	02010113          	addi	sp,sp,32
10002ebc:	00008067          	ret

10002ec0 <XUartLite_ResetFifos>:
10002ec0:	fd010113          	addi	sp,sp,-48
10002ec4:	02112623          	sw	ra,44(sp)
10002ec8:	02812423          	sw	s0,40(sp)
10002ecc:	03010413          	addi	s0,sp,48
10002ed0:	fca42e23          	sw	a0,-36(s0)
10002ed4:	fdc42783          	lw	a5,-36(s0)
10002ed8:	06078063          	beqz	a5,10002f38 <XUartLite_ResetFifos+0x78>
10002edc:	fdc42783          	lw	a5,-36(s0)
10002ee0:	0207a703          	lw	a4,32(a5)
10002ee4:	111117b7          	lui	a5,0x11111
10002ee8:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002eec:	04f71663          	bne	a4,a5,10002f38 <XUartLite_ResetFifos+0x78>
10002ef0:	fdc42783          	lw	a5,-36(s0)
10002ef4:	01c7a783          	lw	a5,28(a5)
10002ef8:	00878793          	addi	a5,a5,8
10002efc:	00078513          	mv	a0,a5
10002f00:	e00ff0ef          	jal	ra,10002500 <Xil_In32>
10002f04:	fea42623          	sw	a0,-20(s0)
10002f08:	fec42783          	lw	a5,-20(s0)
10002f0c:	0107f793          	andi	a5,a5,16
10002f10:	fef42623          	sw	a5,-20(s0)
10002f14:	fdc42783          	lw	a5,-36(s0)
10002f18:	01c7a783          	lw	a5,28(a5)
10002f1c:	00c78713          	addi	a4,a5,12
10002f20:	fec42783          	lw	a5,-20(s0)
10002f24:	0037e793          	ori	a5,a5,3
10002f28:	00078593          	mv	a1,a5
10002f2c:	00070513          	mv	a0,a4
10002f30:	df8ff0ef          	jal	ra,10002528 <Xil_Out32>
10002f34:	0080006f          	j	10002f3c <XUartLite_ResetFifos+0x7c>
10002f38:	00000013          	nop
10002f3c:	02c12083          	lw	ra,44(sp)
10002f40:	02812403          	lw	s0,40(sp)
10002f44:	03010113          	addi	sp,sp,48
10002f48:	00008067          	ret

10002f4c <XUartLite_RxUnlock>:
10002f4c:	fe010113          	addi	sp,sp,-32
10002f50:	00812e23          	sw	s0,28(sp)
10002f54:	02010413          	addi	s0,sp,32
10002f58:	fea42623          	sw	a0,-20(s0)
10002f5c:	fec42783          	lw	a5,-20(s0)
10002f60:	0407ae23          	sw	zero,92(a5)
10002f64:	00000013          	nop
10002f68:	01c12403          	lw	s0,28(sp)
10002f6c:	02010113          	addi	sp,sp,32
10002f70:	00008067          	ret

10002f74 <hw_uart0_is_valid>:
10002f74:	ff010113          	addi	sp,sp,-16
10002f78:	00812623          	sw	s0,12(sp)
10002f7c:	01010413          	addi	s0,sp,16
10002f80:	010007b7          	lui	a5,0x1000
10002f84:	0007a783          	lw	a5,0(a5) # 1000000 <DTCM+0xff8000>
10002f88:	0017f793          	andi	a5,a5,1
10002f8c:	00078513          	mv	a0,a5
10002f90:	00c12403          	lw	s0,12(sp)
10002f94:	01010113          	addi	sp,sp,16
10002f98:	00008067          	ret

10002f9c <hw_uart0_get_data>:
10002f9c:	fd010113          	addi	sp,sp,-48
10002fa0:	02812623          	sw	s0,44(sp)
10002fa4:	03010413          	addi	s0,sp,48
10002fa8:	fca42e23          	sw	a0,-36(s0)
10002fac:	00f00793          	li	a5,15
10002fb0:	fef42423          	sw	a5,-24(s0)
10002fb4:	fe042623          	sw	zero,-20(s0)
10002fb8:	0480006f          	j	10003000 <hw_uart0_get_data+0x64>
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
10002ff4:	fec42783          	lw	a5,-20(s0)
10002ff8:	00178793          	addi	a5,a5,1
10002ffc:	fef42623          	sw	a5,-20(s0)
10003000:	fec42703          	lw	a4,-20(s0)
10003004:	fe842783          	lw	a5,-24(s0)
10003008:	faf74ae3          	blt	a4,a5,10002fbc <hw_uart0_get_data+0x20>
1000300c:	00000013          	nop
10003010:	02c12403          	lw	s0,44(sp)
10003014:	03010113          	addi	sp,sp,48
10003018:	00008067          	ret

1000301c <hw_uart0_clr_state>:
1000301c:	ff010113          	addi	sp,sp,-16
10003020:	00812623          	sw	s0,12(sp)
10003024:	01010413          	addi	s0,sp,16
10003028:	010007b7          	lui	a5,0x1000
1000302c:	0007a023          	sw	zero,0(a5) # 1000000 <DTCM+0xff8000>
10003030:	00000013          	nop
10003034:	00c12403          	lw	s0,12(sp)
10003038:	01010113          	addi	sp,sp,16
1000303c:	00008067          	ret

10003040 <XUartLite_SendAll>:
10003040:	fd010113          	addi	sp,sp,-48
10003044:	02112623          	sw	ra,44(sp)
10003048:	02812423          	sw	s0,40(sp)
1000304c:	03010413          	addi	s0,sp,48
10003050:	fca42e23          	sw	a0,-36(s0)
10003054:	fcb42c23          	sw	a1,-40(s0)
10003058:	fcc42a23          	sw	a2,-44(s0)
1000305c:	fe042623          	sw	zero,-20(s0)
10003060:	fd442783          	lw	a5,-44(s0)
10003064:	fef42423          	sw	a5,-24(s0)
10003068:	0440006f          	j	100030ac <XUartLite_SendAll+0x6c>
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
1000309c:	fec42783          	lw	a5,-20(s0)
100030a0:	fd442703          	lw	a4,-44(s0)
100030a4:	40f707b3          	sub	a5,a4,a5
100030a8:	fef42423          	sw	a5,-24(s0)
100030ac:	fec42783          	lw	a5,-20(s0)
100030b0:	fd442703          	lw	a4,-44(s0)
100030b4:	fae7ece3          	bltu	a5,a4,1000306c <XUartLite_SendAll+0x2c>
100030b8:	00000013          	nop
100030bc:	02c12083          	lw	ra,44(sp)
100030c0:	02812403          	lw	s0,40(sp)
100030c4:	03010113          	addi	sp,sp,48
100030c8:	00008067          	ret

100030cc <test_uart_print>:
#include "p2p_demo.h"

#define CLOCK 250*1000*1000

void test_uart_print()
{
100030cc:	be010113          	addi	sp,sp,-1056
100030d0:	40112e23          	sw	ra,1052(sp)
100030d4:	40812c23          	sw	s0,1048(sp)
100030d8:	42010413          	addi	s0,sp,1056
    uint32_t var = 0xdeadbeef;
100030dc:	deadc7b7          	lui	a5,0xdeadc
100030e0:	eef78793          	addi	a5,a5,-273 # deadbeef <STACK_BASE_ADDR+0xceabbef3>
100030e4:	fef42623          	sw	a5,-20(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
100030e8:	100117b7          	lui	a5,0x10011
100030ec:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100030f0:	00079663          	bnez	a5,100030fc <test_uart_print+0x30>
100030f4:	00000013          	nop
}
100030f8:	0500006f          	j	10003148 <test_uart_print+0x7c>
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
100030fc:	bec40793          	addi	a5,s0,-1044
10003100:	40000713          	li	a4,1024
10003104:	00070613          	mv	a2,a4
10003108:	00000593          	li	a1,0
1000310c:	00078513          	mv	a0,a5
10003110:	a98ff0ef          	jal	ra,100023a8 <memset>
10003114:	bec40513          	addi	a0,s0,-1044
10003118:	fec42783          	lw	a5,-20(s0)
1000311c:	fec42703          	lw	a4,-20(s0)
10003120:	100106b7          	lui	a3,0x10010
10003124:	2d868693          	addi	a3,a3,728 # 100102d8 <p2p_demo+0xbd70>
10003128:	10010637          	lui	a2,0x10010
1000312c:	2e060613          	addi	a2,a2,736 # 100102e0 <p2p_demo+0xbd78>
10003130:	3ff00593          	li	a1,1023
10003134:	8acff0ef          	jal	ra,100021e0 <snprintf_>
10003138:	bec40793          	addi	a5,s0,-1044
1000313c:	00078593          	mv	a1,a5
10003140:	00400513          	li	a0,4
10003144:	c2cfd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10003148:	00000013          	nop
1000314c:	41c12083          	lw	ra,1052(sp)
10003150:	41812403          	lw	s0,1048(sp)
10003154:	42010113          	addi	sp,sp,1056
10003158:	00008067          	ret

1000315c <pool_c2h>:

void pool_c2h()
{
1000315c:	be010113          	addi	sp,sp,-1056
10003160:	40112e23          	sw	ra,1052(sp)
10003164:	40812c23          	sw	s0,1048(sp)
10003168:	42010413          	addi	s0,sp,1056
    // wait the c2h channel over
    KRNL_LOG_INFO(LOG_SYSTEM, "wait the C2H channel over");
1000316c:	100117b7          	lui	a5,0x10011
10003170:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003174:	04078463          	beqz	a5,100031bc <pool_c2h+0x60>
10003178:	bec40793          	addi	a5,s0,-1044
1000317c:	40000713          	li	a4,1024
10003180:	00070613          	mv	a2,a4
10003184:	00000593          	li	a1,0
10003188:	00078513          	mv	a0,a5
1000318c:	a1cff0ef          	jal	ra,100023a8 <memset>
10003190:	bec40713          	addi	a4,s0,-1044
10003194:	100107b7          	lui	a5,0x10010
10003198:	30c78613          	addi	a2,a5,780 # 1001030c <p2p_demo+0xbda4>
1000319c:	3ff00593          	li	a1,1023
100031a0:	00070513          	mv	a0,a4
100031a4:	83cff0ef          	jal	ra,100021e0 <snprintf_>
100031a8:	bec40793          	addi	a5,s0,-1044
100031ac:	00078593          	mv	a1,a5
100031b0:	00400513          	li	a0,4
100031b4:	bbcfd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100031b8:	0080006f          	j	100031c0 <pool_c2h+0x64>
100031bc:	00000013          	nop
    uint32_t sr;
    while (1)
    {
        sr = *pDescSR;
100031c0:	100117b7          	lui	a5,0x10011
100031c4:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
100031c8:	0007a783          	lw	a5,0(a5)
100031cc:	fef42623          	sw	a5,-20(s0)
        KRNL_LOG_INFO(LOG_SYSTEM, "sr is %d", sr);
100031d0:	100117b7          	lui	a5,0x10011
100031d4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100031d8:	04078663          	beqz	a5,10003224 <pool_c2h+0xc8>
100031dc:	bec40793          	addi	a5,s0,-1044
100031e0:	40000713          	li	a4,1024
100031e4:	00070613          	mv	a2,a4
100031e8:	00000593          	li	a1,0
100031ec:	00078513          	mv	a0,a5
100031f0:	9b8ff0ef          	jal	ra,100023a8 <memset>
100031f4:	bec40713          	addi	a4,s0,-1044
100031f8:	fec42683          	lw	a3,-20(s0)
100031fc:	100107b7          	lui	a5,0x10010
10003200:	32c78613          	addi	a2,a5,812 # 1001032c <p2p_demo+0xbdc4>
10003204:	3ff00593          	li	a1,1023
10003208:	00070513          	mv	a0,a4
1000320c:	fd5fe0ef          	jal	ra,100021e0 <snprintf_>
10003210:	bec40793          	addi	a5,s0,-1044
10003214:	00078593          	mv	a1,a5
10003218:	00400513          	li	a0,4
1000321c:	b54fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003220:	0080006f          	j	10003228 <pool_c2h+0xcc>
10003224:	00000013          	nop

        if((sr && (0x1 << 1)) == 0)
10003228:	fec42783          	lw	a5,-20(s0)
1000322c:	f8079ae3          	bnez	a5,100031c0 <pool_c2h+0x64>
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "C2H Channel turns to idle");
10003230:	100117b7          	lui	a5,0x10011
10003234:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003238:	00079663          	bnez	a5,10003244 <pool_c2h+0xe8>
1000323c:	00000013          	nop
            break;
10003240:	0440006f          	j	10003284 <pool_c2h+0x128>
            KRNL_LOG_INFO(LOG_SYSTEM, "C2H Channel turns to idle");
10003244:	bec40793          	addi	a5,s0,-1044
10003248:	40000713          	li	a4,1024
1000324c:	00070613          	mv	a2,a4
10003250:	00000593          	li	a1,0
10003254:	00078513          	mv	a0,a5
10003258:	950ff0ef          	jal	ra,100023a8 <memset>
1000325c:	bec40713          	addi	a4,s0,-1044
10003260:	100107b7          	lui	a5,0x10010
10003264:	33878613          	addi	a2,a5,824 # 10010338 <p2p_demo+0xbdd0>
10003268:	3ff00593          	li	a1,1023
1000326c:	00070513          	mv	a0,a4
10003270:	f71fe0ef          	jal	ra,100021e0 <snprintf_>
10003274:	bec40793          	addi	a5,s0,-1044
10003278:	00078593          	mv	a1,a5
1000327c:	00400513          	li	a0,4
10003280:	af0fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
        }
    }

    return;
10003284:	00000013          	nop
}
10003288:	41c12083          	lw	ra,1052(sp)
1000328c:	41812403          	lw	s0,1048(sp)
10003290:	42010113          	addi	sp,sp,1056
10003294:	00008067          	ret

10003298 <pool_h2c>:

void pool_h2c()
{
10003298:	be010113          	addi	sp,sp,-1056
1000329c:	40112e23          	sw	ra,1052(sp)
100032a0:	40812c23          	sw	s0,1048(sp)
100032a4:	42010413          	addi	s0,sp,1056
    // wait the c2h channel over
    KRNL_LOG_INFO(LOG_SYSTEM, "wait the H2C channel over");
100032a8:	100117b7          	lui	a5,0x10011
100032ac:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100032b0:	04078463          	beqz	a5,100032f8 <pool_h2c+0x60>
100032b4:	bec40793          	addi	a5,s0,-1044
100032b8:	40000713          	li	a4,1024
100032bc:	00070613          	mv	a2,a4
100032c0:	00000593          	li	a1,0
100032c4:	00078513          	mv	a0,a5
100032c8:	8e0ff0ef          	jal	ra,100023a8 <memset>
100032cc:	bec40713          	addi	a4,s0,-1044
100032d0:	100107b7          	lui	a5,0x10010
100032d4:	35878613          	addi	a2,a5,856 # 10010358 <p2p_demo+0xbdf0>
100032d8:	3ff00593          	li	a1,1023
100032dc:	00070513          	mv	a0,a4
100032e0:	f01fe0ef          	jal	ra,100021e0 <snprintf_>
100032e4:	bec40793          	addi	a5,s0,-1044
100032e8:	00078593          	mv	a1,a5
100032ec:	00400513          	li	a0,4
100032f0:	a80fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100032f4:	0080006f          	j	100032fc <pool_h2c+0x64>
100032f8:	00000013          	nop
    uint32_t sr;
    while (1)
    {
        sr = *pDescSR;
100032fc:	100117b7          	lui	a5,0x10011
10003300:	a787a783          	lw	a5,-1416(a5) # 10010a78 <pDescSR>
10003304:	0007a783          	lw	a5,0(a5)
10003308:	fef42623          	sw	a5,-20(s0)
        KRNL_LOG_INFO(LOG_SYSTEM, "sr is %d", sr);
1000330c:	100117b7          	lui	a5,0x10011
10003310:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003314:	04078663          	beqz	a5,10003360 <pool_h2c+0xc8>
10003318:	bec40793          	addi	a5,s0,-1044
1000331c:	40000713          	li	a4,1024
10003320:	00070613          	mv	a2,a4
10003324:	00000593          	li	a1,0
10003328:	00078513          	mv	a0,a5
1000332c:	87cff0ef          	jal	ra,100023a8 <memset>
10003330:	bec40713          	addi	a4,s0,-1044
10003334:	fec42683          	lw	a3,-20(s0)
10003338:	100107b7          	lui	a5,0x10010
1000333c:	32c78613          	addi	a2,a5,812 # 1001032c <p2p_demo+0xbdc4>
10003340:	3ff00593          	li	a1,1023
10003344:	00070513          	mv	a0,a4
10003348:	e99fe0ef          	jal	ra,100021e0 <snprintf_>
1000334c:	bec40793          	addi	a5,s0,-1044
10003350:	00078593          	mv	a1,a5
10003354:	00400513          	li	a0,4
10003358:	a18fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000335c:	0080006f          	j	10003364 <pool_h2c+0xcc>
10003360:	00000013          	nop

        if((sr && (0x1 << 0)) == 0)
10003364:	fec42783          	lw	a5,-20(s0)
10003368:	f8079ae3          	bnez	a5,100032fc <pool_h2c+0x64>
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "H2C Channel turns to idle");
1000336c:	100117b7          	lui	a5,0x10011
10003370:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003374:	00079663          	bnez	a5,10003380 <pool_h2c+0xe8>
10003378:	00000013          	nop
            break;
1000337c:	0440006f          	j	100033c0 <pool_h2c+0x128>
            KRNL_LOG_INFO(LOG_SYSTEM, "H2C Channel turns to idle");
10003380:	bec40793          	addi	a5,s0,-1044
10003384:	40000713          	li	a4,1024
10003388:	00070613          	mv	a2,a4
1000338c:	00000593          	li	a1,0
10003390:	00078513          	mv	a0,a5
10003394:	814ff0ef          	jal	ra,100023a8 <memset>
10003398:	bec40713          	addi	a4,s0,-1044
1000339c:	100107b7          	lui	a5,0x10010
100033a0:	37878613          	addi	a2,a5,888 # 10010378 <p2p_demo+0xbe10>
100033a4:	3ff00593          	li	a1,1023
100033a8:	00070513          	mv	a0,a4
100033ac:	e35fe0ef          	jal	ra,100021e0 <snprintf_>
100033b0:	bec40793          	addi	a5,s0,-1044
100033b4:	00078593          	mv	a1,a5
100033b8:	00400513          	li	a0,4
100033bc:	9b4fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
        }
    }

    return;
100033c0:	00000013          	nop
}
100033c4:	41c12083          	lw	ra,1052(sp)
100033c8:	41812403          	lw	s0,1048(sp)
100033cc:	42010113          	addi	sp,sp,1056
100033d0:	00008067          	ret

100033d4 <get_head>:

void get_head(uint32_t head_hi, uint32_t head_lo)
{
100033d4:	bd010113          	addi	sp,sp,-1072
100033d8:	42112623          	sw	ra,1068(sp)
100033dc:	42812423          	sw	s0,1064(sp)
100033e0:	43010413          	addi	s0,sp,1072
100033e4:	bca42e23          	sw	a0,-1060(s0)
100033e8:	bcb42c23          	sw	a1,-1064(s0)
    *(uint32_t*)(BASE_H2C_BRAM | (0x0)) = head_lo;
100033ec:	100107b7          	lui	a5,0x10010
100033f0:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
100033f4:	00078713          	mv	a4,a5
100033f8:	bd842783          	lw	a5,-1064(s0)
100033fc:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_H2C_BRAM | (0x4)) = head_hi;
10003400:	100107b7          	lui	a5,0x10010
10003404:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10003408:	0047e793          	ori	a5,a5,4
1000340c:	00078713          	mv	a4,a5
10003410:	bdc42783          	lw	a5,-1060(s0)
10003414:	00f72023          	sw	a5,0(a4)
    uint32_t dst = (BASE_FLAG_BRAM | 0x8);
10003418:	100107b7          	lui	a5,0x10010
1000341c:	7547a783          	lw	a5,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003420:	0087e793          	ori	a5,a5,8
10003424:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)(BASE_H2C_BRAM | (0x8)) = dst;
10003428:	100107b7          	lui	a5,0x10010
1000342c:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10003430:	0087e793          	ori	a5,a5,8
10003434:	00078713          	mv	a4,a5
10003438:	fec42783          	lw	a5,-20(s0)
1000343c:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_H2C_BRAM | (0xc)) = 0x00000000;
10003440:	100107b7          	lui	a5,0x10010
10003444:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10003448:	00c7e793          	ori	a5,a5,12
1000344c:	0007a023          	sw	zero,0(a5)
    *(uint32_t*)(BASE_H2C_BRAM | (0x10)) = 4 * 1024;
10003450:	100107b7          	lui	a5,0x10010
10003454:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10003458:	0107e793          	ori	a5,a5,16
1000345c:	00078713          	mv	a4,a5
10003460:	000017b7          	lui	a5,0x1
10003464:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_H2C_BRAM | (0x14)) = 0x1;
10003468:	100107b7          	lui	a5,0x10010
1000346c:	74c7a783          	lw	a5,1868(a5) # 1001074c <BASE_H2C_BRAM>
10003470:	0147e793          	ori	a5,a5,20
10003474:	00078713          	mv	a4,a5
10003478:	00100793          	li	a5,1
1000347c:	00f72023          	sw	a5,0(a4)
    // *(uint32_t*)(BASE_H2C_BRAM | (0x8)) = dst;
    // *(uint32_t*)(BASE_H2C_BRAM | (0xc)) = 0x00000000;
    // *(uint32_t*)(BASE_H2C_BRAM | (0x10)) = 4 * 1024;
    // *(uint32_t*)(BASE_H2C_BRAM | (0x14)) = 0x1;

    KRNL_LOG_INFO(LOG_SYSTEM, "get head from %08x_%08x (gpu) to %08x (fpga)", head_hi, head_lo, dst);
10003480:	100117b7          	lui	a5,0x10011
10003484:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003488:	04078863          	beqz	a5,100034d8 <get_head+0x104>
1000348c:	bec40793          	addi	a5,s0,-1044
10003490:	40000713          	li	a4,1024
10003494:	00070613          	mv	a2,a4
10003498:	00000593          	li	a1,0
1000349c:	00078513          	mv	a0,a5
100034a0:	f09fe0ef          	jal	ra,100023a8 <memset>
100034a4:	bec40513          	addi	a0,s0,-1044
100034a8:	fec42783          	lw	a5,-20(s0)
100034ac:	bd842703          	lw	a4,-1064(s0)
100034b0:	bdc42683          	lw	a3,-1060(s0)
100034b4:	10010637          	lui	a2,0x10010
100034b8:	39860613          	addi	a2,a2,920 # 10010398 <p2p_demo+0xbe30>
100034bc:	3ff00593          	li	a1,1023
100034c0:	d21fe0ef          	jal	ra,100021e0 <snprintf_>
100034c4:	bec40793          	addi	a5,s0,-1044
100034c8:	00078593          	mv	a1,a5
100034cc:	00400513          	li	a0,4
100034d0:	8a0fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100034d4:	0080006f          	j	100034dc <get_head+0x108>
100034d8:	00000013          	nop
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x20) = 0x0;
100034dc:	100107b7          	lui	a5,0x10010
100034e0:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
100034e4:	0207e793          	ori	a5,a5,32
100034e8:	0007a023          	sw	zero,0(a5)
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x24) = 1;
100034ec:	100107b7          	lui	a5,0x10010
100034f0:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
100034f4:	0247e793          	ori	a5,a5,36
100034f8:	00078713          	mv	a4,a5
100034fc:	00100793          	li	a5,1
10003500:	00f72023          	sw	a5,0(a4)

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x1;
10003504:	100107b7          	lui	a5,0x10010
10003508:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
1000350c:	00078713          	mv	a4,a5
10003510:	00100793          	li	a5,1
10003514:	00f72023          	sw	a5,0(a4)
}
10003518:	00000013          	nop
1000351c:	42c12083          	lw	ra,1068(sp)
10003520:	42812403          	lw	s0,1064(sp)
10003524:	43010113          	addi	sp,sp,1072
10003528:	00008067          	ret

1000352c <update_tail>:

void update_tail(uint32_t tail_hi, uint32_t tail_lo)
{
1000352c:	bd010113          	addi	sp,sp,-1072
10003530:	42112623          	sw	ra,1068(sp)
10003534:	42812423          	sw	s0,1064(sp)
10003538:	43010413          	addi	s0,sp,1072
1000353c:	bca42e23          	sw	a0,-1060(s0)
10003540:	bcb42c23          	sw	a1,-1064(s0)
    uint32_t src = (BASE_FLAG_BRAM | (0x8 + 4 * 1024));
10003544:	100107b7          	lui	a5,0x10010
10003548:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
1000354c:	000017b7          	lui	a5,0x1
10003550:	00878793          	addi	a5,a5,8 # 1008 <NPU_STATUS2>
10003554:	00f767b3          	or	a5,a4,a5
10003558:	fef42623          	sw	a5,-20(s0)
    *(uint32_t*)(BASE_C2H_BRAM |(0x0)) = src;
1000355c:	100107b7          	lui	a5,0x10010
10003560:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
10003564:	00078713          	mv	a4,a5
10003568:	fec42783          	lw	a5,-20(s0)
1000356c:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_C2H_BRAM |(0x4)) = 0x00000000;
10003570:	100107b7          	lui	a5,0x10010
10003574:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
10003578:	0047e793          	ori	a5,a5,4
1000357c:	0007a023          	sw	zero,0(a5)
    *(uint32_t*)(BASE_C2H_BRAM | (0x8)) = tail_lo;
10003580:	100107b7          	lui	a5,0x10010
10003584:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
10003588:	0087e793          	ori	a5,a5,8
1000358c:	00078713          	mv	a4,a5
10003590:	bd842783          	lw	a5,-1064(s0)
10003594:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_C2H_BRAM | (0xc)) = tail_hi;
10003598:	100107b7          	lui	a5,0x10010
1000359c:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100035a0:	00c7e793          	ori	a5,a5,12
100035a4:	00078713          	mv	a4,a5
100035a8:	bdc42783          	lw	a5,-1060(s0)
100035ac:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_C2H_BRAM | (0x10)) = 4 * 1024;
100035b0:	100107b7          	lui	a5,0x10010
100035b4:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100035b8:	0107e793          	ori	a5,a5,16
100035bc:	00078713          	mv	a4,a5
100035c0:	000017b7          	lui	a5,0x1
100035c4:	00f72023          	sw	a5,0(a4)
    *(uint32_t*)(BASE_C2H_BRAM | (0x14)) = 0x1;
100035c8:	100107b7          	lui	a5,0x10010
100035cc:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100035d0:	0147e793          	ori	a5,a5,20
100035d4:	00078713          	mv	a4,a5
100035d8:	00100793          	li	a5,1
100035dc:	00f72023          	sw	a5,0(a4)
    // *(uint32_t*)(BASE_C2H_BRAM | (0x8)) = status_lo;
    // *(uint32_t*)(BASE_C2H_BRAM | (0xc)) = status_hi;
    // *(uint32_t*)(BASE_C2H_BRAM | (0x10)) = 4 * 1024;
    // *(uint32_t*)(BASE_C2H_BRAM | (0x14)) = 0x1;

    KRNL_LOG_INFO(LOG_SYSTEM, "update tail from %08x (fpga) to %08x_%08x (gpu)", src, tail_hi, tail_lo);
100035e0:	100117b7          	lui	a5,0x10011
100035e4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100035e8:	04078863          	beqz	a5,10003638 <update_tail+0x10c>
100035ec:	bec40793          	addi	a5,s0,-1044
100035f0:	40000713          	li	a4,1024
100035f4:	00070613          	mv	a2,a4
100035f8:	00000593          	li	a1,0
100035fc:	00078513          	mv	a0,a5
10003600:	da9fe0ef          	jal	ra,100023a8 <memset>
10003604:	bec40513          	addi	a0,s0,-1044
10003608:	bd842783          	lw	a5,-1064(s0)
1000360c:	bdc42703          	lw	a4,-1060(s0)
10003610:	fec42683          	lw	a3,-20(s0)
10003614:	10010637          	lui	a2,0x10010
10003618:	3c860613          	addi	a2,a2,968 # 100103c8 <p2p_demo+0xbe60>
1000361c:	3ff00593          	li	a1,1023
10003620:	bc1fe0ef          	jal	ra,100021e0 <snprintf_>
10003624:	bec40793          	addi	a5,s0,-1044
10003628:	00078593          	mv	a1,a5
1000362c:	00400513          	li	a0,4
10003630:	f41fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003634:	0080006f          	j	1000363c <update_tail+0x110>
10003638:	00000013          	nop
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x40) = 0x0;
1000363c:	100107b7          	lui	a5,0x10010
10003640:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10003644:	0407e793          	ori	a5,a5,64
10003648:	0007a023          	sw	zero,0(a5)
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x44) = 1;
1000364c:	100107b7          	lui	a5,0x10010
10003650:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10003654:	0447e793          	ori	a5,a5,68
10003658:	00078713          	mv	a4,a5
1000365c:	00100793          	li	a5,1
10003660:	00f72023          	sw	a5,0(a4)

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x2;
10003664:	100107b7          	lui	a5,0x10010
10003668:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
1000366c:	00078713          	mv	a4,a5
10003670:	00200793          	li	a5,2
10003674:	00f72023          	sw	a5,0(a4)
}
10003678:	00000013          	nop
1000367c:	42c12083          	lw	ra,1068(sp)
10003680:	42812403          	lw	s0,1064(sp)
10003684:	43010113          	addi	sp,sp,1072
10003688:	00008067          	ret

1000368c <trans>:


void trans(uint32_t src, uint32_t gbuf_addr, uint32_t bytes)
{
1000368c:	bc010113          	addi	sp,sp,-1088
10003690:	42112e23          	sw	ra,1084(sp)
10003694:	42812c23          	sw	s0,1080(sp)
10003698:	44010413          	addi	s0,sp,1088
1000369c:	bca42623          	sw	a0,-1076(s0)
100036a0:	bcb42423          	sw	a1,-1080(s0)
100036a4:	bcc42223          	sw	a2,-1084(s0)
    //C2H
    KRNL_LOG_INFO(LOG_SYSTEM, "trans start");
100036a8:	100117b7          	lui	a5,0x10011
100036ac:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100036b0:	04078463          	beqz	a5,100036f8 <trans+0x6c>
100036b4:	bd040793          	addi	a5,s0,-1072
100036b8:	40000713          	li	a4,1024
100036bc:	00070613          	mv	a2,a4
100036c0:	00000593          	li	a1,0
100036c4:	00078513          	mv	a0,a5
100036c8:	ce1fe0ef          	jal	ra,100023a8 <memset>
100036cc:	bd040713          	addi	a4,s0,-1072
100036d0:	100107b7          	lui	a5,0x10010
100036d4:	3fc78613          	addi	a2,a5,1020 # 100103fc <p2p_demo+0xbe94>
100036d8:	3ff00593          	li	a1,1023
100036dc:	00070513          	mv	a0,a4
100036e0:	b01fe0ef          	jal	ra,100021e0 <snprintf_>
100036e4:	bd040793          	addi	a5,s0,-1072
100036e8:	00078593          	mv	a1,a5
100036ec:	00400513          	li	a0,4
100036f0:	e81fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100036f4:	0080006f          	j	100036fc <trans+0x70>
100036f8:	00000013          	nop
    uint32_t fpga_lo = src;
100036fc:	bcc42783          	lw	a5,-1076(s0)
10003700:	fef42623          	sw	a5,-20(s0)
    uint32_t desc_num = *(uint32_t*)gbuf_addr;
10003704:	bc842783          	lw	a5,-1080(s0)
10003708:	0007a783          	lw	a5,0(a5)
1000370c:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "desc num: %d", desc_num);
10003710:	100117b7          	lui	a5,0x10011
10003714:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003718:	04078663          	beqz	a5,10003764 <trans+0xd8>
1000371c:	bd040793          	addi	a5,s0,-1072
10003720:	40000713          	li	a4,1024
10003724:	00070613          	mv	a2,a4
10003728:	00000593          	li	a1,0
1000372c:	00078513          	mv	a0,a5
10003730:	c79fe0ef          	jal	ra,100023a8 <memset>
10003734:	bd040713          	addi	a4,s0,-1072
10003738:	fe442683          	lw	a3,-28(s0)
1000373c:	100107b7          	lui	a5,0x10010
10003740:	40c78613          	addi	a2,a5,1036 # 1001040c <p2p_demo+0xbea4>
10003744:	3ff00593          	li	a1,1023
10003748:	00070513          	mv	a0,a4
1000374c:	a95fe0ef          	jal	ra,100021e0 <snprintf_>
10003750:	bd040793          	addi	a5,s0,-1072
10003754:	00078593          	mv	a1,a5
10003758:	00400513          	li	a0,4
1000375c:	e15fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003760:	0080006f          	j	10003768 <trans+0xdc>
10003764:	00000013          	nop
    uint32_t k = (bytes + 64 * 1024 - 1) / (64 * 1024);
10003768:	bc442703          	lw	a4,-1084(s0)
1000376c:	000107b7          	lui	a5,0x10
10003770:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
10003774:	00f707b3          	add	a5,a4,a5
10003778:	0107d793          	srli	a5,a5,0x10
1000377c:	fef42023          	sw	a5,-32(s0)
    uint32_t remote_lo;
    uint32_t remote_hi;
    uint32_t len;
    uint32_t ctrl;
    if(desc_num < k)
10003780:	fe442703          	lw	a4,-28(s0)
10003784:	fe042783          	lw	a5,-32(s0)
10003788:	04f77e63          	bgeu	a4,a5,100037e4 <trans+0x158>
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "the data size is greater than gpu buf size");
1000378c:	100117b7          	lui	a5,0x10011
10003790:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003794:	00079663          	bnez	a5,100037a0 <trans+0x114>
10003798:	00000013          	nop
        return;
1000379c:	2f80006f          	j	10003a94 <trans+0x408>
        KRNL_LOG_INFO(LOG_SYSTEM, "the data size is greater than gpu buf size");
100037a0:	bd040793          	addi	a5,s0,-1072
100037a4:	40000713          	li	a4,1024
100037a8:	00070613          	mv	a2,a4
100037ac:	00000593          	li	a1,0
100037b0:	00078513          	mv	a0,a5
100037b4:	bf5fe0ef          	jal	ra,100023a8 <memset>
100037b8:	bd040713          	addi	a4,s0,-1072
100037bc:	100107b7          	lui	a5,0x10010
100037c0:	41c78613          	addi	a2,a5,1052 # 1001041c <p2p_demo+0xbeb4>
100037c4:	3ff00593          	li	a1,1023
100037c8:	00070513          	mv	a0,a4
100037cc:	a15fe0ef          	jal	ra,100021e0 <snprintf_>
100037d0:	bd040793          	addi	a5,s0,-1072
100037d4:	00078593          	mv	a1,a5
100037d8:	00400513          	li	a0,4
100037dc:	d95fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
        return;
100037e0:	2b40006f          	j	10003a94 <trans+0x408>
    }
    for(int i = 0; i < k; i++)
100037e4:	fe042423          	sw	zero,-24(s0)
100037e8:	20c0006f          	j	100039f4 <trans+0x368>
    {
        remote_lo = *(uint32_t*)(gbuf_addr + 0x4 + i * 12);
100037ec:	fe842703          	lw	a4,-24(s0)
100037f0:	00070793          	mv	a5,a4
100037f4:	00179793          	slli	a5,a5,0x1
100037f8:	00e787b3          	add	a5,a5,a4
100037fc:	00279793          	slli	a5,a5,0x2
10003800:	00078713          	mv	a4,a5
10003804:	bc842783          	lw	a5,-1080(s0)
10003808:	00f707b3          	add	a5,a4,a5
1000380c:	00478793          	addi	a5,a5,4
10003810:	0007a783          	lw	a5,0(a5)
10003814:	fcf42e23          	sw	a5,-36(s0)
        remote_hi = *(uint32_t*)(gbuf_addr + 0x8 + i * 12);
10003818:	fe842703          	lw	a4,-24(s0)
1000381c:	00070793          	mv	a5,a4
10003820:	00179793          	slli	a5,a5,0x1
10003824:	00e787b3          	add	a5,a5,a4
10003828:	00279793          	slli	a5,a5,0x2
1000382c:	00078713          	mv	a4,a5
10003830:	bc842783          	lw	a5,-1080(s0)
10003834:	00f707b3          	add	a5,a4,a5
10003838:	00878793          	addi	a5,a5,8
1000383c:	0007a783          	lw	a5,0(a5)
10003840:	fcf42c23          	sw	a5,-40(s0)
        len = *(uint32_t*)(gbuf_addr + 0xc + i * 12);
10003844:	fe842703          	lw	a4,-24(s0)
10003848:	00070793          	mv	a5,a4
1000384c:	00179793          	slli	a5,a5,0x1
10003850:	00e787b3          	add	a5,a5,a4
10003854:	00279793          	slli	a5,a5,0x2
10003858:	00078713          	mv	a4,a5
1000385c:	bc842783          	lw	a5,-1080(s0)
10003860:	00f707b3          	add	a5,a4,a5
10003864:	00c78793          	addi	a5,a5,12
10003868:	0007a783          	lw	a5,0(a5)
1000386c:	fcf42a23          	sw	a5,-44(s0)
        ctrl = (i == (k - 1)) ? 0x1 : 0x4;
10003870:	fe042783          	lw	a5,-32(s0)
10003874:	fff78713          	addi	a4,a5,-1
10003878:	fe842783          	lw	a5,-24(s0)
1000387c:	00f71663          	bne	a4,a5,10003888 <trans+0x1fc>
10003880:	00100793          	li	a5,1
10003884:	0080006f          	j	1000388c <trans+0x200>
10003888:	00400793          	li	a5,4
1000388c:	fcf42823          	sw	a5,-48(s0)
        *(uint32_t*)(BASE_C2H_BRAM |(i * 0x20 + 0x0)) = fpga_lo;
10003890:	fe842783          	lw	a5,-24(s0)
10003894:	00579713          	slli	a4,a5,0x5
10003898:	100107b7          	lui	a5,0x10010
1000389c:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100038a0:	00f767b3          	or	a5,a4,a5
100038a4:	00078713          	mv	a4,a5
100038a8:	fec42783          	lw	a5,-20(s0)
100038ac:	00f72023          	sw	a5,0(a4)
        *(uint32_t*)(BASE_C2H_BRAM |(i * 0x20 + 0x4)) = 0x00000000;
100038b0:	fe842783          	lw	a5,-24(s0)
100038b4:	00579793          	slli	a5,a5,0x5
100038b8:	00478713          	addi	a4,a5,4
100038bc:	100107b7          	lui	a5,0x10010
100038c0:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100038c4:	00f767b3          	or	a5,a4,a5
100038c8:	0007a023          	sw	zero,0(a5)
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x8)) = remote_lo;
100038cc:	fe842783          	lw	a5,-24(s0)
100038d0:	00579793          	slli	a5,a5,0x5
100038d4:	00878713          	addi	a4,a5,8
100038d8:	100107b7          	lui	a5,0x10010
100038dc:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
100038e0:	00f767b3          	or	a5,a4,a5
100038e4:	00078713          	mv	a4,a5
100038e8:	fdc42783          	lw	a5,-36(s0)
100038ec:	00f72023          	sw	a5,0(a4)
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0xc)) = remote_hi;
100038f0:	fe842783          	lw	a5,-24(s0)
100038f4:	00579793          	slli	a5,a5,0x5
100038f8:	00c78713          	addi	a4,a5,12
100038fc:	100107b7          	lui	a5,0x10010
10003900:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
10003904:	00f767b3          	or	a5,a4,a5
10003908:	00078713          	mv	a4,a5
1000390c:	fd842783          	lw	a5,-40(s0)
10003910:	00f72023          	sw	a5,0(a4)
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x10)) = (i == (k - 1)) ? len : (bytes % (64 * 1024));
10003914:	fe042783          	lw	a5,-32(s0)
10003918:	fff78713          	addi	a4,a5,-1
1000391c:	fe842783          	lw	a5,-24(s0)
10003920:	00f70c63          	beq	a4,a5,10003938 <trans+0x2ac>
10003924:	bc442703          	lw	a4,-1084(s0)
10003928:	000107b7          	lui	a5,0x10
1000392c:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
10003930:	00f777b3          	and	a5,a4,a5
10003934:	0080006f          	j	1000393c <trans+0x2b0>
10003938:	fd442783          	lw	a5,-44(s0)
1000393c:	fe842703          	lw	a4,-24(s0)
10003940:	00571713          	slli	a4,a4,0x5
10003944:	01070693          	addi	a3,a4,16
10003948:	10010737          	lui	a4,0x10010
1000394c:	75072703          	lw	a4,1872(a4) # 10010750 <BASE_C2H_BRAM>
10003950:	00e6e733          	or	a4,a3,a4
10003954:	00f72023          	sw	a5,0(a4)
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x14)) = ctrl;
10003958:	fe842783          	lw	a5,-24(s0)
1000395c:	00579793          	slli	a5,a5,0x5
10003960:	01478713          	addi	a4,a5,20
10003964:	100107b7          	lui	a5,0x10010
10003968:	7507a783          	lw	a5,1872(a5) # 10010750 <BASE_C2H_BRAM>
1000396c:	00f767b3          	or	a5,a4,a5
10003970:	00078713          	mv	a4,a5
10003974:	fd042783          	lw	a5,-48(s0)
10003978:	00f72023          	sw	a5,0(a4)
        fpga_lo += len;
1000397c:	fec42703          	lw	a4,-20(s0)
10003980:	fd442783          	lw	a5,-44(s0)
10003984:	00f707b3          	add	a5,a4,a5
10003988:	fef42623          	sw	a5,-20(s0)
        KRNL_LOG_INFO(LOG_SYSTEM, "remote addr: %08x_%08x, fpga: %08x", remote_hi, remote_lo, fpga_lo);
1000398c:	100117b7          	lui	a5,0x10011
10003990:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003994:	04078863          	beqz	a5,100039e4 <trans+0x358>
10003998:	bd040793          	addi	a5,s0,-1072
1000399c:	40000713          	li	a4,1024
100039a0:	00070613          	mv	a2,a4
100039a4:	00000593          	li	a1,0
100039a8:	00078513          	mv	a0,a5
100039ac:	9fdfe0ef          	jal	ra,100023a8 <memset>
100039b0:	bd040513          	addi	a0,s0,-1072
100039b4:	fec42783          	lw	a5,-20(s0)
100039b8:	fdc42703          	lw	a4,-36(s0)
100039bc:	fd842683          	lw	a3,-40(s0)
100039c0:	10010637          	lui	a2,0x10010
100039c4:	44c60613          	addi	a2,a2,1100 # 1001044c <p2p_demo+0xbee4>
100039c8:	3ff00593          	li	a1,1023
100039cc:	815fe0ef          	jal	ra,100021e0 <snprintf_>
100039d0:	bd040793          	addi	a5,s0,-1072
100039d4:	00078593          	mv	a1,a5
100039d8:	00400513          	li	a0,4
100039dc:	b95fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100039e0:	0080006f          	j	100039e8 <trans+0x35c>
100039e4:	00000013          	nop
    for(int i = 0; i < k; i++)
100039e8:	fe842783          	lw	a5,-24(s0)
100039ec:	00178793          	addi	a5,a5,1
100039f0:	fef42423          	sw	a5,-24(s0)
100039f4:	fe842783          	lw	a5,-24(s0)
100039f8:	fe042703          	lw	a4,-32(s0)
100039fc:	dee7e8e3          	bltu	a5,a4,100037ec <trans+0x160>
    }
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x40) = 0x0;
10003a00:	100107b7          	lui	a5,0x10010
10003a04:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10003a08:	0407e793          	ori	a5,a5,64
10003a0c:	0007a023          	sw	zero,0(a5)
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x44) = k;
10003a10:	100107b7          	lui	a5,0x10010
10003a14:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10003a18:	0447e793          	ori	a5,a5,68
10003a1c:	00078713          	mv	a4,a5
10003a20:	fe042783          	lw	a5,-32(s0)
10003a24:	00f72023          	sw	a5,0(a4)
    KRNL_LOG_INFO(LOG_SYSTEM, "all times: %d", k);
10003a28:	100117b7          	lui	a5,0x10011
10003a2c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003a30:	04078663          	beqz	a5,10003a7c <trans+0x3f0>
10003a34:	bd040793          	addi	a5,s0,-1072
10003a38:	40000713          	li	a4,1024
10003a3c:	00070613          	mv	a2,a4
10003a40:	00000593          	li	a1,0
10003a44:	00078513          	mv	a0,a5
10003a48:	961fe0ef          	jal	ra,100023a8 <memset>
10003a4c:	bd040713          	addi	a4,s0,-1072
10003a50:	fe042683          	lw	a3,-32(s0)
10003a54:	100107b7          	lui	a5,0x10010
10003a58:	47478613          	addi	a2,a5,1140 # 10010474 <p2p_demo+0xbf0c>
10003a5c:	3ff00593          	li	a1,1023
10003a60:	00070513          	mv	a0,a4
10003a64:	f7cfe0ef          	jal	ra,100021e0 <snprintf_>
10003a68:	bd040793          	addi	a5,s0,-1072
10003a6c:	00078593          	mv	a1,a5
10003a70:	00400513          	li	a0,4
10003a74:	afdfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003a78:	0080006f          	j	10003a80 <trans+0x3f4>
10003a7c:	00000013          	nop

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x2;
10003a80:	100107b7          	lui	a5,0x10010
10003a84:	73c7a783          	lw	a5,1852(a5) # 1001073c <BASE_ADDR_DSC_CTL>
10003a88:	00078713          	mv	a4,a5
10003a8c:	00200793          	li	a5,2
10003a90:	00f72023          	sw	a5,0(a4)
}
10003a94:	43c12083          	lw	ra,1084(sp)
10003a98:	43812403          	lw	s0,1080(sp)
10003a9c:	44010113          	addi	sp,sp,1088
10003aa0:	00008067          	ret

10003aa4 <process_desc>:

void process_desc()
{
10003aa4:	ba010113          	addi	sp,sp,-1120
10003aa8:	44112e23          	sw	ra,1116(sp)
10003aac:	44812c23          	sw	s0,1112(sp)
10003ab0:	46010413          	addi	s0,sp,1120
    // plddr: p2p 0x0 - 0x1fffffff; acc 0x20000000
    KRNL_LOG_INFO(LOG_SYSTEM, "parse info from host");
10003ab4:	100117b7          	lui	a5,0x10011
10003ab8:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003abc:	04078463          	beqz	a5,10003b04 <process_desc+0x60>
10003ac0:	ba440793          	addi	a5,s0,-1116
10003ac4:	40000713          	li	a4,1024
10003ac8:	00070613          	mv	a2,a4
10003acc:	00000593          	li	a1,0
10003ad0:	00078513          	mv	a0,a5
10003ad4:	8d5fe0ef          	jal	ra,100023a8 <memset>
10003ad8:	ba440713          	addi	a4,s0,-1116
10003adc:	100107b7          	lui	a5,0x10010
10003ae0:	48878613          	addi	a2,a5,1160 # 10010488 <p2p_demo+0xbf20>
10003ae4:	3ff00593          	li	a1,1023
10003ae8:	00070513          	mv	a0,a4
10003aec:	ef4fe0ef          	jal	ra,100021e0 <snprintf_>
10003af0:	ba440793          	addi	a5,s0,-1116
10003af4:	00078593          	mv	a1,a5
10003af8:	00400513          	li	a0,4
10003afc:	a75fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003b00:	0080006f          	j	10003b08 <process_desc+0x64>
10003b04:	00000013          	nop
    uint32_t info_addr = 0x00000000;
10003b08:	fc042c23          	sw	zero,-40(s0)
    uint32_t buf_num = *(uint32_t*)(info_addr);
10003b0c:	fd842783          	lw	a5,-40(s0)
10003b10:	0007a783          	lw	a5,0(a5)
10003b14:	fcf42a23          	sw	a5,-44(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "buf_num: %d", buf_num);
10003b18:	100117b7          	lui	a5,0x10011
10003b1c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003b20:	04078663          	beqz	a5,10003b6c <process_desc+0xc8>
10003b24:	ba440793          	addi	a5,s0,-1116
10003b28:	40000713          	li	a4,1024
10003b2c:	00070613          	mv	a2,a4
10003b30:	00000593          	li	a1,0
10003b34:	00078513          	mv	a0,a5
10003b38:	871fe0ef          	jal	ra,100023a8 <memset>
10003b3c:	ba440713          	addi	a4,s0,-1116
10003b40:	fd442683          	lw	a3,-44(s0)
10003b44:	100107b7          	lui	a5,0x10010
10003b48:	4a078613          	addi	a2,a5,1184 # 100104a0 <p2p_demo+0xbf38>
10003b4c:	3ff00593          	li	a1,1023
10003b50:	00070513          	mv	a0,a4
10003b54:	e8cfe0ef          	jal	ra,100021e0 <snprintf_>
10003b58:	ba440793          	addi	a5,s0,-1116
10003b5c:	00078593          	mv	a1,a5
10003b60:	00400513          	li	a0,4
10003b64:	a0dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003b68:	0080006f          	j	10003b70 <process_desc+0xcc>
10003b6c:	00000013          	nop
    info_addr += 4;
10003b70:	fd842783          	lw	a5,-40(s0)
10003b74:	00478793          	addi	a5,a5,4
10003b78:	fcf42c23          	sw	a5,-40(s0)
    uint32_t head_hi = *(uint32_t*)(info_addr);
10003b7c:	fd842783          	lw	a5,-40(s0)
10003b80:	0007a783          	lw	a5,0(a5)
10003b84:	fcf42823          	sw	a5,-48(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "head_hi: %08x", head_hi);
10003b88:	100117b7          	lui	a5,0x10011
10003b8c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003b90:	04078663          	beqz	a5,10003bdc <process_desc+0x138>
10003b94:	ba440793          	addi	a5,s0,-1116
10003b98:	40000713          	li	a4,1024
10003b9c:	00070613          	mv	a2,a4
10003ba0:	00000593          	li	a1,0
10003ba4:	00078513          	mv	a0,a5
10003ba8:	801fe0ef          	jal	ra,100023a8 <memset>
10003bac:	ba440713          	addi	a4,s0,-1116
10003bb0:	fd042683          	lw	a3,-48(s0)
10003bb4:	100107b7          	lui	a5,0x10010
10003bb8:	4b078613          	addi	a2,a5,1200 # 100104b0 <p2p_demo+0xbf48>
10003bbc:	3ff00593          	li	a1,1023
10003bc0:	00070513          	mv	a0,a4
10003bc4:	e1cfe0ef          	jal	ra,100021e0 <snprintf_>
10003bc8:	ba440793          	addi	a5,s0,-1116
10003bcc:	00078593          	mv	a1,a5
10003bd0:	00400513          	li	a0,4
10003bd4:	99dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003bd8:	0080006f          	j	10003be0 <process_desc+0x13c>
10003bdc:	00000013          	nop
    info_addr += 4;
10003be0:	fd842783          	lw	a5,-40(s0)
10003be4:	00478793          	addi	a5,a5,4
10003be8:	fcf42c23          	sw	a5,-40(s0)
    uint32_t head_lo = *(uint32_t*)(info_addr);
10003bec:	fd842783          	lw	a5,-40(s0)
10003bf0:	0007a783          	lw	a5,0(a5)
10003bf4:	fcf42623          	sw	a5,-52(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "head_lo: %08x", head_lo);
10003bf8:	100117b7          	lui	a5,0x10011
10003bfc:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003c00:	04078663          	beqz	a5,10003c4c <process_desc+0x1a8>
10003c04:	ba440793          	addi	a5,s0,-1116
10003c08:	40000713          	li	a4,1024
10003c0c:	00070613          	mv	a2,a4
10003c10:	00000593          	li	a1,0
10003c14:	00078513          	mv	a0,a5
10003c18:	f90fe0ef          	jal	ra,100023a8 <memset>
10003c1c:	ba440713          	addi	a4,s0,-1116
10003c20:	fcc42683          	lw	a3,-52(s0)
10003c24:	100107b7          	lui	a5,0x10010
10003c28:	4c478613          	addi	a2,a5,1220 # 100104c4 <p2p_demo+0xbf5c>
10003c2c:	3ff00593          	li	a1,1023
10003c30:	00070513          	mv	a0,a4
10003c34:	dacfe0ef          	jal	ra,100021e0 <snprintf_>
10003c38:	ba440793          	addi	a5,s0,-1116
10003c3c:	00078593          	mv	a1,a5
10003c40:	00400513          	li	a0,4
10003c44:	92dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003c48:	0080006f          	j	10003c50 <process_desc+0x1ac>
10003c4c:	00000013          	nop
    info_addr += 4;
10003c50:	fd842783          	lw	a5,-40(s0)
10003c54:	00478793          	addi	a5,a5,4
10003c58:	fcf42c23          	sw	a5,-40(s0)
    uint32_t tail_hi = *(uint32_t*)(info_addr);
10003c5c:	fd842783          	lw	a5,-40(s0)
10003c60:	0007a783          	lw	a5,0(a5)
10003c64:	fcf42423          	sw	a5,-56(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "tail_hi: %08x", tail_hi);
10003c68:	100117b7          	lui	a5,0x10011
10003c6c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003c70:	04078663          	beqz	a5,10003cbc <process_desc+0x218>
10003c74:	ba440793          	addi	a5,s0,-1116
10003c78:	40000713          	li	a4,1024
10003c7c:	00070613          	mv	a2,a4
10003c80:	00000593          	li	a1,0
10003c84:	00078513          	mv	a0,a5
10003c88:	f20fe0ef          	jal	ra,100023a8 <memset>
10003c8c:	ba440713          	addi	a4,s0,-1116
10003c90:	fc842683          	lw	a3,-56(s0)
10003c94:	100107b7          	lui	a5,0x10010
10003c98:	4d878613          	addi	a2,a5,1240 # 100104d8 <p2p_demo+0xbf70>
10003c9c:	3ff00593          	li	a1,1023
10003ca0:	00070513          	mv	a0,a4
10003ca4:	d3cfe0ef          	jal	ra,100021e0 <snprintf_>
10003ca8:	ba440793          	addi	a5,s0,-1116
10003cac:	00078593          	mv	a1,a5
10003cb0:	00400513          	li	a0,4
10003cb4:	8bdfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003cb8:	0080006f          	j	10003cc0 <process_desc+0x21c>
10003cbc:	00000013          	nop
    info_addr += 4;
10003cc0:	fd842783          	lw	a5,-40(s0)
10003cc4:	00478793          	addi	a5,a5,4
10003cc8:	fcf42c23          	sw	a5,-40(s0)
    uint32_t tail_lo = *(uint32_t*)(info_addr);
10003ccc:	fd842783          	lw	a5,-40(s0)
10003cd0:	0007a783          	lw	a5,0(a5)
10003cd4:	fcf42223          	sw	a5,-60(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "tail_lo: %08x", tail_lo);
10003cd8:	100117b7          	lui	a5,0x10011
10003cdc:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003ce0:	04078663          	beqz	a5,10003d2c <process_desc+0x288>
10003ce4:	ba440793          	addi	a5,s0,-1116
10003ce8:	40000713          	li	a4,1024
10003cec:	00070613          	mv	a2,a4
10003cf0:	00000593          	li	a1,0
10003cf4:	00078513          	mv	a0,a5
10003cf8:	eb0fe0ef          	jal	ra,100023a8 <memset>
10003cfc:	ba440713          	addi	a4,s0,-1116
10003d00:	fc442683          	lw	a3,-60(s0)
10003d04:	100107b7          	lui	a5,0x10010
10003d08:	4ec78613          	addi	a2,a5,1260 # 100104ec <p2p_demo+0xbf84>
10003d0c:	3ff00593          	li	a1,1023
10003d10:	00070513          	mv	a0,a4
10003d14:	cccfe0ef          	jal	ra,100021e0 <snprintf_>
10003d18:	ba440793          	addi	a5,s0,-1116
10003d1c:	00078593          	mv	a1,a5
10003d20:	00400513          	li	a0,4
10003d24:	84dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003d28:	0080006f          	j	10003d30 <process_desc+0x28c>
10003d2c:	00000013          	nop
    info_addr += 4;
10003d30:	fd842783          	lw	a5,-40(s0)
10003d34:	00478793          	addi	a5,a5,4
10003d38:	fcf42c23          	sw	a5,-40(s0)

    uint32_t size_group = (1 + 8 * 3) * sizeof(uint32_t);
10003d3c:	06400793          	li	a5,100
10003d40:	fcf42023          	sw	a5,-64(s0)
    
    uint32_t IP_OVER = 0;
10003d44:	fe042623          	sw	zero,-20(s0)
    // bank size in plddr
    uint32_t bytes = 32 * 1024;
10003d48:	000087b7          	lui	a5,0x8
10003d4c:	faf42e23          	sw	a5,-68(s0)
    uint32_t pl_buf_num = 4;
10003d50:	00400793          	li	a5,4
10003d54:	faf42c23          	sw	a5,-72(s0)
    // IP head -> IP tail -> GPU head -> GPU tail -> IP over
    // IP h/t content is the address
    // GPU h/t content is the index
    uint32_t IP_head = *(uint32_t*)(BASE_FLAG_BRAM | 0x00000000);
10003d58:	100107b7          	lui	a5,0x10010
10003d5c:	7547a783          	lw	a5,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003d60:	0007a783          	lw	a5,0(a5)
10003d64:	fef42423          	sw	a5,-24(s0)
    uint32_t IP_tail = IP_head + 1;
10003d68:	fe842783          	lw	a5,-24(s0)
10003d6c:	00178793          	addi	a5,a5,1
10003d70:	fef42223          	sw	a5,-28(s0)
    uint32_t GPU_head = 0;
10003d74:	fa042a23          	sw	zero,-76(s0)
    uint32_t GPU_tail = 0;
10003d78:	fe042023          	sw	zero,-32(s0)
    uint32_t trans_time = 0;
10003d7c:	fa042823          	sw	zero,-80(s0)
    uint32_t cycle = 0;
10003d80:	fc042e23          	sw	zero,-36(s0)
    uint32_t src;
    uint32_t gpu_buf;
    uint32_t ACC_DDR_ADDR = IP_head;
10003d84:	fe842783          	lw	a5,-24(s0)
10003d88:	faf42623          	sw	a5,-84(s0)
    // 0 : head catch up tail
    // 1 : tail catch up head
    *(uint32_t*)(BASE_FLAG_BRAM | (0x10 + 8 * 1024)) = 0;
10003d8c:	100107b7          	lui	a5,0x10010
10003d90:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003d94:	000027b7          	lui	a5,0x2
10003d98:	01078793          	addi	a5,a5,16 # 2010 <NPU_UPADD_PARA2+0xbfc>
10003d9c:	00f767b3          	or	a5,a4,a5
10003da0:	0007a023          	sw	zero,0(a5)

    while (!IP_OVER | !(IP_head == IP_tail) | !(*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 0))
10003da4:	3b00006f          	j	10004154 <process_desc+0x6b0>
    {
        IP_tail = *(uint32_t*)(BASE_FLAG_BRAM | 0x00000004);
10003da8:	100107b7          	lui	a5,0x10010
10003dac:	7547a783          	lw	a5,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003db0:	0047e793          	ori	a5,a5,4
10003db4:	0007a783          	lw	a5,0(a5)
10003db8:	fef42223          	sw	a5,-28(s0)
        KRNL_LOG_INFO(LOG_SYSTEM, "IP tail: %08x", IP_tail);
10003dbc:	100117b7          	lui	a5,0x10011
10003dc0:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003dc4:	04078663          	beqz	a5,10003e10 <process_desc+0x36c>
10003dc8:	ba440793          	addi	a5,s0,-1116
10003dcc:	40000713          	li	a4,1024
10003dd0:	00070613          	mv	a2,a4
10003dd4:	00000593          	li	a1,0
10003dd8:	00078513          	mv	a0,a5
10003ddc:	dccfe0ef          	jal	ra,100023a8 <memset>
10003de0:	ba440713          	addi	a4,s0,-1116
10003de4:	fe442683          	lw	a3,-28(s0)
10003de8:	100107b7          	lui	a5,0x10010
10003dec:	50078613          	addi	a2,a5,1280 # 10010500 <p2p_demo+0xbf98>
10003df0:	3ff00593          	li	a1,1023
10003df4:	00070513          	mv	a0,a4
10003df8:	be8fe0ef          	jal	ra,100021e0 <snprintf_>
10003dfc:	ba440793          	addi	a5,s0,-1116
10003e00:	00078593          	mv	a1,a5
10003e04:	00400513          	li	a0,4
10003e08:	f68fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003e0c:	0080006f          	j	10003e14 <process_desc+0x370>
10003e10:	00000013          	nop
        if((IP_head == IP_tail) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 0))
10003e14:	fe842703          	lw	a4,-24(s0)
10003e18:	fe442783          	lw	a5,-28(s0)
10003e1c:	40f707b3          	sub	a5,a4,a5
10003e20:	0017b793          	seqz	a5,a5
10003e24:	0ff7f713          	andi	a4,a5,255
10003e28:	100107b7          	lui	a5,0x10010
10003e2c:	7547a683          	lw	a3,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003e30:	000027b7          	lui	a5,0x2
10003e34:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10003e38:	00f6e7b3          	or	a5,a3,a5
10003e3c:	0007a783          	lw	a5,0(a5)
10003e40:	0017b793          	seqz	a5,a5
10003e44:	0ff7f793          	andi	a5,a5,255
10003e48:	00f777b3          	and	a5,a4,a5
10003e4c:	0ff7f793          	andi	a5,a5,255
10003e50:	04078e63          	beqz	a5,10003eac <process_desc+0x408>
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "ip head = tail!");
10003e54:	100117b7          	lui	a5,0x10011
10003e58:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003e5c:	00079663          	bnez	a5,10003e68 <process_desc+0x3c4>
10003e60:	00000013          	nop
            break;
10003e64:	3440006f          	j	100041a8 <process_desc+0x704>
            KRNL_LOG_INFO(LOG_SYSTEM, "ip head = tail!");
10003e68:	ba440793          	addi	a5,s0,-1116
10003e6c:	40000713          	li	a4,1024
10003e70:	00070613          	mv	a2,a4
10003e74:	00000593          	li	a1,0
10003e78:	00078513          	mv	a0,a5
10003e7c:	d2cfe0ef          	jal	ra,100023a8 <memset>
10003e80:	ba440713          	addi	a4,s0,-1116
10003e84:	100107b7          	lui	a5,0x10010
10003e88:	51478613          	addi	a2,a5,1300 # 10010514 <p2p_demo+0xbfac>
10003e8c:	3ff00593          	li	a1,1023
10003e90:	00070513          	mv	a0,a4
10003e94:	b4cfe0ef          	jal	ra,100021e0 <snprintf_>
10003e98:	ba440793          	addi	a5,s0,-1116
10003e9c:	00078593          	mv	a1,a5
10003ea0:	00400513          	li	a0,4
10003ea4:	eccfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
            break;
10003ea8:	3000006f          	j	100041a8 <process_desc+0x704>
        }
        else
        {
            GPU_head = *(uint32_t*)(BASE_FLAG_BRAM | (0x8));
10003eac:	100107b7          	lui	a5,0x10010
10003eb0:	7547a783          	lw	a5,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10003eb4:	0087e793          	ori	a5,a5,8
10003eb8:	0007a783          	lw	a5,0(a5)
10003ebc:	faf42a23          	sw	a5,-76(s0)
            KRNL_LOG_INFO(LOG_SYSTEM, "GPU head: %d", GPU_head);
10003ec0:	100117b7          	lui	a5,0x10011
10003ec4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003ec8:	04078663          	beqz	a5,10003f14 <process_desc+0x470>
10003ecc:	ba440793          	addi	a5,s0,-1116
10003ed0:	40000713          	li	a4,1024
10003ed4:	00070613          	mv	a2,a4
10003ed8:	00000593          	li	a1,0
10003edc:	00078513          	mv	a0,a5
10003ee0:	cc8fe0ef          	jal	ra,100023a8 <memset>
10003ee4:	ba440713          	addi	a4,s0,-1116
10003ee8:	fb442683          	lw	a3,-76(s0)
10003eec:	100107b7          	lui	a5,0x10010
10003ef0:	52878613          	addi	a2,a5,1320 # 10010528 <p2p_demo+0xbfc0>
10003ef4:	3ff00593          	li	a1,1023
10003ef8:	00070513          	mv	a0,a4
10003efc:	ae4fe0ef          	jal	ra,100021e0 <snprintf_>
10003f00:	ba440793          	addi	a5,s0,-1116
10003f04:	00078593          	mv	a1,a5
10003f08:	00400513          	li	a0,4
10003f0c:	e64fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003f10:	0080006f          	j	10003f18 <process_desc+0x474>
10003f14:	00000013          	nop
            if((GPU_head == ((GPU_tail + 1) % buf_num)))
10003f18:	fe042783          	lw	a5,-32(s0)
10003f1c:	00178713          	addi	a4,a5,1
10003f20:	fd442783          	lw	a5,-44(s0)
10003f24:	02f777b3          	remu	a5,a4,a5
10003f28:	fb442703          	lw	a4,-76(s0)
10003f2c:	06f71663          	bne	a4,a5,10003f98 <process_desc+0x4f4>
            {
                KRNL_LOG_INFO(LOG_SYSTEM, "gpu head = tail!");
10003f30:	100117b7          	lui	a5,0x10011
10003f34:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003f38:	04078463          	beqz	a5,10003f80 <process_desc+0x4dc>
10003f3c:	ba440793          	addi	a5,s0,-1116
10003f40:	40000713          	li	a4,1024
10003f44:	00070613          	mv	a2,a4
10003f48:	00000593          	li	a1,0
10003f4c:	00078513          	mv	a0,a5
10003f50:	c58fe0ef          	jal	ra,100023a8 <memset>
10003f54:	ba440713          	addi	a4,s0,-1116
10003f58:	100107b7          	lui	a5,0x10010
10003f5c:	53878613          	addi	a2,a5,1336 # 10010538 <p2p_demo+0xbfd0>
10003f60:	3ff00593          	li	a1,1023
10003f64:	00070513          	mv	a0,a4
10003f68:	a78fe0ef          	jal	ra,100021e0 <snprintf_>
10003f6c:	ba440793          	addi	a5,s0,-1116
10003f70:	00078593          	mv	a1,a5
10003f74:	00400513          	li	a0,4
10003f78:	df8fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003f7c:	0080006f          	j	10003f84 <process_desc+0x4e0>
10003f80:	00000013          	nop
                get_head(head_hi, head_lo);
10003f84:	fcc42583          	lw	a1,-52(s0)
10003f88:	fd042503          	lw	a0,-48(s0)
10003f8c:	c48ff0ef          	jal	ra,100033d4 <get_head>
                pool_h2c();
10003f90:	b08ff0ef          	jal	ra,10003298 <pool_h2c>
                break;
10003f94:	2140006f          	j	100041a8 <process_desc+0x704>
            }
            else
            {
                src = IP_head;
10003f98:	fe842783          	lw	a5,-24(s0)
10003f9c:	faf42423          	sw	a5,-88(s0)
                KRNL_LOG_INFO(LOG_SYSTEM, "IP head: %08x", IP_head);
10003fa0:	100117b7          	lui	a5,0x10011
10003fa4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10003fa8:	04078663          	beqz	a5,10003ff4 <process_desc+0x550>
10003fac:	ba440793          	addi	a5,s0,-1116
10003fb0:	40000713          	li	a4,1024
10003fb4:	00070613          	mv	a2,a4
10003fb8:	00000593          	li	a1,0
10003fbc:	00078513          	mv	a0,a5
10003fc0:	be8fe0ef          	jal	ra,100023a8 <memset>
10003fc4:	ba440713          	addi	a4,s0,-1116
10003fc8:	fe842683          	lw	a3,-24(s0)
10003fcc:	100107b7          	lui	a5,0x10010
10003fd0:	54c78613          	addi	a2,a5,1356 # 1001054c <p2p_demo+0xbfe4>
10003fd4:	3ff00593          	li	a1,1023
10003fd8:	00070513          	mv	a0,a4
10003fdc:	a04fe0ef          	jal	ra,100021e0 <snprintf_>
10003fe0:	ba440793          	addi	a5,s0,-1116
10003fe4:	00078593          	mv	a1,a5
10003fe8:	00400513          	li	a0,4
10003fec:	d84fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003ff0:	0080006f          	j	10003ff8 <process_desc+0x554>
10003ff4:	00000013          	nop
                get_head(head_hi, head_lo);
10003ff8:	fcc42583          	lw	a1,-52(s0)
10003ffc:	fd042503          	lw	a0,-48(s0)
10004000:	bd4ff0ef          	jal	ra,100033d4 <get_head>
                IP_head = ACC_DDR_ADDR + ((cycle + 1) % pl_buf_num) * bytes;
10004004:	fdc42783          	lw	a5,-36(s0)
10004008:	00178713          	addi	a4,a5,1
1000400c:	fb842783          	lw	a5,-72(s0)
10004010:	02f77733          	remu	a4,a4,a5
10004014:	fbc42783          	lw	a5,-68(s0)
10004018:	02f707b3          	mul	a5,a4,a5
1000401c:	fac42703          	lw	a4,-84(s0)
10004020:	00f707b3          	add	a5,a4,a5
10004024:	fef42423          	sw	a5,-24(s0)
                gpu_buf = info_addr + GPU_tail * size_group;
10004028:	fe042703          	lw	a4,-32(s0)
1000402c:	fc042783          	lw	a5,-64(s0)
10004030:	02f707b3          	mul	a5,a4,a5
10004034:	fd842703          	lw	a4,-40(s0)
10004038:	00f707b3          	add	a5,a4,a5
1000403c:	faf42223          	sw	a5,-92(s0)
                KRNL_LOG_INFO(LOG_SYSTEM, "GPU tail: %d", GPU_tail);
10004040:	100117b7          	lui	a5,0x10011
10004044:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004048:	04078663          	beqz	a5,10004094 <process_desc+0x5f0>
1000404c:	ba440793          	addi	a5,s0,-1116
10004050:	40000713          	li	a4,1024
10004054:	00070613          	mv	a2,a4
10004058:	00000593          	li	a1,0
1000405c:	00078513          	mv	a0,a5
10004060:	b48fe0ef          	jal	ra,100023a8 <memset>
10004064:	ba440713          	addi	a4,s0,-1116
10004068:	fe042683          	lw	a3,-32(s0)
1000406c:	100107b7          	lui	a5,0x10010
10004070:	56078613          	addi	a2,a5,1376 # 10010560 <p2p_demo+0xbff8>
10004074:	3ff00593          	li	a1,1023
10004078:	00070513          	mv	a0,a4
1000407c:	964fe0ef          	jal	ra,100021e0 <snprintf_>
10004080:	ba440793          	addi	a5,s0,-1116
10004084:	00078593          	mv	a1,a5
10004088:	00400513          	li	a0,4
1000408c:	ce4fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004090:	0080006f          	j	10004098 <process_desc+0x5f4>
10004094:	00000013          	nop
                trans(src, gpu_buf, bytes);
10004098:	fbc42603          	lw	a2,-68(s0)
1000409c:	fa442583          	lw	a1,-92(s0)
100040a0:	fa842503          	lw	a0,-88(s0)
100040a4:	de8ff0ef          	jal	ra,1000368c <trans>
                pool_c2h();
100040a8:	8b4ff0ef          	jal	ra,1000315c <pool_c2h>
                if(IP_head == IP_tail)
100040ac:	fe842703          	lw	a4,-24(s0)
100040b0:	fe442783          	lw	a5,-28(s0)
100040b4:	00f71e63          	bne	a4,a5,100040d0 <process_desc+0x62c>
                {
                    *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 0;
100040b8:	100107b7          	lui	a5,0x10010
100040bc:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
100040c0:	000027b7          	lui	a5,0x2
100040c4:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
100040c8:	00f767b3          	or	a5,a4,a5
100040cc:	0007a023          	sw	zero,0(a5)
                }
                *(uint32_t*)(BASE_FLAG_BRAM | 0x0) = IP_head;
100040d0:	100107b7          	lui	a5,0x10010
100040d4:	7547a783          	lw	a5,1876(a5) # 10010754 <BASE_FLAG_BRAM>
100040d8:	00078713          	mv	a4,a5
100040dc:	fe842783          	lw	a5,-24(s0)
100040e0:	00f72023          	sw	a5,0(a4)
                GPU_tail = (GPU_tail + 1) % buf_num;
100040e4:	fe042783          	lw	a5,-32(s0)
100040e8:	00178713          	addi	a4,a5,1
100040ec:	fd442783          	lw	a5,-44(s0)
100040f0:	02f777b3          	remu	a5,a4,a5
100040f4:	fef42023          	sw	a5,-32(s0)
                *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 4 * 1024)) = GPU_tail;
100040f8:	100107b7          	lui	a5,0x10010
100040fc:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10004100:	000017b7          	lui	a5,0x1
10004104:	00878793          	addi	a5,a5,8 # 1008 <NPU_STATUS2>
10004108:	00f767b3          	or	a5,a4,a5
1000410c:	00078713          	mv	a4,a5
10004110:	fe042783          	lw	a5,-32(s0)
10004114:	00f72023          	sw	a5,0(a4)
                update_tail(tail_hi, tail_lo);
10004118:	fc442583          	lw	a1,-60(s0)
1000411c:	fc842503          	lw	a0,-56(s0)
10004120:	c0cff0ef          	jal	ra,1000352c <update_tail>
                pool_c2h();
10004124:	838ff0ef          	jal	ra,1000315c <pool_c2h>
                pool_h2c();
10004128:	970ff0ef          	jal	ra,10003298 <pool_h2c>

                cycle++;
1000412c:	fdc42783          	lw	a5,-36(s0)
10004130:	00178793          	addi	a5,a5,1
10004134:	fcf42e23          	sw	a5,-36(s0)
                IP_OVER = *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024));
10004138:	100107b7          	lui	a5,0x10010
1000413c:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10004140:	000027b7          	lui	a5,0x2
10004144:	00878793          	addi	a5,a5,8 # 2008 <NPU_UPADD_PARA2+0xbf4>
10004148:	00f767b3          	or	a5,a4,a5
1000414c:	0007a783          	lw	a5,0(a5)
10004150:	fef42623          	sw	a5,-20(s0)
    while (!IP_OVER | !(IP_head == IP_tail) | !(*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 0))
10004154:	fec42783          	lw	a5,-20(s0)
10004158:	0017b793          	seqz	a5,a5
1000415c:	0ff7f713          	andi	a4,a5,255
10004160:	fe842683          	lw	a3,-24(s0)
10004164:	fe442783          	lw	a5,-28(s0)
10004168:	40f687b3          	sub	a5,a3,a5
1000416c:	00f037b3          	snez	a5,a5
10004170:	0ff7f793          	andi	a5,a5,255
10004174:	00f767b3          	or	a5,a4,a5
10004178:	0ff7f793          	andi	a5,a5,255
1000417c:	00078693          	mv	a3,a5
10004180:	100107b7          	lui	a5,0x10010
10004184:	7547a703          	lw	a4,1876(a5) # 10010754 <BASE_FLAG_BRAM>
10004188:	000027b7          	lui	a5,0x2
1000418c:	00c78793          	addi	a5,a5,12 # 200c <NPU_UPADD_PARA2+0xbf8>
10004190:	00f767b3          	or	a5,a4,a5
10004194:	0007a783          	lw	a5,0(a5)
10004198:	00f037b3          	snez	a5,a5
1000419c:	0ff7f793          	andi	a5,a5,255
100041a0:	00f6e7b3          	or	a5,a3,a5
100041a4:	c00792e3          	bnez	a5,10003da8 <process_desc+0x304>
            }
        }
    }
    
}
100041a8:	00000013          	nop
100041ac:	45c12083          	lw	ra,1116(sp)
100041b0:	45812403          	lw	s0,1112(sp)
100041b4:	46010113          	addi	sp,sp,1120
100041b8:	00008067          	ret

100041bc <performance_monitor>:


void performance_monitor()
{
100041bc:	bd010113          	addi	sp,sp,-1072
100041c0:	42112623          	sw	ra,1068(sp)
100041c4:	42812423          	sw	s0,1064(sp)
100041c8:	43010413          	addi	s0,sp,1072
    uint32_t perfH2CSpeed;
    uint32_t perfC2HLen;
    uint32_t perfC2HCycle;
    uint32_t perfC2HSpeed;

    perfH2CLen = *pDescH2CPerfLen;
100041cc:	100117b7          	lui	a5,0x10011
100041d0:	a8c7a783          	lw	a5,-1396(a5) # 10010a8c <pDescH2CPerfLen>
100041d4:	0007a783          	lw	a5,0(a5)
100041d8:	fef42623          	sw	a5,-20(s0)
    perfH2CCycle = *pDescH2CPerfCycle;
100041dc:	100117b7          	lui	a5,0x10011
100041e0:	a887a783          	lw	a5,-1400(a5) # 10010a88 <pDescH2CPerfCycle>
100041e4:	0007a783          	lw	a5,0(a5)
100041e8:	fef42423          	sw	a5,-24(s0)
    perfH2CSpeed = CLOCK * (perfH2CLen / perfH2CCycle) / (1024 * 1024 * 1024);
100041ec:	fec42703          	lw	a4,-20(s0)
100041f0:	fe842783          	lw	a5,-24(s0)
100041f4:	02f75733          	divu	a4,a4,a5
100041f8:	0ee6b7b7          	lui	a5,0xee6b
100041fc:	28078793          	addi	a5,a5,640 # ee6b280 <PLIC+0x2e6b280>
10004200:	02f707b3          	mul	a5,a4,a5
10004204:	01e7d793          	srli	a5,a5,0x1e
10004208:	fef42223          	sw	a5,-28(s0)

    perfC2HLen = *pDescC2HPerfLen;
1000420c:	100117b7          	lui	a5,0x10011
10004210:	aa07a783          	lw	a5,-1376(a5) # 10010aa0 <pDescC2HPerfLen>
10004214:	0007a783          	lw	a5,0(a5)
10004218:	fef42023          	sw	a5,-32(s0)
    perfC2HCycle = *pDescC2HPerfCycle;
1000421c:	100117b7          	lui	a5,0x10011
10004220:	a9c7a783          	lw	a5,-1380(a5) # 10010a9c <pDescC2HPerfCycle>
10004224:	0007a783          	lw	a5,0(a5)
10004228:	fcf42e23          	sw	a5,-36(s0)
    perfC2HSpeed = CLOCK * (perfC2HLen / perfC2HCycle) / (1024 * 1024);
1000422c:	fe042703          	lw	a4,-32(s0)
10004230:	fdc42783          	lw	a5,-36(s0)
10004234:	02f75733          	divu	a4,a4,a5
10004238:	0ee6b7b7          	lui	a5,0xee6b
1000423c:	28078793          	addi	a5,a5,640 # ee6b280 <PLIC+0x2e6b280>
10004240:	02f707b3          	mul	a5,a4,a5
10004244:	0147d793          	srli	a5,a5,0x14
10004248:	fcf42c23          	sw	a5,-40(s0)

    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c len: %08x", *pDescH2CPerfLen);
1000424c:	100117b7          	lui	a5,0x10011
10004250:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004254:	04078c63          	beqz	a5,100042ac <performance_monitor+0xf0>
10004258:	bd840793          	addi	a5,s0,-1064
1000425c:	40000713          	li	a4,1024
10004260:	00070613          	mv	a2,a4
10004264:	00000593          	li	a1,0
10004268:	00078513          	mv	a0,a5
1000426c:	93cfe0ef          	jal	ra,100023a8 <memset>
10004270:	100117b7          	lui	a5,0x10011
10004274:	a8c7a783          	lw	a5,-1396(a5) # 10010a8c <pDescH2CPerfLen>
10004278:	0007a783          	lw	a5,0(a5)
1000427c:	bd840713          	addi	a4,s0,-1064
10004280:	00078693          	mv	a3,a5
10004284:	100107b7          	lui	a5,0x10010
10004288:	57078613          	addi	a2,a5,1392 # 10010570 <p2p_demo+0xc008>
1000428c:	3ff00593          	li	a1,1023
10004290:	00070513          	mv	a0,a4
10004294:	f4dfd0ef          	jal	ra,100021e0 <snprintf_>
10004298:	bd840793          	addi	a5,s0,-1064
1000429c:	00078593          	mv	a1,a5
100042a0:	00400513          	li	a0,4
100042a4:	accfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100042a8:	0080006f          	j	100042b0 <performance_monitor+0xf4>
100042ac:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c cycle: %08x", *pDescH2CPerfCycle);
100042b0:	100117b7          	lui	a5,0x10011
100042b4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100042b8:	04078c63          	beqz	a5,10004310 <performance_monitor+0x154>
100042bc:	bd840793          	addi	a5,s0,-1064
100042c0:	40000713          	li	a4,1024
100042c4:	00070613          	mv	a2,a4
100042c8:	00000593          	li	a1,0
100042cc:	00078513          	mv	a0,a5
100042d0:	8d8fe0ef          	jal	ra,100023a8 <memset>
100042d4:	100117b7          	lui	a5,0x10011
100042d8:	a887a783          	lw	a5,-1400(a5) # 10010a88 <pDescH2CPerfCycle>
100042dc:	0007a783          	lw	a5,0(a5)
100042e0:	bd840713          	addi	a4,s0,-1064
100042e4:	00078693          	mv	a3,a5
100042e8:	100107b7          	lui	a5,0x10010
100042ec:	58c78613          	addi	a2,a5,1420 # 1001058c <p2p_demo+0xc024>
100042f0:	3ff00593          	li	a1,1023
100042f4:	00070513          	mv	a0,a4
100042f8:	ee9fd0ef          	jal	ra,100021e0 <snprintf_>
100042fc:	bd840793          	addi	a5,s0,-1064
10004300:	00078593          	mv	a1,a5
10004304:	00400513          	li	a0,4
10004308:	a68fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000430c:	0080006f          	j	10004314 <performance_monitor+0x158>
10004310:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c DescSent: %08x", *pDescH2CPerfDescSent);
10004314:	100117b7          	lui	a5,0x10011
10004318:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
1000431c:	04078c63          	beqz	a5,10004374 <performance_monitor+0x1b8>
10004320:	bd840793          	addi	a5,s0,-1064
10004324:	40000713          	li	a4,1024
10004328:	00070613          	mv	a2,a4
1000432c:	00000593          	li	a1,0
10004330:	00078513          	mv	a0,a5
10004334:	874fe0ef          	jal	ra,100023a8 <memset>
10004338:	100117b7          	lui	a5,0x10011
1000433c:	a907a783          	lw	a5,-1392(a5) # 10010a90 <pDescH2CPerfDescSent>
10004340:	0007a783          	lw	a5,0(a5)
10004344:	bd840713          	addi	a4,s0,-1064
10004348:	00078693          	mv	a3,a5
1000434c:	100107b7          	lui	a5,0x10010
10004350:	5ac78613          	addi	a2,a5,1452 # 100105ac <p2p_demo+0xc044>
10004354:	3ff00593          	li	a1,1023
10004358:	00070513          	mv	a0,a4
1000435c:	e85fd0ef          	jal	ra,100021e0 <snprintf_>
10004360:	bd840793          	addi	a5,s0,-1064
10004364:	00078593          	mv	a1,a5
10004368:	00400513          	li	a0,4
1000436c:	a04fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004370:	0080006f          	j	10004378 <performance_monitor+0x1bc>
10004374:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c speed: %d MBytes per second", perfH2CSpeed);
10004378:	100117b7          	lui	a5,0x10011
1000437c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004380:	04078663          	beqz	a5,100043cc <performance_monitor+0x210>
10004384:	bd840793          	addi	a5,s0,-1064
10004388:	40000713          	li	a4,1024
1000438c:	00070613          	mv	a2,a4
10004390:	00000593          	li	a1,0
10004394:	00078513          	mv	a0,a5
10004398:	810fe0ef          	jal	ra,100023a8 <memset>
1000439c:	bd840713          	addi	a4,s0,-1064
100043a0:	fe442683          	lw	a3,-28(s0)
100043a4:	100107b7          	lui	a5,0x10010
100043a8:	5cc78613          	addi	a2,a5,1484 # 100105cc <p2p_demo+0xc064>
100043ac:	3ff00593          	li	a1,1023
100043b0:	00070513          	mv	a0,a4
100043b4:	e2dfd0ef          	jal	ra,100021e0 <snprintf_>
100043b8:	bd840793          	addi	a5,s0,-1064
100043bc:	00078593          	mv	a1,a5
100043c0:	00400513          	li	a0,4
100043c4:	9acfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100043c8:	0080006f          	j	100043d0 <performance_monitor+0x214>
100043cc:	00000013          	nop

    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h len: %08x", *pDescC2HPerfLen);
100043d0:	100117b7          	lui	a5,0x10011
100043d4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100043d8:	04078c63          	beqz	a5,10004430 <performance_monitor+0x274>
100043dc:	bd840793          	addi	a5,s0,-1064
100043e0:	40000713          	li	a4,1024
100043e4:	00070613          	mv	a2,a4
100043e8:	00000593          	li	a1,0
100043ec:	00078513          	mv	a0,a5
100043f0:	fb9fd0ef          	jal	ra,100023a8 <memset>
100043f4:	100117b7          	lui	a5,0x10011
100043f8:	aa07a783          	lw	a5,-1376(a5) # 10010aa0 <pDescC2HPerfLen>
100043fc:	0007a783          	lw	a5,0(a5)
10004400:	bd840713          	addi	a4,s0,-1064
10004404:	00078693          	mv	a3,a5
10004408:	100107b7          	lui	a5,0x10010
1000440c:	5fc78613          	addi	a2,a5,1532 # 100105fc <p2p_demo+0xc094>
10004410:	3ff00593          	li	a1,1023
10004414:	00070513          	mv	a0,a4
10004418:	dc9fd0ef          	jal	ra,100021e0 <snprintf_>
1000441c:	bd840793          	addi	a5,s0,-1064
10004420:	00078593          	mv	a1,a5
10004424:	00400513          	li	a0,4
10004428:	948fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000442c:	0080006f          	j	10004434 <performance_monitor+0x278>
10004430:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h cycle: %08x", *pDescC2HPerfCycle);
10004434:	100117b7          	lui	a5,0x10011
10004438:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
1000443c:	04078c63          	beqz	a5,10004494 <performance_monitor+0x2d8>
10004440:	bd840793          	addi	a5,s0,-1064
10004444:	40000713          	li	a4,1024
10004448:	00070613          	mv	a2,a4
1000444c:	00000593          	li	a1,0
10004450:	00078513          	mv	a0,a5
10004454:	f55fd0ef          	jal	ra,100023a8 <memset>
10004458:	100117b7          	lui	a5,0x10011
1000445c:	a9c7a783          	lw	a5,-1380(a5) # 10010a9c <pDescC2HPerfCycle>
10004460:	0007a783          	lw	a5,0(a5)
10004464:	bd840713          	addi	a4,s0,-1064
10004468:	00078693          	mv	a3,a5
1000446c:	100107b7          	lui	a5,0x10010
10004470:	61878613          	addi	a2,a5,1560 # 10010618 <p2p_demo+0xc0b0>
10004474:	3ff00593          	li	a1,1023
10004478:	00070513          	mv	a0,a4
1000447c:	d65fd0ef          	jal	ra,100021e0 <snprintf_>
10004480:	bd840793          	addi	a5,s0,-1064
10004484:	00078593          	mv	a1,a5
10004488:	00400513          	li	a0,4
1000448c:	8e4fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004490:	0080006f          	j	10004498 <performance_monitor+0x2dc>
10004494:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h DescSent: %08x", *pDescC2HPerfDescSent);
10004498:	100117b7          	lui	a5,0x10011
1000449c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100044a0:	04078c63          	beqz	a5,100044f8 <performance_monitor+0x33c>
100044a4:	bd840793          	addi	a5,s0,-1064
100044a8:	40000713          	li	a4,1024
100044ac:	00070613          	mv	a2,a4
100044b0:	00000593          	li	a1,0
100044b4:	00078513          	mv	a0,a5
100044b8:	ef1fd0ef          	jal	ra,100023a8 <memset>
100044bc:	100117b7          	lui	a5,0x10011
100044c0:	aa47a783          	lw	a5,-1372(a5) # 10010aa4 <pDescC2HPerfDescSent>
100044c4:	0007a783          	lw	a5,0(a5)
100044c8:	bd840713          	addi	a4,s0,-1064
100044cc:	00078693          	mv	a3,a5
100044d0:	100107b7          	lui	a5,0x10010
100044d4:	63878613          	addi	a2,a5,1592 # 10010638 <p2p_demo+0xc0d0>
100044d8:	3ff00593          	li	a1,1023
100044dc:	00070513          	mv	a0,a4
100044e0:	d01fd0ef          	jal	ra,100021e0 <snprintf_>
100044e4:	bd840793          	addi	a5,s0,-1064
100044e8:	00078593          	mv	a1,a5
100044ec:	00400513          	li	a0,4
100044f0:	880fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100044f4:	0080006f          	j	100044fc <performance_monitor+0x340>
100044f8:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h speed: %d GBytes per second", perfC2HSpeed);
100044fc:	100117b7          	lui	a5,0x10011
10004500:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004504:	00079663          	bnez	a5,10004510 <performance_monitor+0x354>
10004508:	00000013          	nop
}
1000450c:	0480006f          	j	10004554 <performance_monitor+0x398>
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h speed: %d GBytes per second", perfC2HSpeed);
10004510:	bd840793          	addi	a5,s0,-1064
10004514:	40000713          	li	a4,1024
10004518:	00070613          	mv	a2,a4
1000451c:	00000593          	li	a1,0
10004520:	00078513          	mv	a0,a5
10004524:	e85fd0ef          	jal	ra,100023a8 <memset>
10004528:	bd840713          	addi	a4,s0,-1064
1000452c:	fd842683          	lw	a3,-40(s0)
10004530:	100107b7          	lui	a5,0x10010
10004534:	65878613          	addi	a2,a5,1624 # 10010658 <p2p_demo+0xc0f0>
10004538:	3ff00593          	li	a1,1023
1000453c:	00070513          	mv	a0,a4
10004540:	ca1fd0ef          	jal	ra,100021e0 <snprintf_>
10004544:	bd840793          	addi	a5,s0,-1064
10004548:	00078593          	mv	a1,a5
1000454c:	00400513          	li	a0,4
10004550:	820fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10004554:	00000013          	nop
10004558:	42c12083          	lw	ra,1068(sp)
1000455c:	42812403          	lw	s0,1064(sp)
10004560:	43010113          	addi	sp,sp,1072
10004564:	00008067          	ret

10004568 <p2p_demo>:



void p2p_demo()
{
10004568:	bf010113          	addi	sp,sp,-1040
1000456c:	40112623          	sw	ra,1036(sp)
10004570:	40812423          	sw	s0,1032(sp)
10004574:	41010413          	addi	s0,sp,1040
    // initial the interrupt signal
    test_uart_print();
10004578:	b55fe0ef          	jal	ra,100030cc <test_uart_print>

    KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");
1000457c:	100117b7          	lui	a5,0x10011
10004580:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004584:	04078463          	beqz	a5,100045cc <p2p_demo+0x64>
10004588:	bf040793          	addi	a5,s0,-1040
1000458c:	40000713          	li	a4,1024
10004590:	00070613          	mv	a2,a4
10004594:	00000593          	li	a1,0
10004598:	00078513          	mv	a0,a5
1000459c:	e0dfd0ef          	jal	ra,100023a8 <memset>
100045a0:	bf040713          	addi	a4,s0,-1040
100045a4:	100107b7          	lui	a5,0x10010
100045a8:	68878613          	addi	a2,a5,1672 # 10010688 <p2p_demo+0xc120>
100045ac:	3ff00593          	li	a1,1023
100045b0:	00070513          	mv	a0,a4
100045b4:	c2dfd0ef          	jal	ra,100021e0 <snprintf_>
100045b8:	bf040793          	addi	a5,s0,-1040
100045bc:	00078593          	mv	a1,a5
100045c0:	00400513          	li	a0,4
100045c4:	fadfb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100045c8:	0080006f          	j	100045d0 <p2p_demo+0x68>
100045cc:	00000013          	nop

    // while(*pCmdStart_0x04 == 0);

    // set rv status to busy
    *pCmdStatus_0x08 = 1;
100045d0:	100117b7          	lui	a5,0x10011
100045d4:	aac7a783          	lw	a5,-1364(a5) # 10010aac <pCmdStatus_0x08>
100045d8:	00100713          	li	a4,1
100045dc:	00e7a023          	sw	a4,0(a5)

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");
100045e0:	100117b7          	lui	a5,0x10011
100045e4:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100045e8:	04078463          	beqz	a5,10004630 <p2p_demo+0xc8>
100045ec:	bf040793          	addi	a5,s0,-1040
100045f0:	40000713          	li	a4,1024
100045f4:	00070613          	mv	a2,a4
100045f8:	00000593          	li	a1,0
100045fc:	00078513          	mv	a0,a5
10004600:	da9fd0ef          	jal	ra,100023a8 <memset>
10004604:	bf040713          	addi	a4,s0,-1040
10004608:	100107b7          	lui	a5,0x10010
1000460c:	6ac78613          	addi	a2,a5,1708 # 100106ac <p2p_demo+0xc144>
10004610:	3ff00593          	li	a1,1023
10004614:	00070513          	mv	a0,a4
10004618:	bc9fd0ef          	jal	ra,100021e0 <snprintf_>
1000461c:	bf040793          	addi	a5,s0,-1040
10004620:	00078593          	mv	a1,a5
10004624:	00400513          	li	a0,4
10004628:	f49fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000462c:	0080006f          	j	10004634 <p2p_demo+0xcc>
10004630:	00000013          	nop

    process_desc();
10004634:	c70ff0ef          	jal	ra,10003aa4 <process_desc>

    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");
10004638:	100117b7          	lui	a5,0x10011
1000463c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
10004640:	04078463          	beqz	a5,10004688 <p2p_demo+0x120>
10004644:	bf040793          	addi	a5,s0,-1040
10004648:	40000713          	li	a4,1024
1000464c:	00070613          	mv	a2,a4
10004650:	00000593          	li	a1,0
10004654:	00078513          	mv	a0,a5
10004658:	d51fd0ef          	jal	ra,100023a8 <memset>
1000465c:	bf040713          	addi	a4,s0,-1040
10004660:	100107b7          	lui	a5,0x10010
10004664:	6d478613          	addi	a2,a5,1748 # 100106d4 <p2p_demo+0xc16c>
10004668:	3ff00593          	li	a1,1023
1000466c:	00070513          	mv	a0,a4
10004670:	b71fd0ef          	jal	ra,100021e0 <snprintf_>
10004674:	bf040793          	addi	a5,s0,-1040
10004678:	00078593          	mv	a1,a5
1000467c:	00400513          	li	a0,4
10004680:	ef1fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004684:	0080006f          	j	1000468c <p2p_demo+0x124>
10004688:	00000013          	nop

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
1000468c:	100117b7          	lui	a5,0x10011
10004690:	aac7a783          	lw	a5,-1364(a5) # 10010aac <pCmdStatus_0x08>
10004694:	0007a023          	sw	zero,0(a5)
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
10004698:	100117b7          	lui	a5,0x10011
1000469c:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100046a0:	04078463          	beqz	a5,100046e8 <p2p_demo+0x180>
100046a4:	bf040793          	addi	a5,s0,-1040
100046a8:	40000713          	li	a4,1024
100046ac:	00070613          	mv	a2,a4
100046b0:	00000593          	li	a1,0
100046b4:	00078513          	mv	a0,a5
100046b8:	cf1fd0ef          	jal	ra,100023a8 <memset>
100046bc:	bf040713          	addi	a4,s0,-1040
100046c0:	100107b7          	lui	a5,0x10010
100046c4:	6ec78613          	addi	a2,a5,1772 # 100106ec <p2p_demo+0xc184>
100046c8:	3ff00593          	li	a1,1023
100046cc:	00070513          	mv	a0,a4
100046d0:	b11fd0ef          	jal	ra,100021e0 <snprintf_>
100046d4:	bf040793          	addi	a5,s0,-1040
100046d8:	00078593          	mv	a1,a5
100046dc:	00400513          	li	a0,4
100046e0:	e91fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100046e4:	0080006f          	j	100046ec <p2p_demo+0x184>
100046e8:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
100046ec:	100117b7          	lui	a5,0x10011
100046f0:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
100046f4:	04078463          	beqz	a5,1000473c <p2p_demo+0x1d4>
100046f8:	bf040793          	addi	a5,s0,-1040
100046fc:	40000713          	li	a4,1024
10004700:	00070613          	mv	a2,a4
10004704:	00000593          	li	a1,0
10004708:	00078513          	mv	a0,a5
1000470c:	c9dfd0ef          	jal	ra,100023a8 <memset>
10004710:	bf040713          	addi	a4,s0,-1040
10004714:	100107b7          	lui	a5,0x10010
10004718:	70878613          	addi	a2,a5,1800 # 10010708 <p2p_demo+0xc1a0>
1000471c:	3ff00593          	li	a1,1023
10004720:	00070513          	mv	a0,a4
10004724:	abdfd0ef          	jal	ra,100021e0 <snprintf_>
10004728:	bf040793          	addi	a5,s0,-1040
1000472c:	00078593          	mv	a1,a5
10004730:	00400513          	li	a0,4
10004734:	e3dfb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004738:	0080006f          	j	10004740 <p2p_demo+0x1d8>
1000473c:	00000013          	nop
    asm volatile("wfi");
10004740:	10500073          	wfi

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
10004744:	100117b7          	lui	a5,0x10011
10004748:	b947a783          	lw	a5,-1132(a5) # 10010b94 <g_ulPrintSYSLogFlag>
1000474c:	04078463          	beqz	a5,10004794 <p2p_demo+0x22c>
10004750:	bf040793          	addi	a5,s0,-1040
10004754:	40000713          	li	a4,1024
10004758:	00070613          	mv	a2,a4
1000475c:	00000593          	li	a1,0
10004760:	00078513          	mv	a0,a5
10004764:	c45fd0ef          	jal	ra,100023a8 <memset>
10004768:	bf040713          	addi	a4,s0,-1040
1000476c:	100107b7          	lui	a5,0x10010
10004770:	71c78613          	addi	a2,a5,1820 # 1001071c <p2p_demo+0xc1b4>
10004774:	3ff00593          	li	a1,1023
10004778:	00070513          	mv	a0,a4
1000477c:	a65fd0ef          	jal	ra,100021e0 <snprintf_>
10004780:	bf040793          	addi	a5,s0,-1040
10004784:	00078593          	mv	a1,a5
10004788:	00400513          	li	a0,4
1000478c:	de5fb0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10004790:	0080006f          	j	10004798 <p2p_demo+0x230>
10004794:	00000013          	nop
    while(1);
10004798:	0000006f          	j	10004798 <p2p_demo+0x230>
