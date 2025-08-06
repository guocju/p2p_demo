
output/swf_code.elf:     file format elf32-littleriscv
output/swf_code.elf
architecture: riscv:rv32, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x10000200

Program Header:
    LOAD off    0x00001000 vaddr 0x10000000 paddr 0x10000000 align 2**12
         filesz 0x00003e84 memsz 0x00003e84 flags r-x
    LOAD off    0x00005000 vaddr 0x10010000 paddr 0x10010000 align 2**12
         filesz 0x00000998 memsz 0x00000998 flags rw-

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text.init    000000c4  10000000  10000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .text         00003c84  10000200  10000200  00001200  2**9
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       0000051c  10010000  10010000  00005000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .srodata      00000028  1001051c  1001051c  0000551c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .bss          0000030c  10010544  10010544  00005544  2**2
                  ALLOC
  5 .sbss         0000000c  10010850  10010850  00005544  2**2
                  ALLOC
  6 .data         00000004  1001085c  1001085c  0000585c  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  7 .sdata        00000138  10010860  10010860  00005860  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  8 .debug_line   00002b58  00000000  00000000  00005998  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_info   0000395f  00000000  00000000  000084f0  2**0
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev 00000b32  00000000  00000000  0000be4f  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_aranges 00000100  00000000  00000000  0000c988  2**3
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_str    00001180  00000000  00000000  0000ca88  2**0
                  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges 00000068  00000000  00000000  0000dc08  2**3
                  CONTENTS, READONLY, DEBUGGING
 14 .comment      00000011  00000000  00000000  0000dc70  2**0
                  CONTENTS, READONLY
 15 .debug_frame  000009f0  00000000  00000000  0000dc84  2**2
                  CONTENTS, READONLY, DEBUGGING
SYMBOL TABLE:
10000000 l    d  .text.init	00000000 .text.init
10000200 l    d  .text	00000000 .text
10010000 l    d  .rodata	00000000 .rodata
1001051c l    d  .srodata	00000000 .srodata
10010544 l    d  .bss	00000000 .bss
10010850 l    d  .sbss	00000000 .sbss
1001085c l    d  .data	00000000 .data
10010860 l    d  .sdata	00000000 .sdata
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
10000e74 l     F .text	00000050 _out_buffer
10000ec4 l     F .text	00000030 _out_null
10000ef4 l     F .text	00000044 _out_char
10000f38 l     F .text	00000060 _out_fct
10000f98 l     F .text	00000064 _strnlen_s
10000ffc l     F .text	00000050 _is_digit
1000104c l     F .text	0000008c _atoi
100010d8 l     F .text	00000140 _out_rev
10001218 l     F .text	000002fc _ntoa_format
10001514 l     F .text	00000148 _ntoa_long
1000165c l     F .text	00000aa0 _vsnprintf
00000000 l    df *ABS*	00000000 std_lib_util.c
00000000 l    df *ABS*	00000000 xuartlite.c
1000250c l     F .text	00000028 Xil_In32
10002534 l     F .text	00000038 Xil_Out32
10002960 l     F .text	00000064 ReceiveDataHandler
100029c4 l     F .text	00000088 SendDataHandler
10010544 l     O .bss	00000004 header_state.1698
10010548 l     O .bss	00000004 recv_cnt.1697
00000000 l    df *ABS*	00000000 only_fpga.c
10010994 l     O .sdata	00000004 DDR_BASE_INFO.1766
10000dc8 g     F .text	000000ac bitwise_div_32
100108d0 g     O .sdata	00000004 pInitFinishedFlag_0x30
1000304c g     F .text	0000008c XUartLite_SendAll
10002390 g     F .text	00000024 _putchar
10010528 g     O .srodata	00000004 BASE_ADDR_DSC_CTL
100108ac g     O .sdata	00000004 pSimDebug_0x18
100108b0 g     O .sdata	00000004 pPSWTAddr_0x20
100108b8 g     O .sdata	00000004 pPSBCAddr_0x24
1001097c g     O .sdata	00000004 g_ulPrintDebugLogFlag
1001087c g     O .sdata	00000004 pDescH2CPerfDescSent
1001098c g     O .sdata	00000004 uart0_intr_clr
10010538 g     O .srodata	00000004 BASE_H2C_BRAM
10010934 g     O .sdata	00000004 pStartCalc_0x70
100006ec g     F .text	00000028 get_local_falg
10002c90 g     F .text	000000d8 XUartLite_RepeatRecv
10002264 g     F .text	00000050 vprintf_
10003698 g     F .text	000000e4 wait_ip
10000b1c g     F .text	000001ac transfer_set
1000290c g     F .text	00000054 XUartLite_InterruptHandler
10000d80 g     F .text	00000048 u_i_mod
100030d8 g     F .text	00000030 demo_reg_write
1001091c g     O .sdata	00000004 pData_0x5c
100108c0 g     O .sdata	00000004 pPSInputData_0x28
10010904 g     O .sdata	00000004 pInputData_sz_0x4c
10010880 g     O .sdata	00000004 pDescC2HAddr
10000570 g     F .text	00000118 krnlLOGPrintLog
10010944 g     O .sdata	00000004 pDebug_Value_0x80
10003a6c g     F .text	00000238 all_proc_
10010958 g     O .sdata	00000004 pHWDbgDumpDstBaseAddr_0x94
10002f58 g     F .text	00000028 XUartLite_RxUnlock
1000009c g       .text.init	00000000 clr_single_intr
100106fc g     O .bss	00000070 XUartLiteInstances0
10010960 g     O .sdata	00000004 pHWDebugDumpLength_0x9c
1000008c g       .text.init	00000000 set_single_intr
10010950 g     O .sdata	00000004 pDebug_start_layer_idx_0x8c
1001096c g     O .sdata	00000004 pHpuIC_0xa8
1001054c g     O .bss	00000090 test_mc
10010924 g     O .sdata	00000004 pData_0x64
10000864 g     F .text	00000128 get_remote_flag
10002174 g     F .text	00000078 sprintf_
10000714 g     F .text	00000150 trans_xdma
1001076c g     O .bss	00000070 XUartLiteInstances2
100108f8 g     O .sdata	00000004 pData_0x44
10010974 g     O .sdata	00000004 pVersion600_0xd0
10010914 g     O .sdata	00000004 pData_0x54
10010884 g     O .sdata	00000004 pDescC2HNum
1000256c g     F .text	000000e8 XUartLite_InterruptHandlerWrapper
10010980 g     O .sdata	00000004 g_ulPrintSYSLogFlag
10010524 g     O .srodata	00000004 BASE_ADDR_UART
10003ca4 g     F .text	000001e0 p2p_demo
100105dc g     O .bss	00000090 test_ma
100108f4 g     O .sdata	00000004 pBC_sz_0x44
10010540 g     O .srodata	00000004 BASE_FLAG_BRAM
100107dc g     O .bss	00000070 XUartLiteInstances1
1001052c g     O .srodata	00000004 BASE_H2C_RAW_BRAM
10010530 g     O .srodata	00000004 BASE_C2H_RAW_BRAM
100108c8 g     O .sdata	00000004 pPSOutputData_0x2c
100022b4 g     F .text	00000054 vsnprintf_
10010854 g     O .sbss	00000004 g_ulPrintOPLogFlag
10010988 g     O .sdata	00000004 pAxiAddr
1001053c g     O .srodata	00000004 BASE_C2H_BRAM
1001095c g     O .sdata	00000004 pHWDbgDumpSrcBaseAddr_0x98
1001085c g       .data	00000000 start_calc
10002308 g     F .text	00000088 fctprintf
10000a38 g     F .text	000000e4 set_remote_falg
10010938 g     O .sdata	00000004 pData_0x74
10002f80 g     F .text	00000028 hw_uart0_is_valid
10002ecc g     F .text	0000008c XUartLite_ResetFifos
100108ec g     O .sdata	00000004 pWT_sz_0x40
1001051c g     O .srodata	00000004 BRAM0_BASE_ADDR
100108b4 g     O .sdata	00000004 pData_0x20
100000b8 g       .text.init	00000000 disable_intr
100108d4 g     O .sdata	00000004 pPLWTAddr_0x34
10000200 g       .text	00000000 _start
10002ba4 g     F .text	000000ec XUartLite_Recv
10002b4c g     F .text	00000058 XUartLite_ClearStats
10010864 g     O .sdata	00000004 pDescSR
10002d68 g     F .text	000000e4 XUartLite_Send
10010978 g     O .sdata	00000004 pVersion_0x100
10010520 g     O .srodata	00000004 BRAM1_BASE_ADDR
10002414 g     F .text	000000ac strncpy
10010908 g     O .sdata	00000004 pData_0x4c
1000098c g     F .text	000000ac update_count
10010898 g     O .sdata	00000004 pCmdStatus_0x08
10010870 g     O .sdata	00000004 pDescH2CNum
100108a8 g     O .sdata	00000004 pData_0x14
10010850 g     O .sbss	00000004 g_ulPrintHardwareCmdLogFlag
10002a4c g     F .text	00000034 TotalReceivedCountOf
100000ac g       .text.init	00000000 enable_intr
10010874 g     O .sdata	00000004 pDescH2CPerfCycle
100108a4 g     O .sdata	00000004 pErrCode_0x14
10002e8c g     F .text	00000040 XUartLite_DisableInterrupt
100023b4 g     F .text	00000060 memset
10000cc8 g     F .text	000000b8 main
10010930 g     O .sdata	00000004 pData_0x70
10003534 g     F .text	00000164 IP
10010954 g     O .sdata	00000004 pHWDebugCtrlFlag_0x90
10010970 g     O .sdata	00000004 pHpuImsc_0xac
10002e4c g     F .text	00000040 XUartLite_EnableInterrupt
10010534 g     O .srodata	00000004 BASE_DESC_ST
10010990 g     O .sdata	00000004 uart1_intr_clr
10010968 g     O .sdata	00000004 pHpuMis_0xa4
1001084c g     O .bss	00000004 TotalSentCount
10010868 g     O .sdata	00000004 pVID
10003028 g     F .text	00000024 hw_uart0_clr_state
100108e8 g     O .sdata	00000004 pData_0x3c
100108f0 g     O .sdata	00000004 pData_0x40
1001093c g     O .sdata	00000004 pDebug_stop_layer_idx_0x78
10010858 g     O .sbss	00000004 count
10003108 g     F .text	00000030 demo_reg_read
10010920 g     O .sdata	00000004 pData_0x60
10010860 g     O .sdata	00000004 pDescCR
1000336c g     F .text	000001c8 putDMA
10010940 g     O .sdata	00000004 pDebug_Value_0x7c
10003198 g     F .text	000001d4 fetchDMA
100021ec g     F .text	00000078 snprintf_
10002fa8 g     F .text	00000080 hw_uart0_get_data
100108e0 g     O .sdata	00000004 pData_0x38
10010928 g     O .sdata	00000004 pData_0x68
10003138 g     F .text	00000030 dma_check
10010984 g     O .sdata	00000004 g_ulPrintNDMALogFlag
100108bc g     O .sdata	00000004 pData_0x24
100108cc g     O .sdata	00000004 pData_0x2c
1001086c g     O .sdata	00000004 pDescH2CAddr
1001092c g     O .sdata	00000004 pData_0x6c
100020fc g     F .text	00000078 printf_
10010888 g     O .sdata	00000004 pDescC2HPerfCycle
100108a0 g     O .sdata	00000004 pSimDebug_0x10
10002654 g     F .text	0000016c XUartLite_SendBuffer
10010894 g     O .sdata	00000004 pCmdStart_0x04
100108e4 g     O .sdata	00000004 pPLFMAddr_0x3c
1000377c g     F .text	00000260 all_proc_no_head
10010900 g     O .sdata	00000004 pData_0x48
10010890 g     O .sdata	00000004 pDescC2HPerfDescSent
10010948 g     O .sdata	00000004 pDebug_Time_H_0x84
1001094c g     O .sdata	00000004 pDebug_Time_L_0x88
100027c0 g     F .text	0000014c XUartLite_ReceiveBuffer
10000688 g     F .text	00000030 reg_write
100108c4 g     O .sdata	00000004 pData_0x28
1001066c g     O .bss	00000090 test_mb
1001090c g     O .sdata	00000004 pOutputData_sz_0x50
1001089c g     O .sdata	00000004 pSysBaseAddr_0x0c
100108dc g     O .sdata	00000004 pPLBCAddr_0x38
1001088c g     O .sdata	00000004 pDescC2HPerfLen
10002a80 g     F .text	000000cc XUartLite_CfgInitialize
100024c0 g     F .text	0000004c len_of_str
100006b8 g     F .text	00000034 read_reg
10010964 g     O .sdata	00000004 pHpuRis_0xa0
100108fc g     O .sdata	00000004 pFM_sz_0x48
10010910 g     O .sdata	00000004 pData_0x50
10010918 g     O .sdata	00000004 pData_0x58
100039dc g     F .text	00000090 test_uart_print
100003fc g     F .text	00000174 krnlLOGLogTypeToStr
100108d8 g     O .sdata	00000004 pData_0x34
10003168 g     F .text	00000030 dma_set_done
10010878 g     O .sdata	00000004 pDescH2CPerfLen



Disassembly of section .text.init:

10000000 <_intr_vector_entry>:
10000000:	2000006f          	j	10000200 <_start>
10000004:	30200073          	mret
10000008:	30200073          	mret
1000000c:	30200073          	mret
10000010:	30200073          	mret
10000014:	30200073          	mret
10000018:	30200073          	mret
1000001c:	30200073          	mret
10000020:	30200073          	mret
10000024:	30200073          	mret
10000028:	30200073          	mret
1000002c:	1ec0006f          	j	10000218 <me_intr_entry>
10000030:	2140006f          	j	10000244 <c1_intr_entry>
10000034:	30200073          	mret
10000038:	30200073          	mret
1000003c:	30200073          	mret
10000040:	30200073          	mret
10000044:	30200073          	mret
10000048:	30200073          	mret

1000004c <init_intr>:
1000004c:	ff010113          	addi	sp,sp,-16
10000050:	00112223          	sw	ra,4(sp)
10000054:	100202b7          	lui	t0,0x10020
10000058:	ffc28293          	addi	t0,t0,-4 # 1001fffc <STACK_BASE_ADDR>
1000005c:	34029073          	csrw	mscratch,t0
10000060:	000012b7          	lui	t0,0x1
10000064:	80028293          	addi	t0,t0,-2048 # 800 <ITCM+0x800>
10000068:	30429073          	csrw	mie,t0
1000006c:	00100293          	li	t0,1
10000070:	30529073          	csrw	mtvec,t0
10000074:	000022b7          	lui	t0,0x2
10000078:	80028293          	addi	t0,t0,-2048 # 1800 <NPU_UPADD_PARA2+0x3ec>
1000007c:	30029073          	csrw	mstatus,t0
10000080:	00412083          	lw	ra,4(sp)
10000084:	01010113          	addi	sp,sp,16
10000088:	00008067          	ret

1000008c <set_single_intr>:
1000008c:	00100293          	li	t0,1
10000090:	00a29333          	sll	t1,t0,a0
10000094:	30432073          	csrs	mie,t1
10000098:	00008067          	ret

1000009c <clr_single_intr>:
1000009c:	00100293          	li	t0,1
100000a0:	00a29333          	sll	t1,t0,a0
100000a4:	30433073          	csrc	mie,t1
100000a8:	00008067          	ret

100000ac <enable_intr>:
100000ac:	00f00293          	li	t0,15
100000b0:	3002a073          	csrs	mstatus,t0
100000b4:	00008067          	ret

100000b8 <disable_intr>:
100000b8:	00f00293          	li	t0,15
100000bc:	3002b073          	csrc	mstatus,t0
100000c0:	00008067          	ret

Disassembly of section .text:

10000200 <_start>:
10000200:	23300513          	li	a0,563
10000204:	00a02a23          	sw	a0,20(zero) # 14 <ITCM+0x14>
10000208:	10020137          	lui	sp,0x10020
1000020c:	ffc10113          	addi	sp,sp,-4 # 1001fffc <STACK_BASE_ADDR>
10000210:	e3dff0ef          	jal	ra,1000004c <init_intr>
10000214:	2b5000ef          	jal	ra,10000cc8 <main>

10000218 <me_intr_entry>:
10000218:	34051573          	csrrw	a0,mscratch,a0
1000021c:	00552223          	sw	t0,4(a0)
10000220:	00652423          	sw	t1,8(a0)
10000224:	00100293          	li	t0,1
10000228:	00010317          	auipc	t1,0x10
1000022c:	63430313          	addi	t1,t1,1588 # 1001085c <start_calc>
10000230:	00532023          	sw	t0,0(t1)
10000234:	00452283          	lw	t0,4(a0)
10000238:	00852303          	lw	t1,8(a0)
1000023c:	34051573          	csrrw	a0,mscratch,a0
10000240:	30200073          	mret

10000244 <c1_intr_entry>:
10000244:	34051573          	csrrw	a0,mscratch,a0
10000248:	00552223          	sw	t0,4(a0)
1000024c:	00652423          	sw	t1,8(a0)
10000250:	00452283          	lw	t0,4(a0)
10000254:	00852303          	lw	t1,8(a0)
10000258:	34051573          	csrrw	a0,mscratch,a0
1000025c:	30200073          	mret
	...

100003fc <krnlLOGLogTypeToStr>:
100003fc:	fe010113          	addi	sp,sp,-32
10000400:	00112e23          	sw	ra,28(sp)
10000404:	00812c23          	sw	s0,24(sp)
10000408:	02010413          	addi	s0,sp,32
1000040c:	00050793          	mv	a5,a0
10000410:	feb42423          	sw	a1,-24(s0)
10000414:	fec42223          	sw	a2,-28(s0)
10000418:	fef407a3          	sb	a5,-17(s0)
1000041c:	fe842783          	lw	a5,-24(s0)
10000420:	00079663          	bnez	a5,1000042c <krnlLOGLogTypeToStr+0x30>
10000424:	fff00793          	li	a5,-1
10000428:	1340006f          	j	1000055c <krnlLOGLogTypeToStr+0x160>
1000042c:	fe442783          	lw	a5,-28(s0)
10000430:	fff78793          	addi	a5,a5,-1
10000434:	fef42223          	sw	a5,-28(s0)
10000438:	fef44783          	lbu	a5,-17(s0)
1000043c:	00700713          	li	a4,7
10000440:	0ef76e63          	bltu	a4,a5,1000053c <krnlLOGLogTypeToStr+0x140>
10000444:	00279713          	slli	a4,a5,0x2
10000448:	100107b7          	lui	a5,0x10010
1000044c:	03478793          	addi	a5,a5,52 # 10010034 <p2p_demo+0xc390>
10000450:	00f707b3          	add	a5,a4,a5
10000454:	0007a783          	lw	a5,0(a5)
10000458:	00078067          	jr	a5
1000045c:	fe442783          	lw	a5,-28(s0)
10000460:	00078613          	mv	a2,a5
10000464:	100107b7          	lui	a5,0x10010
10000468:	00078593          	mv	a1,a5
1000046c:	fe842503          	lw	a0,-24(s0)
10000470:	7a5010ef          	jal	ra,10002414 <strncpy>
10000474:	0e40006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
10000478:	fe442783          	lw	a5,-28(s0)
1000047c:	00078613          	mv	a2,a5
10000480:	100107b7          	lui	a5,0x10010
10000484:	00478593          	addi	a1,a5,4 # 10010004 <p2p_demo+0xc360>
10000488:	fe842503          	lw	a0,-24(s0)
1000048c:	789010ef          	jal	ra,10002414 <strncpy>
10000490:	0c80006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
10000494:	fe442783          	lw	a5,-28(s0)
10000498:	00078613          	mv	a2,a5
1000049c:	100107b7          	lui	a5,0x10010
100004a0:	00878593          	addi	a1,a5,8 # 10010008 <p2p_demo+0xc364>
100004a4:	fe842503          	lw	a0,-24(s0)
100004a8:	76d010ef          	jal	ra,10002414 <strncpy>
100004ac:	0ac0006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
100004b0:	fe442783          	lw	a5,-28(s0)
100004b4:	00078613          	mv	a2,a5
100004b8:	100107b7          	lui	a5,0x10010
100004bc:	00c78593          	addi	a1,a5,12 # 1001000c <p2p_demo+0xc368>
100004c0:	fe842503          	lw	a0,-24(s0)
100004c4:	751010ef          	jal	ra,10002414 <strncpy>
100004c8:	0900006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
100004cc:	fe442783          	lw	a5,-28(s0)
100004d0:	00078613          	mv	a2,a5
100004d4:	100107b7          	lui	a5,0x10010
100004d8:	01078593          	addi	a1,a5,16 # 10010010 <p2p_demo+0xc36c>
100004dc:	fe842503          	lw	a0,-24(s0)
100004e0:	735010ef          	jal	ra,10002414 <strncpy>
100004e4:	0740006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
100004e8:	fe442783          	lw	a5,-28(s0)
100004ec:	00078613          	mv	a2,a5
100004f0:	100107b7          	lui	a5,0x10010
100004f4:	01478593          	addi	a1,a5,20 # 10010014 <p2p_demo+0xc370>
100004f8:	fe842503          	lw	a0,-24(s0)
100004fc:	719010ef          	jal	ra,10002414 <strncpy>
10000500:	0580006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
10000504:	fe442783          	lw	a5,-28(s0)
10000508:	00078613          	mv	a2,a5
1000050c:	100107b7          	lui	a5,0x10010
10000510:	02478593          	addi	a1,a5,36 # 10010024 <p2p_demo+0xc380>
10000514:	fe842503          	lw	a0,-24(s0)
10000518:	6fd010ef          	jal	ra,10002414 <strncpy>
1000051c:	03c0006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
10000520:	fe442783          	lw	a5,-28(s0)
10000524:	00078613          	mv	a2,a5
10000528:	100107b7          	lui	a5,0x10010
1000052c:	02c78593          	addi	a1,a5,44 # 1001002c <p2p_demo+0xc388>
10000530:	fe842503          	lw	a0,-24(s0)
10000534:	6e1010ef          	jal	ra,10002414 <strncpy>
10000538:	0200006f          	j	10000558 <krnlLOGLogTypeToStr+0x15c>
1000053c:	fe442783          	lw	a5,-28(s0)
10000540:	00078613          	mv	a2,a5
10000544:	100107b7          	lui	a5,0x10010
10000548:	03078593          	addi	a1,a5,48 # 10010030 <p2p_demo+0xc38c>
1000054c:	fe842503          	lw	a0,-24(s0)
10000550:	6c5010ef          	jal	ra,10002414 <strncpy>
10000554:	00000013          	nop
10000558:	00000793          	li	a5,0
1000055c:	00078513          	mv	a0,a5
10000560:	01c12083          	lw	ra,28(sp)
10000564:	01812403          	lw	s0,24(sp)
10000568:	02010113          	addi	sp,sp,32
1000056c:	00008067          	ret

10000570 <krnlLOGPrintLog>:
10000570:	ad010113          	addi	sp,sp,-1328
10000574:	52112623          	sw	ra,1324(sp)
10000578:	52812423          	sw	s0,1320(sp)
1000057c:	53010413          	addi	s0,sp,1328
10000580:	00050793          	mv	a5,a0
10000584:	acb42c23          	sw	a1,-1320(s0)
10000588:	acf40fa3          	sb	a5,-1313(s0)
1000058c:	fe042623          	sw	zero,-20(s0)
10000590:	fe042423          	sw	zero,-24(s0)
10000594:	f6040793          	addi	a5,s0,-160
10000598:	08000713          	li	a4,128
1000059c:	00070613          	mv	a2,a4
100005a0:	00000593          	li	a1,0
100005a4:	00078513          	mv	a0,a5
100005a8:	60d010ef          	jal	ra,100023b4 <memset>
100005ac:	ee040793          	addi	a5,s0,-288
100005b0:	08000713          	li	a4,128
100005b4:	00070613          	mv	a2,a4
100005b8:	00000593          	li	a1,0
100005bc:	00078513          	mv	a0,a5
100005c0:	5f5010ef          	jal	ra,100023b4 <memset>
100005c4:	ae040793          	addi	a5,s0,-1312
100005c8:	40000713          	li	a4,1024
100005cc:	00070613          	mv	a2,a4
100005d0:	00000593          	li	a1,0
100005d4:	00078513          	mv	a0,a5
100005d8:	5dd010ef          	jal	ra,100023b4 <memset>
100005dc:	ad842783          	lw	a5,-1320(s0)
100005e0:	00079663          	bnez	a5,100005ec <krnlLOGPrintLog+0x7c>
100005e4:	fff00793          	li	a5,-1
100005e8:	08c0006f          	j	10000674 <krnlLOGPrintLog+0x104>
100005ec:	ee040713          	addi	a4,s0,-288
100005f0:	adf44783          	lbu	a5,-1313(s0)
100005f4:	08000613          	li	a2,128
100005f8:	00070593          	mv	a1,a4
100005fc:	00078513          	mv	a0,a5
10000600:	dfdff0ef          	jal	ra,100003fc <krnlLOGLogTypeToStr>
10000604:	fea42623          	sw	a0,-20(s0)
10000608:	fec42783          	lw	a5,-20(s0)
1000060c:	00078663          	beqz	a5,10000618 <krnlLOGPrintLog+0xa8>
10000610:	fff00793          	li	a5,-1
10000614:	0600006f          	j	10000674 <krnlLOGPrintLog+0x104>
10000618:	ee040713          	addi	a4,s0,-288
1000061c:	ae040513          	addi	a0,s0,-1312
10000620:	ad842783          	lw	a5,-1320(s0)
10000624:	100106b7          	lui	a3,0x10010
10000628:	05468693          	addi	a3,a3,84 # 10010054 <p2p_demo+0xc3b0>
1000062c:	10010637          	lui	a2,0x10010
10000630:	06060613          	addi	a2,a2,96 # 10010060 <p2p_demo+0xc3bc>
10000634:	3ff00593          	li	a1,1023
10000638:	3b5010ef          	jal	ra,100021ec <snprintf_>
1000063c:	ae040793          	addi	a5,s0,-1312
10000640:	00078513          	mv	a0,a5
10000644:	67d010ef          	jal	ra,100024c0 <len_of_str>
10000648:	00050793          	mv	a5,a0
1000064c:	fef42223          	sw	a5,-28(s0)
10000650:	100107b7          	lui	a5,0x10010
10000654:	6fc78793          	addi	a5,a5,1788 # 100106fc <XUartLiteInstances0>
10000658:	fef42023          	sw	a5,-32(s0)
1000065c:	ae040793          	addi	a5,s0,-1312
10000660:	fe442603          	lw	a2,-28(s0)
10000664:	00078593          	mv	a1,a5
10000668:	fe042503          	lw	a0,-32(s0)
1000066c:	1e1020ef          	jal	ra,1000304c <XUartLite_SendAll>
10000670:	00000793          	li	a5,0
10000674:	00078513          	mv	a0,a5
10000678:	52c12083          	lw	ra,1324(sp)
1000067c:	52812403          	lw	s0,1320(sp)
10000680:	53010113          	addi	sp,sp,1328
10000684:	00008067          	ret

10000688 <reg_write>:
10000688:	fe010113          	addi	sp,sp,-32
1000068c:	00812e23          	sw	s0,28(sp)
10000690:	02010413          	addi	s0,sp,32
10000694:	fea42623          	sw	a0,-20(s0)
10000698:	feb42423          	sw	a1,-24(s0)
1000069c:	fec42783          	lw	a5,-20(s0)
100006a0:	fe842703          	lw	a4,-24(s0)
100006a4:	00e7a023          	sw	a4,0(a5)
100006a8:	00000013          	nop
100006ac:	01c12403          	lw	s0,28(sp)
100006b0:	02010113          	addi	sp,sp,32
100006b4:	00008067          	ret

100006b8 <read_reg>:
100006b8:	fe010113          	addi	sp,sp,-32
100006bc:	00812e23          	sw	s0,28(sp)
100006c0:	02010413          	addi	s0,sp,32
100006c4:	fea42623          	sw	a0,-20(s0)
100006c8:	feb42423          	sw	a1,-24(s0)
100006cc:	fec42703          	lw	a4,-20(s0)
100006d0:	000107b7          	lui	a5,0x10
100006d4:	00f767b3          	or	a5,a4,a5
100006d8:	0007a783          	lw	a5,0(a5) # 10000 <DTCM+0x8000>
100006dc:	00078513          	mv	a0,a5
100006e0:	01c12403          	lw	s0,28(sp)
100006e4:	02010113          	addi	sp,sp,32
100006e8:	00008067          	ret

100006ec <get_local_falg>:
100006ec:	fe010113          	addi	sp,sp,-32
100006f0:	00812e23          	sw	s0,28(sp)
100006f4:	02010413          	addi	s0,sp,32
100006f8:	fea42623          	sw	a0,-20(s0)
100006fc:	fec42783          	lw	a5,-20(s0)
10000700:	0007a783          	lw	a5,0(a5)
10000704:	00078513          	mv	a0,a5
10000708:	01c12403          	lw	s0,28(sp)
1000070c:	02010113          	addi	sp,sp,32
10000710:	00008067          	ret

10000714 <trans_xdma>:
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
1000073c:	fcc42783          	lw	a5,-52(s0)
10000740:	fef42623          	sw	a5,-20(s0)
10000744:	fc842783          	lw	a5,-56(s0)
10000748:	fef42423          	sw	a5,-24(s0)
1000074c:	fc442783          	lw	a5,-60(s0)
10000750:	fef42623          	sw	a5,-20(s0)
10000754:	fc042783          	lw	a5,-64(s0)
10000758:	fef42423          	sw	a5,-24(s0)
1000075c:	fb442783          	lw	a5,-76(s0)
10000760:	fb842703          	lw	a4,-72(s0)
10000764:	00f71663          	bne	a4,a5,10000770 <trans_xdma+0x5c>
10000768:	00100793          	li	a5,1
1000076c:	0080006f          	j	10000774 <trans_xdma+0x60>
10000770:	00400793          	li	a5,4
10000774:	fef42223          	sw	a5,-28(s0)
10000778:	fbc42783          	lw	a5,-68(s0)
1000077c:	fef42023          	sw	a5,-32(s0)
10000780:	fb842783          	lw	a5,-72(s0)
10000784:	00579713          	slli	a4,a5,0x5
10000788:	100107b7          	lui	a5,0x10010
1000078c:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
10000790:	00f767b3          	or	a5,a4,a5
10000794:	00078713          	mv	a4,a5
10000798:	fec42783          	lw	a5,-20(s0)
1000079c:	00f72023          	sw	a5,0(a4)
100007a0:	fb842783          	lw	a5,-72(s0)
100007a4:	00579793          	slli	a5,a5,0x5
100007a8:	00478713          	addi	a4,a5,4
100007ac:	100107b7          	lui	a5,0x10010
100007b0:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
100007b4:	00f767b3          	or	a5,a4,a5
100007b8:	00078713          	mv	a4,a5
100007bc:	fe842783          	lw	a5,-24(s0)
100007c0:	00f72023          	sw	a5,0(a4)
100007c4:	fb842783          	lw	a5,-72(s0)
100007c8:	00579793          	slli	a5,a5,0x5
100007cc:	00878713          	addi	a4,a5,8
100007d0:	100107b7          	lui	a5,0x10010
100007d4:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
100007d8:	00f767b3          	or	a5,a4,a5
100007dc:	00078713          	mv	a4,a5
100007e0:	fdc42783          	lw	a5,-36(s0)
100007e4:	00f72023          	sw	a5,0(a4)
100007e8:	fb842783          	lw	a5,-72(s0)
100007ec:	00579793          	slli	a5,a5,0x5
100007f0:	00c78713          	addi	a4,a5,12
100007f4:	100107b7          	lui	a5,0x10010
100007f8:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
100007fc:	00f767b3          	or	a5,a4,a5
10000800:	00078713          	mv	a4,a5
10000804:	fd842783          	lw	a5,-40(s0)
10000808:	00f72023          	sw	a5,0(a4)
1000080c:	fb842783          	lw	a5,-72(s0)
10000810:	00579793          	slli	a5,a5,0x5
10000814:	01478713          	addi	a4,a5,20
10000818:	100107b7          	lui	a5,0x10010
1000081c:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
10000820:	00f767b3          	or	a5,a4,a5
10000824:	00078713          	mv	a4,a5
10000828:	fe442783          	lw	a5,-28(s0)
1000082c:	00f72023          	sw	a5,0(a4)
10000830:	fb842783          	lw	a5,-72(s0)
10000834:	00579793          	slli	a5,a5,0x5
10000838:	01078713          	addi	a4,a5,16
1000083c:	100107b7          	lui	a5,0x10010
10000840:	5387a783          	lw	a5,1336(a5) # 10010538 <BASE_H2C_BRAM>
10000844:	00f767b3          	or	a5,a4,a5
10000848:	00078713          	mv	a4,a5
1000084c:	fe042783          	lw	a5,-32(s0)
10000850:	00f72023          	sw	a5,0(a4)
10000854:	00000013          	nop
10000858:	04c12403          	lw	s0,76(sp)
1000085c:	05010113          	addi	sp,sp,80
10000860:	00008067          	ret

10000864 <get_remote_flag>:
10000864:	bd010113          	addi	sp,sp,-1072
10000868:	42112623          	sw	ra,1068(sp)
1000086c:	42812423          	sw	s0,1064(sp)
10000870:	43010413          	addi	s0,sp,1072
10000874:	bca42e23          	sw	a0,-1060(s0)
10000878:	bcb42c23          	sw	a1,-1064(s0)
1000087c:	0540006f          	j	100008d0 <get_remote_flag+0x6c>
10000880:	100117b7          	lui	a5,0x10011
10000884:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10000888:	00079463          	bnez	a5,10000890 <get_remote_flag+0x2c>
1000088c:	0440006f          	j	100008d0 <get_remote_flag+0x6c>
10000890:	be840793          	addi	a5,s0,-1048
10000894:	40000713          	li	a4,1024
10000898:	00070613          	mv	a2,a4
1000089c:	00000593          	li	a1,0
100008a0:	00078513          	mv	a0,a5
100008a4:	311010ef          	jal	ra,100023b4 <memset>
100008a8:	be840713          	addi	a4,s0,-1048
100008ac:	100107b7          	lui	a5,0x10010
100008b0:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xc3cc>
100008b4:	3ff00593          	li	a1,1023
100008b8:	00070513          	mv	a0,a4
100008bc:	131010ef          	jal	ra,100021ec <snprintf_>
100008c0:	be840793          	addi	a5,s0,-1048
100008c4:	00078593          	mv	a1,a5
100008c8:	00400513          	li	a0,4
100008cc:	ca5ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100008d0:	100117b7          	lui	a5,0x10011
100008d4:	8647a783          	lw	a5,-1948(a5) # 10010864 <pDescSR>
100008d8:	0007a783          	lw	a5,0(a5)
100008dc:	fa0792e3          	bnez	a5,10000880 <get_remote_flag+0x1c>
100008e0:	00400593          	li	a1,4
100008e4:	bdc42503          	lw	a0,-1060(s0)
100008e8:	dd1ff0ef          	jal	ra,100006b8 <read_reg>
100008ec:	00050793          	mv	a5,a0
100008f0:	fef42623          	sw	a5,-20(s0)
100008f4:	bdc42783          	lw	a5,-1060(s0)
100008f8:	01078793          	addi	a5,a5,16
100008fc:	00400593          	li	a1,4
10000900:	00078513          	mv	a0,a5
10000904:	db5ff0ef          	jal	ra,100006b8 <read_reg>
10000908:	00050793          	mv	a5,a0
1000090c:	fef42423          	sw	a5,-24(s0)
10000910:	fe842503          	lw	a0,-24(s0)
10000914:	fec42583          	lw	a1,-20(s0)
10000918:	bd842603          	lw	a2,-1064(s0)
1000091c:	00100813          	li	a6,1
10000920:	00100793          	li	a5,1
10000924:	00400713          	li	a4,4
10000928:	00000693          	li	a3,0
1000092c:	de9ff0ef          	jal	ra,10000714 <trans_xdma>
10000930:	100107b7          	lui	a5,0x10010
10000934:	5287a783          	lw	a5,1320(a5) # 10010528 <BASE_ADDR_DSC_CTL>
10000938:	00c7e793          	ori	a5,a5,12
1000093c:	02000593          	li	a1,32
10000940:	00078513          	mv	a0,a5
10000944:	d45ff0ef          	jal	ra,10000688 <reg_write>
10000948:	100107b7          	lui	a5,0x10010
1000094c:	5287a783          	lw	a5,1320(a5) # 10010528 <BASE_ADDR_DSC_CTL>
10000950:	0107e793          	ori	a5,a5,16
10000954:	00100593          	li	a1,1
10000958:	00078513          	mv	a0,a5
1000095c:	d2dff0ef          	jal	ra,10000688 <reg_write>
10000960:	100107b7          	lui	a5,0x10010
10000964:	5287a783          	lw	a5,1320(a5) # 10010528 <BASE_ADDR_DSC_CTL>
10000968:	00100593          	li	a1,1
1000096c:	00078513          	mv	a0,a5
10000970:	d19ff0ef          	jal	ra,10000688 <reg_write>
10000974:	00000013          	nop
10000978:	00078513          	mv	a0,a5
1000097c:	42c12083          	lw	ra,1068(sp)
10000980:	42812403          	lw	s0,1064(sp)
10000984:	43010113          	addi	sp,sp,1072
10000988:	00008067          	ret

1000098c <update_count>:
1000098c:	be010113          	addi	sp,sp,-1056
10000990:	40112e23          	sw	ra,1052(sp)
10000994:	40812c23          	sw	s0,1048(sp)
10000998:	42010413          	addi	s0,sp,1056
1000099c:	bea42623          	sw	a0,-1044(s0)
100009a0:	0540006f          	j	100009f4 <update_count+0x68>
100009a4:	100117b7          	lui	a5,0x10011
100009a8:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100009ac:	00079463          	bnez	a5,100009b4 <update_count+0x28>
100009b0:	0440006f          	j	100009f4 <update_count+0x68>
100009b4:	bf040793          	addi	a5,s0,-1040
100009b8:	40000713          	li	a4,1024
100009bc:	00070613          	mv	a2,a4
100009c0:	00000593          	li	a1,0
100009c4:	00078513          	mv	a0,a5
100009c8:	1ed010ef          	jal	ra,100023b4 <memset>
100009cc:	bf040713          	addi	a4,s0,-1040
100009d0:	100107b7          	lui	a5,0x10010
100009d4:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xc3cc>
100009d8:	3ff00593          	li	a1,1023
100009dc:	00070513          	mv	a0,a4
100009e0:	00d010ef          	jal	ra,100021ec <snprintf_>
100009e4:	bf040793          	addi	a5,s0,-1040
100009e8:	00078593          	mv	a1,a5
100009ec:	00400513          	li	a0,4
100009f0:	b81ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100009f4:	100117b7          	lui	a5,0x10011
100009f8:	8647a783          	lw	a5,-1948(a5) # 10010864 <pDescSR>
100009fc:	0007a783          	lw	a5,0(a5)
10000a00:	fa0792e3          	bnez	a5,100009a4 <update_count+0x18>
10000a04:	bec42783          	lw	a5,-1044(s0)
10000a08:	0007a783          	lw	a5,0(a5)
10000a0c:	00079c63          	bnez	a5,10000a24 <update_count+0x98>
10000a10:	100117b7          	lui	a5,0x10011
10000a14:	8587a783          	lw	a5,-1960(a5) # 10010858 <count>
10000a18:	00178713          	addi	a4,a5,1
10000a1c:	100117b7          	lui	a5,0x10011
10000a20:	84e7ac23          	sw	a4,-1960(a5) # 10010858 <count>
10000a24:	00000013          	nop
10000a28:	41c12083          	lw	ra,1052(sp)
10000a2c:	41812403          	lw	s0,1048(sp)
10000a30:	42010113          	addi	sp,sp,1056
10000a34:	00008067          	ret

10000a38 <set_remote_falg>:
10000a38:	bd010113          	addi	sp,sp,-1072
10000a3c:	42112623          	sw	ra,1068(sp)
10000a40:	42812423          	sw	s0,1064(sp)
10000a44:	43010413          	addi	s0,sp,1072
10000a48:	bca42e23          	sw	a0,-1060(s0)
10000a4c:	bcb42c23          	sw	a1,-1064(s0)
10000a50:	00400593          	li	a1,4
10000a54:	bdc42503          	lw	a0,-1060(s0)
10000a58:	c61ff0ef          	jal	ra,100006b8 <read_reg>
10000a5c:	00050793          	mv	a5,a0
10000a60:	fef42623          	sw	a5,-20(s0)
10000a64:	bdc42783          	lw	a5,-1060(s0)
10000a68:	01078793          	addi	a5,a5,16
10000a6c:	00400593          	li	a1,4
10000a70:	00078513          	mv	a0,a5
10000a74:	c45ff0ef          	jal	ra,100006b8 <read_reg>
10000a78:	00050793          	mv	a5,a0
10000a7c:	fef42423          	sw	a5,-24(s0)
10000a80:	bd842783          	lw	a5,-1064(s0)
10000a84:	0007a503          	lw	a0,0(a5)
10000a88:	fe842603          	lw	a2,-24(s0)
10000a8c:	fec42683          	lw	a3,-20(s0)
10000a90:	00100813          	li	a6,1
10000a94:	00100793          	li	a5,1
10000a98:	00400713          	li	a4,4
10000a9c:	00000593          	li	a1,0
10000aa0:	c75ff0ef          	jal	ra,10000714 <trans_xdma>
10000aa4:	0540006f          	j	10000af8 <set_remote_falg+0xc0>
10000aa8:	100117b7          	lui	a5,0x10011
10000aac:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10000ab0:	00079463          	bnez	a5,10000ab8 <set_remote_falg+0x80>
10000ab4:	0440006f          	j	10000af8 <set_remote_falg+0xc0>
10000ab8:	be840793          	addi	a5,s0,-1048
10000abc:	40000713          	li	a4,1024
10000ac0:	00070613          	mv	a2,a4
10000ac4:	00000593          	li	a1,0
10000ac8:	00078513          	mv	a0,a5
10000acc:	0e9010ef          	jal	ra,100023b4 <memset>
10000ad0:	be840713          	addi	a4,s0,-1048
10000ad4:	100107b7          	lui	a5,0x10010
10000ad8:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xc3cc>
10000adc:	3ff00593          	li	a1,1023
10000ae0:	00070513          	mv	a0,a4
10000ae4:	708010ef          	jal	ra,100021ec <snprintf_>
10000ae8:	be840793          	addi	a5,s0,-1048
10000aec:	00078593          	mv	a1,a5
10000af0:	00400513          	li	a0,4
10000af4:	a7dff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10000af8:	100117b7          	lui	a5,0x10011
10000afc:	8647a783          	lw	a5,-1948(a5) # 10010864 <pDescSR>
10000b00:	0007a783          	lw	a5,0(a5)
10000b04:	fa0792e3          	bnez	a5,10000aa8 <set_remote_falg+0x70>
10000b08:	00000013          	nop
10000b0c:	42c12083          	lw	ra,1068(sp)
10000b10:	42812403          	lw	s0,1064(sp)
10000b14:	43010113          	addi	sp,sp,1072
10000b18:	00008067          	ret

10000b1c <transfer_set>:
10000b1c:	bd010113          	addi	sp,sp,-1072
10000b20:	42112623          	sw	ra,1068(sp)
10000b24:	42812423          	sw	s0,1064(sp)
10000b28:	42912223          	sw	s1,1060(sp)
10000b2c:	43212023          	sw	s2,1056(sp)
10000b30:	43010413          	addi	s0,sp,1072
10000b34:	bca42e23          	sw	a0,-1060(s0)
10000b38:	bcb42c23          	sw	a1,-1064(s0)
10000b3c:	bd842783          	lw	a5,-1064(s0)
10000b40:	07078793          	addi	a5,a5,112
10000b44:	00400593          	li	a1,4
10000b48:	00078513          	mv	a0,a5
10000b4c:	b6dff0ef          	jal	ra,100006b8 <read_reg>
10000b50:	fea42423          	sw	a0,-24(s0)
10000b54:	fe042623          	sw	zero,-20(s0)
10000b58:	0e40006f          	j	10000c3c <transfer_set+0x120>
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
10000c1c:	fec42783          	lw	a5,-20(s0)
10000c20:	00178793          	addi	a5,a5,1
10000c24:	fef42623          	sw	a5,-20(s0)
10000c28:	fe442783          	lw	a5,-28(s0)
10000c2c:	00279793          	slli	a5,a5,0x2
10000c30:	bdc42703          	lw	a4,-1060(s0)
10000c34:	00f707b3          	add	a5,a4,a5
10000c38:	bcf42e23          	sw	a5,-1060(s0)
10000c3c:	fec42783          	lw	a5,-20(s0)
10000c40:	fe842703          	lw	a4,-24(s0)
10000c44:	f0e7ece3          	bltu	a5,a4,10000b5c <transfer_set+0x40>
10000c48:	0540006f          	j	10000c9c <transfer_set+0x180>
10000c4c:	100117b7          	lui	a5,0x10011
10000c50:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10000c54:	00079463          	bnez	a5,10000c5c <transfer_set+0x140>
10000c58:	0440006f          	j	10000c9c <transfer_set+0x180>
10000c5c:	be440793          	addi	a5,s0,-1052
10000c60:	40000713          	li	a4,1024
10000c64:	00070613          	mv	a2,a4
10000c68:	00000593          	li	a1,0
10000c6c:	00078513          	mv	a0,a5
10000c70:	744010ef          	jal	ra,100023b4 <memset>
10000c74:	be440713          	addi	a4,s0,-1052
10000c78:	100107b7          	lui	a5,0x10010
10000c7c:	07078613          	addi	a2,a5,112 # 10010070 <p2p_demo+0xc3cc>
10000c80:	3ff00593          	li	a1,1023
10000c84:	00070513          	mv	a0,a4
10000c88:	564010ef          	jal	ra,100021ec <snprintf_>
10000c8c:	be440793          	addi	a5,s0,-1052
10000c90:	00078593          	mv	a1,a5
10000c94:	00400513          	li	a0,4
10000c98:	8d9ff0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10000c9c:	100117b7          	lui	a5,0x10011
10000ca0:	8647a783          	lw	a5,-1948(a5) # 10010864 <pDescSR>
10000ca4:	0007a783          	lw	a5,0(a5)
10000ca8:	fa0792e3          	bnez	a5,10000c4c <transfer_set+0x130>
10000cac:	00000013          	nop
10000cb0:	42c12083          	lw	ra,1068(sp)
10000cb4:	42812403          	lw	s0,1064(sp)
10000cb8:	42412483          	lw	s1,1060(sp)
10000cbc:	42012903          	lw	s2,1056(sp)
10000cc0:	43010113          	addi	sp,sp,1072
10000cc4:	00008067          	ret

10000cc8 <main>:
10000cc8:	f7010113          	addi	sp,sp,-144
10000ccc:	08112623          	sw	ra,140(sp)
10000cd0:	08812423          	sw	s0,136(sp)
10000cd4:	09010413          	addi	s0,sp,144
10000cd8:	be0ff0ef          	jal	ra,100000b8 <disable_intr>
10000cdc:	fe042623          	sw	zero,-20(s0)
10000ce0:	fe042423          	sw	zero,-24(s0)
10000ce4:	fe042223          	sw	zero,-28(s0)
10000ce8:	100107b7          	lui	a5,0x10010
10000cec:	0947a583          	lw	a1,148(a5) # 10010094 <p2p_demo+0xc3f0>
10000cf0:	09478713          	addi	a4,a5,148
10000cf4:	00472603          	lw	a2,4(a4)
10000cf8:	09478713          	addi	a4,a5,148
10000cfc:	00872683          	lw	a3,8(a4)
10000d00:	09478713          	addi	a4,a5,148
10000d04:	00c72703          	lw	a4,12(a4)
10000d08:	f6b42e23          	sw	a1,-132(s0)
10000d0c:	f8c42023          	sw	a2,-128(s0)
10000d10:	f8d42223          	sw	a3,-124(s0)
10000d14:	f8e42423          	sw	a4,-120(s0)
10000d18:	09478793          	addi	a5,a5,148
10000d1c:	0107d783          	lhu	a5,16(a5)
10000d20:	f8f41623          	sh	a5,-116(s0)
10000d24:	f8e40793          	addi	a5,s0,-114
10000d28:	05200713          	li	a4,82
10000d2c:	00070613          	mv	a2,a4
10000d30:	00000593          	li	a1,0
10000d34:	00078513          	mv	a0,a5
10000d38:	67c010ef          	jal	ra,100023b4 <memset>
10000d3c:	100107b7          	lui	a5,0x10010
10000d40:	6fc78793          	addi	a5,a5,1788 # 100106fc <XUartLiteInstances0>
10000d44:	fef42023          	sw	a5,-32(s0)
10000d48:	010005b7          	lui	a1,0x1000
10000d4c:	fe042503          	lw	a0,-32(s0)
10000d50:	531010ef          	jal	ra,10002a80 <XUartLite_CfgInitialize>
10000d54:	f7c40793          	addi	a5,s0,-132
10000d58:	01100613          	li	a2,17
10000d5c:	00078593          	mv	a1,a5
10000d60:	fe042503          	lw	a0,-32(s0)
10000d64:	2e8020ef          	jal	ra,1000304c <XUartLite_SendAll>
10000d68:	73d020ef          	jal	ra,10003ca4 <p2p_demo>
10000d6c:	00000013          	nop
10000d70:	08c12083          	lw	ra,140(sp)
10000d74:	08812403          	lw	s0,136(sp)
10000d78:	09010113          	addi	sp,sp,144
10000d7c:	00008067          	ret

10000d80 <u_i_mod>:
10000d80:	fe010113          	addi	sp,sp,-32
10000d84:	00812e23          	sw	s0,28(sp)
10000d88:	02010413          	addi	s0,sp,32
10000d8c:	fea42623          	sw	a0,-20(s0)
10000d90:	feb42423          	sw	a1,-24(s0)
10000d94:	0140006f          	j	10000da8 <u_i_mod+0x28>
10000d98:	fec42703          	lw	a4,-20(s0)
10000d9c:	fe842783          	lw	a5,-24(s0)
10000da0:	40f707b3          	sub	a5,a4,a5
10000da4:	fef42623          	sw	a5,-20(s0)
10000da8:	fec42703          	lw	a4,-20(s0)
10000dac:	fe842783          	lw	a5,-24(s0)
10000db0:	fef774e3          	bgeu	a4,a5,10000d98 <u_i_mod+0x18>
10000db4:	fec42783          	lw	a5,-20(s0)
10000db8:	00078513          	mv	a0,a5
10000dbc:	01c12403          	lw	s0,28(sp)
10000dc0:	02010113          	addi	sp,sp,32
10000dc4:	00008067          	ret

10000dc8 <bitwise_div_32>:
10000dc8:	fd010113          	addi	sp,sp,-48
10000dcc:	02812623          	sw	s0,44(sp)
10000dd0:	03010413          	addi	s0,sp,48
10000dd4:	fca42e23          	sw	a0,-36(s0)
10000dd8:	fcb42c23          	sw	a1,-40(s0)
10000ddc:	02000793          	li	a5,32
10000de0:	fef42223          	sw	a5,-28(s0)
10000de4:	fdc42783          	lw	a5,-36(s0)
10000de8:	fef42623          	sw	a5,-20(s0)
10000dec:	fe042423          	sw	zero,-24(s0)
10000df0:	fec42783          	lw	a5,-20(s0)
10000df4:	fef42023          	sw	a5,-32(s0)
10000df8:	fec42783          	lw	a5,-20(s0)
10000dfc:	00179793          	slli	a5,a5,0x1
10000e00:	fef42623          	sw	a5,-20(s0)
10000e04:	fe842783          	lw	a5,-24(s0)
10000e08:	00179793          	slli	a5,a5,0x1
10000e0c:	fec42683          	lw	a3,-20(s0)
10000e10:	fe042703          	lw	a4,-32(s0)
10000e14:	00e6b733          	sltu	a4,a3,a4
10000e18:	0ff77713          	andi	a4,a4,255
10000e1c:	00e787b3          	add	a5,a5,a4
10000e20:	fef42423          	sw	a5,-24(s0)
10000e24:	fe842703          	lw	a4,-24(s0)
10000e28:	fd842783          	lw	a5,-40(s0)
10000e2c:	02f76063          	bltu	a4,a5,10000e4c <bitwise_div_32+0x84>
10000e30:	fe842703          	lw	a4,-24(s0)
10000e34:	fd842783          	lw	a5,-40(s0)
10000e38:	40f707b3          	sub	a5,a4,a5
10000e3c:	fef42423          	sw	a5,-24(s0)
10000e40:	fec42783          	lw	a5,-20(s0)
10000e44:	00178793          	addi	a5,a5,1
10000e48:	fef42623          	sw	a5,-20(s0)
10000e4c:	fe442783          	lw	a5,-28(s0)
10000e50:	fff78793          	addi	a5,a5,-1
10000e54:	fef42223          	sw	a5,-28(s0)
10000e58:	fe442783          	lw	a5,-28(s0)
10000e5c:	f8079ae3          	bnez	a5,10000df0 <bitwise_div_32+0x28>
10000e60:	fec42783          	lw	a5,-20(s0)
10000e64:	00078513          	mv	a0,a5
10000e68:	02c12403          	lw	s0,44(sp)
10000e6c:	03010113          	addi	sp,sp,48
10000e70:	00008067          	ret

10000e74 <_out_buffer>:
10000e74:	fe010113          	addi	sp,sp,-32
10000e78:	00812e23          	sw	s0,28(sp)
10000e7c:	02010413          	addi	s0,sp,32
10000e80:	00050793          	mv	a5,a0
10000e84:	feb42423          	sw	a1,-24(s0)
10000e88:	fec42223          	sw	a2,-28(s0)
10000e8c:	fed42023          	sw	a3,-32(s0)
10000e90:	fef407a3          	sb	a5,-17(s0)
10000e94:	fe442703          	lw	a4,-28(s0)
10000e98:	fe042783          	lw	a5,-32(s0)
10000e9c:	00f77c63          	bgeu	a4,a5,10000eb4 <_out_buffer+0x40>
10000ea0:	fe842703          	lw	a4,-24(s0)
10000ea4:	fe442783          	lw	a5,-28(s0)
10000ea8:	00f707b3          	add	a5,a4,a5
10000eac:	fef44703          	lbu	a4,-17(s0)
10000eb0:	00e78023          	sb	a4,0(a5)
10000eb4:	00000013          	nop
10000eb8:	01c12403          	lw	s0,28(sp)
10000ebc:	02010113          	addi	sp,sp,32
10000ec0:	00008067          	ret

10000ec4 <_out_null>:
10000ec4:	fe010113          	addi	sp,sp,-32
10000ec8:	00812e23          	sw	s0,28(sp)
10000ecc:	02010413          	addi	s0,sp,32
10000ed0:	00050793          	mv	a5,a0
10000ed4:	feb42423          	sw	a1,-24(s0)
10000ed8:	fec42223          	sw	a2,-28(s0)
10000edc:	fed42023          	sw	a3,-32(s0)
10000ee0:	fef407a3          	sb	a5,-17(s0)
10000ee4:	00000013          	nop
10000ee8:	01c12403          	lw	s0,28(sp)
10000eec:	02010113          	addi	sp,sp,32
10000ef0:	00008067          	ret

10000ef4 <_out_char>:
10000ef4:	fe010113          	addi	sp,sp,-32
10000ef8:	00112e23          	sw	ra,28(sp)
10000efc:	00812c23          	sw	s0,24(sp)
10000f00:	02010413          	addi	s0,sp,32
10000f04:	00050793          	mv	a5,a0
10000f08:	feb42423          	sw	a1,-24(s0)
10000f0c:	fec42223          	sw	a2,-28(s0)
10000f10:	fed42023          	sw	a3,-32(s0)
10000f14:	fef407a3          	sb	a5,-17(s0)
10000f18:	fef44783          	lbu	a5,-17(s0)
10000f1c:	00078513          	mv	a0,a5
10000f20:	470010ef          	jal	ra,10002390 <_putchar>
10000f24:	00000013          	nop
10000f28:	01c12083          	lw	ra,28(sp)
10000f2c:	01812403          	lw	s0,24(sp)
10000f30:	02010113          	addi	sp,sp,32
10000f34:	00008067          	ret

10000f38 <_out_fct>:
10000f38:	fe010113          	addi	sp,sp,-32
10000f3c:	00112e23          	sw	ra,28(sp)
10000f40:	00812c23          	sw	s0,24(sp)
10000f44:	02010413          	addi	s0,sp,32
10000f48:	00050793          	mv	a5,a0
10000f4c:	feb42423          	sw	a1,-24(s0)
10000f50:	fec42223          	sw	a2,-28(s0)
10000f54:	fed42023          	sw	a3,-32(s0)
10000f58:	fef407a3          	sb	a5,-17(s0)
10000f5c:	fef44783          	lbu	a5,-17(s0)
10000f60:	02078263          	beqz	a5,10000f84 <_out_fct+0x4c>
10000f64:	fe842783          	lw	a5,-24(s0)
10000f68:	0007a683          	lw	a3,0(a5)
10000f6c:	fe842783          	lw	a5,-24(s0)
10000f70:	0047a703          	lw	a4,4(a5)
10000f74:	fef44783          	lbu	a5,-17(s0)
10000f78:	00070593          	mv	a1,a4
10000f7c:	00078513          	mv	a0,a5
10000f80:	000680e7          	jalr	a3
10000f84:	00000013          	nop
10000f88:	01c12083          	lw	ra,28(sp)
10000f8c:	01812403          	lw	s0,24(sp)
10000f90:	02010113          	addi	sp,sp,32
10000f94:	00008067          	ret

10000f98 <_strnlen_s>:
10000f98:	fd010113          	addi	sp,sp,-48
10000f9c:	02812623          	sw	s0,44(sp)
10000fa0:	03010413          	addi	s0,sp,48
10000fa4:	fca42e23          	sw	a0,-36(s0)
10000fa8:	fcb42c23          	sw	a1,-40(s0)
10000fac:	fdc42783          	lw	a5,-36(s0)
10000fb0:	fef42623          	sw	a5,-20(s0)
10000fb4:	0100006f          	j	10000fc4 <_strnlen_s+0x2c>
10000fb8:	fec42783          	lw	a5,-20(s0)
10000fbc:	00178793          	addi	a5,a5,1
10000fc0:	fef42623          	sw	a5,-20(s0)
10000fc4:	fec42783          	lw	a5,-20(s0)
10000fc8:	0007c783          	lbu	a5,0(a5)
10000fcc:	00078a63          	beqz	a5,10000fe0 <_strnlen_s+0x48>
10000fd0:	fd842783          	lw	a5,-40(s0)
10000fd4:	fff78713          	addi	a4,a5,-1
10000fd8:	fce42c23          	sw	a4,-40(s0)
10000fdc:	fc079ee3          	bnez	a5,10000fb8 <_strnlen_s+0x20>
10000fe0:	fec42703          	lw	a4,-20(s0)
10000fe4:	fdc42783          	lw	a5,-36(s0)
10000fe8:	40f707b3          	sub	a5,a4,a5
10000fec:	00078513          	mv	a0,a5
10000ff0:	02c12403          	lw	s0,44(sp)
10000ff4:	03010113          	addi	sp,sp,48
10000ff8:	00008067          	ret

10000ffc <_is_digit>:
10000ffc:	fe010113          	addi	sp,sp,-32
10001000:	00812e23          	sw	s0,28(sp)
10001004:	02010413          	addi	s0,sp,32
10001008:	00050793          	mv	a5,a0
1000100c:	fef407a3          	sb	a5,-17(s0)
10001010:	fef44703          	lbu	a4,-17(s0)
10001014:	02f00793          	li	a5,47
10001018:	00e7fc63          	bgeu	a5,a4,10001030 <_is_digit+0x34>
1000101c:	fef44703          	lbu	a4,-17(s0)
10001020:	03900793          	li	a5,57
10001024:	00e7e663          	bltu	a5,a4,10001030 <_is_digit+0x34>
10001028:	00100793          	li	a5,1
1000102c:	0080006f          	j	10001034 <_is_digit+0x38>
10001030:	00000793          	li	a5,0
10001034:	0017f793          	andi	a5,a5,1
10001038:	0ff7f793          	andi	a5,a5,255
1000103c:	00078513          	mv	a0,a5
10001040:	01c12403          	lw	s0,28(sp)
10001044:	02010113          	addi	sp,sp,32
10001048:	00008067          	ret

1000104c <_atoi>:
1000104c:	fd010113          	addi	sp,sp,-48
10001050:	02112623          	sw	ra,44(sp)
10001054:	02812423          	sw	s0,40(sp)
10001058:	03010413          	addi	s0,sp,48
1000105c:	fca42e23          	sw	a0,-36(s0)
10001060:	fe042623          	sw	zero,-20(s0)
10001064:	0400006f          	j	100010a4 <_atoi+0x58>
10001068:	fec42703          	lw	a4,-20(s0)
1000106c:	00070793          	mv	a5,a4
10001070:	00279793          	slli	a5,a5,0x2
10001074:	00e787b3          	add	a5,a5,a4
10001078:	00179793          	slli	a5,a5,0x1
1000107c:	00078613          	mv	a2,a5
10001080:	fdc42783          	lw	a5,-36(s0)
10001084:	0007a783          	lw	a5,0(a5)
10001088:	00178693          	addi	a3,a5,1
1000108c:	fdc42703          	lw	a4,-36(s0)
10001090:	00d72023          	sw	a3,0(a4)
10001094:	0007c783          	lbu	a5,0(a5)
10001098:	00f607b3          	add	a5,a2,a5
1000109c:	fd078793          	addi	a5,a5,-48
100010a0:	fef42623          	sw	a5,-20(s0)
100010a4:	fdc42783          	lw	a5,-36(s0)
100010a8:	0007a783          	lw	a5,0(a5)
100010ac:	0007c783          	lbu	a5,0(a5)
100010b0:	00078513          	mv	a0,a5
100010b4:	f49ff0ef          	jal	ra,10000ffc <_is_digit>
100010b8:	00050793          	mv	a5,a0
100010bc:	fa0796e3          	bnez	a5,10001068 <_atoi+0x1c>
100010c0:	fec42783          	lw	a5,-20(s0)
100010c4:	00078513          	mv	a0,a5
100010c8:	02c12083          	lw	ra,44(sp)
100010cc:	02812403          	lw	s0,40(sp)
100010d0:	03010113          	addi	sp,sp,48
100010d4:	00008067          	ret

100010d8 <_out_rev>:
100010d8:	fc010113          	addi	sp,sp,-64
100010dc:	02112e23          	sw	ra,60(sp)
100010e0:	02812c23          	sw	s0,56(sp)
100010e4:	04010413          	addi	s0,sp,64
100010e8:	fca42e23          	sw	a0,-36(s0)
100010ec:	fcb42c23          	sw	a1,-40(s0)
100010f0:	fcc42a23          	sw	a2,-44(s0)
100010f4:	fcd42823          	sw	a3,-48(s0)
100010f8:	fce42623          	sw	a4,-52(s0)
100010fc:	fcf42423          	sw	a5,-56(s0)
10001100:	fd042223          	sw	a6,-60(s0)
10001104:	fd142023          	sw	a7,-64(s0)
10001108:	fd442783          	lw	a5,-44(s0)
1000110c:	fef42423          	sw	a5,-24(s0)
10001110:	fc042783          	lw	a5,-64(s0)
10001114:	0027f793          	andi	a5,a5,2
10001118:	08079c63          	bnez	a5,100011b0 <_out_rev+0xd8>
1000111c:	fc042783          	lw	a5,-64(s0)
10001120:	0017f793          	andi	a5,a5,1
10001124:	08079663          	bnez	a5,100011b0 <_out_rev+0xd8>
10001128:	fc842783          	lw	a5,-56(s0)
1000112c:	fef42623          	sw	a5,-20(s0)
10001130:	0340006f          	j	10001164 <_out_rev+0x8c>
10001134:	fd442783          	lw	a5,-44(s0)
10001138:	00178713          	addi	a4,a5,1
1000113c:	fce42a23          	sw	a4,-44(s0)
10001140:	fdc42703          	lw	a4,-36(s0)
10001144:	fd042683          	lw	a3,-48(s0)
10001148:	00078613          	mv	a2,a5
1000114c:	fd842583          	lw	a1,-40(s0)
10001150:	02000513          	li	a0,32
10001154:	000700e7          	jalr	a4
10001158:	fec42783          	lw	a5,-20(s0)
1000115c:	00178793          	addi	a5,a5,1
10001160:	fef42623          	sw	a5,-20(s0)
10001164:	fec42703          	lw	a4,-20(s0)
10001168:	fc442783          	lw	a5,-60(s0)
1000116c:	fcf764e3          	bltu	a4,a5,10001134 <_out_rev+0x5c>
10001170:	0400006f          	j	100011b0 <_out_rev+0xd8>
10001174:	fc842783          	lw	a5,-56(s0)
10001178:	fff78793          	addi	a5,a5,-1
1000117c:	fcf42423          	sw	a5,-56(s0)
10001180:	fcc42703          	lw	a4,-52(s0)
10001184:	fc842783          	lw	a5,-56(s0)
10001188:	00f707b3          	add	a5,a4,a5
1000118c:	0007c503          	lbu	a0,0(a5)
10001190:	fd442783          	lw	a5,-44(s0)
10001194:	00178713          	addi	a4,a5,1
10001198:	fce42a23          	sw	a4,-44(s0)
1000119c:	fdc42703          	lw	a4,-36(s0)
100011a0:	fd042683          	lw	a3,-48(s0)
100011a4:	00078613          	mv	a2,a5
100011a8:	fd842583          	lw	a1,-40(s0)
100011ac:	000700e7          	jalr	a4
100011b0:	fc842783          	lw	a5,-56(s0)
100011b4:	fc0790e3          	bnez	a5,10001174 <_out_rev+0x9c>
100011b8:	fc042783          	lw	a5,-64(s0)
100011bc:	0027f793          	andi	a5,a5,2
100011c0:	04078063          	beqz	a5,10001200 <_out_rev+0x128>
100011c4:	0280006f          	j	100011ec <_out_rev+0x114>
100011c8:	fd442783          	lw	a5,-44(s0)
100011cc:	00178713          	addi	a4,a5,1
100011d0:	fce42a23          	sw	a4,-44(s0)
100011d4:	fdc42703          	lw	a4,-36(s0)
100011d8:	fd042683          	lw	a3,-48(s0)
100011dc:	00078613          	mv	a2,a5
100011e0:	fd842583          	lw	a1,-40(s0)
100011e4:	02000513          	li	a0,32
100011e8:	000700e7          	jalr	a4
100011ec:	fd442703          	lw	a4,-44(s0)
100011f0:	fe842783          	lw	a5,-24(s0)
100011f4:	40f707b3          	sub	a5,a4,a5
100011f8:	fc442703          	lw	a4,-60(s0)
100011fc:	fce7e6e3          	bltu	a5,a4,100011c8 <_out_rev+0xf0>
10001200:	fd442783          	lw	a5,-44(s0)
10001204:	00078513          	mv	a0,a5
10001208:	03c12083          	lw	ra,60(sp)
1000120c:	03812403          	lw	s0,56(sp)
10001210:	04010113          	addi	sp,sp,64
10001214:	00008067          	ret

10001218 <_ntoa_format>:
10001218:	fd010113          	addi	sp,sp,-48
1000121c:	02112623          	sw	ra,44(sp)
10001220:	02812423          	sw	s0,40(sp)
10001224:	03010413          	addi	s0,sp,48
10001228:	fea42623          	sw	a0,-20(s0)
1000122c:	feb42423          	sw	a1,-24(s0)
10001230:	fec42223          	sw	a2,-28(s0)
10001234:	fed42023          	sw	a3,-32(s0)
10001238:	fce42e23          	sw	a4,-36(s0)
1000123c:	fcf42c23          	sw	a5,-40(s0)
10001240:	00080793          	mv	a5,a6
10001244:	fd142823          	sw	a7,-48(s0)
10001248:	fcf40ba3          	sb	a5,-41(s0)
1000124c:	00842783          	lw	a5,8(s0)
10001250:	0027f793          	andi	a5,a5,2
10001254:	0a079a63          	bnez	a5,10001308 <_ntoa_format+0xf0>
10001258:	00442783          	lw	a5,4(s0)
1000125c:	04078863          	beqz	a5,100012ac <_ntoa_format+0x94>
10001260:	00842783          	lw	a5,8(s0)
10001264:	0017f793          	andi	a5,a5,1
10001268:	04078263          	beqz	a5,100012ac <_ntoa_format+0x94>
1000126c:	fd744783          	lbu	a5,-41(s0)
10001270:	00079863          	bnez	a5,10001280 <_ntoa_format+0x68>
10001274:	00842783          	lw	a5,8(s0)
10001278:	00c7f793          	andi	a5,a5,12
1000127c:	02078863          	beqz	a5,100012ac <_ntoa_format+0x94>
10001280:	00442783          	lw	a5,4(s0)
10001284:	fff78793          	addi	a5,a5,-1
10001288:	00f42223          	sw	a5,4(s0)
1000128c:	0200006f          	j	100012ac <_ntoa_format+0x94>
10001290:	fd842783          	lw	a5,-40(s0)
10001294:	00178713          	addi	a4,a5,1
10001298:	fce42c23          	sw	a4,-40(s0)
1000129c:	fdc42703          	lw	a4,-36(s0)
100012a0:	00f707b3          	add	a5,a4,a5
100012a4:	03000713          	li	a4,48
100012a8:	00e78023          	sb	a4,0(a5)
100012ac:	fd842703          	lw	a4,-40(s0)
100012b0:	00042783          	lw	a5,0(s0)
100012b4:	02f77863          	bgeu	a4,a5,100012e4 <_ntoa_format+0xcc>
100012b8:	fd842703          	lw	a4,-40(s0)
100012bc:	01f00793          	li	a5,31
100012c0:	fce7f8e3          	bgeu	a5,a4,10001290 <_ntoa_format+0x78>
100012c4:	0200006f          	j	100012e4 <_ntoa_format+0xcc>
100012c8:	fd842783          	lw	a5,-40(s0)
100012cc:	00178713          	addi	a4,a5,1
100012d0:	fce42c23          	sw	a4,-40(s0)
100012d4:	fdc42703          	lw	a4,-36(s0)
100012d8:	00f707b3          	add	a5,a4,a5
100012dc:	03000713          	li	a4,48
100012e0:	00e78023          	sb	a4,0(a5)
100012e4:	00842783          	lw	a5,8(s0)
100012e8:	0017f793          	andi	a5,a5,1
100012ec:	00078e63          	beqz	a5,10001308 <_ntoa_format+0xf0>
100012f0:	fd842703          	lw	a4,-40(s0)
100012f4:	00442783          	lw	a5,4(s0)
100012f8:	00f77863          	bgeu	a4,a5,10001308 <_ntoa_format+0xf0>
100012fc:	fd842703          	lw	a4,-40(s0)
10001300:	01f00793          	li	a5,31
10001304:	fce7f2e3          	bgeu	a5,a4,100012c8 <_ntoa_format+0xb0>
10001308:	00842783          	lw	a5,8(s0)
1000130c:	0107f793          	andi	a5,a5,16
10001310:	14078063          	beqz	a5,10001450 <_ntoa_format+0x238>
10001314:	00842783          	lw	a5,8(s0)
10001318:	4007f793          	andi	a5,a5,1024
1000131c:	04079863          	bnez	a5,1000136c <_ntoa_format+0x154>
10001320:	fd842783          	lw	a5,-40(s0)
10001324:	04078463          	beqz	a5,1000136c <_ntoa_format+0x154>
10001328:	fd842703          	lw	a4,-40(s0)
1000132c:	00042783          	lw	a5,0(s0)
10001330:	00f70863          	beq	a4,a5,10001340 <_ntoa_format+0x128>
10001334:	fd842703          	lw	a4,-40(s0)
10001338:	00442783          	lw	a5,4(s0)
1000133c:	02f71863          	bne	a4,a5,1000136c <_ntoa_format+0x154>
10001340:	fd842783          	lw	a5,-40(s0)
10001344:	fff78793          	addi	a5,a5,-1
10001348:	fcf42c23          	sw	a5,-40(s0)
1000134c:	fd842783          	lw	a5,-40(s0)
10001350:	00078e63          	beqz	a5,1000136c <_ntoa_format+0x154>
10001354:	fd042703          	lw	a4,-48(s0)
10001358:	01000793          	li	a5,16
1000135c:	00f71863          	bne	a4,a5,1000136c <_ntoa_format+0x154>
10001360:	fd842783          	lw	a5,-40(s0)
10001364:	fff78793          	addi	a5,a5,-1
10001368:	fcf42c23          	sw	a5,-40(s0)
1000136c:	fd042703          	lw	a4,-48(s0)
10001370:	01000793          	li	a5,16
10001374:	02f71e63          	bne	a4,a5,100013b0 <_ntoa_format+0x198>
10001378:	00842783          	lw	a5,8(s0)
1000137c:	0207f793          	andi	a5,a5,32
10001380:	02079863          	bnez	a5,100013b0 <_ntoa_format+0x198>
10001384:	fd842703          	lw	a4,-40(s0)
10001388:	01f00793          	li	a5,31
1000138c:	02e7e263          	bltu	a5,a4,100013b0 <_ntoa_format+0x198>
10001390:	fd842783          	lw	a5,-40(s0)
10001394:	00178713          	addi	a4,a5,1
10001398:	fce42c23          	sw	a4,-40(s0)
1000139c:	fdc42703          	lw	a4,-36(s0)
100013a0:	00f707b3          	add	a5,a4,a5
100013a4:	07800713          	li	a4,120
100013a8:	00e78023          	sb	a4,0(a5)
100013ac:	07c0006f          	j	10001428 <_ntoa_format+0x210>
100013b0:	fd042703          	lw	a4,-48(s0)
100013b4:	01000793          	li	a5,16
100013b8:	02f71e63          	bne	a4,a5,100013f4 <_ntoa_format+0x1dc>
100013bc:	00842783          	lw	a5,8(s0)
100013c0:	0207f793          	andi	a5,a5,32
100013c4:	02078863          	beqz	a5,100013f4 <_ntoa_format+0x1dc>
100013c8:	fd842703          	lw	a4,-40(s0)
100013cc:	01f00793          	li	a5,31
100013d0:	02e7e263          	bltu	a5,a4,100013f4 <_ntoa_format+0x1dc>
100013d4:	fd842783          	lw	a5,-40(s0)
100013d8:	00178713          	addi	a4,a5,1
100013dc:	fce42c23          	sw	a4,-40(s0)
100013e0:	fdc42703          	lw	a4,-36(s0)
100013e4:	00f707b3          	add	a5,a4,a5
100013e8:	05800713          	li	a4,88
100013ec:	00e78023          	sb	a4,0(a5)
100013f0:	0380006f          	j	10001428 <_ntoa_format+0x210>
100013f4:	fd042703          	lw	a4,-48(s0)
100013f8:	00200793          	li	a5,2
100013fc:	02f71663          	bne	a4,a5,10001428 <_ntoa_format+0x210>
10001400:	fd842703          	lw	a4,-40(s0)
10001404:	01f00793          	li	a5,31
10001408:	02e7e063          	bltu	a5,a4,10001428 <_ntoa_format+0x210>
1000140c:	fd842783          	lw	a5,-40(s0)
10001410:	00178713          	addi	a4,a5,1
10001414:	fce42c23          	sw	a4,-40(s0)
10001418:	fdc42703          	lw	a4,-36(s0)
1000141c:	00f707b3          	add	a5,a4,a5
10001420:	06200713          	li	a4,98
10001424:	00e78023          	sb	a4,0(a5)
10001428:	fd842703          	lw	a4,-40(s0)
1000142c:	01f00793          	li	a5,31
10001430:	02e7e063          	bltu	a5,a4,10001450 <_ntoa_format+0x238>
10001434:	fd842783          	lw	a5,-40(s0)
10001438:	00178713          	addi	a4,a5,1
1000143c:	fce42c23          	sw	a4,-40(s0)
10001440:	fdc42703          	lw	a4,-36(s0)
10001444:	00f707b3          	add	a5,a4,a5
10001448:	03000713          	li	a4,48
1000144c:	00e78023          	sb	a4,0(a5)
10001450:	fd842703          	lw	a4,-40(s0)
10001454:	01f00793          	li	a5,31
10001458:	08e7e063          	bltu	a5,a4,100014d8 <_ntoa_format+0x2c0>
1000145c:	fd744783          	lbu	a5,-41(s0)
10001460:	02078263          	beqz	a5,10001484 <_ntoa_format+0x26c>
10001464:	fd842783          	lw	a5,-40(s0)
10001468:	00178713          	addi	a4,a5,1
1000146c:	fce42c23          	sw	a4,-40(s0)
10001470:	fdc42703          	lw	a4,-36(s0)
10001474:	00f707b3          	add	a5,a4,a5
10001478:	02d00713          	li	a4,45
1000147c:	00e78023          	sb	a4,0(a5)
10001480:	0580006f          	j	100014d8 <_ntoa_format+0x2c0>
10001484:	00842783          	lw	a5,8(s0)
10001488:	0047f793          	andi	a5,a5,4
1000148c:	02078263          	beqz	a5,100014b0 <_ntoa_format+0x298>
10001490:	fd842783          	lw	a5,-40(s0)
10001494:	00178713          	addi	a4,a5,1
10001498:	fce42c23          	sw	a4,-40(s0)
1000149c:	fdc42703          	lw	a4,-36(s0)
100014a0:	00f707b3          	add	a5,a4,a5
100014a4:	02b00713          	li	a4,43
100014a8:	00e78023          	sb	a4,0(a5)
100014ac:	02c0006f          	j	100014d8 <_ntoa_format+0x2c0>
100014b0:	00842783          	lw	a5,8(s0)
100014b4:	0087f793          	andi	a5,a5,8
100014b8:	02078063          	beqz	a5,100014d8 <_ntoa_format+0x2c0>
100014bc:	fd842783          	lw	a5,-40(s0)
100014c0:	00178713          	addi	a4,a5,1
100014c4:	fce42c23          	sw	a4,-40(s0)
100014c8:	fdc42703          	lw	a4,-36(s0)
100014cc:	00f707b3          	add	a5,a4,a5
100014d0:	02000713          	li	a4,32
100014d4:	00e78023          	sb	a4,0(a5)
100014d8:	00842883          	lw	a7,8(s0)
100014dc:	00442803          	lw	a6,4(s0)
100014e0:	fd842783          	lw	a5,-40(s0)
100014e4:	fdc42703          	lw	a4,-36(s0)
100014e8:	fe042683          	lw	a3,-32(s0)
100014ec:	fe442603          	lw	a2,-28(s0)
100014f0:	fe842583          	lw	a1,-24(s0)
100014f4:	fec42503          	lw	a0,-20(s0)
100014f8:	be1ff0ef          	jal	ra,100010d8 <_out_rev>
100014fc:	00050793          	mv	a5,a0
10001500:	00078513          	mv	a0,a5
10001504:	02c12083          	lw	ra,44(sp)
10001508:	02812403          	lw	s0,40(sp)
1000150c:	03010113          	addi	sp,sp,48
10001510:	00008067          	ret

10001514 <_ntoa_long>:
10001514:	f9010113          	addi	sp,sp,-112
10001518:	06112623          	sw	ra,108(sp)
1000151c:	06812423          	sw	s0,104(sp)
10001520:	07010413          	addi	s0,sp,112
10001524:	faa42e23          	sw	a0,-68(s0)
10001528:	fab42c23          	sw	a1,-72(s0)
1000152c:	fac42a23          	sw	a2,-76(s0)
10001530:	fad42823          	sw	a3,-80(s0)
10001534:	fae42623          	sw	a4,-84(s0)
10001538:	fb042223          	sw	a6,-92(s0)
1000153c:	fb142023          	sw	a7,-96(s0)
10001540:	faf405a3          	sb	a5,-85(s0)
10001544:	fe042623          	sw	zero,-20(s0)
10001548:	fac42783          	lw	a5,-84(s0)
1000154c:	00079863          	bnez	a5,1000155c <_ntoa_long+0x48>
10001550:	00442783          	lw	a5,4(s0)
10001554:	fef7f793          	andi	a5,a5,-17
10001558:	00f42223          	sw	a5,4(s0)
1000155c:	00442783          	lw	a5,4(s0)
10001560:	4007f793          	andi	a5,a5,1024
10001564:	00078663          	beqz	a5,10001570 <_ntoa_long+0x5c>
10001568:	fac42783          	lw	a5,-84(s0)
1000156c:	08078c63          	beqz	a5,10001604 <_ntoa_long+0xf0>
10001570:	fac42703          	lw	a4,-84(s0)
10001574:	fa442783          	lw	a5,-92(s0)
10001578:	02f777b3          	remu	a5,a4,a5
1000157c:	fef405a3          	sb	a5,-21(s0)
10001580:	feb44703          	lbu	a4,-21(s0)
10001584:	00900793          	li	a5,9
10001588:	00e7ea63          	bltu	a5,a4,1000159c <_ntoa_long+0x88>
1000158c:	feb44783          	lbu	a5,-21(s0)
10001590:	03078793          	addi	a5,a5,48
10001594:	0ff7f793          	andi	a5,a5,255
10001598:	0300006f          	j	100015c8 <_ntoa_long+0xb4>
1000159c:	00442783          	lw	a5,4(s0)
100015a0:	0207f793          	andi	a5,a5,32
100015a4:	00078663          	beqz	a5,100015b0 <_ntoa_long+0x9c>
100015a8:	04100793          	li	a5,65
100015ac:	0080006f          	j	100015b4 <_ntoa_long+0xa0>
100015b0:	06100793          	li	a5,97
100015b4:	feb44703          	lbu	a4,-21(s0)
100015b8:	00e787b3          	add	a5,a5,a4
100015bc:	0ff7f793          	andi	a5,a5,255
100015c0:	ff678793          	addi	a5,a5,-10
100015c4:	0ff7f793          	andi	a5,a5,255
100015c8:	fec42703          	lw	a4,-20(s0)
100015cc:	00170693          	addi	a3,a4,1
100015d0:	fed42623          	sw	a3,-20(s0)
100015d4:	ff040693          	addi	a3,s0,-16
100015d8:	00e68733          	add	a4,a3,a4
100015dc:	fcf70c23          	sb	a5,-40(a4)
100015e0:	fac42703          	lw	a4,-84(s0)
100015e4:	fa442783          	lw	a5,-92(s0)
100015e8:	02f757b3          	divu	a5,a4,a5
100015ec:	faf42623          	sw	a5,-84(s0)
100015f0:	fac42783          	lw	a5,-84(s0)
100015f4:	00078863          	beqz	a5,10001604 <_ntoa_long+0xf0>
100015f8:	fec42703          	lw	a4,-20(s0)
100015fc:	01f00793          	li	a5,31
10001600:	f6e7f8e3          	bgeu	a5,a4,10001570 <_ntoa_long+0x5c>
10001604:	fab44683          	lbu	a3,-85(s0)
10001608:	fc840713          	addi	a4,s0,-56
1000160c:	00442783          	lw	a5,4(s0)
10001610:	00f12423          	sw	a5,8(sp)
10001614:	00042783          	lw	a5,0(s0)
10001618:	00f12223          	sw	a5,4(sp)
1000161c:	fa042783          	lw	a5,-96(s0)
10001620:	00f12023          	sw	a5,0(sp)
10001624:	fa442883          	lw	a7,-92(s0)
10001628:	00068813          	mv	a6,a3
1000162c:	fec42783          	lw	a5,-20(s0)
10001630:	fb042683          	lw	a3,-80(s0)
10001634:	fb442603          	lw	a2,-76(s0)
10001638:	fb842583          	lw	a1,-72(s0)
1000163c:	fbc42503          	lw	a0,-68(s0)
10001640:	bd9ff0ef          	jal	ra,10001218 <_ntoa_format>
10001644:	00050793          	mv	a5,a0
10001648:	00078513          	mv	a0,a5
1000164c:	06c12083          	lw	ra,108(sp)
10001650:	06812403          	lw	s0,104(sp)
10001654:	07010113          	addi	sp,sp,112
10001658:	00008067          	ret

1000165c <_vsnprintf>:
1000165c:	f8010113          	addi	sp,sp,-128
10001660:	06112e23          	sw	ra,124(sp)
10001664:	06812c23          	sw	s0,120(sp)
10001668:	08010413          	addi	s0,sp,128
1000166c:	faa42623          	sw	a0,-84(s0)
10001670:	fab42423          	sw	a1,-88(s0)
10001674:	fac42223          	sw	a2,-92(s0)
10001678:	fad42023          	sw	a3,-96(s0)
1000167c:	f8e42e23          	sw	a4,-100(s0)
10001680:	fc042e23          	sw	zero,-36(s0)
10001684:	fa842783          	lw	a5,-88(s0)
10001688:	20079ee3          	bnez	a5,100020a4 <_vsnprintf+0xa48>
1000168c:	100017b7          	lui	a5,0x10001
10001690:	ec478793          	addi	a5,a5,-316 # 10000ec4 <_out_null>
10001694:	faf42623          	sw	a5,-84(s0)
10001698:	20d0006f          	j	100020a4 <_vsnprintf+0xa48>
1000169c:	fa042783          	lw	a5,-96(s0)
100016a0:	0007c703          	lbu	a4,0(a5)
100016a4:	02500793          	li	a5,37
100016a8:	02f70e63          	beq	a4,a5,100016e4 <_vsnprintf+0x88>
100016ac:	fa042783          	lw	a5,-96(s0)
100016b0:	0007c503          	lbu	a0,0(a5)
100016b4:	fdc42783          	lw	a5,-36(s0)
100016b8:	00178713          	addi	a4,a5,1
100016bc:	fce42e23          	sw	a4,-36(s0)
100016c0:	fac42703          	lw	a4,-84(s0)
100016c4:	fa442683          	lw	a3,-92(s0)
100016c8:	00078613          	mv	a2,a5
100016cc:	fa842583          	lw	a1,-88(s0)
100016d0:	000700e7          	jalr	a4
100016d4:	fa042783          	lw	a5,-96(s0)
100016d8:	00178793          	addi	a5,a5,1
100016dc:	faf42023          	sw	a5,-96(s0)
100016e0:	1c50006f          	j	100020a4 <_vsnprintf+0xa48>
100016e4:	fa042783          	lw	a5,-96(s0)
100016e8:	00178793          	addi	a5,a5,1
100016ec:	faf42023          	sw	a5,-96(s0)
100016f0:	fe042623          	sw	zero,-20(s0)
100016f4:	fa042783          	lw	a5,-96(s0)
100016f8:	0007c783          	lbu	a5,0(a5)
100016fc:	fe078793          	addi	a5,a5,-32
10001700:	01000713          	li	a4,16
10001704:	0cf76863          	bltu	a4,a5,100017d4 <_vsnprintf+0x178>
10001708:	00279713          	slli	a4,a5,0x2
1000170c:	100107b7          	lui	a5,0x10010
10001710:	0f878793          	addi	a5,a5,248 # 100100f8 <p2p_demo+0xc454>
10001714:	00f707b3          	add	a5,a4,a5
10001718:	0007a783          	lw	a5,0(a5)
1000171c:	00078067          	jr	a5
10001720:	fec42783          	lw	a5,-20(s0)
10001724:	0017e793          	ori	a5,a5,1
10001728:	fef42623          	sw	a5,-20(s0)
1000172c:	fa042783          	lw	a5,-96(s0)
10001730:	00178793          	addi	a5,a5,1
10001734:	faf42023          	sw	a5,-96(s0)
10001738:	00100793          	li	a5,1
1000173c:	fef42023          	sw	a5,-32(s0)
10001740:	09c0006f          	j	100017dc <_vsnprintf+0x180>
10001744:	fec42783          	lw	a5,-20(s0)
10001748:	0027e793          	ori	a5,a5,2
1000174c:	fef42623          	sw	a5,-20(s0)
10001750:	fa042783          	lw	a5,-96(s0)
10001754:	00178793          	addi	a5,a5,1
10001758:	faf42023          	sw	a5,-96(s0)
1000175c:	00100793          	li	a5,1
10001760:	fef42023          	sw	a5,-32(s0)
10001764:	0780006f          	j	100017dc <_vsnprintf+0x180>
10001768:	fec42783          	lw	a5,-20(s0)
1000176c:	0047e793          	ori	a5,a5,4
10001770:	fef42623          	sw	a5,-20(s0)
10001774:	fa042783          	lw	a5,-96(s0)
10001778:	00178793          	addi	a5,a5,1
1000177c:	faf42023          	sw	a5,-96(s0)
10001780:	00100793          	li	a5,1
10001784:	fef42023          	sw	a5,-32(s0)
10001788:	0540006f          	j	100017dc <_vsnprintf+0x180>
1000178c:	fec42783          	lw	a5,-20(s0)
10001790:	0087e793          	ori	a5,a5,8
10001794:	fef42623          	sw	a5,-20(s0)
10001798:	fa042783          	lw	a5,-96(s0)
1000179c:	00178793          	addi	a5,a5,1
100017a0:	faf42023          	sw	a5,-96(s0)
100017a4:	00100793          	li	a5,1
100017a8:	fef42023          	sw	a5,-32(s0)
100017ac:	0300006f          	j	100017dc <_vsnprintf+0x180>
100017b0:	fec42783          	lw	a5,-20(s0)
100017b4:	0107e793          	ori	a5,a5,16
100017b8:	fef42623          	sw	a5,-20(s0)
100017bc:	fa042783          	lw	a5,-96(s0)
100017c0:	00178793          	addi	a5,a5,1
100017c4:	faf42023          	sw	a5,-96(s0)
100017c8:	00100793          	li	a5,1
100017cc:	fef42023          	sw	a5,-32(s0)
100017d0:	00c0006f          	j	100017dc <_vsnprintf+0x180>
100017d4:	fe042023          	sw	zero,-32(s0)
100017d8:	00000013          	nop
100017dc:	fe042783          	lw	a5,-32(s0)
100017e0:	f0079ae3          	bnez	a5,100016f4 <_vsnprintf+0x98>
100017e4:	fe042423          	sw	zero,-24(s0)
100017e8:	fa042783          	lw	a5,-96(s0)
100017ec:	0007c783          	lbu	a5,0(a5)
100017f0:	00078513          	mv	a0,a5
100017f4:	809ff0ef          	jal	ra,10000ffc <_is_digit>
100017f8:	00050793          	mv	a5,a0
100017fc:	00078c63          	beqz	a5,10001814 <_vsnprintf+0x1b8>
10001800:	fa040793          	addi	a5,s0,-96
10001804:	00078513          	mv	a0,a5
10001808:	845ff0ef          	jal	ra,1000104c <_atoi>
1000180c:	fea42423          	sw	a0,-24(s0)
10001810:	0600006f          	j	10001870 <_vsnprintf+0x214>
10001814:	fa042783          	lw	a5,-96(s0)
10001818:	0007c703          	lbu	a4,0(a5)
1000181c:	02a00793          	li	a5,42
10001820:	04f71863          	bne	a4,a5,10001870 <_vsnprintf+0x214>
10001824:	f9c42783          	lw	a5,-100(s0)
10001828:	00478713          	addi	a4,a5,4
1000182c:	f8e42e23          	sw	a4,-100(s0)
10001830:	0007a783          	lw	a5,0(a5)
10001834:	fcf42423          	sw	a5,-56(s0)
10001838:	fc842783          	lw	a5,-56(s0)
1000183c:	0207d063          	bgez	a5,1000185c <_vsnprintf+0x200>
10001840:	fec42783          	lw	a5,-20(s0)
10001844:	0027e793          	ori	a5,a5,2
10001848:	fef42623          	sw	a5,-20(s0)
1000184c:	fc842783          	lw	a5,-56(s0)
10001850:	40f007b3          	neg	a5,a5
10001854:	fef42423          	sw	a5,-24(s0)
10001858:	00c0006f          	j	10001864 <_vsnprintf+0x208>
1000185c:	fc842783          	lw	a5,-56(s0)
10001860:	fef42423          	sw	a5,-24(s0)
10001864:	fa042783          	lw	a5,-96(s0)
10001868:	00178793          	addi	a5,a5,1
1000186c:	faf42023          	sw	a5,-96(s0)
10001870:	fe042223          	sw	zero,-28(s0)
10001874:	fa042783          	lw	a5,-96(s0)
10001878:	0007c703          	lbu	a4,0(a5)
1000187c:	02e00793          	li	a5,46
10001880:	08f71463          	bne	a4,a5,10001908 <_vsnprintf+0x2ac>
10001884:	fec42783          	lw	a5,-20(s0)
10001888:	4007e793          	ori	a5,a5,1024
1000188c:	fef42623          	sw	a5,-20(s0)
10001890:	fa042783          	lw	a5,-96(s0)
10001894:	00178793          	addi	a5,a5,1
10001898:	faf42023          	sw	a5,-96(s0)
1000189c:	fa042783          	lw	a5,-96(s0)
100018a0:	0007c783          	lbu	a5,0(a5)
100018a4:	00078513          	mv	a0,a5
100018a8:	f54ff0ef          	jal	ra,10000ffc <_is_digit>
100018ac:	00050793          	mv	a5,a0
100018b0:	00078c63          	beqz	a5,100018c8 <_vsnprintf+0x26c>
100018b4:	fa040793          	addi	a5,s0,-96
100018b8:	00078513          	mv	a0,a5
100018bc:	f90ff0ef          	jal	ra,1000104c <_atoi>
100018c0:	fea42223          	sw	a0,-28(s0)
100018c4:	0440006f          	j	10001908 <_vsnprintf+0x2ac>
100018c8:	fa042783          	lw	a5,-96(s0)
100018cc:	0007c703          	lbu	a4,0(a5)
100018d0:	02a00793          	li	a5,42
100018d4:	02f71a63          	bne	a4,a5,10001908 <_vsnprintf+0x2ac>
100018d8:	f9c42783          	lw	a5,-100(s0)
100018dc:	00478713          	addi	a4,a5,4
100018e0:	f8e42e23          	sw	a4,-100(s0)
100018e4:	0007a783          	lw	a5,0(a5)
100018e8:	fcf42223          	sw	a5,-60(s0)
100018ec:	fc442783          	lw	a5,-60(s0)
100018f0:	0007d463          	bgez	a5,100018f8 <_vsnprintf+0x29c>
100018f4:	00000793          	li	a5,0
100018f8:	fef42223          	sw	a5,-28(s0)
100018fc:	fa042783          	lw	a5,-96(s0)
10001900:	00178793          	addi	a5,a5,1
10001904:	faf42023          	sw	a5,-96(s0)
10001908:	fa042783          	lw	a5,-96(s0)
1000190c:	0007c783          	lbu	a5,0(a5)
10001910:	f9878793          	addi	a5,a5,-104
10001914:	01200713          	li	a4,18
10001918:	0ef76c63          	bltu	a4,a5,10001a10 <_vsnprintf+0x3b4>
1000191c:	00279713          	slli	a4,a5,0x2
10001920:	100107b7          	lui	a5,0x10010
10001924:	13c78793          	addi	a5,a5,316 # 1001013c <p2p_demo+0xc498>
10001928:	00f707b3          	add	a5,a4,a5
1000192c:	0007a783          	lw	a5,0(a5)
10001930:	00078067          	jr	a5
10001934:	fec42783          	lw	a5,-20(s0)
10001938:	1007e793          	ori	a5,a5,256
1000193c:	fef42623          	sw	a5,-20(s0)
10001940:	fa042783          	lw	a5,-96(s0)
10001944:	00178793          	addi	a5,a5,1
10001948:	faf42023          	sw	a5,-96(s0)
1000194c:	fa042783          	lw	a5,-96(s0)
10001950:	0007c703          	lbu	a4,0(a5)
10001954:	06c00793          	li	a5,108
10001958:	0cf71063          	bne	a4,a5,10001a18 <_vsnprintf+0x3bc>
1000195c:	fec42783          	lw	a5,-20(s0)
10001960:	2007e793          	ori	a5,a5,512
10001964:	fef42623          	sw	a5,-20(s0)
10001968:	fa042783          	lw	a5,-96(s0)
1000196c:	00178793          	addi	a5,a5,1
10001970:	faf42023          	sw	a5,-96(s0)
10001974:	0a40006f          	j	10001a18 <_vsnprintf+0x3bc>
10001978:	fec42783          	lw	a5,-20(s0)
1000197c:	0807e793          	ori	a5,a5,128
10001980:	fef42623          	sw	a5,-20(s0)
10001984:	fa042783          	lw	a5,-96(s0)
10001988:	00178793          	addi	a5,a5,1
1000198c:	faf42023          	sw	a5,-96(s0)
10001990:	fa042783          	lw	a5,-96(s0)
10001994:	0007c703          	lbu	a4,0(a5)
10001998:	06800793          	li	a5,104
1000199c:	08f71263          	bne	a4,a5,10001a20 <_vsnprintf+0x3c4>
100019a0:	fec42783          	lw	a5,-20(s0)
100019a4:	0407e793          	ori	a5,a5,64
100019a8:	fef42623          	sw	a5,-20(s0)
100019ac:	fa042783          	lw	a5,-96(s0)
100019b0:	00178793          	addi	a5,a5,1
100019b4:	faf42023          	sw	a5,-96(s0)
100019b8:	0680006f          	j	10001a20 <_vsnprintf+0x3c4>
100019bc:	fec42783          	lw	a5,-20(s0)
100019c0:	1007e793          	ori	a5,a5,256
100019c4:	fef42623          	sw	a5,-20(s0)
100019c8:	fa042783          	lw	a5,-96(s0)
100019cc:	00178793          	addi	a5,a5,1
100019d0:	faf42023          	sw	a5,-96(s0)
100019d4:	0500006f          	j	10001a24 <_vsnprintf+0x3c8>
100019d8:	fec42783          	lw	a5,-20(s0)
100019dc:	2007e793          	ori	a5,a5,512
100019e0:	fef42623          	sw	a5,-20(s0)
100019e4:	fa042783          	lw	a5,-96(s0)
100019e8:	00178793          	addi	a5,a5,1
100019ec:	faf42023          	sw	a5,-96(s0)
100019f0:	0340006f          	j	10001a24 <_vsnprintf+0x3c8>
100019f4:	fec42783          	lw	a5,-20(s0)
100019f8:	1007e793          	ori	a5,a5,256
100019fc:	fef42623          	sw	a5,-20(s0)
10001a00:	fa042783          	lw	a5,-96(s0)
10001a04:	00178793          	addi	a5,a5,1
10001a08:	faf42023          	sw	a5,-96(s0)
10001a0c:	0180006f          	j	10001a24 <_vsnprintf+0x3c8>
10001a10:	00000013          	nop
10001a14:	0100006f          	j	10001a24 <_vsnprintf+0x3c8>
10001a18:	00000013          	nop
10001a1c:	0080006f          	j	10001a24 <_vsnprintf+0x3c8>
10001a20:	00000013          	nop
10001a24:	fa042783          	lw	a5,-96(s0)
10001a28:	0007c783          	lbu	a5,0(a5)
10001a2c:	fdb78793          	addi	a5,a5,-37
10001a30:	05300713          	li	a4,83
10001a34:	62f76c63          	bltu	a4,a5,1000206c <_vsnprintf+0xa10>
10001a38:	00279713          	slli	a4,a5,0x2
10001a3c:	100107b7          	lui	a5,0x10010
10001a40:	18878793          	addi	a5,a5,392 # 10010188 <p2p_demo+0xc4e4>
10001a44:	00f707b3          	add	a5,a4,a5
10001a48:	0007a783          	lw	a5,0(a5)
10001a4c:	00078067          	jr	a5
10001a50:	fa042783          	lw	a5,-96(s0)
10001a54:	0007c703          	lbu	a4,0(a5)
10001a58:	07800793          	li	a5,120
10001a5c:	00f70a63          	beq	a4,a5,10001a70 <_vsnprintf+0x414>
10001a60:	fa042783          	lw	a5,-96(s0)
10001a64:	0007c703          	lbu	a4,0(a5)
10001a68:	05800793          	li	a5,88
10001a6c:	00f71863          	bne	a4,a5,10001a7c <_vsnprintf+0x420>
10001a70:	01000793          	li	a5,16
10001a74:	fcf42c23          	sw	a5,-40(s0)
10001a78:	0500006f          	j	10001ac8 <_vsnprintf+0x46c>
10001a7c:	fa042783          	lw	a5,-96(s0)
10001a80:	0007c703          	lbu	a4,0(a5)
10001a84:	06f00793          	li	a5,111
10001a88:	00f71863          	bne	a4,a5,10001a98 <_vsnprintf+0x43c>
10001a8c:	00800793          	li	a5,8
10001a90:	fcf42c23          	sw	a5,-40(s0)
10001a94:	0340006f          	j	10001ac8 <_vsnprintf+0x46c>
10001a98:	fa042783          	lw	a5,-96(s0)
10001a9c:	0007c703          	lbu	a4,0(a5)
10001aa0:	06200793          	li	a5,98
10001aa4:	00f71863          	bne	a4,a5,10001ab4 <_vsnprintf+0x458>
10001aa8:	00200793          	li	a5,2
10001aac:	fcf42c23          	sw	a5,-40(s0)
10001ab0:	0180006f          	j	10001ac8 <_vsnprintf+0x46c>
10001ab4:	00a00793          	li	a5,10
10001ab8:	fcf42c23          	sw	a5,-40(s0)
10001abc:	fec42783          	lw	a5,-20(s0)
10001ac0:	fef7f793          	andi	a5,a5,-17
10001ac4:	fef42623          	sw	a5,-20(s0)
10001ac8:	fa042783          	lw	a5,-96(s0)
10001acc:	0007c703          	lbu	a4,0(a5)
10001ad0:	05800793          	li	a5,88
10001ad4:	00f71863          	bne	a4,a5,10001ae4 <_vsnprintf+0x488>
10001ad8:	fec42783          	lw	a5,-20(s0)
10001adc:	0207e793          	ori	a5,a5,32
10001ae0:	fef42623          	sw	a5,-20(s0)
10001ae4:	fa042783          	lw	a5,-96(s0)
10001ae8:	0007c703          	lbu	a4,0(a5)
10001aec:	06900793          	li	a5,105
10001af0:	02f70063          	beq	a4,a5,10001b10 <_vsnprintf+0x4b4>
10001af4:	fa042783          	lw	a5,-96(s0)
10001af8:	0007c703          	lbu	a4,0(a5)
10001afc:	06400793          	li	a5,100
10001b00:	00f70863          	beq	a4,a5,10001b10 <_vsnprintf+0x4b4>
10001b04:	fec42783          	lw	a5,-20(s0)
10001b08:	ff37f793          	andi	a5,a5,-13
10001b0c:	fef42623          	sw	a5,-20(s0)
10001b10:	fec42783          	lw	a5,-20(s0)
10001b14:	4007f793          	andi	a5,a5,1024
10001b18:	00078863          	beqz	a5,10001b28 <_vsnprintf+0x4cc>
10001b1c:	fec42783          	lw	a5,-20(s0)
10001b20:	ffe7f793          	andi	a5,a5,-2
10001b24:	fef42623          	sw	a5,-20(s0)
10001b28:	fa042783          	lw	a5,-96(s0)
10001b2c:	0007c703          	lbu	a4,0(a5)
10001b30:	06900793          	li	a5,105
10001b34:	00f70a63          	beq	a4,a5,10001b48 <_vsnprintf+0x4ec>
10001b38:	fa042783          	lw	a5,-96(s0)
10001b3c:	0007c703          	lbu	a4,0(a5)
10001b40:	06400793          	li	a5,100
10001b44:	14f71863          	bne	a4,a5,10001c94 <_vsnprintf+0x638>
10001b48:	fec42783          	lw	a5,-20(s0)
10001b4c:	2007f793          	andi	a5,a5,512
10001b50:	22079e63          	bnez	a5,10001d8c <_vsnprintf+0x730>
10001b54:	fec42783          	lw	a5,-20(s0)
10001b58:	1007f793          	andi	a5,a5,256
10001b5c:	06078c63          	beqz	a5,10001bd4 <_vsnprintf+0x578>
10001b60:	f9c42783          	lw	a5,-100(s0)
10001b64:	00478713          	addi	a4,a5,4
10001b68:	f8e42e23          	sw	a4,-100(s0)
10001b6c:	0007a783          	lw	a5,0(a5)
10001b70:	faf42e23          	sw	a5,-68(s0)
10001b74:	fbc42783          	lw	a5,-68(s0)
10001b78:	41f7d713          	srai	a4,a5,0x1f
10001b7c:	fbc42783          	lw	a5,-68(s0)
10001b80:	00f747b3          	xor	a5,a4,a5
10001b84:	40e787b3          	sub	a5,a5,a4
10001b88:	00078693          	mv	a3,a5
10001b8c:	fbc42783          	lw	a5,-68(s0)
10001b90:	01f7d793          	srli	a5,a5,0x1f
10001b94:	0ff7f713          	andi	a4,a5,255
10001b98:	fec42783          	lw	a5,-20(s0)
10001b9c:	00f12223          	sw	a5,4(sp)
10001ba0:	fe842783          	lw	a5,-24(s0)
10001ba4:	00f12023          	sw	a5,0(sp)
10001ba8:	fe442883          	lw	a7,-28(s0)
10001bac:	fd842803          	lw	a6,-40(s0)
10001bb0:	00070793          	mv	a5,a4
10001bb4:	00068713          	mv	a4,a3
10001bb8:	fa442683          	lw	a3,-92(s0)
10001bbc:	fdc42603          	lw	a2,-36(s0)
10001bc0:	fa842583          	lw	a1,-88(s0)
10001bc4:	fac42503          	lw	a0,-84(s0)
10001bc8:	94dff0ef          	jal	ra,10001514 <_ntoa_long>
10001bcc:	fca42e23          	sw	a0,-36(s0)
10001bd0:	1bc0006f          	j	10001d8c <_vsnprintf+0x730>
10001bd4:	fec42783          	lw	a5,-20(s0)
10001bd8:	0407f793          	andi	a5,a5,64
10001bdc:	00078e63          	beqz	a5,10001bf8 <_vsnprintf+0x59c>
10001be0:	f9c42783          	lw	a5,-100(s0)
10001be4:	00478713          	addi	a4,a5,4
10001be8:	f8e42e23          	sw	a4,-100(s0)
10001bec:	0007a783          	lw	a5,0(a5)
10001bf0:	0ff7f793          	andi	a5,a5,255
10001bf4:	03c0006f          	j	10001c30 <_vsnprintf+0x5d4>
10001bf8:	fec42783          	lw	a5,-20(s0)
10001bfc:	0807f793          	andi	a5,a5,128
10001c00:	02078063          	beqz	a5,10001c20 <_vsnprintf+0x5c4>
10001c04:	f9c42783          	lw	a5,-100(s0)
10001c08:	00478713          	addi	a4,a5,4
10001c0c:	f8e42e23          	sw	a4,-100(s0)
10001c10:	0007a783          	lw	a5,0(a5)
10001c14:	01079793          	slli	a5,a5,0x10
10001c18:	4107d793          	srai	a5,a5,0x10
10001c1c:	0140006f          	j	10001c30 <_vsnprintf+0x5d4>
10001c20:	f9c42783          	lw	a5,-100(s0)
10001c24:	00478713          	addi	a4,a5,4
10001c28:	f8e42e23          	sw	a4,-100(s0)
10001c2c:	0007a783          	lw	a5,0(a5)
10001c30:	faf42c23          	sw	a5,-72(s0)
10001c34:	fb842783          	lw	a5,-72(s0)
10001c38:	41f7d713          	srai	a4,a5,0x1f
10001c3c:	fb842783          	lw	a5,-72(s0)
10001c40:	00f747b3          	xor	a5,a4,a5
10001c44:	40e787b3          	sub	a5,a5,a4
10001c48:	00078693          	mv	a3,a5
10001c4c:	fb842783          	lw	a5,-72(s0)
10001c50:	01f7d793          	srli	a5,a5,0x1f
10001c54:	0ff7f713          	andi	a4,a5,255
10001c58:	fec42783          	lw	a5,-20(s0)
10001c5c:	00f12223          	sw	a5,4(sp)
10001c60:	fe842783          	lw	a5,-24(s0)
10001c64:	00f12023          	sw	a5,0(sp)
10001c68:	fe442883          	lw	a7,-28(s0)
10001c6c:	fd842803          	lw	a6,-40(s0)
10001c70:	00070793          	mv	a5,a4
10001c74:	00068713          	mv	a4,a3
10001c78:	fa442683          	lw	a3,-92(s0)
10001c7c:	fdc42603          	lw	a2,-36(s0)
10001c80:	fa842583          	lw	a1,-88(s0)
10001c84:	fac42503          	lw	a0,-84(s0)
10001c88:	88dff0ef          	jal	ra,10001514 <_ntoa_long>
10001c8c:	fca42e23          	sw	a0,-36(s0)
10001c90:	0fc0006f          	j	10001d8c <_vsnprintf+0x730>
10001c94:	fec42783          	lw	a5,-20(s0)
10001c98:	2007f793          	andi	a5,a5,512
10001c9c:	0e079863          	bnez	a5,10001d8c <_vsnprintf+0x730>
10001ca0:	fec42783          	lw	a5,-20(s0)
10001ca4:	1007f793          	andi	a5,a5,256
10001ca8:	04078663          	beqz	a5,10001cf4 <_vsnprintf+0x698>
10001cac:	f9c42783          	lw	a5,-100(s0)
10001cb0:	00478713          	addi	a4,a5,4
10001cb4:	f8e42e23          	sw	a4,-100(s0)
10001cb8:	0007a703          	lw	a4,0(a5)
10001cbc:	fec42783          	lw	a5,-20(s0)
10001cc0:	00f12223          	sw	a5,4(sp)
10001cc4:	fe842783          	lw	a5,-24(s0)
10001cc8:	00f12023          	sw	a5,0(sp)
10001ccc:	fe442883          	lw	a7,-28(s0)
10001cd0:	fd842803          	lw	a6,-40(s0)
10001cd4:	00000793          	li	a5,0
10001cd8:	fa442683          	lw	a3,-92(s0)
10001cdc:	fdc42603          	lw	a2,-36(s0)
10001ce0:	fa842583          	lw	a1,-88(s0)
10001ce4:	fac42503          	lw	a0,-84(s0)
10001ce8:	82dff0ef          	jal	ra,10001514 <_ntoa_long>
10001cec:	fca42e23          	sw	a0,-36(s0)
10001cf0:	09c0006f          	j	10001d8c <_vsnprintf+0x730>
10001cf4:	fec42783          	lw	a5,-20(s0)
10001cf8:	0407f793          	andi	a5,a5,64
10001cfc:	00078e63          	beqz	a5,10001d18 <_vsnprintf+0x6bc>
10001d00:	f9c42783          	lw	a5,-100(s0)
10001d04:	00478713          	addi	a4,a5,4
10001d08:	f8e42e23          	sw	a4,-100(s0)
10001d0c:	0007a783          	lw	a5,0(a5)
10001d10:	0ff7f793          	andi	a5,a5,255
10001d14:	03c0006f          	j	10001d50 <_vsnprintf+0x6f4>
10001d18:	fec42783          	lw	a5,-20(s0)
10001d1c:	0807f793          	andi	a5,a5,128
10001d20:	02078063          	beqz	a5,10001d40 <_vsnprintf+0x6e4>
10001d24:	f9c42783          	lw	a5,-100(s0)
10001d28:	00478713          	addi	a4,a5,4
10001d2c:	f8e42e23          	sw	a4,-100(s0)
10001d30:	0007a783          	lw	a5,0(a5)
10001d34:	01079793          	slli	a5,a5,0x10
10001d38:	0107d793          	srli	a5,a5,0x10
10001d3c:	0140006f          	j	10001d50 <_vsnprintf+0x6f4>
10001d40:	f9c42783          	lw	a5,-100(s0)
10001d44:	00478713          	addi	a4,a5,4
10001d48:	f8e42e23          	sw	a4,-100(s0)
10001d4c:	0007a783          	lw	a5,0(a5)
10001d50:	fcf42023          	sw	a5,-64(s0)
10001d54:	fec42783          	lw	a5,-20(s0)
10001d58:	00f12223          	sw	a5,4(sp)
10001d5c:	fe842783          	lw	a5,-24(s0)
10001d60:	00f12023          	sw	a5,0(sp)
10001d64:	fe442883          	lw	a7,-28(s0)
10001d68:	fd842803          	lw	a6,-40(s0)
10001d6c:	00000793          	li	a5,0
10001d70:	fc042703          	lw	a4,-64(s0)
10001d74:	fa442683          	lw	a3,-92(s0)
10001d78:	fdc42603          	lw	a2,-36(s0)
10001d7c:	fa842583          	lw	a1,-88(s0)
10001d80:	fac42503          	lw	a0,-84(s0)
10001d84:	f90ff0ef          	jal	ra,10001514 <_ntoa_long>
10001d88:	fca42e23          	sw	a0,-36(s0)
10001d8c:	fa042783          	lw	a5,-96(s0)
10001d90:	00178793          	addi	a5,a5,1
10001d94:	faf42023          	sw	a5,-96(s0)
10001d98:	30c0006f          	j	100020a4 <_vsnprintf+0xa48>
10001d9c:	00100793          	li	a5,1
10001da0:	fcf42a23          	sw	a5,-44(s0)
10001da4:	fec42783          	lw	a5,-20(s0)
10001da8:	0027f793          	andi	a5,a5,2
10001dac:	04079063          	bnez	a5,10001dec <_vsnprintf+0x790>
10001db0:	0280006f          	j	10001dd8 <_vsnprintf+0x77c>
10001db4:	fdc42783          	lw	a5,-36(s0)
10001db8:	00178713          	addi	a4,a5,1
10001dbc:	fce42e23          	sw	a4,-36(s0)
10001dc0:	fac42703          	lw	a4,-84(s0)
10001dc4:	fa442683          	lw	a3,-92(s0)
10001dc8:	00078613          	mv	a2,a5
10001dcc:	fa842583          	lw	a1,-88(s0)
10001dd0:	02000513          	li	a0,32
10001dd4:	000700e7          	jalr	a4
10001dd8:	fd442783          	lw	a5,-44(s0)
10001ddc:	00178713          	addi	a4,a5,1
10001de0:	fce42a23          	sw	a4,-44(s0)
10001de4:	fe842703          	lw	a4,-24(s0)
10001de8:	fce7e6e3          	bltu	a5,a4,10001db4 <_vsnprintf+0x758>
10001dec:	f9c42783          	lw	a5,-100(s0)
10001df0:	00478713          	addi	a4,a5,4
10001df4:	f8e42e23          	sw	a4,-100(s0)
10001df8:	0007a783          	lw	a5,0(a5)
10001dfc:	0ff7f513          	andi	a0,a5,255
10001e00:	fdc42783          	lw	a5,-36(s0)
10001e04:	00178713          	addi	a4,a5,1
10001e08:	fce42e23          	sw	a4,-36(s0)
10001e0c:	fac42703          	lw	a4,-84(s0)
10001e10:	fa442683          	lw	a3,-92(s0)
10001e14:	00078613          	mv	a2,a5
10001e18:	fa842583          	lw	a1,-88(s0)
10001e1c:	000700e7          	jalr	a4
10001e20:	fec42783          	lw	a5,-20(s0)
10001e24:	0027f793          	andi	a5,a5,2
10001e28:	04078063          	beqz	a5,10001e68 <_vsnprintf+0x80c>
10001e2c:	0280006f          	j	10001e54 <_vsnprintf+0x7f8>
10001e30:	fdc42783          	lw	a5,-36(s0)
10001e34:	00178713          	addi	a4,a5,1
10001e38:	fce42e23          	sw	a4,-36(s0)
10001e3c:	fac42703          	lw	a4,-84(s0)
10001e40:	fa442683          	lw	a3,-92(s0)
10001e44:	00078613          	mv	a2,a5
10001e48:	fa842583          	lw	a1,-88(s0)
10001e4c:	02000513          	li	a0,32
10001e50:	000700e7          	jalr	a4
10001e54:	fd442783          	lw	a5,-44(s0)
10001e58:	00178713          	addi	a4,a5,1
10001e5c:	fce42a23          	sw	a4,-44(s0)
10001e60:	fe842703          	lw	a4,-24(s0)
10001e64:	fce7e6e3          	bltu	a5,a4,10001e30 <_vsnprintf+0x7d4>
10001e68:	fa042783          	lw	a5,-96(s0)
10001e6c:	00178793          	addi	a5,a5,1
10001e70:	faf42023          	sw	a5,-96(s0)
10001e74:	2300006f          	j	100020a4 <_vsnprintf+0xa48>
10001e78:	f9c42783          	lw	a5,-100(s0)
10001e7c:	00478713          	addi	a4,a5,4
10001e80:	f8e42e23          	sw	a4,-100(s0)
10001e84:	0007a783          	lw	a5,0(a5)
10001e88:	fcf42823          	sw	a5,-48(s0)
10001e8c:	fe442783          	lw	a5,-28(s0)
10001e90:	00078663          	beqz	a5,10001e9c <_vsnprintf+0x840>
10001e94:	fe442783          	lw	a5,-28(s0)
10001e98:	0080006f          	j	10001ea0 <_vsnprintf+0x844>
10001e9c:	fff00793          	li	a5,-1
10001ea0:	00078593          	mv	a1,a5
10001ea4:	fd042503          	lw	a0,-48(s0)
10001ea8:	8f0ff0ef          	jal	ra,10000f98 <_strnlen_s>
10001eac:	fca42623          	sw	a0,-52(s0)
10001eb0:	fec42783          	lw	a5,-20(s0)
10001eb4:	4007f793          	andi	a5,a5,1024
10001eb8:	00078c63          	beqz	a5,10001ed0 <_vsnprintf+0x874>
10001ebc:	fcc42703          	lw	a4,-52(s0)
10001ec0:	fe442783          	lw	a5,-28(s0)
10001ec4:	00f77463          	bgeu	a4,a5,10001ecc <_vsnprintf+0x870>
10001ec8:	00070793          	mv	a5,a4
10001ecc:	fcf42623          	sw	a5,-52(s0)
10001ed0:	fec42783          	lw	a5,-20(s0)
10001ed4:	0027f793          	andi	a5,a5,2
10001ed8:	06079a63          	bnez	a5,10001f4c <_vsnprintf+0x8f0>
10001edc:	0280006f          	j	10001f04 <_vsnprintf+0x8a8>
10001ee0:	fdc42783          	lw	a5,-36(s0)
10001ee4:	00178713          	addi	a4,a5,1
10001ee8:	fce42e23          	sw	a4,-36(s0)
10001eec:	fac42703          	lw	a4,-84(s0)
10001ef0:	fa442683          	lw	a3,-92(s0)
10001ef4:	00078613          	mv	a2,a5
10001ef8:	fa842583          	lw	a1,-88(s0)
10001efc:	02000513          	li	a0,32
10001f00:	000700e7          	jalr	a4
10001f04:	fcc42783          	lw	a5,-52(s0)
10001f08:	00178713          	addi	a4,a5,1
10001f0c:	fce42623          	sw	a4,-52(s0)
10001f10:	fe842703          	lw	a4,-24(s0)
10001f14:	fce7e6e3          	bltu	a5,a4,10001ee0 <_vsnprintf+0x884>
10001f18:	0340006f          	j	10001f4c <_vsnprintf+0x8f0>
10001f1c:	fd042783          	lw	a5,-48(s0)
10001f20:	00178713          	addi	a4,a5,1
10001f24:	fce42823          	sw	a4,-48(s0)
10001f28:	0007c503          	lbu	a0,0(a5)
10001f2c:	fdc42783          	lw	a5,-36(s0)
10001f30:	00178713          	addi	a4,a5,1
10001f34:	fce42e23          	sw	a4,-36(s0)
10001f38:	fac42703          	lw	a4,-84(s0)
10001f3c:	fa442683          	lw	a3,-92(s0)
10001f40:	00078613          	mv	a2,a5
10001f44:	fa842583          	lw	a1,-88(s0)
10001f48:	000700e7          	jalr	a4
10001f4c:	fd042783          	lw	a5,-48(s0)
10001f50:	0007c783          	lbu	a5,0(a5)
10001f54:	02078063          	beqz	a5,10001f74 <_vsnprintf+0x918>
10001f58:	fec42783          	lw	a5,-20(s0)
10001f5c:	4007f793          	andi	a5,a5,1024
10001f60:	fa078ee3          	beqz	a5,10001f1c <_vsnprintf+0x8c0>
10001f64:	fe442783          	lw	a5,-28(s0)
10001f68:	fff78713          	addi	a4,a5,-1
10001f6c:	fee42223          	sw	a4,-28(s0)
10001f70:	fa0796e3          	bnez	a5,10001f1c <_vsnprintf+0x8c0>
10001f74:	fec42783          	lw	a5,-20(s0)
10001f78:	0027f793          	andi	a5,a5,2
10001f7c:	04078063          	beqz	a5,10001fbc <_vsnprintf+0x960>
10001f80:	0280006f          	j	10001fa8 <_vsnprintf+0x94c>
10001f84:	fdc42783          	lw	a5,-36(s0)
10001f88:	00178713          	addi	a4,a5,1
10001f8c:	fce42e23          	sw	a4,-36(s0)
10001f90:	fac42703          	lw	a4,-84(s0)
10001f94:	fa442683          	lw	a3,-92(s0)
10001f98:	00078613          	mv	a2,a5
10001f9c:	fa842583          	lw	a1,-88(s0)
10001fa0:	02000513          	li	a0,32
10001fa4:	000700e7          	jalr	a4
10001fa8:	fcc42783          	lw	a5,-52(s0)
10001fac:	00178713          	addi	a4,a5,1
10001fb0:	fce42623          	sw	a4,-52(s0)
10001fb4:	fe842703          	lw	a4,-24(s0)
10001fb8:	fce7e6e3          	bltu	a5,a4,10001f84 <_vsnprintf+0x928>
10001fbc:	fa042783          	lw	a5,-96(s0)
10001fc0:	00178793          	addi	a5,a5,1
10001fc4:	faf42023          	sw	a5,-96(s0)
10001fc8:	0dc0006f          	j	100020a4 <_vsnprintf+0xa48>
10001fcc:	00800793          	li	a5,8
10001fd0:	fef42423          	sw	a5,-24(s0)
10001fd4:	fec42783          	lw	a5,-20(s0)
10001fd8:	0217e793          	ori	a5,a5,33
10001fdc:	fef42623          	sw	a5,-20(s0)
10001fe0:	f9c42783          	lw	a5,-100(s0)
10001fe4:	00478713          	addi	a4,a5,4
10001fe8:	f8e42e23          	sw	a4,-100(s0)
10001fec:	0007a783          	lw	a5,0(a5)
10001ff0:	00078713          	mv	a4,a5
10001ff4:	fec42783          	lw	a5,-20(s0)
10001ff8:	00f12223          	sw	a5,4(sp)
10001ffc:	fe842783          	lw	a5,-24(s0)
10002000:	00f12023          	sw	a5,0(sp)
10002004:	fe442883          	lw	a7,-28(s0)
10002008:	01000813          	li	a6,16
1000200c:	00000793          	li	a5,0
10002010:	fa442683          	lw	a3,-92(s0)
10002014:	fdc42603          	lw	a2,-36(s0)
10002018:	fa842583          	lw	a1,-88(s0)
1000201c:	fac42503          	lw	a0,-84(s0)
10002020:	cf4ff0ef          	jal	ra,10001514 <_ntoa_long>
10002024:	fca42e23          	sw	a0,-36(s0)
10002028:	fa042783          	lw	a5,-96(s0)
1000202c:	00178793          	addi	a5,a5,1
10002030:	faf42023          	sw	a5,-96(s0)
10002034:	0700006f          	j	100020a4 <_vsnprintf+0xa48>
10002038:	fdc42783          	lw	a5,-36(s0)
1000203c:	00178713          	addi	a4,a5,1
10002040:	fce42e23          	sw	a4,-36(s0)
10002044:	fac42703          	lw	a4,-84(s0)
10002048:	fa442683          	lw	a3,-92(s0)
1000204c:	00078613          	mv	a2,a5
10002050:	fa842583          	lw	a1,-88(s0)
10002054:	02500513          	li	a0,37
10002058:	000700e7          	jalr	a4
1000205c:	fa042783          	lw	a5,-96(s0)
10002060:	00178793          	addi	a5,a5,1
10002064:	faf42023          	sw	a5,-96(s0)
10002068:	03c0006f          	j	100020a4 <_vsnprintf+0xa48>
1000206c:	fa042783          	lw	a5,-96(s0)
10002070:	0007c503          	lbu	a0,0(a5)
10002074:	fdc42783          	lw	a5,-36(s0)
10002078:	00178713          	addi	a4,a5,1
1000207c:	fce42e23          	sw	a4,-36(s0)
10002080:	fac42703          	lw	a4,-84(s0)
10002084:	fa442683          	lw	a3,-92(s0)
10002088:	00078613          	mv	a2,a5
1000208c:	fa842583          	lw	a1,-88(s0)
10002090:	000700e7          	jalr	a4
10002094:	fa042783          	lw	a5,-96(s0)
10002098:	00178793          	addi	a5,a5,1
1000209c:	faf42023          	sw	a5,-96(s0)
100020a0:	00000013          	nop
100020a4:	fa042783          	lw	a5,-96(s0)
100020a8:	0007c783          	lbu	a5,0(a5)
100020ac:	de079863          	bnez	a5,1000169c <_vsnprintf+0x40>
100020b0:	fdc42703          	lw	a4,-36(s0)
100020b4:	fa442783          	lw	a5,-92(s0)
100020b8:	00f76863          	bltu	a4,a5,100020c8 <_vsnprintf+0xa6c>
100020bc:	fa442783          	lw	a5,-92(s0)
100020c0:	fff78793          	addi	a5,a5,-1
100020c4:	0080006f          	j	100020cc <_vsnprintf+0xa70>
100020c8:	fdc42783          	lw	a5,-36(s0)
100020cc:	fac42703          	lw	a4,-84(s0)
100020d0:	fa442683          	lw	a3,-92(s0)
100020d4:	00078613          	mv	a2,a5
100020d8:	fa842583          	lw	a1,-88(s0)
100020dc:	00000513          	li	a0,0
100020e0:	000700e7          	jalr	a4
100020e4:	fdc42783          	lw	a5,-36(s0)
100020e8:	00078513          	mv	a0,a5
100020ec:	07c12083          	lw	ra,124(sp)
100020f0:	07812403          	lw	s0,120(sp)
100020f4:	08010113          	addi	sp,sp,128
100020f8:	00008067          	ret

100020fc <printf_>:
100020fc:	fb010113          	addi	sp,sp,-80
10002100:	02112623          	sw	ra,44(sp)
10002104:	02812423          	sw	s0,40(sp)
10002108:	03010413          	addi	s0,sp,48
1000210c:	fca42e23          	sw	a0,-36(s0)
10002110:	00b42223          	sw	a1,4(s0)
10002114:	00c42423          	sw	a2,8(s0)
10002118:	00d42623          	sw	a3,12(s0)
1000211c:	00e42823          	sw	a4,16(s0)
10002120:	00f42a23          	sw	a5,20(s0)
10002124:	01042c23          	sw	a6,24(s0)
10002128:	01142e23          	sw	a7,28(s0)
1000212c:	02040793          	addi	a5,s0,32
10002130:	fe478793          	addi	a5,a5,-28
10002134:	fef42423          	sw	a5,-24(s0)
10002138:	fe842703          	lw	a4,-24(s0)
1000213c:	fe440793          	addi	a5,s0,-28
10002140:	fdc42683          	lw	a3,-36(s0)
10002144:	fff00613          	li	a2,-1
10002148:	00078593          	mv	a1,a5
1000214c:	100017b7          	lui	a5,0x10001
10002150:	ef478513          	addi	a0,a5,-268 # 10000ef4 <_out_char>
10002154:	d08ff0ef          	jal	ra,1000165c <_vsnprintf>
10002158:	fea42623          	sw	a0,-20(s0)
1000215c:	fec42783          	lw	a5,-20(s0)
10002160:	00078513          	mv	a0,a5
10002164:	02c12083          	lw	ra,44(sp)
10002168:	02812403          	lw	s0,40(sp)
1000216c:	05010113          	addi	sp,sp,80
10002170:	00008067          	ret

10002174 <sprintf_>:
10002174:	fb010113          	addi	sp,sp,-80
10002178:	02112623          	sw	ra,44(sp)
1000217c:	02812423          	sw	s0,40(sp)
10002180:	03010413          	addi	s0,sp,48
10002184:	fca42e23          	sw	a0,-36(s0)
10002188:	fcb42c23          	sw	a1,-40(s0)
1000218c:	00c42423          	sw	a2,8(s0)
10002190:	00d42623          	sw	a3,12(s0)
10002194:	00e42823          	sw	a4,16(s0)
10002198:	00f42a23          	sw	a5,20(s0)
1000219c:	01042c23          	sw	a6,24(s0)
100021a0:	01142e23          	sw	a7,28(s0)
100021a4:	02040793          	addi	a5,s0,32
100021a8:	fe878793          	addi	a5,a5,-24
100021ac:	fef42423          	sw	a5,-24(s0)
100021b0:	fe842783          	lw	a5,-24(s0)
100021b4:	00078713          	mv	a4,a5
100021b8:	fd842683          	lw	a3,-40(s0)
100021bc:	fff00613          	li	a2,-1
100021c0:	fdc42583          	lw	a1,-36(s0)
100021c4:	100017b7          	lui	a5,0x10001
100021c8:	e7478513          	addi	a0,a5,-396 # 10000e74 <_out_buffer>
100021cc:	c90ff0ef          	jal	ra,1000165c <_vsnprintf>
100021d0:	fea42623          	sw	a0,-20(s0)
100021d4:	fec42783          	lw	a5,-20(s0)
100021d8:	00078513          	mv	a0,a5
100021dc:	02c12083          	lw	ra,44(sp)
100021e0:	02812403          	lw	s0,40(sp)
100021e4:	05010113          	addi	sp,sp,80
100021e8:	00008067          	ret

100021ec <snprintf_>:
100021ec:	fb010113          	addi	sp,sp,-80
100021f0:	02112623          	sw	ra,44(sp)
100021f4:	02812423          	sw	s0,40(sp)
100021f8:	03010413          	addi	s0,sp,48
100021fc:	fca42e23          	sw	a0,-36(s0)
10002200:	fcb42c23          	sw	a1,-40(s0)
10002204:	fcc42a23          	sw	a2,-44(s0)
10002208:	00d42623          	sw	a3,12(s0)
1000220c:	00e42823          	sw	a4,16(s0)
10002210:	00f42a23          	sw	a5,20(s0)
10002214:	01042c23          	sw	a6,24(s0)
10002218:	01142e23          	sw	a7,28(s0)
1000221c:	02040793          	addi	a5,s0,32
10002220:	fec78793          	addi	a5,a5,-20
10002224:	fef42423          	sw	a5,-24(s0)
10002228:	fe842783          	lw	a5,-24(s0)
1000222c:	00078713          	mv	a4,a5
10002230:	fd442683          	lw	a3,-44(s0)
10002234:	fd842603          	lw	a2,-40(s0)
10002238:	fdc42583          	lw	a1,-36(s0)
1000223c:	100017b7          	lui	a5,0x10001
10002240:	e7478513          	addi	a0,a5,-396 # 10000e74 <_out_buffer>
10002244:	c18ff0ef          	jal	ra,1000165c <_vsnprintf>
10002248:	fea42623          	sw	a0,-20(s0)
1000224c:	fec42783          	lw	a5,-20(s0)
10002250:	00078513          	mv	a0,a5
10002254:	02c12083          	lw	ra,44(sp)
10002258:	02812403          	lw	s0,40(sp)
1000225c:	05010113          	addi	sp,sp,80
10002260:	00008067          	ret

10002264 <vprintf_>:
10002264:	fd010113          	addi	sp,sp,-48
10002268:	02112623          	sw	ra,44(sp)
1000226c:	02812423          	sw	s0,40(sp)
10002270:	03010413          	addi	s0,sp,48
10002274:	fca42e23          	sw	a0,-36(s0)
10002278:	fcb42c23          	sw	a1,-40(s0)
1000227c:	fec40793          	addi	a5,s0,-20
10002280:	fd842703          	lw	a4,-40(s0)
10002284:	fdc42683          	lw	a3,-36(s0)
10002288:	fff00613          	li	a2,-1
1000228c:	00078593          	mv	a1,a5
10002290:	100017b7          	lui	a5,0x10001
10002294:	ef478513          	addi	a0,a5,-268 # 10000ef4 <_out_char>
10002298:	bc4ff0ef          	jal	ra,1000165c <_vsnprintf>
1000229c:	00050793          	mv	a5,a0
100022a0:	00078513          	mv	a0,a5
100022a4:	02c12083          	lw	ra,44(sp)
100022a8:	02812403          	lw	s0,40(sp)
100022ac:	03010113          	addi	sp,sp,48
100022b0:	00008067          	ret

100022b4 <vsnprintf_>:
100022b4:	fe010113          	addi	sp,sp,-32
100022b8:	00112e23          	sw	ra,28(sp)
100022bc:	00812c23          	sw	s0,24(sp)
100022c0:	02010413          	addi	s0,sp,32
100022c4:	fea42623          	sw	a0,-20(s0)
100022c8:	feb42423          	sw	a1,-24(s0)
100022cc:	fec42223          	sw	a2,-28(s0)
100022d0:	fed42023          	sw	a3,-32(s0)
100022d4:	fe042703          	lw	a4,-32(s0)
100022d8:	fe442683          	lw	a3,-28(s0)
100022dc:	fe842603          	lw	a2,-24(s0)
100022e0:	fec42583          	lw	a1,-20(s0)
100022e4:	100017b7          	lui	a5,0x10001
100022e8:	e7478513          	addi	a0,a5,-396 # 10000e74 <_out_buffer>
100022ec:	b70ff0ef          	jal	ra,1000165c <_vsnprintf>
100022f0:	00050793          	mv	a5,a0
100022f4:	00078513          	mv	a0,a5
100022f8:	01c12083          	lw	ra,28(sp)
100022fc:	01812403          	lw	s0,24(sp)
10002300:	02010113          	addi	sp,sp,32
10002304:	00008067          	ret

10002308 <fctprintf>:
10002308:	fb010113          	addi	sp,sp,-80
1000230c:	02112623          	sw	ra,44(sp)
10002310:	02812423          	sw	s0,40(sp)
10002314:	03010413          	addi	s0,sp,48
10002318:	fca42e23          	sw	a0,-36(s0)
1000231c:	fcb42c23          	sw	a1,-40(s0)
10002320:	fcc42a23          	sw	a2,-44(s0)
10002324:	00d42623          	sw	a3,12(s0)
10002328:	00e42823          	sw	a4,16(s0)
1000232c:	00f42a23          	sw	a5,20(s0)
10002330:	01042c23          	sw	a6,24(s0)
10002334:	01142e23          	sw	a7,28(s0)
10002338:	02040793          	addi	a5,s0,32
1000233c:	fec78793          	addi	a5,a5,-20
10002340:	fef42423          	sw	a5,-24(s0)
10002344:	fdc42783          	lw	a5,-36(s0)
10002348:	fef42023          	sw	a5,-32(s0)
1000234c:	fd842783          	lw	a5,-40(s0)
10002350:	fef42223          	sw	a5,-28(s0)
10002354:	fe842703          	lw	a4,-24(s0)
10002358:	fe040793          	addi	a5,s0,-32
1000235c:	fd442683          	lw	a3,-44(s0)
10002360:	fff00613          	li	a2,-1
10002364:	00078593          	mv	a1,a5
10002368:	100017b7          	lui	a5,0x10001
1000236c:	f3878513          	addi	a0,a5,-200 # 10000f38 <_out_fct>
10002370:	aecff0ef          	jal	ra,1000165c <_vsnprintf>
10002374:	fea42623          	sw	a0,-20(s0)
10002378:	fec42783          	lw	a5,-20(s0)
1000237c:	00078513          	mv	a0,a5
10002380:	02c12083          	lw	ra,44(sp)
10002384:	02812403          	lw	s0,40(sp)
10002388:	05010113          	addi	sp,sp,80
1000238c:	00008067          	ret

10002390 <_putchar>:
10002390:	fe010113          	addi	sp,sp,-32
10002394:	00812e23          	sw	s0,28(sp)
10002398:	02010413          	addi	s0,sp,32
1000239c:	00050793          	mv	a5,a0
100023a0:	fef407a3          	sb	a5,-17(s0)
100023a4:	00000013          	nop
100023a8:	01c12403          	lw	s0,28(sp)
100023ac:	02010113          	addi	sp,sp,32
100023b0:	00008067          	ret

100023b4 <memset>:
100023b4:	fd010113          	addi	sp,sp,-48
100023b8:	02812623          	sw	s0,44(sp)
100023bc:	03010413          	addi	s0,sp,48
100023c0:	fca42e23          	sw	a0,-36(s0)
100023c4:	fcb42c23          	sw	a1,-40(s0)
100023c8:	fcc42a23          	sw	a2,-44(s0)
100023cc:	fdc42783          	lw	a5,-36(s0)
100023d0:	fef42623          	sw	a5,-20(s0)
100023d4:	01c0006f          	j	100023f0 <memset+0x3c>
100023d8:	fdc42783          	lw	a5,-36(s0)
100023dc:	00178713          	addi	a4,a5,1
100023e0:	fce42e23          	sw	a4,-36(s0)
100023e4:	fd842703          	lw	a4,-40(s0)
100023e8:	0ff77713          	andi	a4,a4,255
100023ec:	00e78023          	sb	a4,0(a5)
100023f0:	fd442783          	lw	a5,-44(s0)
100023f4:	fff78713          	addi	a4,a5,-1
100023f8:	fce42a23          	sw	a4,-44(s0)
100023fc:	fcf04ee3          	bgtz	a5,100023d8 <memset+0x24>
10002400:	fec42783          	lw	a5,-20(s0)
10002404:	00078513          	mv	a0,a5
10002408:	02c12403          	lw	s0,44(sp)
1000240c:	03010113          	addi	sp,sp,48
10002410:	00008067          	ret

10002414 <strncpy>:
10002414:	fd010113          	addi	sp,sp,-48
10002418:	02812623          	sw	s0,44(sp)
1000241c:	03010413          	addi	s0,sp,48
10002420:	fca42e23          	sw	a0,-36(s0)
10002424:	fcb42c23          	sw	a1,-40(s0)
10002428:	fcc42a23          	sw	a2,-44(s0)
1000242c:	fe042623          	sw	zero,-20(s0)
10002430:	0300006f          	j	10002460 <strncpy+0x4c>
10002434:	fec42783          	lw	a5,-20(s0)
10002438:	fd842703          	lw	a4,-40(s0)
1000243c:	00f70733          	add	a4,a4,a5
10002440:	fec42783          	lw	a5,-20(s0)
10002444:	fdc42683          	lw	a3,-36(s0)
10002448:	00f687b3          	add	a5,a3,a5
1000244c:	00074703          	lbu	a4,0(a4)
10002450:	00e78023          	sb	a4,0(a5)
10002454:	fec42783          	lw	a5,-20(s0)
10002458:	00178793          	addi	a5,a5,1
1000245c:	fef42623          	sw	a5,-20(s0)
10002460:	fec42703          	lw	a4,-20(s0)
10002464:	fd442783          	lw	a5,-44(s0)
10002468:	02f75c63          	bge	a4,a5,100024a0 <strncpy+0x8c>
1000246c:	fec42783          	lw	a5,-20(s0)
10002470:	fd842703          	lw	a4,-40(s0)
10002474:	00f707b3          	add	a5,a4,a5
10002478:	0007c783          	lbu	a5,0(a5)
1000247c:	fa079ce3          	bnez	a5,10002434 <strncpy+0x20>
10002480:	0200006f          	j	100024a0 <strncpy+0x8c>
10002484:	fec42783          	lw	a5,-20(s0)
10002488:	fdc42703          	lw	a4,-36(s0)
1000248c:	00f707b3          	add	a5,a4,a5
10002490:	00078023          	sb	zero,0(a5)
10002494:	fec42783          	lw	a5,-20(s0)
10002498:	00178793          	addi	a5,a5,1
1000249c:	fef42623          	sw	a5,-20(s0)
100024a0:	fec42703          	lw	a4,-20(s0)
100024a4:	fd442783          	lw	a5,-44(s0)
100024a8:	fcf74ee3          	blt	a4,a5,10002484 <strncpy+0x70>
100024ac:	fdc42783          	lw	a5,-36(s0)
100024b0:	00078513          	mv	a0,a5
100024b4:	02c12403          	lw	s0,44(sp)
100024b8:	03010113          	addi	sp,sp,48
100024bc:	00008067          	ret

100024c0 <len_of_str>:
100024c0:	fd010113          	addi	sp,sp,-48
100024c4:	02812623          	sw	s0,44(sp)
100024c8:	03010413          	addi	s0,sp,48
100024cc:	fca42e23          	sw	a0,-36(s0)
100024d0:	fe042623          	sw	zero,-20(s0)
100024d4:	0100006f          	j	100024e4 <len_of_str+0x24>
100024d8:	fec42783          	lw	a5,-20(s0)
100024dc:	00178793          	addi	a5,a5,1
100024e0:	fef42623          	sw	a5,-20(s0)
100024e4:	fdc42783          	lw	a5,-36(s0)
100024e8:	00178713          	addi	a4,a5,1
100024ec:	fce42e23          	sw	a4,-36(s0)
100024f0:	0007c783          	lbu	a5,0(a5)
100024f4:	fe0792e3          	bnez	a5,100024d8 <len_of_str+0x18>
100024f8:	fec42783          	lw	a5,-20(s0)
100024fc:	00078513          	mv	a0,a5
10002500:	02c12403          	lw	s0,44(sp)
10002504:	03010113          	addi	sp,sp,48
10002508:	00008067          	ret

1000250c <Xil_In32>:
/************************** Constant Definitions ****************************/

/************************** Static Inlines ****************************/

static inline uint32_t Xil_In32(uintptr_t Addr)
{
1000250c:	fe010113          	addi	sp,sp,-32
10002510:	00812e23          	sw	s0,28(sp)
10002514:	02010413          	addi	s0,sp,32
10002518:	fea42623          	sw	a0,-20(s0)
	return *(volatile uint32_t *) Addr;
1000251c:	fec42783          	lw	a5,-20(s0)
10002520:	0007a783          	lw	a5,0(a5)
}
10002524:	00078513          	mv	a0,a5
10002528:	01c12403          	lw	s0,28(sp)
1000252c:	02010113          	addi	sp,sp,32
10002530:	00008067          	ret

10002534 <Xil_Out32>:

static inline void Xil_Out32(uintptr_t Addr, uint32_t Value)
{
10002534:	fd010113          	addi	sp,sp,-48
10002538:	02812623          	sw	s0,44(sp)
1000253c:	03010413          	addi	s0,sp,48
10002540:	fca42e23          	sw	a0,-36(s0)
10002544:	fcb42c23          	sw	a1,-40(s0)
	volatile uint32_t *LocalAddr = (volatile uint32_t *)Addr;
10002548:	fdc42783          	lw	a5,-36(s0)
1000254c:	fef42623          	sw	a5,-20(s0)
	*LocalAddr = Value;
10002550:	fec42783          	lw	a5,-20(s0)
10002554:	fd842703          	lw	a4,-40(s0)
10002558:	00e7a023          	sw	a4,0(a5)
}
1000255c:	00000013          	nop
10002560:	02c12403          	lw	s0,44(sp)
10002564:	03010113          	addi	sp,sp,48
10002568:	00008067          	ret

1000256c <XUartLite_InterruptHandlerWrapper>:
enum PROTO_STATE{
    INVALID = 0,
    HEADER1, 
    VALID    
};
unsigned int XUartLite_InterruptHandlerWrapper(int id){
1000256c:	fd010113          	addi	sp,sp,-48
10002570:	02112623          	sw	ra,44(sp)
10002574:	02812423          	sw	s0,40(sp)
10002578:	03010413          	addi	s0,sp,48
1000257c:	fca42e23          	sw	a0,-36(s0)
    XUartLite * InstancePtr;
	uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    uint8_t fifo_in;
    unsigned int ReceivedCount = 0;
10002580:	fe042423          	sw	zero,-24(s0)
    static  int recv_cnt = 0;
    static enum PROTO_STATE header_state = INVALID;
    if(id == 0){
10002584:	fdc42783          	lw	a5,-36(s0)
10002588:	00079a63          	bnez	a5,1000259c <XUartLite_InterruptHandlerWrapper+0x30>
        InstancePtr = & XUartLiteInstances0;
1000258c:	100107b7          	lui	a5,0x10010
10002590:	6fc78793          	addi	a5,a5,1788 # 100106fc <XUartLiteInstances0>
10002594:	fef42623          	sw	a5,-20(s0)
10002598:	01c0006f          	j	100025b4 <XUartLite_InterruptHandlerWrapper+0x48>
    }else if(id==1){
1000259c:	fdc42703          	lw	a4,-36(s0)
100025a0:	00100793          	li	a5,1
100025a4:	00f71863          	bne	a4,a5,100025b4 <XUartLite_InterruptHandlerWrapper+0x48>
        InstancePtr = & XUartLiteInstances1;
100025a8:	100107b7          	lui	a5,0x10010
100025ac:	7dc78793          	addi	a5,a5,2012 # 100107dc <XUartLiteInstances1>
100025b0:	fef42623          	sw	a5,-20(s0)
    }


    if(id==0){
100025b4:	fdc42783          	lw	a5,-36(s0)
100025b8:	04079663          	bnez	a5,10002604 <XUartLite_InterruptHandlerWrapper+0x98>
        while (1) {
            StatusRegister =
                XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
100025bc:	fec42783          	lw	a5,-20(s0)
100025c0:	01c7a783          	lw	a5,28(a5)
100025c4:	00878793          	addi	a5,a5,8
100025c8:	00078513          	mv	a0,a5
100025cc:	f41ff0ef          	jal	ra,1000250c <Xil_In32>
100025d0:	00050793          	mv	a5,a0
            StatusRegister =
100025d4:	fef403a3          	sb	a5,-25(s0)
            if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
100025d8:	fe744783          	lbu	a5,-25(s0)
100025dc:	0017f793          	andi	a5,a5,1
100025e0:	02078063          	beqz	a5,10002600 <XUartLite_InterruptHandlerWrapper+0x94>
                   //InstancePtr->ForwardBuffer[recv_cnt] = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
                                //XUL_RX_FIFO_OFFSET);
                   fifo_in = XUartLite_ReadReg(InstancePtr->RegBaseAddress,XUL_RX_FIFO_OFFSET);
100025e4:	fec42783          	lw	a5,-20(s0)
100025e8:	01c7a783          	lw	a5,28(a5)
100025ec:	00078513          	mv	a0,a5
100025f0:	f1dff0ef          	jal	ra,1000250c <Xil_In32>
100025f4:	00050793          	mv	a5,a0
100025f8:	fef40323          	sb	a5,-26(s0)
            StatusRegister =
100025fc:	fc1ff06f          	j	100025bc <XUartLite_InterruptHandlerWrapper+0x50>
                   //            InstancePtr->ReceiveBuffer.locked = 1;
                   //        }
                   //    }
                   //}
            }else {
                break;
10002600:	00000013          	nop
        //}

    }
    //XUartLite_InterruptHandler(InstancePtr);

    if(id == 0){
10002604:	fdc42783          	lw	a5,-36(s0)
10002608:	00079c63          	bnez	a5,10002620 <XUartLite_InterruptHandlerWrapper+0xb4>
        *uart0_intr_clr  = 1;
1000260c:	100117b7          	lui	a5,0x10011
10002610:	98c7a783          	lw	a5,-1652(a5) # 1001098c <uart0_intr_clr>
10002614:	00100713          	li	a4,1
10002618:	00e7a023          	sw	a4,0(a5)
1000261c:	0200006f          	j	1000263c <XUartLite_InterruptHandlerWrapper+0xd0>
    }else if(id==1){
10002620:	fdc42703          	lw	a4,-36(s0)
10002624:	00100793          	li	a5,1
10002628:	00f71a63          	bne	a4,a5,1000263c <XUartLite_InterruptHandlerWrapper+0xd0>
        *uart1_intr_clr  = 1;
1000262c:	100117b7          	lui	a5,0x10011
10002630:	9907a783          	lw	a5,-1648(a5) # 10010990 <uart1_intr_clr>
10002634:	00100713          	li	a4,1
10002638:	00e7a023          	sw	a4,0(a5)
    }
}
1000263c:	00000013          	nop
10002640:	00078513          	mv	a0,a5
10002644:	02c12083          	lw	ra,44(sp)
10002648:	02812403          	lw	s0,40(sp)
1000264c:	03010113          	addi	sp,sp,48
10002650:	00008067          	ret

10002654 <XUartLite_SendBuffer>:

unsigned int XUartLite_SendBuffer(XUartLite *InstancePtr)
{
10002654:	fd010113          	addi	sp,sp,-48
10002658:	02112623          	sw	ra,44(sp)
1000265c:	02812423          	sw	s0,40(sp)
10002660:	03010413          	addi	s0,sp,48
10002664:	fca42e23          	sw	a0,-36(s0)
	unsigned int SentCount = 0;
10002668:	fe042623          	sw	zero,-20(s0)
	uint8_t IntrEnableStatus;

	/*
	 * Read the status register to determine if the transmitter is full
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
1000266c:	fdc42783          	lw	a5,-36(s0)
10002670:	01c7a783          	lw	a5,28(a5)
10002674:	00878793          	addi	a5,a5,8
10002678:	00078513          	mv	a0,a5
1000267c:	e91ff0ef          	jal	ra,1000250c <Xil_In32>
10002680:	00050793          	mv	a5,a0
10002684:	fef405a3          	sb	a5,-21(s0)

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002688:	fdc42783          	lw	a5,-36(s0)
1000268c:	01c7a783          	lw	a5,28(a5)
10002690:	00878793          	addi	a5,a5,8
10002694:	00078513          	mv	a0,a5
10002698:	e75ff0ef          	jal	ra,1000250c <Xil_In32>
1000269c:	00050793          	mv	a5,a0
100026a0:	fef405a3          	sb	a5,-21(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100026a4:	fdc42783          	lw	a5,-36(s0)
100026a8:	01c7a783          	lw	a5,28(a5)
100026ac:	00c78793          	addi	a5,a5,12
100026b0:	00000593          	li	a1,0
100026b4:	00078513          	mv	a0,a5
100026b8:	e7dff0ef          	jal	ra,10002534 <Xil_Out32>
	/*
	 * Save the status register contents to restore the interrupt enable
	 * register to it's previous value when that the critical region is
	 * exited
	 */
	IntrEnableStatus = StatusRegister;
100026bc:	feb44783          	lbu	a5,-21(s0)
100026c0:	fef40523          	sb	a5,-22(s0)

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
100026c4:	0580006f          	j	1000271c <XUartLite_SendBuffer+0xc8>
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
		XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100026c8:	fdc42783          	lw	a5,-36(s0)
100026cc:	01c7a783          	lw	a5,28(a5)
100026d0:	00478693          	addi	a3,a5,4
100026d4:	fdc42783          	lw	a5,-36(s0)
100026d8:	0407a703          	lw	a4,64(a5)
100026dc:	fec42783          	lw	a5,-20(s0)
100026e0:	00f707b3          	add	a5,a4,a5
100026e4:	0007c783          	lbu	a5,0(a5)
100026e8:	00078593          	mv	a1,a5
100026ec:	00068513          	mv	a0,a3
100026f0:	e45ff0ef          	jal	ra,10002534 <Xil_Out32>
					XUL_TX_FIFO_OFFSET,
					InstancePtr->SendBuffer.NextBytePtr[
					SentCount]);

		SentCount++;
100026f4:	fec42783          	lw	a5,-20(s0)
100026f8:	00178793          	addi	a5,a5,1
100026fc:	fef42623          	sw	a5,-20(s0)

		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002700:	fdc42783          	lw	a5,-36(s0)
10002704:	01c7a783          	lw	a5,28(a5)
10002708:	00878793          	addi	a5,a5,8
1000270c:	00078513          	mv	a0,a5
10002710:	dfdff0ef          	jal	ra,1000250c <Xil_In32>
10002714:	00050793          	mv	a5,a0
		StatusRegister =
10002718:	fef405a3          	sb	a5,-21(s0)
	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
1000271c:	feb44783          	lbu	a5,-21(s0)
10002720:	0087f793          	andi	a5,a5,8
10002724:	00079a63          	bnez	a5,10002738 <XUartLite_SendBuffer+0xe4>
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
10002728:	fdc42783          	lw	a5,-36(s0)
1000272c:	0487a783          	lw	a5,72(a5)
	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
10002730:	fec42703          	lw	a4,-20(s0)
10002734:	f8f76ae3          	bltu	a4,a5,100026c8 <XUartLite_SendBuffer+0x74>
	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
10002738:	fdc42783          	lw	a5,-36(s0)
1000273c:	0407a703          	lw	a4,64(a5)
10002740:	fec42783          	lw	a5,-20(s0)
10002744:	00f70733          	add	a4,a4,a5
10002748:	fdc42783          	lw	a5,-36(s0)
1000274c:	04e7a023          	sw	a4,64(a5)
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;
10002750:	fdc42783          	lw	a5,-36(s0)
10002754:	0487a703          	lw	a4,72(a5)
10002758:	fec42783          	lw	a5,-20(s0)
1000275c:	40f70733          	sub	a4,a4,a5
10002760:	fdc42783          	lw	a5,-36(s0)
10002764:	04e7a423          	sw	a4,72(a5)

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;
10002768:	fdc42783          	lw	a5,-36(s0)
1000276c:	0087a703          	lw	a4,8(a5)
10002770:	fec42783          	lw	a5,-20(s0)
10002774:	00f70733          	add	a4,a4,a5
10002778:	fdc42783          	lw	a5,-36(s0)
1000277c:	00e7a423          	sw	a4,8(a5)

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	IntrEnableStatus &= XUL_CR_ENABLE_INTR;
10002780:	fea44783          	lbu	a5,-22(s0)
10002784:	0107f793          	andi	a5,a5,16
10002788:	fef40523          	sb	a5,-22(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
1000278c:	fdc42783          	lw	a5,-36(s0)
10002790:	01c7a783          	lw	a5,28(a5)
10002794:	00c78793          	addi	a5,a5,12
10002798:	fea44703          	lbu	a4,-22(s0)
1000279c:	00070593          	mv	a1,a4
100027a0:	00078513          	mv	a0,a5
100027a4:	d91ff0ef          	jal	ra,10002534 <Xil_Out32>

	/*
	 * Return the number of bytes that were sent, althought they really were
	 * only put into the FIFO, not completely sent yet
	 */
	return SentCount;
100027a8:	fec42783          	lw	a5,-20(s0)
}
100027ac:	00078513          	mv	a0,a5
100027b0:	02c12083          	lw	ra,44(sp)
100027b4:	02812403          	lw	s0,40(sp)
100027b8:	03010113          	addi	sp,sp,48
100027bc:	00008067          	ret

100027c0 <XUartLite_ReceiveBuffer>:

unsigned int XUartLite_ReceiveBuffer(XUartLite *InstancePtr)
{
100027c0:	fd010113          	addi	sp,sp,-48
100027c4:	02112623          	sw	ra,44(sp)
100027c8:	02812423          	sw	s0,40(sp)
100027cc:	03010413          	addi	s0,sp,48
100027d0:	fca42e23          	sw	a0,-36(s0)
    uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    unsigned int ReceivedCount = 0;
100027d4:	fe042623          	sw	zero,-20(s0)

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegisterVal = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
100027d8:	fdc42783          	lw	a5,-36(s0)
100027dc:	01c7a783          	lw	a5,28(a5)
100027e0:	00878793          	addi	a5,a5,8
100027e4:	00078513          	mv	a0,a5
100027e8:	d25ff0ef          	jal	ra,1000250c <Xil_In32>
100027ec:	00050793          	mv	a5,a0
100027f0:	fef405a3          	sb	a5,-21(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100027f4:	fdc42783          	lw	a5,-36(s0)
100027f8:	01c7a783          	lw	a5,28(a5)
100027fc:	00c78793          	addi	a5,a5,12
10002800:	00000593          	li	a1,0
10002804:	00078513          	mv	a0,a5
10002808:	d2dff0ef          	jal	ra,10002534 <Xil_Out32>
    /*
     * Loop until there is not more data buffered by the UART or the
     * specified number of bytes is received
     */

    while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
1000280c:	0600006f          	j	1000286c <XUartLite_ReceiveBuffer+0xac>
        /*
         * Read the Status Register to determine if there is any data in
         * the receiver/FIFO
         */
        StatusRegister =
            XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002810:	fdc42783          	lw	a5,-36(s0)
10002814:	01c7a783          	lw	a5,28(a5)
10002818:	00878793          	addi	a5,a5,8
1000281c:	00078513          	mv	a0,a5
10002820:	cedff0ef          	jal	ra,1000250c <Xil_In32>
10002824:	00050793          	mv	a5,a0
        StatusRegister =
10002828:	fef40523          	sb	a5,-22(s0)
        /*
         * If there is data ready to be removed, then put the next byte
         * received into the specified buffer and update the stats to
         * reflect any receive errors for the byte
         */
        if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
1000282c:	fea44783          	lbu	a5,-22(s0)
10002830:	0017f793          	andi	a5,a5,1
10002834:	04078663          	beqz	a5,10002880 <XUartLite_ReceiveBuffer+0xc0>
            InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
                XUartLite_ReadReg(InstancePtr->RegBaseAddress,
10002838:	fdc42783          	lw	a5,-36(s0)
1000283c:	01c7a783          	lw	a5,28(a5)
10002840:	00078513          	mv	a0,a5
10002844:	cc9ff0ef          	jal	ra,1000250c <Xil_In32>
10002848:	00050613          	mv	a2,a0
            InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
1000284c:	fdc42783          	lw	a5,-36(s0)
10002850:	0507a703          	lw	a4,80(a5)
10002854:	fec42783          	lw	a5,-20(s0)
10002858:	00178693          	addi	a3,a5,1
1000285c:	fed42623          	sw	a3,-20(s0)
10002860:	00f707b3          	add	a5,a4,a5
10002864:	0ff67713          	andi	a4,a2,255
10002868:	00e78023          	sb	a4,0(a5)
    while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
1000286c:	fdc42783          	lw	a5,-36(s0)
10002870:	0587a783          	lw	a5,88(a5)
10002874:	fec42703          	lw	a4,-20(s0)
10002878:	f8f76ce3          	bltu	a4,a5,10002810 <XUartLite_ReceiveBuffer+0x50>
1000287c:	0080006f          	j	10002884 <XUartLite_ReceiveBuffer+0xc4>
        /*
         * There's no more data buffered, so exit such that this
         * function does not block waiting for data
         */
        else {
            break;
10002880:	00000013          	nop

    /*
     * Update the receive buffer to reflect the number of bytes that was
     * received
     */
    InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
10002884:	fdc42783          	lw	a5,-36(s0)
10002888:	0507a703          	lw	a4,80(a5)
1000288c:	fec42783          	lw	a5,-20(s0)
10002890:	00f70733          	add	a4,a4,a5
10002894:	fdc42783          	lw	a5,-36(s0)
10002898:	04e7a823          	sw	a4,80(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;
1000289c:	fdc42783          	lw	a5,-36(s0)
100028a0:	0587a703          	lw	a4,88(a5)
100028a4:	fec42783          	lw	a5,-20(s0)
100028a8:	40f70733          	sub	a4,a4,a5
100028ac:	fdc42783          	lw	a5,-36(s0)
100028b0:	04e7ac23          	sw	a4,88(a5)

    /*
     * Increment associated counters in the statistics
     */
    InstancePtr->Stats.CharactersReceived += ReceivedCount;
100028b4:	fdc42783          	lw	a5,-36(s0)
100028b8:	00c7a703          	lw	a4,12(a5)
100028bc:	fec42783          	lw	a5,-20(s0)
100028c0:	00f70733          	add	a4,a4,a5
100028c4:	fdc42783          	lw	a5,-36(s0)
100028c8:	00e7a623          	sw	a4,12(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegisterVal &= XUL_CR_ENABLE_INTR;
100028cc:	feb44783          	lbu	a5,-21(s0)
100028d0:	0107f793          	andi	a5,a5,16
100028d4:	fef405a3          	sb	a5,-21(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
100028d8:	fdc42783          	lw	a5,-36(s0)
100028dc:	01c7a783          	lw	a5,28(a5)
100028e0:	00c78793          	addi	a5,a5,12
100028e4:	feb44703          	lbu	a4,-21(s0)
100028e8:	00070593          	mv	a1,a4
100028ec:	00078513          	mv	a0,a5
100028f0:	c45ff0ef          	jal	ra,10002534 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, StatusRegisterVal);

    return ReceivedCount;
100028f4:	fec42783          	lw	a5,-20(s0)
}
100028f8:	00078513          	mv	a0,a5
100028fc:	02c12083          	lw	ra,44(sp)
10002900:	02812403          	lw	s0,40(sp)
10002904:	03010113          	addi	sp,sp,48
10002908:	00008067          	ret

1000290c <XUartLite_InterruptHandler>:

void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
1000290c:	fd010113          	addi	sp,sp,-48
10002910:	02112623          	sw	ra,44(sp)
10002914:	02812423          	sw	s0,40(sp)
10002918:	03010413          	addi	s0,sp,48
1000291c:	fca42e23          	sw	a0,-36(s0)

    /*
     * Read the status register to determine which, coulb be both
     * interrupt is active
     */
    IsrStatus = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
10002920:	fdc42783          	lw	a5,-36(s0)
10002924:	01c7a783          	lw	a5,28(a5)
10002928:	00878793          	addi	a5,a5,8
1000292c:	00078513          	mv	a0,a5
10002930:	bddff0ef          	jal	ra,1000250c <Xil_In32>
10002934:	fea42623          	sw	a0,-20(s0)
                    XUL_STATUS_REG_OFFSET);

    if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
10002938:	fec42783          	lw	a5,-20(s0)
1000293c:	0037f793          	andi	a5,a5,3
10002940:	00078663          	beqz	a5,1000294c <XUartLite_InterruptHandler+0x40>
        XUL_SR_RX_FIFO_VALID_DATA)) != 0) {
        ReceiveDataHandler(InstancePtr);
10002944:	fdc42503          	lw	a0,-36(s0)
10002948:	018000ef          	jal	ra,10002960 <ReceiveDataHandler>
	//if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
	//	(InstancePtr->SendBuffer.RequestedBytes > 0)) {
	//	SendDataHandler(InstancePtr);
	//}

}
1000294c:	00000013          	nop
10002950:	02c12083          	lw	ra,44(sp)
10002954:	02812403          	lw	s0,40(sp)
10002958:	03010113          	addi	sp,sp,48
1000295c:	00008067          	ret

10002960 <ReceiveDataHandler>:
//        InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    }
//}

static void ReceiveDataHandler(XUartLite *InstancePtr)
{
10002960:	fd010113          	addi	sp,sp,-48
10002964:	02112623          	sw	ra,44(sp)
10002968:	02812423          	sw	s0,40(sp)
1000296c:	03010413          	addi	s0,sp,48
10002970:	fca42e23          	sw	a0,-36(s0)
	int NewMsgReceivedCount;
    /*
     * If there are bytes still to be received in the specified buffer
     * go ahead and receive them
     */
    if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
10002974:	fdc42783          	lw	a5,-36(s0)
10002978:	0587a783          	lw	a5,88(a5)
1000297c:	00078a63          	beqz	a5,10002990 <ReceiveDataHandler+0x30>
        NewMsgReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
10002980:	fdc42503          	lw	a0,-36(s0)
10002984:	e3dff0ef          	jal	ra,100027c0 <XUartLite_ReceiveBuffer>
10002988:	00050793          	mv	a5,a0
1000298c:	fef42623          	sw	a5,-20(s0)
     * handler, this code should not use an else from the previous check of
     * the number of bytes to receive because the call to receive the buffer
     * updates the bytes to receive
     */
    
	TotalReceivedCount = TotalReceivedCountOf(InstancePtr);
10002990:	fdc42503          	lw	a0,-36(s0)
10002994:	0b8000ef          	jal	ra,10002a4c <TotalReceivedCountOf>
10002998:	fea42423          	sw	a0,-24(s0)
    InstancePtr->Stats.ReceiveInterrupts++;
1000299c:	fdc42783          	lw	a5,-36(s0)
100029a0:	0047a783          	lw	a5,4(a5)
100029a4:	00178713          	addi	a4,a5,1
100029a8:	fdc42783          	lw	a5,-36(s0)
100029ac:	00e7a223          	sw	a4,4(a5)
    //    //XUartLite_Send(&XUartLiteInstances1, "abc\n", 4);
    //    //XUartLite_Send(&XUartLiteInstances1, &TotalReceivedCount, 4);
	//	//ProcessAndForward(InstancePtr);
	//}

}
100029b0:	00000013          	nop
100029b4:	02c12083          	lw	ra,44(sp)
100029b8:	02812403          	lw	s0,40(sp)
100029bc:	03010113          	addi	sp,sp,48
100029c0:	00008067          	ret

100029c4 <SendDataHandler>:

static void SendDataHandler(XUartLite *InstancePtr)
{
100029c4:	fd010113          	addi	sp,sp,-48
100029c8:	02112623          	sw	ra,44(sp)
100029cc:	02812423          	sw	s0,40(sp)
100029d0:	03010413          	addi	s0,sp,48
100029d4:	fca42e23          	sw	a0,-36(s0)
	/*
	 * If there are not bytes to be sent from the specified buffer,
	 * call the callback function
	 */
	if (InstancePtr->SendBuffer.RemainingBytes == 0) {
100029d8:	fdc42783          	lw	a5,-36(s0)
100029dc:	0487a783          	lw	a5,72(a5)
100029e0:	02079e63          	bnez	a5,10002a1c <SendDataHandler+0x58>

		/*
		 * Save and zero the requested bytes since transmission
		 * is complete
		 */
		SaveReq = InstancePtr->SendBuffer.RequestedBytes;
100029e4:	fdc42783          	lw	a5,-36(s0)
100029e8:	0447a783          	lw	a5,68(a5)
100029ec:	fef42623          	sw	a5,-20(s0)
		InstancePtr->SendBuffer.RequestedBytes = 0;
100029f0:	fdc42783          	lw	a5,-36(s0)
100029f4:	0407a223          	sw	zero,68(a5)

		/*
		 * Call the application handler to indicate
		 * the data has been sent
		 */
		InstancePtr->SendHandler(InstancePtr->SendCallBackRef, SaveReq);
100029f8:	fdc42783          	lw	a5,-36(s0)
100029fc:	0687a683          	lw	a3,104(a5)
10002a00:	fdc42783          	lw	a5,-36(s0)
10002a04:	06c7a783          	lw	a5,108(a5)
10002a08:	fec42703          	lw	a4,-20(s0)
10002a0c:	00070593          	mv	a1,a4
10002a10:	00078513          	mv	a0,a5
10002a14:	000680e7          	jalr	a3
10002a18:	00c0006f          	j	10002a24 <SendDataHandler+0x60>
	/*
	 * Otherwise there is still more data to send in the specified buffer
	 * so go ahead and send it
	 */
	else {
		XUartLite_SendBuffer(InstancePtr);
10002a1c:	fdc42503          	lw	a0,-36(s0)
10002a20:	c35ff0ef          	jal	ra,10002654 <XUartLite_SendBuffer>
	}

	/*
	 * Update the transmit stats to reflect the transmit interrupt
	 */
	InstancePtr->Stats.TransmitInterrupts++;
10002a24:	fdc42783          	lw	a5,-36(s0)
10002a28:	0007a783          	lw	a5,0(a5)
10002a2c:	00178713          	addi	a4,a5,1
10002a30:	fdc42783          	lw	a5,-36(s0)
10002a34:	00e7a023          	sw	a4,0(a5)
}
10002a38:	00000013          	nop
10002a3c:	02c12083          	lw	ra,44(sp)
10002a40:	02812403          	lw	s0,40(sp)
10002a44:	03010113          	addi	sp,sp,48
10002a48:	00008067          	ret

10002a4c <TotalReceivedCountOf>:

int TotalReceivedCountOf(XUartLite * InstancePtr){
10002a4c:	fe010113          	addi	sp,sp,-32
10002a50:	00812e23          	sw	s0,28(sp)
10002a54:	02010413          	addi	s0,sp,32
10002a58:	fea42623          	sw	a0,-20(s0)
    return InstancePtr->ReceiveBuffer.RequestedBytes
10002a5c:	fec42783          	lw	a5,-20(s0)
10002a60:	0547a703          	lw	a4,84(a5)
        - InstancePtr->ReceiveBuffer.RemainingBytes;
10002a64:	fec42783          	lw	a5,-20(s0)
10002a68:	0587a783          	lw	a5,88(a5)
10002a6c:	40f707b3          	sub	a5,a4,a5

}
10002a70:	00078513          	mv	a0,a5
10002a74:	01c12403          	lw	s0,28(sp)
10002a78:	02010113          	addi	sp,sp,32
10002a7c:	00008067          	ret

10002a80 <XUartLite_CfgInitialize>:
//    InstancePtr->RecvHandler = FuncPtr;
//    InstancePtr->RecvCallBackRef = CallBackRef;
//}

int XUartLite_CfgInitialize(XUartLite *InstancePtr, uintptr_t EffectiveAddr)
{
10002a80:	fe010113          	addi	sp,sp,-32
10002a84:	00112e23          	sw	ra,28(sp)
10002a88:	00812c23          	sw	s0,24(sp)
10002a8c:	02010413          	addi	s0,sp,32
10002a90:	fea42623          	sw	a0,-20(s0)
10002a94:	feb42423          	sw	a1,-24(s0)

    /*
     * Set some default values, including setting the callback
     * handlers to stubs.
     */
    InstancePtr->SendBuffer.NextBytePtr = NULL;
10002a98:	fec42783          	lw	a5,-20(s0)
10002a9c:	0407a023          	sw	zero,64(a5)
    InstancePtr->SendBuffer.RemainingBytes = 0;
10002aa0:	fec42783          	lw	a5,-20(s0)
10002aa4:	0407a423          	sw	zero,72(a5)
    InstancePtr->SendBuffer.RequestedBytes = 0;
10002aa8:	fec42783          	lw	a5,-20(s0)
10002aac:	0407a223          	sw	zero,68(a5)

    InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
10002ab0:	fec42783          	lw	a5,-20(s0)
10002ab4:	0407a823          	sw	zero,80(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = 0;
10002ab8:	fec42783          	lw	a5,-20(s0)
10002abc:	0407ac23          	sw	zero,88(a5)
    InstancePtr->ReceiveBuffer.RequestedBytes = 0;
10002ac0:	fec42783          	lw	a5,-20(s0)
10002ac4:	0407aa23          	sw	zero,84(a5)

    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;
10002ac8:	fec42783          	lw	a5,-20(s0)
10002acc:	11111737          	lui	a4,0x11111
10002ad0:	11170713          	addi	a4,a4,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002ad4:	02e7a023          	sw	a4,32(a5)

    InstancePtr->RegBaseAddress = EffectiveAddr;
10002ad8:	fec42783          	lw	a5,-20(s0)
10002adc:	fe842703          	lw	a4,-24(s0)
10002ae0:	00e7ae23          	sw	a4,28(a5)

    InstancePtr->RecvHandler = NULL;
10002ae4:	fec42783          	lw	a5,-20(s0)
10002ae8:	0607a023          	sw	zero,96(a5)
    InstancePtr->SendHandler = NULL;
10002aec:	fec42783          	lw	a5,-20(s0)
10002af0:	0607a423          	sw	zero,104(a5)

    InstancePtr->AutoForward = 0;
10002af4:	fec42783          	lw	a5,-20(s0)
10002af8:	0207a223          	sw	zero,36(a5)
    InstancePtr->ForwardBytes = 0;
10002afc:	fec42783          	lw	a5,-20(s0)
10002b00:	0207a423          	sw	zero,40(a5)
    InstancePtr->ForwardBuffer = NULL;
10002b04:	fec42783          	lw	a5,-20(s0)
10002b08:	0207a623          	sw	zero,44(a5)
    InstancePtr->ForwardInstPtr = NULL;
10002b0c:	fec42783          	lw	a5,-20(s0)
10002b10:	0207ac23          	sw	zero,56(a5)
//    connect_rxproto(&InstancePtr->RxProto,InstancePtr->ForwardBuffer);

    /* Write to the control register to disable the interrupts, don't
     * reset the FIFOs are the user may want the data that's present
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002b14:	fec42783          	lw	a5,-20(s0)
10002b18:	01c7a783          	lw	a5,28(a5)
10002b1c:	00c78793          	addi	a5,a5,12
10002b20:	00000593          	li	a1,0
10002b24:	00078513          	mv	a0,a5
10002b28:	a0dff0ef          	jal	ra,10002534 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, 0);

    /*
     * Clear the statistics for this driver
     */
    XUartLite_ClearStats(InstancePtr);
10002b2c:	fec42503          	lw	a0,-20(s0)
10002b30:	01c000ef          	jal	ra,10002b4c <XUartLite_ClearStats>

    return 0;
10002b34:	00000793          	li	a5,0
}
10002b38:	00078513          	mv	a0,a5
10002b3c:	01c12083          	lw	ra,28(sp)
10002b40:	01812403          	lw	s0,24(sp)
10002b44:	02010113          	addi	sp,sp,32
10002b48:	00008067          	ret

10002b4c <XUartLite_ClearStats>:
//    //    InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    //}
//}

void XUartLite_ClearStats(XUartLite *InstancePtr)
{
10002b4c:	fe010113          	addi	sp,sp,-32
10002b50:	00812e23          	sw	s0,28(sp)
10002b54:	02010413          	addi	s0,sp,32
10002b58:	fea42623          	sw	a0,-20(s0)
     * Assert validates the input arguments
     */
    //Xil_AssertVoid(InstancePtr != NULL);
    //Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    InstancePtr->Stats.TransmitInterrupts = 0;
10002b5c:	fec42783          	lw	a5,-20(s0)
10002b60:	0007a023          	sw	zero,0(a5)
    InstancePtr->Stats.ReceiveInterrupts = 0;
10002b64:	fec42783          	lw	a5,-20(s0)
10002b68:	0007a223          	sw	zero,4(a5)
    InstancePtr->Stats.CharactersTransmitted = 0;
10002b6c:	fec42783          	lw	a5,-20(s0)
10002b70:	0007a423          	sw	zero,8(a5)
    InstancePtr->Stats.CharactersReceived = 0;
10002b74:	fec42783          	lw	a5,-20(s0)
10002b78:	0007a623          	sw	zero,12(a5)
    InstancePtr->Stats.ReceiveOverrunErrors = 0;
10002b7c:	fec42783          	lw	a5,-20(s0)
10002b80:	0007a823          	sw	zero,16(a5)
    InstancePtr->Stats.ReceiveFramingErrors = 0;
10002b84:	fec42783          	lw	a5,-20(s0)
10002b88:	0007ac23          	sw	zero,24(a5)
    InstancePtr->Stats.ReceiveParityErrors = 0;
10002b8c:	fec42783          	lw	a5,-20(s0)
10002b90:	0007aa23          	sw	zero,20(a5)

}
10002b94:	00000013          	nop
10002b98:	01c12403          	lw	s0,28(sp)
10002b9c:	02010113          	addi	sp,sp,32
10002ba0:	00008067          	ret

10002ba4 <XUartLite_Recv>:


unsigned int XUartLite_Recv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
10002ba4:	fd010113          	addi	sp,sp,-48
10002ba8:	02112623          	sw	ra,44(sp)
10002bac:	02812423          	sw	s0,40(sp)
10002bb0:	03010413          	addi	s0,sp,48
10002bb4:	fca42e23          	sw	a0,-36(s0)
10002bb8:	fcb42c23          	sw	a1,-40(s0)
10002bbc:	fcc42a23          	sw	a2,-44(s0)
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002bc0:	fdc42783          	lw	a5,-36(s0)
10002bc4:	02078063          	beqz	a5,10002be4 <XUartLite_Recv+0x40>
10002bc8:	fd842783          	lw	a5,-40(s0)
10002bcc:	00078c63          	beqz	a5,10002be4 <XUartLite_Recv+0x40>
10002bd0:	fdc42783          	lw	a5,-36(s0)
10002bd4:	0207a703          	lw	a4,32(a5)
10002bd8:	111117b7          	lui	a5,0x11111
10002bdc:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002be0:	00f70663          	beq	a4,a5,10002bec <XUartLite_Recv+0x48>
        return 0;
10002be4:	00000793          	li	a5,0
10002be8:	0940006f          	j	10002c7c <XUartLite_Recv+0xd8>

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002bec:	fdc42783          	lw	a5,-36(s0)
10002bf0:	01c7a783          	lw	a5,28(a5)
10002bf4:	00878793          	addi	a5,a5,8
10002bf8:	00078513          	mv	a0,a5
10002bfc:	911ff0ef          	jal	ra,1000250c <Xil_In32>
10002c00:	fea42623          	sw	a0,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002c04:	fdc42783          	lw	a5,-36(s0)
10002c08:	01c7a783          	lw	a5,28(a5)
10002c0c:	00c78793          	addi	a5,a5,12
10002c10:	00000593          	li	a1,0
10002c14:	00078513          	mv	a0,a5
10002c18:	91dff0ef          	jal	ra,10002534 <Xil_Out32>

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
10002c1c:	fdc42783          	lw	a5,-36(s0)
10002c20:	fd442703          	lw	a4,-44(s0)
10002c24:	04e7aa23          	sw	a4,84(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
10002c28:	fdc42783          	lw	a5,-36(s0)
10002c2c:	fd442703          	lw	a4,-44(s0)
10002c30:	04e7ac23          	sw	a4,88(a5)
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
10002c34:	fdc42783          	lw	a5,-36(s0)
10002c38:	fd842703          	lw	a4,-40(s0)
10002c3c:	04e7a823          	sw	a4,80(a5)
    InstancePtr->ReceiveBuffer.locked = 0;
10002c40:	fdc42783          	lw	a5,-36(s0)
10002c44:	0407ae23          	sw	zero,92(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
10002c48:	fec42783          	lw	a5,-20(s0)
10002c4c:	0107f793          	andi	a5,a5,16
10002c50:	fef42623          	sw	a5,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002c54:	fdc42783          	lw	a5,-36(s0)
10002c58:	01c7a783          	lw	a5,28(a5)
10002c5c:	00c78793          	addi	a5,a5,12
10002c60:	fec42583          	lw	a1,-20(s0)
10002c64:	00078513          	mv	a0,a5
10002c68:	8cdff0ef          	jal	ra,10002534 <Xil_Out32>
     * received
     * This is done here to minimize the amount of time the interrupt is
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
10002c6c:	fdc42503          	lw	a0,-36(s0)
10002c70:	b51ff0ef          	jal	ra,100027c0 <XUartLite_ReceiveBuffer>
10002c74:	fea42423          	sw	a0,-24(s0)

    return ReceivedCount;
10002c78:	fe842783          	lw	a5,-24(s0)

}
10002c7c:	00078513          	mv	a0,a5
10002c80:	02c12083          	lw	ra,44(sp)
10002c84:	02812403          	lw	s0,40(sp)
10002c88:	03010113          	addi	sp,sp,48
10002c8c:	00008067          	ret

10002c90 <XUartLite_RepeatRecv>:

unsigned int XUartLite_RepeatRecv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
10002c90:	fd010113          	addi	sp,sp,-48
10002c94:	02112623          	sw	ra,44(sp)
10002c98:	02812423          	sw	s0,40(sp)
10002c9c:	03010413          	addi	s0,sp,48
10002ca0:	fca42e23          	sw	a0,-36(s0)
10002ca4:	fcb42c23          	sw	a1,-40(s0)
10002ca8:	fcc42a23          	sw	a2,-44(s0)
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002cac:	fdc42783          	lw	a5,-36(s0)
10002cb0:	02078063          	beqz	a5,10002cd0 <XUartLite_RepeatRecv+0x40>
10002cb4:	fd842783          	lw	a5,-40(s0)
10002cb8:	00078c63          	beqz	a5,10002cd0 <XUartLite_RepeatRecv+0x40>
10002cbc:	fdc42783          	lw	a5,-36(s0)
10002cc0:	0207a703          	lw	a4,32(a5)
10002cc4:	111117b7          	lui	a5,0x11111
10002cc8:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002ccc:	00f70663          	beq	a4,a5,10002cd8 <XUartLite_RepeatRecv+0x48>
        return 0;
10002cd0:	00000793          	li	a5,0
10002cd4:	0800006f          	j	10002d54 <XUartLite_RepeatRecv+0xc4>

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002cd8:	fdc42783          	lw	a5,-36(s0)
10002cdc:	01c7a783          	lw	a5,28(a5)
10002ce0:	00878793          	addi	a5,a5,8
10002ce4:	00078513          	mv	a0,a5
10002ce8:	825ff0ef          	jal	ra,1000250c <Xil_In32>
10002cec:	fea42623          	sw	a0,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002cf0:	fdc42783          	lw	a5,-36(s0)
10002cf4:	01c7a783          	lw	a5,28(a5)
10002cf8:	00c78793          	addi	a5,a5,12
10002cfc:	00000593          	li	a1,0
10002d00:	00078513          	mv	a0,a5
10002d04:	831ff0ef          	jal	ra,10002534 <Xil_Out32>

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
10002d08:	fdc42783          	lw	a5,-36(s0)
10002d0c:	fd442703          	lw	a4,-44(s0)
10002d10:	04e7aa23          	sw	a4,84(a5)
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
10002d14:	fdc42783          	lw	a5,-36(s0)
10002d18:	fd442703          	lw	a4,-44(s0)
10002d1c:	04e7ac23          	sw	a4,88(a5)
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
10002d20:	fdc42783          	lw	a5,-36(s0)
10002d24:	fd842703          	lw	a4,-40(s0)
10002d28:	04e7a823          	sw	a4,80(a5)

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
10002d2c:	fec42783          	lw	a5,-20(s0)
10002d30:	0107f793          	andi	a5,a5,16
10002d34:	fef42623          	sw	a5,-20(s0)
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002d38:	fdc42783          	lw	a5,-36(s0)
10002d3c:	01c7a783          	lw	a5,28(a5)
10002d40:	00c78793          	addi	a5,a5,12
10002d44:	fec42583          	lw	a1,-20(s0)
10002d48:	00078513          	mv	a0,a5
10002d4c:	fe8ff0ef          	jal	ra,10002534 <Xil_Out32>
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    //ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

    return ReceivedCount;
10002d50:	fe842783          	lw	a5,-24(s0)

}
10002d54:	00078513          	mv	a0,a5
10002d58:	02c12083          	lw	ra,44(sp)
10002d5c:	02812403          	lw	s0,40(sp)
10002d60:	03010113          	addi	sp,sp,48
10002d64:	00008067          	ret

10002d68 <XUartLite_Send>:
//    }
//}

unsigned int XUartLite_Send(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
				unsigned int NumBytes)
{
10002d68:	fd010113          	addi	sp,sp,-48
10002d6c:	02112623          	sw	ra,44(sp)
10002d70:	02812423          	sw	s0,40(sp)
10002d74:	03010413          	addi	s0,sp,48
10002d78:	fca42e23          	sw	a0,-36(s0)
10002d7c:	fcb42c23          	sw	a1,-40(s0)
10002d80:	fcc42a23          	sw	a2,-44(s0)
	uint32_t StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002d84:	fdc42783          	lw	a5,-36(s0)
10002d88:	02078063          	beqz	a5,10002da8 <XUartLite_Send+0x40>
10002d8c:	fd842783          	lw	a5,-40(s0)
10002d90:	00078c63          	beqz	a5,10002da8 <XUartLite_Send+0x40>
10002d94:	fdc42783          	lw	a5,-36(s0)
10002d98:	0207a703          	lw	a4,32(a5)
10002d9c:	111117b7          	lui	a5,0x11111
10002da0:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002da4:	00f70663          	beq	a4,a5,10002db0 <XUartLite_Send+0x48>
        return 0;
10002da8:	00000793          	li	a5,0
10002dac:	08c0006f          	j	10002e38 <XUartLite_Send+0xd0>

	/*
	 * Enter a critical region by disabling the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven.
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
10002db0:	fdc42783          	lw	a5,-36(s0)
10002db4:	01c7a783          	lw	a5,28(a5)
10002db8:	00878793          	addi	a5,a5,8
10002dbc:	00078513          	mv	a0,a5
10002dc0:	f4cff0ef          	jal	ra,1000250c <Xil_In32>
10002dc4:	fea42623          	sw	a0,-20(s0)

	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002dc8:	fdc42783          	lw	a5,-36(s0)
10002dcc:	01c7a783          	lw	a5,28(a5)
10002dd0:	00c78793          	addi	a5,a5,12
10002dd4:	00000593          	li	a1,0
10002dd8:	00078513          	mv	a0,a5
10002ddc:	f58ff0ef          	jal	ra,10002534 <Xil_Out32>

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
10002de0:	fdc42783          	lw	a5,-36(s0)
10002de4:	fd442703          	lw	a4,-44(s0)
10002de8:	04e7a223          	sw	a4,68(a5)
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
10002dec:	fdc42783          	lw	a5,-36(s0)
10002df0:	fd442703          	lw	a4,-44(s0)
10002df4:	04e7a423          	sw	a4,72(a5)
	InstancePtr->SendBuffer.NextBytePtr = DataBufferPtr;
10002df8:	fdc42783          	lw	a5,-36(s0)
10002dfc:	fd842703          	lw	a4,-40(s0)
10002e00:	04e7a023          	sw	a4,64(a5)
	 * This is done here to minimize the amount of time the interrupt is
	 * disabled since there is only one interrupt and the receive could
	 * be filling up while interrupts are blocked.
	 */

	StatusRegister &= XUL_CR_ENABLE_INTR;
10002e04:	fec42783          	lw	a5,-20(s0)
10002e08:	0107f793          	andi	a5,a5,16
10002e0c:	fef42623          	sw	a5,-20(s0)
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002e10:	fdc42783          	lw	a5,-36(s0)
10002e14:	01c7a783          	lw	a5,28(a5)
10002e18:	00c78793          	addi	a5,a5,12
10002e1c:	fec42583          	lw	a1,-20(s0)
10002e20:	00078513          	mv	a0,a5
10002e24:	f10ff0ef          	jal	ra,10002534 <Xil_Out32>
				XUL_CONTROL_REG_OFFSET, StatusRegister);

	/*
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);
10002e28:	fdc42503          	lw	a0,-36(s0)
10002e2c:	829ff0ef          	jal	ra,10002654 <XUartLite_SendBuffer>
10002e30:	fea42423          	sw	a0,-24(s0)

	return BytesSent;
10002e34:	fe842783          	lw	a5,-24(s0)
}
10002e38:	00078513          	mv	a0,a5
10002e3c:	02c12083          	lw	ra,44(sp)
10002e40:	02812403          	lw	s0,40(sp)
10002e44:	03010113          	addi	sp,sp,48
10002e48:	00008067          	ret

10002e4c <XUartLite_EnableInterrupt>:

void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
10002e4c:	fe010113          	addi	sp,sp,-32
10002e50:	00112e23          	sw	ra,28(sp)
10002e54:	00812c23          	sw	s0,24(sp)
10002e58:	02010413          	addi	s0,sp,32
10002e5c:	fea42623          	sw	a0,-20(s0)
    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002e60:	fec42783          	lw	a5,-20(s0)
10002e64:	01c7a783          	lw	a5,28(a5)
10002e68:	00c78793          	addi	a5,a5,12
10002e6c:	01000593          	li	a1,16
10002e70:	00078513          	mv	a0,a5
10002e74:	ec0ff0ef          	jal	ra,10002534 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR);
}
10002e78:	00000013          	nop
10002e7c:	01c12083          	lw	ra,28(sp)
10002e80:	01812403          	lw	s0,24(sp)
10002e84:	02010113          	addi	sp,sp,32
10002e88:	00008067          	ret

10002e8c <XUartLite_DisableInterrupt>:
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
10002e8c:	fe010113          	addi	sp,sp,-32
10002e90:	00112e23          	sw	ra,28(sp)
10002e94:	00812c23          	sw	s0,24(sp)
10002e98:	02010413          	addi	s0,sp,32
10002e9c:	fea42623          	sw	a0,-20(s0)
    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
10002ea0:	fec42783          	lw	a5,-20(s0)
10002ea4:	01c7a783          	lw	a5,28(a5)
10002ea8:	00c78793          	addi	a5,a5,12
10002eac:	00000593          	li	a1,0
10002eb0:	00078513          	mv	a0,a5
10002eb4:	e80ff0ef          	jal	ra,10002534 <Xil_Out32>
                XUL_CONTROL_REG_OFFSET, 0);
}
10002eb8:	00000013          	nop
10002ebc:	01c12083          	lw	ra,28(sp)
10002ec0:	01812403          	lw	s0,24(sp)
10002ec4:	02010113          	addi	sp,sp,32
10002ec8:	00008067          	ret

10002ecc <XUartLite_ResetFifos>:

void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
10002ecc:	fd010113          	addi	sp,sp,-48
10002ed0:	02112623          	sw	ra,44(sp)
10002ed4:	02812423          	sw	s0,40(sp)
10002ed8:	03010413          	addi	s0,sp,48
10002edc:	fca42e23          	sw	a0,-36(s0)
	uint32_t Register;

    if(!(InstancePtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
10002ee0:	fdc42783          	lw	a5,-36(s0)
10002ee4:	06078063          	beqz	a5,10002f44 <XUartLite_ResetFifos+0x78>
10002ee8:	fdc42783          	lw	a5,-36(s0)
10002eec:	0207a703          	lw	a4,32(a5)
10002ef0:	111117b7          	lui	a5,0x11111
10002ef4:	11178793          	addi	a5,a5,273 # 11111111 <STACK_BASE_ADDR+0x10f1115>
10002ef8:	04f71663          	bne	a4,a5,10002f44 <XUartLite_ResetFifos+0x78>

	/*
	 * Read the status register 1st such that the next write to the control
	 * register won't destroy the state of the interrupt enable bit
	 */
	Register = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
10002efc:	fdc42783          	lw	a5,-36(s0)
10002f00:	01c7a783          	lw	a5,28(a5)
10002f04:	00878793          	addi	a5,a5,8
10002f08:	00078513          	mv	a0,a5
10002f0c:	e00ff0ef          	jal	ra,1000250c <Xil_In32>
10002f10:	fea42623          	sw	a0,-20(s0)
					XUL_STATUS_REG_OFFSET);

	/*
	 * Mask off the interrupt enable bit to maintain it's state.
	 */
	Register &= XUL_SR_INTR_ENABLED;
10002f14:	fec42783          	lw	a5,-20(s0)
10002f18:	0107f793          	andi	a5,a5,16
10002f1c:	fef42623          	sw	a5,-20(s0)

	/*
	 * Write to the control register to reset both FIFOs, these bits are
	 * self-clearing such that there's no need to clear them
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
10002f20:	fdc42783          	lw	a5,-36(s0)
10002f24:	01c7a783          	lw	a5,28(a5)
10002f28:	00c78713          	addi	a4,a5,12
10002f2c:	fec42783          	lw	a5,-20(s0)
10002f30:	0037e793          	ori	a5,a5,3
10002f34:	00078593          	mv	a1,a5
10002f38:	00070513          	mv	a0,a4
10002f3c:	df8ff0ef          	jal	ra,10002534 <Xil_Out32>
10002f40:	0080006f          	j	10002f48 <XUartLite_ResetFifos+0x7c>
        return;
10002f44:	00000013          	nop
			Register | XUL_CR_FIFO_TX_RESET | XUL_CR_FIFO_RX_RESET);
}
10002f48:	02c12083          	lw	ra,44(sp)
10002f4c:	02812403          	lw	s0,40(sp)
10002f50:	03010113          	addi	sp,sp,48
10002f54:	00008067          	ret

10002f58 <XUartLite_RxUnlock>:
//            //TODO do something to align the Protocol
//	}
//    }
//    return 0;
//}
void XUartLite_RxUnlock(XUartLite * inst){
10002f58:	fe010113          	addi	sp,sp,-32
10002f5c:	00812e23          	sw	s0,28(sp)
10002f60:	02010413          	addi	s0,sp,32
10002f64:	fea42623          	sw	a0,-20(s0)
    inst->ReceiveBuffer.locked = 0;
10002f68:	fec42783          	lw	a5,-20(s0)
10002f6c:	0407ae23          	sw	zero,92(a5)
}
10002f70:	00000013          	nop
10002f74:	01c12403          	lw	s0,28(sp)
10002f78:	02010113          	addi	sp,sp,32
10002f7c:	00008067          	ret

10002f80 <hw_uart0_is_valid>:

int hw_uart0_is_valid(){
10002f80:	ff010113          	addi	sp,sp,-16
10002f84:	00812623          	sw	s0,12(sp)
10002f88:	01010413          	addi	s0,sp,16
    return (*(uint32_t *)UARTLITE_BASEADDR_0)& 0x1;
10002f8c:	010007b7          	lui	a5,0x1000
10002f90:	0007a783          	lw	a5,0(a5) # 1000000 <DTCM+0xff8000>
10002f94:	0017f793          	andi	a5,a5,1
}
10002f98:	00078513          	mv	a0,a5
10002f9c:	00c12403          	lw	s0,12(sp)
10002fa0:	01010113          	addi	sp,sp,16
10002fa4:	00008067          	ret

10002fa8 <hw_uart0_get_data>:
void hw_uart0_get_data(uint8_t * buffer){
10002fa8:	fd010113          	addi	sp,sp,-48
10002fac:	02812623          	sw	s0,44(sp)
10002fb0:	03010413          	addi	s0,sp,48
10002fb4:	fca42e23          	sw	a0,-36(s0)
    int size = 15;//15*4==60, 27's protocol is 60 byte;
10002fb8:	00f00793          	li	a5,15
10002fbc:	fef42423          	sw	a5,-24(s0)
    for(int i = 0; i< size ; i++){
10002fc0:	fe042623          	sw	zero,-20(s0)
10002fc4:	0480006f          	j	1000300c <hw_uart0_get_data+0x64>
        *(uint32_t*)(buffer + i*4) = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
10002fc8:	fec42783          	lw	a5,-20(s0)
10002fcc:	00178793          	addi	a5,a5,1
10002fd0:	00279793          	slli	a5,a5,0x2
10002fd4:	00078713          	mv	a4,a5
10002fd8:	010007b7          	lui	a5,0x1000
10002fdc:	00f707b3          	add	a5,a4,a5
10002fe0:	00078713          	mv	a4,a5
10002fe4:	fec42783          	lw	a5,-20(s0)
10002fe8:	00279793          	slli	a5,a5,0x2
10002fec:	00078693          	mv	a3,a5
10002ff0:	fdc42783          	lw	a5,-36(s0)
10002ff4:	00d787b3          	add	a5,a5,a3
10002ff8:	00072703          	lw	a4,0(a4)
10002ffc:	00e7a023          	sw	a4,0(a5) # 1000000 <DTCM+0xff8000>
    for(int i = 0; i< size ; i++){
10003000:	fec42783          	lw	a5,-20(s0)
10003004:	00178793          	addi	a5,a5,1
10003008:	fef42623          	sw	a5,-20(s0)
1000300c:	fec42703          	lw	a4,-20(s0)
10003010:	fe842783          	lw	a5,-24(s0)
10003014:	faf74ae3          	blt	a4,a5,10002fc8 <hw_uart0_get_data+0x20>
    }
    //for(int i = 0; i< size ; i++){
    //    uint32_t temp = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
    //    *(uint32_t*)(buffer + i*4) = (temp>>24)|((temp&0x00ff0000)>>8)|((temp&0x0000ff00)<<8)|((temp&0x000000ff)<<24);
    //}
}
10003018:	00000013          	nop
1000301c:	02c12403          	lw	s0,44(sp)
10003020:	03010113          	addi	sp,sp,48
10003024:	00008067          	ret

10003028 <hw_uart0_clr_state>:
void hw_uart0_clr_state(){
10003028:	ff010113          	addi	sp,sp,-16
1000302c:	00812623          	sw	s0,12(sp)
10003030:	01010413          	addi	s0,sp,16
    *(uint32_t *)UARTLITE_BASEADDR_0 = 0;
10003034:	010007b7          	lui	a5,0x1000
10003038:	0007a023          	sw	zero,0(a5) # 1000000 <DTCM+0xff8000>
}
1000303c:	00000013          	nop
10003040:	00c12403          	lw	s0,12(sp)
10003044:	01010113          	addi	sp,sp,16
10003048:	00008067          	ret

1000304c <XUartLite_SendAll>:
void XUartLite_SendAll(XUartLite *InstancePtr, uint8_t *DataBufferPtr, unsigned int NumBytes) {
1000304c:	fd010113          	addi	sp,sp,-48
10003050:	02112623          	sw	ra,44(sp)
10003054:	02812423          	sw	s0,40(sp)
10003058:	03010413          	addi	s0,sp,48
1000305c:	fca42e23          	sw	a0,-36(s0)
10003060:	fcb42c23          	sw	a1,-40(s0)
10003064:	fcc42a23          	sw	a2,-44(s0)
    int sentbytes=0;
10003068:	fe042623          	sw	zero,-20(s0)
    int remainbytes = NumBytes;
1000306c:	fd442783          	lw	a5,-44(s0)
10003070:	fef42423          	sw	a5,-24(s0)
    while(sentbytes<NumBytes){
10003074:	0440006f          	j	100030b8 <XUartLite_SendAll+0x6c>
        sentbytes += XUartLite_Send(InstancePtr, DataBufferPtr + sentbytes  , remainbytes);
10003078:	fec42783          	lw	a5,-20(s0)
1000307c:	fd842703          	lw	a4,-40(s0)
10003080:	00f707b3          	add	a5,a4,a5
10003084:	fe842703          	lw	a4,-24(s0)
10003088:	00070613          	mv	a2,a4
1000308c:	00078593          	mv	a1,a5
10003090:	fdc42503          	lw	a0,-36(s0)
10003094:	cd5ff0ef          	jal	ra,10002d68 <XUartLite_Send>
10003098:	00050713          	mv	a4,a0
1000309c:	fec42783          	lw	a5,-20(s0)
100030a0:	00f707b3          	add	a5,a4,a5
100030a4:	fef42623          	sw	a5,-20(s0)
        remainbytes = NumBytes - sentbytes;
100030a8:	fec42783          	lw	a5,-20(s0)
100030ac:	fd442703          	lw	a4,-44(s0)
100030b0:	40f707b3          	sub	a5,a4,a5
100030b4:	fef42423          	sw	a5,-24(s0)
    while(sentbytes<NumBytes){
100030b8:	fec42783          	lw	a5,-20(s0)
100030bc:	fd442703          	lw	a4,-44(s0)
100030c0:	fae7ece3          	bltu	a5,a4,10003078 <XUartLite_SendAll+0x2c>
    }
}
100030c4:	00000013          	nop
100030c8:	02c12083          	lw	ra,44(sp)
100030cc:	02812403          	lw	s0,40(sp)
100030d0:	03010113          	addi	sp,sp,48
100030d4:	00008067          	ret

100030d8 <demo_reg_write>:
#include "p2p_demo.h"

#define CLOCK 250 * 1000 * 1000

void demo_reg_write(int addr, uint32_t data)
{
100030d8:	fe010113          	addi	sp,sp,-32
100030dc:	00812e23          	sw	s0,28(sp)
100030e0:	02010413          	addi	s0,sp,32
100030e4:	fea42623          	sw	a0,-20(s0)
100030e8:	feb42423          	sw	a1,-24(s0)
    // KRNL_LOG_INFO(LOG_SYSTEM, "start registers write | addr: %08x, data:%08x", addr, data);
    *((volatile int *)addr) = data;
100030ec:	fec42783          	lw	a5,-20(s0)
100030f0:	fe842703          	lw	a4,-24(s0)
100030f4:	00e7a023          	sw	a4,0(a5)

    // KRNL_LOG_INFO(LOG_SYSTEM, "finish register write | addr: %08x, data:%08x", addr, data);
}
100030f8:	00000013          	nop
100030fc:	01c12403          	lw	s0,28(sp)
10003100:	02010113          	addi	sp,sp,32
10003104:	00008067          	ret

10003108 <demo_reg_read>:

uint32_t demo_reg_read(uint32_t addr)
{
10003108:	fd010113          	addi	sp,sp,-48
1000310c:	02812623          	sw	s0,44(sp)
10003110:	03010413          	addi	s0,sp,48
10003114:	fca42e23          	sw	a0,-36(s0)

    // KRNL_LOG_INFO(LOG_SYSTEM, "RD Reg|A:%08x", addr);
    uint32_t data = *((volatile int *)addr);
10003118:	fdc42783          	lw	a5,-36(s0)
1000311c:	0007a783          	lw	a5,0(a5)
10003120:	fef42623          	sw	a5,-20(s0)
    return data;
10003124:	fec42783          	lw	a5,-20(s0)
}
10003128:	00078513          	mv	a0,a5
1000312c:	02c12403          	lw	s0,44(sp)
10003130:	03010113          	addi	sp,sp,48
10003134:	00008067          	ret

10003138 <dma_check>:
    source data begin at 0x00000000
    result begin at 0x80000000

*/
int dma_check()
{
10003138:	ff010113          	addi	sp,sp,-16
1000313c:	00812623          	sw	s0,12(sp)
10003140:	01010413          	addi	s0,sp,16
    return (3 - *(volatile int *)(DMA_STATUS));
10003144:	000147b7          	lui	a5,0x14
10003148:	00478793          	addi	a5,a5,4 # 14004 <DTCM+0xc004>
1000314c:	0007a783          	lw	a5,0(a5)
10003150:	00300713          	li	a4,3
10003154:	40f707b3          	sub	a5,a4,a5
}
10003158:	00078513          	mv	a0,a5
1000315c:	00c12403          	lw	s0,12(sp)
10003160:	01010113          	addi	sp,sp,16
10003164:	00008067          	ret

10003168 <dma_set_done>:

void dma_set_done(int done)
{
10003168:	fe010113          	addi	sp,sp,-32
1000316c:	00812e23          	sw	s0,28(sp)
10003170:	02010413          	addi	s0,sp,32
10003174:	fea42623          	sw	a0,-20(s0)
    *(volatile int *)(DMA_STATUS) = done;
10003178:	000147b7          	lui	a5,0x14
1000317c:	00478793          	addi	a5,a5,4 # 14004 <DTCM+0xc004>
10003180:	fec42703          	lw	a4,-20(s0)
10003184:	00e7a023          	sw	a4,0(a5)
    // int dma_status = *(volatile int*)(DMA_STATUS);
    // KRNL_LOG_INFO(LOG_SYSTEM, "DMA_STATUS:%08d", "PRINT", dma_status);
}
10003188:	00000013          	nop
1000318c:	01c12403          	lw	s0,28(sp)
10003190:	02010113          	addi	sp,sp,32
10003194:	00008067          	ret

10003198 <fetchDMA>:

void fetchDMA(uint32_t ddr_addr, uint32_t lm_addr_i, uint32_t len)
{
10003198:	bd010113          	addi	sp,sp,-1072
1000319c:	42112623          	sw	ra,1068(sp)
100031a0:	42812423          	sw	s0,1064(sp)
100031a4:	43010413          	addi	s0,sp,1072
100031a8:	bca42e23          	sw	a0,-1060(s0)
100031ac:	bcb42c23          	sw	a1,-1064(s0)
100031b0:	bcc42a23          	sw	a2,-1068(s0)
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
100031b4:	bd442783          	lw	a5,-1068(s0)
100031b8:	03f7f793          	andi	a5,a5,63
100031bc:	00079863          	bnez	a5,100031cc <fetchDMA+0x34>
    {
        len_align = len;
100031c0:	bd442783          	lw	a5,-1068(s0)
100031c4:	fef42623          	sw	a5,-20(s0)
100031c8:	0140006f          	j	100031dc <fetchDMA+0x44>
    }
    else
    {
        len_align = ((len + 63) / 64) * 64;
100031cc:	bd442783          	lw	a5,-1068(s0)
100031d0:	03f78793          	addi	a5,a5,63
100031d4:	fc07f793          	andi	a5,a5,-64
100031d8:	fef42623          	sw	a5,-20(s0)
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_i_ = lm_addr_i >> 6;
100031dc:	bd842783          	lw	a5,-1064(s0)
100031e0:	0067d793          	srli	a5,a5,0x6
100031e4:	fef42423          	sw	a5,-24(s0)
    int p_ld_option[1] = {0 | (0x1 << 20) | (0x1 << 16)};
100031e8:	001107b7          	lui	a5,0x110
100031ec:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "start fetch");
100031f0:	100117b7          	lui	a5,0x10011
100031f4:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100031f8:	04078463          	beqz	a5,10003240 <fetchDMA+0xa8>
100031fc:	be440793          	addi	a5,s0,-1052
10003200:	40000713          	li	a4,1024
10003204:	00070613          	mv	a2,a4
10003208:	00000593          	li	a1,0
1000320c:	00078513          	mv	a0,a5
10003210:	9a4ff0ef          	jal	ra,100023b4 <memset>
10003214:	be440713          	addi	a4,s0,-1052
10003218:	100107b7          	lui	a5,0x10010
1000321c:	2d878613          	addi	a2,a5,728 # 100102d8 <p2p_demo+0xc634>
10003220:	3ff00593          	li	a1,1023
10003224:	00070513          	mv	a0,a4
10003228:	fc5fe0ef          	jal	ra,100021ec <snprintf_>
1000322c:	be440793          	addi	a5,s0,-1052
10003230:	00078593          	mv	a1,a5
10003234:	00400513          	li	a0,4
10003238:	b38fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000323c:	0080006f          	j	10003244 <fetchDMA+0xac>
10003240:	00000013          	nop
    *((volatile uint32_t *)DMA_LD_DDR_ADDR) = (uint32_t)ddr_addr;
10003244:	000147b7          	lui	a5,0x14
10003248:	00878793          	addi	a5,a5,8 # 14008 <DTCM+0xc008>
1000324c:	bdc42703          	lw	a4,-1060(s0)
10003250:	00e7a023          	sw	a4,0(a5)
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
10003254:	100117b7          	lui	a5,0x10011
10003258:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
1000325c:	04078663          	beqz	a5,100032a8 <fetchDMA+0x110>
10003260:	be440793          	addi	a5,s0,-1052
10003264:	40000713          	li	a4,1024
10003268:	00070613          	mv	a2,a4
1000326c:	00000593          	li	a1,0
10003270:	00078513          	mv	a0,a5
10003274:	940ff0ef          	jal	ra,100023b4 <memset>
10003278:	be440713          	addi	a4,s0,-1052
1000327c:	bdc42683          	lw	a3,-1060(s0)
10003280:	100107b7          	lui	a5,0x10010
10003284:	2e878613          	addi	a2,a5,744 # 100102e8 <p2p_demo+0xc644>
10003288:	3ff00593          	li	a1,1023
1000328c:	00070513          	mv	a0,a4
10003290:	f5dfe0ef          	jal	ra,100021ec <snprintf_>
10003294:	be440793          	addi	a5,s0,-1052
10003298:	00078593          	mv	a1,a5
1000329c:	00400513          	li	a0,4
100032a0:	ad0fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100032a4:	0080006f          	j	100032ac <fetchDMA+0x114>
100032a8:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_i);
100032ac:	100117b7          	lui	a5,0x10011
100032b0:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100032b4:	04078663          	beqz	a5,10003300 <fetchDMA+0x168>
100032b8:	be440793          	addi	a5,s0,-1052
100032bc:	40000713          	li	a4,1024
100032c0:	00070613          	mv	a2,a4
100032c4:	00000593          	li	a1,0
100032c8:	00078513          	mv	a0,a5
100032cc:	8e8ff0ef          	jal	ra,100023b4 <memset>
100032d0:	be440713          	addi	a4,s0,-1052
100032d4:	bd842683          	lw	a3,-1064(s0)
100032d8:	100107b7          	lui	a5,0x10010
100032dc:	2fc78613          	addi	a2,a5,764 # 100102fc <p2p_demo+0xc658>
100032e0:	3ff00593          	li	a1,1023
100032e4:	00070513          	mv	a0,a4
100032e8:	f05fe0ef          	jal	ra,100021ec <snprintf_>
100032ec:	be440793          	addi	a5,s0,-1052
100032f0:	00078593          	mv	a1,a5
100032f4:	00400513          	li	a0,4
100032f8:	a78fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100032fc:	0080006f          	j	10003304 <fetchDMA+0x16c>
10003300:	00000013          	nop
    *(volatile int *)(DMA_LD_LEN) = (int)(len_align >> 6);
10003304:	fec42783          	lw	a5,-20(s0)
10003308:	0067d713          	srli	a4,a5,0x6
1000330c:	000147b7          	lui	a5,0x14
10003310:	01078793          	addi	a5,a5,16 # 14010 <DTCM+0xc010>
10003314:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_LD_LM_ADDR) = (int)(lm_addr_i_);
10003318:	000147b7          	lui	a5,0x14
1000331c:	00c78793          	addi	a5,a5,12 # 1400c <DTCM+0xc00c>
10003320:	fe842703          	lw	a4,-24(s0)
10003324:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_LD_CONCAT) = (int)(len_align >> 6);
10003328:	fec42783          	lw	a5,-20(s0)
1000332c:	0067d713          	srli	a4,a5,0x6
10003330:	000147b7          	lui	a5,0x14
10003334:	02478793          	addi	a5,a5,36 # 14024 <DTCM+0xc024>
10003338:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_OPTION) = (int)(p_ld_option[0]);
1000333c:	000147b7          	lui	a5,0x14
10003340:	01478793          	addi	a5,a5,20 # 14014 <DTCM+0xc014>
10003344:	fe442703          	lw	a4,-28(s0)
10003348:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_CTRL) = (int)1;
1000334c:	000147b7          	lui	a5,0x14
10003350:	00100713          	li	a4,1
10003354:	00e7a023          	sw	a4,0(a5) # 14000 <DTCM+0xc000>
}
10003358:	00000013          	nop
1000335c:	42c12083          	lw	ra,1068(sp)
10003360:	42812403          	lw	s0,1064(sp)
10003364:	43010113          	addi	sp,sp,1072
10003368:	00008067          	ret

1000336c <putDMA>:


void putDMA(int ddr_addr, int lm_addr_o, int len)
{
1000336c:	bd010113          	addi	sp,sp,-1072
10003370:	42112623          	sw	ra,1068(sp)
10003374:	42812423          	sw	s0,1064(sp)
10003378:	43010413          	addi	s0,sp,1072
1000337c:	bca42e23          	sw	a0,-1060(s0)
10003380:	bcb42c23          	sw	a1,-1064(s0)
10003384:	bcc42a23          	sw	a2,-1068(s0)
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
10003388:	bd442783          	lw	a5,-1068(s0)
1000338c:	03f7f793          	andi	a5,a5,63
10003390:	00079863          	bnez	a5,100033a0 <putDMA+0x34>
    {
        len_align = len;
10003394:	bd442783          	lw	a5,-1068(s0)
10003398:	fef42623          	sw	a5,-20(s0)
1000339c:	0240006f          	j	100033c0 <putDMA+0x54>
    }
    else
    {
        len_align = ((len / 64) + 1) * 64;
100033a0:	bd442783          	lw	a5,-1068(s0)
100033a4:	41f7d713          	srai	a4,a5,0x1f
100033a8:	03f77713          	andi	a4,a4,63
100033ac:	00f707b3          	add	a5,a4,a5
100033b0:	4067d793          	srai	a5,a5,0x6
100033b4:	00178793          	addi	a5,a5,1
100033b8:	00679793          	slli	a5,a5,0x6
100033bc:	fef42623          	sw	a5,-20(s0)
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_o_ = lm_addr_o >> 6;
100033c0:	bd842783          	lw	a5,-1064(s0)
100033c4:	4067d793          	srai	a5,a5,0x6
100033c8:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "start put");
100033cc:	100117b7          	lui	a5,0x10011
100033d0:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100033d4:	04078463          	beqz	a5,1000341c <putDMA+0xb0>
100033d8:	be840793          	addi	a5,s0,-1048
100033dc:	40000713          	li	a4,1024
100033e0:	00070613          	mv	a2,a4
100033e4:	00000593          	li	a1,0
100033e8:	00078513          	mv	a0,a5
100033ec:	fc9fe0ef          	jal	ra,100023b4 <memset>
100033f0:	be840713          	addi	a4,s0,-1048
100033f4:	100107b7          	lui	a5,0x10010
100033f8:	31478613          	addi	a2,a5,788 # 10010314 <p2p_demo+0xc670>
100033fc:	3ff00593          	li	a1,1023
10003400:	00070513          	mv	a0,a4
10003404:	de9fe0ef          	jal	ra,100021ec <snprintf_>
10003408:	be840793          	addi	a5,s0,-1048
1000340c:	00078593          	mv	a1,a5
10003410:	00400513          	li	a0,4
10003414:	95cfd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003418:	0080006f          	j	10003420 <putDMA+0xb4>
1000341c:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
10003420:	100117b7          	lui	a5,0x10011
10003424:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003428:	04078663          	beqz	a5,10003474 <putDMA+0x108>
1000342c:	be840793          	addi	a5,s0,-1048
10003430:	40000713          	li	a4,1024
10003434:	00070613          	mv	a2,a4
10003438:	00000593          	li	a1,0
1000343c:	00078513          	mv	a0,a5
10003440:	f75fe0ef          	jal	ra,100023b4 <memset>
10003444:	be840713          	addi	a4,s0,-1048
10003448:	bdc42683          	lw	a3,-1060(s0)
1000344c:	100107b7          	lui	a5,0x10010
10003450:	2e878613          	addi	a2,a5,744 # 100102e8 <p2p_demo+0xc644>
10003454:	3ff00593          	li	a1,1023
10003458:	00070513          	mv	a0,a4
1000345c:	d91fe0ef          	jal	ra,100021ec <snprintf_>
10003460:	be840793          	addi	a5,s0,-1048
10003464:	00078593          	mv	a1,a5
10003468:	00400513          	li	a0,4
1000346c:	904fd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003470:	0080006f          	j	10003478 <putDMA+0x10c>
10003474:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_o);
10003478:	100117b7          	lui	a5,0x10011
1000347c:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003480:	04078663          	beqz	a5,100034cc <putDMA+0x160>
10003484:	be840793          	addi	a5,s0,-1048
10003488:	40000713          	li	a4,1024
1000348c:	00070613          	mv	a2,a4
10003490:	00000593          	li	a1,0
10003494:	00078513          	mv	a0,a5
10003498:	f1dfe0ef          	jal	ra,100023b4 <memset>
1000349c:	be840713          	addi	a4,s0,-1048
100034a0:	bd842683          	lw	a3,-1064(s0)
100034a4:	100107b7          	lui	a5,0x10010
100034a8:	2fc78613          	addi	a2,a5,764 # 100102fc <p2p_demo+0xc658>
100034ac:	3ff00593          	li	a1,1023
100034b0:	00070513          	mv	a0,a4
100034b4:	d39fe0ef          	jal	ra,100021ec <snprintf_>
100034b8:	be840793          	addi	a5,s0,-1048
100034bc:	00078593          	mv	a1,a5
100034c0:	00400513          	li	a0,4
100034c4:	8acfd0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100034c8:	0080006f          	j	100034d0 <putDMA+0x164>
100034cc:	00000013          	nop
    *(volatile int *)(DMA_ST_DDR_ADDR) = (int)ddr_addr;
100034d0:	000147b7          	lui	a5,0x14
100034d4:	01878793          	addi	a5,a5,24 # 14018 <DTCM+0xc018>
100034d8:	bdc42703          	lw	a4,-1060(s0)
100034dc:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_ST_LM_ADDR) = (int)lm_addr_o_;
100034e0:	000147b7          	lui	a5,0x14
100034e4:	01c78793          	addi	a5,a5,28 # 1401c <DTCM+0xc01c>
100034e8:	fe842703          	lw	a4,-24(s0)
100034ec:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_ST_LEN) = (int)(len_align >> 6);
100034f0:	fec42783          	lw	a5,-20(s0)
100034f4:	0067d713          	srli	a4,a5,0x6
100034f8:	000147b7          	lui	a5,0x14
100034fc:	02078793          	addi	a5,a5,32 # 14020 <DTCM+0xc020>
10003500:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_OPTION) = (int)((0x1 << 20) | (0x1 << 16));
10003504:	000147b7          	lui	a5,0x14
10003508:	01478793          	addi	a5,a5,20 # 14014 <DTCM+0xc014>
1000350c:	00110737          	lui	a4,0x110
10003510:	00e7a023          	sw	a4,0(a5)
    *(volatile int *)(DMA_CTRL) = (int)2;
10003514:	000147b7          	lui	a5,0x14
10003518:	00200713          	li	a4,2
1000351c:	00e7a023          	sw	a4,0(a5) # 14000 <DTCM+0xc000>
}
10003520:	00000013          	nop
10003524:	42c12083          	lw	ra,1068(sp)
10003528:	42812403          	lw	s0,1064(sp)
1000352c:	43010113          	addi	sp,sp,1072
10003530:	00008067          	ret

10003534 <IP>:

void IP(uint32_t dst_lm_addr, uint32_t src_lm_addr, uint32_t SliceSize, uint32_t PlusNum)
{
10003534:	bd010113          	addi	sp,sp,-1072
10003538:	42112623          	sw	ra,1068(sp)
1000353c:	42812423          	sw	s0,1064(sp)
10003540:	43010413          	addi	s0,sp,1072
10003544:	bca42e23          	sw	a0,-1060(s0)
10003548:	bcb42c23          	sw	a1,-1064(s0)
1000354c:	bcc42a23          	sw	a2,-1068(s0)
10003550:	bcd42823          	sw	a3,-1072(s0)
    uint32_t slicesize = ((SliceSize + 63) / 64) * 64;
10003554:	bd442783          	lw	a5,-1068(s0)
10003558:	03f78793          	addi	a5,a5,63
1000355c:	fc07f793          	andi	a5,a5,-64
10003560:	fef42623          	sw	a5,-20(s0)
    uint32_t res_dst_lm_addr = dst_lm_addr >> 6;
10003564:	bdc42783          	lw	a5,-1060(s0)
10003568:	0067d793          	srli	a5,a5,0x6
1000356c:	fef42423          	sw	a5,-24(s0)
    uint32_t res_src_lm_addr = src_lm_addr >> 6;
10003570:	bd842783          	lw	a5,-1064(s0)
10003574:	0067d793          	srli	a5,a5,0x6
10003578:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "_____IP______");
1000357c:	100117b7          	lui	a5,0x10011
10003580:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003584:	04078463          	beqz	a5,100035cc <IP+0x98>
10003588:	be440793          	addi	a5,s0,-1052
1000358c:	40000713          	li	a4,1024
10003590:	00070613          	mv	a2,a4
10003594:	00000593          	li	a1,0
10003598:	00078513          	mv	a0,a5
1000359c:	e19fe0ef          	jal	ra,100023b4 <memset>
100035a0:	be440713          	addi	a4,s0,-1052
100035a4:	100107b7          	lui	a5,0x10010
100035a8:	32478613          	addi	a2,a5,804 # 10010324 <p2p_demo+0xc680>
100035ac:	3ff00593          	li	a1,1023
100035b0:	00070513          	mv	a0,a4
100035b4:	c39fe0ef          	jal	ra,100021ec <snprintf_>
100035b8:	be440793          	addi	a5,s0,-1052
100035bc:	00078593          	mv	a1,a5
100035c0:	00400513          	li	a0,4
100035c4:	fadfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100035c8:	0080006f          	j	100035d0 <IP+0x9c>
100035cc:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "dst lm addr : %08x, src lm addr : %08x", dst_lm_addr, src_lm_addr);
100035d0:	100117b7          	lui	a5,0x10011
100035d4:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100035d8:	04078663          	beqz	a5,10003624 <IP+0xf0>
100035dc:	be440793          	addi	a5,s0,-1052
100035e0:	40000713          	li	a4,1024
100035e4:	00070613          	mv	a2,a4
100035e8:	00000593          	li	a1,0
100035ec:	00078513          	mv	a0,a5
100035f0:	dc5fe0ef          	jal	ra,100023b4 <memset>
100035f4:	be440513          	addi	a0,s0,-1052
100035f8:	bd842703          	lw	a4,-1064(s0)
100035fc:	bdc42683          	lw	a3,-1060(s0)
10003600:	100107b7          	lui	a5,0x10010
10003604:	33878613          	addi	a2,a5,824 # 10010338 <p2p_demo+0xc694>
10003608:	3ff00593          	li	a1,1023
1000360c:	be1fe0ef          	jal	ra,100021ec <snprintf_>
10003610:	be440793          	addi	a5,s0,-1052
10003614:	00078593          	mv	a1,a5
10003618:	00400513          	li	a0,4
1000361c:	f55fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003620:	0080006f          	j	10003628 <IP+0xf4>
10003624:	00000013          	nop
    *(volatile uint32_t *)NPU_CONV_FM = ((res_dst_lm_addr) & 0xFFFF) << 16 | ((res_src_lm_addr) & 0xFFFF);
10003628:	fe842783          	lw	a5,-24(s0)
1000362c:	01079693          	slli	a3,a5,0x10
10003630:	fe442703          	lw	a4,-28(s0)
10003634:	000107b7          	lui	a5,0x10
10003638:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
1000363c:	00f77733          	and	a4,a4,a5
10003640:	010117b7          	lui	a5,0x1011
10003644:	10078793          	addi	a5,a5,256 # 1011100 <DTCM+0x1009100>
10003648:	00e6e733          	or	a4,a3,a4
1000364c:	00e7a023          	sw	a4,0(a5)
    // KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV FM : %08x", *(volatile uint32_t*)NPU_CONV_FM);
    *(volatile uint32_t *)NPU_CONV_WBC = ((PlusNum) & 0xFFFF) << 16 | ((slicesize) & 0xFFFF);
10003650:	bd042783          	lw	a5,-1072(s0)
10003654:	01079693          	slli	a3,a5,0x10
10003658:	fec42703          	lw	a4,-20(s0)
1000365c:	000107b7          	lui	a5,0x10
10003660:	fff78793          	addi	a5,a5,-1 # ffff <DTCM+0x7fff>
10003664:	00f77733          	and	a4,a4,a5
10003668:	010117b7          	lui	a5,0x1011
1000366c:	10478793          	addi	a5,a5,260 # 1011104 <DTCM+0x1009104>
10003670:	00e6e733          	or	a4,a3,a4
10003674:	00e7a023          	sw	a4,0(a5)
    // KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV WBC : %08x", *(volatile uint32_t*)NPU_CONV_WBC);
    *(volatile uint32_t *)NPU_CTRL = 0x1;
10003678:	010107b7          	lui	a5,0x1010
1000367c:	00100713          	li	a4,1
10003680:	00e7a023          	sw	a4,0(a5) # 1010000 <DTCM+0x1008000>
}
10003684:	00000013          	nop
10003688:	42c12083          	lw	ra,1068(sp)
1000368c:	42812403          	lw	s0,1064(sp)
10003690:	43010113          	addi	sp,sp,1072
10003694:	00008067          	ret

10003698 <wait_ip>:

void wait_ip()
{
10003698:	bf010113          	addi	sp,sp,-1040
1000369c:	40112623          	sw	ra,1036(sp)
100036a0:	40812423          	sw	s0,1032(sp)
100036a4:	41010413          	addi	s0,sp,1040
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP OVER______");
100036a8:	100117b7          	lui	a5,0x10011
100036ac:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100036b0:	04078463          	beqz	a5,100036f8 <wait_ip+0x60>
100036b4:	bf040793          	addi	a5,s0,-1040
100036b8:	40000713          	li	a4,1024
100036bc:	00070613          	mv	a2,a4
100036c0:	00000593          	li	a1,0
100036c4:	00078513          	mv	a0,a5
100036c8:	cedfe0ef          	jal	ra,100023b4 <memset>
100036cc:	bf040713          	addi	a4,s0,-1040
100036d0:	100107b7          	lui	a5,0x10010
100036d4:	36478613          	addi	a2,a5,868 # 10010364 <p2p_demo+0xc6c0>
100036d8:	3ff00593          	li	a1,1023
100036dc:	00070513          	mv	a0,a4
100036e0:	b0dfe0ef          	jal	ra,100021ec <snprintf_>
100036e4:	bf040793          	addi	a5,s0,-1040
100036e8:	00078593          	mv	a1,a5
100036ec:	00400513          	li	a0,4
100036f0:	e81fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100036f4:	0080006f          	j	100036fc <wait_ip+0x64>
100036f8:	00000013          	nop
    while (!(*(volatile uint32_t *)NPU_STATUS1 & 0x1));
100036fc:	00000013          	nop
10003700:	010117b7          	lui	a5,0x1011
10003704:	00478793          	addi	a5,a5,4 # 1011004 <DTCM+0x1009004>
10003708:	0007a783          	lw	a5,0(a5)
1000370c:	0017f793          	andi	a5,a5,1
10003710:	fe0788e3          	beqz	a5,10003700 <wait_ip+0x68>
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP really OVER______");
10003714:	100117b7          	lui	a5,0x10011
10003718:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
1000371c:	00079663          	bnez	a5,10003728 <wait_ip+0x90>
10003720:	00000013          	nop
}
10003724:	0440006f          	j	10003768 <wait_ip+0xd0>
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP really OVER______");
10003728:	bf040793          	addi	a5,s0,-1040
1000372c:	40000713          	li	a4,1024
10003730:	00070613          	mv	a2,a4
10003734:	00000593          	li	a1,0
10003738:	00078513          	mv	a0,a5
1000373c:	c79fe0ef          	jal	ra,100023b4 <memset>
10003740:	bf040713          	addi	a4,s0,-1040
10003744:	100107b7          	lui	a5,0x10010
10003748:	37c78613          	addi	a2,a5,892 # 1001037c <p2p_demo+0xc6d8>
1000374c:	3ff00593          	li	a1,1023
10003750:	00070513          	mv	a0,a4
10003754:	a99fe0ef          	jal	ra,100021ec <snprintf_>
10003758:	bf040793          	addi	a5,s0,-1040
1000375c:	00078593          	mv	a1,a5
10003760:	00400513          	li	a0,4
10003764:	e0dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10003768:	00000013          	nop
1000376c:	40c12083          	lw	ra,1036(sp)
10003770:	40812403          	lw	s0,1032(sp)
10003774:	41010113          	addi	sp,sp,1040
10003778:	00008067          	ret

1000377c <all_proc_no_head>:


// end
uint32_t all_proc_no_head(uint32_t inbuf, uint32_t outbuf, uint32_t input_length, uint32_t plus)
{
1000377c:	bd010113          	addi	sp,sp,-1072
10003780:	42112623          	sw	ra,1068(sp)
10003784:	42812423          	sw	s0,1064(sp)
10003788:	43010413          	addi	s0,sp,1072
1000378c:	bca42e23          	sw	a0,-1060(s0)
10003790:	bcb42c23          	sw	a1,-1064(s0)
10003794:	bcc42a23          	sw	a2,-1068(s0)
10003798:	bcd42823          	sw	a3,-1072(s0)
    // inbuf : source data
    // outbuf : IP result in ddr
    // input_length
    // plus : plus num
    uint32_t slice_size = input_length * sizeof(uint8_t);
1000379c:	bd442783          	lw	a5,-1068(s0)
100037a0:	fef42623          	sw	a5,-20(s0)
    uint32_t data = (uint32_t)inbuf;
100037a4:	bdc42783          	lw	a5,-1060(s0)
100037a8:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "data: %08x", data);
100037ac:	100117b7          	lui	a5,0x10011
100037b0:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100037b4:	04078663          	beqz	a5,10003800 <all_proc_no_head+0x84>
100037b8:	be440793          	addi	a5,s0,-1052
100037bc:	40000713          	li	a4,1024
100037c0:	00070613          	mv	a2,a4
100037c4:	00000593          	li	a1,0
100037c8:	00078513          	mv	a0,a5
100037cc:	be9fe0ef          	jal	ra,100023b4 <memset>
100037d0:	be440713          	addi	a4,s0,-1052
100037d4:	fe842683          	lw	a3,-24(s0)
100037d8:	100107b7          	lui	a5,0x10010
100037dc:	39c78613          	addi	a2,a5,924 # 1001039c <p2p_demo+0xc6f8>
100037e0:	3ff00593          	li	a1,1023
100037e4:	00070513          	mv	a0,a4
100037e8:	a05fe0ef          	jal	ra,100021ec <snprintf_>
100037ec:	be440793          	addi	a5,s0,-1052
100037f0:	00078593          	mv	a1,a5
100037f4:	00400513          	li	a0,4
100037f8:	d79fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100037fc:	0080006f          	j	10003804 <all_proc_no_head+0x88>
10003800:	00000013          	nop
    uint32_t result = (uint32_t)outbuf;
10003804:	bd842783          	lw	a5,-1064(s0)
10003808:	fef42223          	sw	a5,-28(s0)

    dma_set_done(3);
1000380c:	00300513          	li	a0,3
10003810:	959ff0ef          	jal	ra,10003168 <dma_set_done>
    KRNL_LOG_INFO(LOG_SYSTEM, "dma set done");
10003814:	100117b7          	lui	a5,0x10011
10003818:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
1000381c:	04078463          	beqz	a5,10003864 <all_proc_no_head+0xe8>
10003820:	be440793          	addi	a5,s0,-1052
10003824:	40000713          	li	a4,1024
10003828:	00070613          	mv	a2,a4
1000382c:	00000593          	li	a1,0
10003830:	00078513          	mv	a0,a5
10003834:	b81fe0ef          	jal	ra,100023b4 <memset>
10003838:	be440713          	addi	a4,s0,-1052
1000383c:	100107b7          	lui	a5,0x10010
10003840:	3ac78613          	addi	a2,a5,940 # 100103ac <p2p_demo+0xc708>
10003844:	3ff00593          	li	a1,1023
10003848:	00070513          	mv	a0,a4
1000384c:	9a1fe0ef          	jal	ra,100021ec <snprintf_>
10003850:	be440793          	addi	a5,s0,-1052
10003854:	00078593          	mv	a1,a5
10003858:	00400513          	li	a0,4
1000385c:	d15fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003860:	0080006f          	j	10003868 <all_proc_no_head+0xec>
10003864:	00000013          	nop

    fetchDMA(data, (MMA_START_ADDR), slice_size);
10003868:	fec42603          	lw	a2,-20(s0)
1000386c:	00000593          	li	a1,0
10003870:	fe842503          	lw	a0,-24(s0)
10003874:	925ff0ef          	jal	ra,10003198 <fetchDMA>
    KRNL_LOG_INFO(LOG_SYSTEM, "DMA CHECK!");
10003878:	100117b7          	lui	a5,0x10011
1000387c:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003880:	04078463          	beqz	a5,100038c8 <all_proc_no_head+0x14c>
10003884:	be440793          	addi	a5,s0,-1052
10003888:	40000713          	li	a4,1024
1000388c:	00070613          	mv	a2,a4
10003890:	00000593          	li	a1,0
10003894:	00078513          	mv	a0,a5
10003898:	b1dfe0ef          	jal	ra,100023b4 <memset>
1000389c:	be440713          	addi	a4,s0,-1052
100038a0:	100107b7          	lui	a5,0x10010
100038a4:	3bc78613          	addi	a2,a5,956 # 100103bc <p2p_demo+0xc718>
100038a8:	3ff00593          	li	a1,1023
100038ac:	00070513          	mv	a0,a4
100038b0:	93dfe0ef          	jal	ra,100021ec <snprintf_>
100038b4:	be440793          	addi	a5,s0,-1052
100038b8:	00078593          	mv	a1,a5
100038bc:	00400513          	li	a0,4
100038c0:	cb1fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
100038c4:	0080006f          	j	100038cc <all_proc_no_head+0x150>
100038c8:	00000013          	nop
    DMA_CHECK;
100038cc:	00000013          	nop
100038d0:	869ff0ef          	jal	ra,10003138 <dma_check>
100038d4:	00050793          	mv	a5,a0
100038d8:	fe079ce3          	bnez	a5,100038d0 <all_proc_no_head+0x154>

    IP((MMA_BANK_RES_ADDR), (MMA_START_ADDR), slice_size, plus);
100038dc:	bd042683          	lw	a3,-1072(s0)
100038e0:	fec42603          	lw	a2,-20(s0)
100038e4:	00000593          	li	a1,0
100038e8:	00020537          	lui	a0,0x20
100038ec:	c49ff0ef          	jal	ra,10003534 <IP>
    KRNL_LOG_INFO(LOG_SYSTEM, "IP ###### is working");
100038f0:	100117b7          	lui	a5,0x10011
100038f4:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
100038f8:	04078463          	beqz	a5,10003940 <all_proc_no_head+0x1c4>
100038fc:	be440793          	addi	a5,s0,-1052
10003900:	40000713          	li	a4,1024
10003904:	00070613          	mv	a2,a4
10003908:	00000593          	li	a1,0
1000390c:	00078513          	mv	a0,a5
10003910:	aa5fe0ef          	jal	ra,100023b4 <memset>
10003914:	be440713          	addi	a4,s0,-1052
10003918:	100107b7          	lui	a5,0x10010
1000391c:	3cc78613          	addi	a2,a5,972 # 100103cc <p2p_demo+0xc728>
10003920:	3ff00593          	li	a1,1023
10003924:	00070513          	mv	a0,a4
10003928:	8c5fe0ef          	jal	ra,100021ec <snprintf_>
1000392c:	be440793          	addi	a5,s0,-1052
10003930:	00078593          	mv	a1,a5
10003934:	00400513          	li	a0,4
10003938:	c39fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
1000393c:	0080006f          	j	10003944 <all_proc_no_head+0x1c8>
10003940:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "start wait ip!!!!");
10003944:	100117b7          	lui	a5,0x10011
10003948:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
1000394c:	04078463          	beqz	a5,10003994 <all_proc_no_head+0x218>
10003950:	be440793          	addi	a5,s0,-1052
10003954:	40000713          	li	a4,1024
10003958:	00070613          	mv	a2,a4
1000395c:	00000593          	li	a1,0
10003960:	00078513          	mv	a0,a5
10003964:	a51fe0ef          	jal	ra,100023b4 <memset>
10003968:	be440713          	addi	a4,s0,-1052
1000396c:	100107b7          	lui	a5,0x10010
10003970:	3e478613          	addi	a2,a5,996 # 100103e4 <p2p_demo+0xc740>
10003974:	3ff00593          	li	a1,1023
10003978:	00070513          	mv	a0,a4
1000397c:	871fe0ef          	jal	ra,100021ec <snprintf_>
10003980:	be440793          	addi	a5,s0,-1052
10003984:	00078593          	mv	a1,a5
10003988:	00400513          	li	a0,4
1000398c:	be5fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003990:	0080006f          	j	10003998 <all_proc_no_head+0x21c>
10003994:	00000013          	nop
    wait_ip();
10003998:	d01ff0ef          	jal	ra,10003698 <wait_ip>

    putDMA((result), (MMA_BANK_RES_ADDR), slice_size);
1000399c:	fe442783          	lw	a5,-28(s0)
100039a0:	fec42703          	lw	a4,-20(s0)
100039a4:	00070613          	mv	a2,a4
100039a8:	000205b7          	lui	a1,0x20
100039ac:	00078513          	mv	a0,a5
100039b0:	9bdff0ef          	jal	ra,1000336c <putDMA>
    DMA_CHECK;
100039b4:	00000013          	nop
100039b8:	f80ff0ef          	jal	ra,10003138 <dma_check>
100039bc:	00050793          	mv	a5,a0
100039c0:	fe079ce3          	bnez	a5,100039b8 <all_proc_no_head+0x23c>
}
100039c4:	00000013          	nop
100039c8:	00078513          	mv	a0,a5
100039cc:	42c12083          	lw	ra,1068(sp)
100039d0:	42812403          	lw	s0,1064(sp)
100039d4:	43010113          	addi	sp,sp,1072
100039d8:	00008067          	ret

100039dc <test_uart_print>:

void test_uart_print()
{
100039dc:	be010113          	addi	sp,sp,-1056
100039e0:	40112e23          	sw	ra,1052(sp)
100039e4:	40812c23          	sw	s0,1048(sp)
100039e8:	42010413          	addi	s0,sp,1056
    uint32_t var = 0xdeadbeef;
100039ec:	deadc7b7          	lui	a5,0xdeadc
100039f0:	eef78793          	addi	a5,a5,-273 # deadbeef <STACK_BASE_ADDR+0xceabbef3>
100039f4:	fef42623          	sw	a5,-20(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
100039f8:	100117b7          	lui	a5,0x10011
100039fc:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003a00:	00079663          	bnez	a5,10003a0c <test_uart_print+0x30>
10003a04:	00000013          	nop
}
10003a08:	0500006f          	j	10003a58 <test_uart_print+0x7c>
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
10003a0c:	bec40793          	addi	a5,s0,-1044
10003a10:	40000713          	li	a4,1024
10003a14:	00070613          	mv	a2,a4
10003a18:	00000593          	li	a1,0
10003a1c:	00078513          	mv	a0,a5
10003a20:	995fe0ef          	jal	ra,100023b4 <memset>
10003a24:	bec40513          	addi	a0,s0,-1044
10003a28:	fec42783          	lw	a5,-20(s0)
10003a2c:	fec42703          	lw	a4,-20(s0)
10003a30:	100106b7          	lui	a3,0x10010
10003a34:	3fc68693          	addi	a3,a3,1020 # 100103fc <p2p_demo+0xc758>
10003a38:	10010637          	lui	a2,0x10010
10003a3c:	40460613          	addi	a2,a2,1028 # 10010404 <p2p_demo+0xc760>
10003a40:	3ff00593          	li	a1,1023
10003a44:	fa8fe0ef          	jal	ra,100021ec <snprintf_>
10003a48:	bec40793          	addi	a5,s0,-1044
10003a4c:	00078593          	mv	a1,a5
10003a50:	00400513          	li	a0,4
10003a54:	b1dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10003a58:	00000013          	nop
10003a5c:	41c12083          	lw	ra,1052(sp)
10003a60:	41812403          	lw	s0,1048(sp)
10003a64:	42010113          	addi	sp,sp,1056
10003a68:	00008067          	ret

10003a6c <all_proc_>:

void all_proc_()
{
10003a6c:	be010113          	addi	sp,sp,-1056
10003a70:	40112e23          	sw	ra,1052(sp)
10003a74:	40812c23          	sw	s0,1048(sp)
10003a78:	42010413          	addi	s0,sp,1056
    uint32_t length;
    uint32_t plus;

    // BASE H2C BRAM: the base addr of BRAM
    static uint32_t DDR_BASE_INFO = 0x20000000;
    in_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x0);
10003a7c:	100117b7          	lui	a5,0x10011
10003a80:	9947a783          	lw	a5,-1644(a5) # 10010994 <DDR_BASE_INFO.1766>
10003a84:	0007a783          	lw	a5,0(a5)
10003a88:	fef42623          	sw	a5,-20(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "in buf %08x", in_buf);
10003a8c:	100117b7          	lui	a5,0x10011
10003a90:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003a94:	04078663          	beqz	a5,10003ae0 <all_proc_+0x74>
10003a98:	be040793          	addi	a5,s0,-1056
10003a9c:	40000713          	li	a4,1024
10003aa0:	00070613          	mv	a2,a4
10003aa4:	00000593          	li	a1,0
10003aa8:	00078513          	mv	a0,a5
10003aac:	909fe0ef          	jal	ra,100023b4 <memset>
10003ab0:	be040713          	addi	a4,s0,-1056
10003ab4:	fec42683          	lw	a3,-20(s0)
10003ab8:	100107b7          	lui	a5,0x10010
10003abc:	43078613          	addi	a2,a5,1072 # 10010430 <p2p_demo+0xc78c>
10003ac0:	3ff00593          	li	a1,1023
10003ac4:	00070513          	mv	a0,a4
10003ac8:	f24fe0ef          	jal	ra,100021ec <snprintf_>
10003acc:	be040793          	addi	a5,s0,-1056
10003ad0:	00078593          	mv	a1,a5
10003ad4:	00400513          	li	a0,4
10003ad8:	a99fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003adc:	0080006f          	j	10003ae4 <all_proc_+0x78>
10003ae0:	00000013          	nop
    out_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x4);
10003ae4:	100117b7          	lui	a5,0x10011
10003ae8:	9947a783          	lw	a5,-1644(a5) # 10010994 <DDR_BASE_INFO.1766>
10003aec:	0047e793          	ori	a5,a5,4
10003af0:	0007a783          	lw	a5,0(a5)
10003af4:	fef42423          	sw	a5,-24(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "out buf %08x", out_buf);
10003af8:	100117b7          	lui	a5,0x10011
10003afc:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003b00:	04078663          	beqz	a5,10003b4c <all_proc_+0xe0>
10003b04:	be040793          	addi	a5,s0,-1056
10003b08:	40000713          	li	a4,1024
10003b0c:	00070613          	mv	a2,a4
10003b10:	00000593          	li	a1,0
10003b14:	00078513          	mv	a0,a5
10003b18:	89dfe0ef          	jal	ra,100023b4 <memset>
10003b1c:	be040713          	addi	a4,s0,-1056
10003b20:	fe842683          	lw	a3,-24(s0)
10003b24:	100107b7          	lui	a5,0x10010
10003b28:	44078613          	addi	a2,a5,1088 # 10010440 <p2p_demo+0xc79c>
10003b2c:	3ff00593          	li	a1,1023
10003b30:	00070513          	mv	a0,a4
10003b34:	eb8fe0ef          	jal	ra,100021ec <snprintf_>
10003b38:	be040793          	addi	a5,s0,-1056
10003b3c:	00078593          	mv	a1,a5
10003b40:	00400513          	li	a0,4
10003b44:	a2dfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003b48:	0080006f          	j	10003b50 <all_proc_+0xe4>
10003b4c:	00000013          	nop
    length = *(volatile uint32_t *)(DDR_BASE_INFO | 0x8);
10003b50:	100117b7          	lui	a5,0x10011
10003b54:	9947a783          	lw	a5,-1644(a5) # 10010994 <DDR_BASE_INFO.1766>
10003b58:	0087e793          	ori	a5,a5,8
10003b5c:	0007a783          	lw	a5,0(a5)
10003b60:	fef42223          	sw	a5,-28(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "slice length %08x", length);
10003b64:	100117b7          	lui	a5,0x10011
10003b68:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003b6c:	04078663          	beqz	a5,10003bb8 <all_proc_+0x14c>
10003b70:	be040793          	addi	a5,s0,-1056
10003b74:	40000713          	li	a4,1024
10003b78:	00070613          	mv	a2,a4
10003b7c:	00000593          	li	a1,0
10003b80:	00078513          	mv	a0,a5
10003b84:	831fe0ef          	jal	ra,100023b4 <memset>
10003b88:	be040713          	addi	a4,s0,-1056
10003b8c:	fe442683          	lw	a3,-28(s0)
10003b90:	100107b7          	lui	a5,0x10010
10003b94:	45078613          	addi	a2,a5,1104 # 10010450 <p2p_demo+0xc7ac>
10003b98:	3ff00593          	li	a1,1023
10003b9c:	00070513          	mv	a0,a4
10003ba0:	e4cfe0ef          	jal	ra,100021ec <snprintf_>
10003ba4:	be040793          	addi	a5,s0,-1056
10003ba8:	00078593          	mv	a1,a5
10003bac:	00400513          	li	a0,4
10003bb0:	9c1fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003bb4:	0080006f          	j	10003bbc <all_proc_+0x150>
10003bb8:	00000013          	nop
    plus = *(volatile uint32_t *)(DDR_BASE_INFO | 0xc);
10003bbc:	100117b7          	lui	a5,0x10011
10003bc0:	9947a783          	lw	a5,-1644(a5) # 10010994 <DDR_BASE_INFO.1766>
10003bc4:	00c7e793          	ori	a5,a5,12
10003bc8:	0007a783          	lw	a5,0(a5)
10003bcc:	fef42023          	sw	a5,-32(s0)
    KRNL_LOG_INFO(LOG_SYSTEM, "plus %08x", plus);
10003bd0:	100117b7          	lui	a5,0x10011
10003bd4:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003bd8:	04078663          	beqz	a5,10003c24 <all_proc_+0x1b8>
10003bdc:	be040793          	addi	a5,s0,-1056
10003be0:	40000713          	li	a4,1024
10003be4:	00070613          	mv	a2,a4
10003be8:	00000593          	li	a1,0
10003bec:	00078513          	mv	a0,a5
10003bf0:	fc4fe0ef          	jal	ra,100023b4 <memset>
10003bf4:	be040713          	addi	a4,s0,-1056
10003bf8:	fe042683          	lw	a3,-32(s0)
10003bfc:	100107b7          	lui	a5,0x10010
10003c00:	46878613          	addi	a2,a5,1128 # 10010468 <p2p_demo+0xc7c4>
10003c04:	3ff00593          	li	a1,1023
10003c08:	00070513          	mv	a0,a4
10003c0c:	de0fe0ef          	jal	ra,100021ec <snprintf_>
10003c10:	be040793          	addi	a5,s0,-1056
10003c14:	00078593          	mv	a1,a5
10003c18:	00400513          	li	a0,4
10003c1c:	955fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003c20:	0080006f          	j	10003c28 <all_proc_+0x1bc>
10003c24:	00000013          	nop

    all_proc_no_head(in_buf, out_buf, length, plus);
10003c28:	fe042683          	lw	a3,-32(s0)
10003c2c:	fe442603          	lw	a2,-28(s0)
10003c30:	fe842583          	lw	a1,-24(s0)
10003c34:	fec42503          	lw	a0,-20(s0)
10003c38:	b45ff0ef          	jal	ra,1000377c <all_proc_no_head>
    KRNL_LOG_INFO(LOG_SYSTEM, "_________________OVER!!!!!");
10003c3c:	100117b7          	lui	a5,0x10011
10003c40:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003c44:	00079663          	bnez	a5,10003c50 <all_proc_+0x1e4>
10003c48:	00000013          	nop
}
10003c4c:	0440006f          	j	10003c90 <all_proc_+0x224>
    KRNL_LOG_INFO(LOG_SYSTEM, "_________________OVER!!!!!");
10003c50:	be040793          	addi	a5,s0,-1056
10003c54:	40000713          	li	a4,1024
10003c58:	00070613          	mv	a2,a4
10003c5c:	00000593          	li	a1,0
10003c60:	00078513          	mv	a0,a5
10003c64:	f50fe0ef          	jal	ra,100023b4 <memset>
10003c68:	be040713          	addi	a4,s0,-1056
10003c6c:	100107b7          	lui	a5,0x10010
10003c70:	47878613          	addi	a2,a5,1144 # 10010478 <p2p_demo+0xc7d4>
10003c74:	3ff00593          	li	a1,1023
10003c78:	00070513          	mv	a0,a4
10003c7c:	d70fe0ef          	jal	ra,100021ec <snprintf_>
10003c80:	be040793          	addi	a5,s0,-1056
10003c84:	00078593          	mv	a1,a5
10003c88:	00400513          	li	a0,4
10003c8c:	8e5fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
}
10003c90:	00000013          	nop
10003c94:	41c12083          	lw	ra,1052(sp)
10003c98:	41812403          	lw	s0,1048(sp)
10003c9c:	42010113          	addi	sp,sp,1056
10003ca0:	00008067          	ret

10003ca4 <p2p_demo>:

void p2p_demo()
{
10003ca4:	bf010113          	addi	sp,sp,-1040
10003ca8:	40112623          	sw	ra,1036(sp)
10003cac:	40812423          	sw	s0,1032(sp)
10003cb0:	41010413          	addi	s0,sp,1040
    // initial the interrupt signal
    test_uart_print();
10003cb4:	d29ff0ef          	jal	ra,100039dc <test_uart_print>
    // KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");

    // while(*pCmdStart_0x04 == 0);

    // set rv status to busy
    *pCmdStatus_0x08 = 1;
10003cb8:	100117b7          	lui	a5,0x10011
10003cbc:	8987a783          	lw	a5,-1896(a5) # 10010898 <pCmdStatus_0x08>
10003cc0:	00100713          	li	a4,1
10003cc4:	00e7a023          	sw	a4,0(a5)

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");
10003cc8:	100117b7          	lui	a5,0x10011
10003ccc:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003cd0:	04078463          	beqz	a5,10003d18 <p2p_demo+0x74>
10003cd4:	bf040793          	addi	a5,s0,-1040
10003cd8:	40000713          	li	a4,1024
10003cdc:	00070613          	mv	a2,a4
10003ce0:	00000593          	li	a1,0
10003ce4:	00078513          	mv	a0,a5
10003ce8:	eccfe0ef          	jal	ra,100023b4 <memset>
10003cec:	bf040713          	addi	a4,s0,-1040
10003cf0:	100107b7          	lui	a5,0x10010
10003cf4:	49878613          	addi	a2,a5,1176 # 10010498 <p2p_demo+0xc7f4>
10003cf8:	3ff00593          	li	a1,1023
10003cfc:	00070513          	mv	a0,a4
10003d00:	cecfe0ef          	jal	ra,100021ec <snprintf_>
10003d04:	bf040793          	addi	a5,s0,-1040
10003d08:	00078593          	mv	a1,a5
10003d0c:	00400513          	li	a0,4
10003d10:	861fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003d14:	0080006f          	j	10003d1c <p2p_demo+0x78>
10003d18:	00000013          	nop

    all_proc_();
10003d1c:	d51ff0ef          	jal	ra,10003a6c <all_proc_>


    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");
10003d20:	100117b7          	lui	a5,0x10011
10003d24:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003d28:	04078463          	beqz	a5,10003d70 <p2p_demo+0xcc>
10003d2c:	bf040793          	addi	a5,s0,-1040
10003d30:	40000713          	li	a4,1024
10003d34:	00070613          	mv	a2,a4
10003d38:	00000593          	li	a1,0
10003d3c:	00078513          	mv	a0,a5
10003d40:	e74fe0ef          	jal	ra,100023b4 <memset>
10003d44:	bf040713          	addi	a4,s0,-1040
10003d48:	100107b7          	lui	a5,0x10010
10003d4c:	4c078613          	addi	a2,a5,1216 # 100104c0 <p2p_demo+0xc81c>
10003d50:	3ff00593          	li	a1,1023
10003d54:	00070513          	mv	a0,a4
10003d58:	c94fe0ef          	jal	ra,100021ec <snprintf_>
10003d5c:	bf040793          	addi	a5,s0,-1040
10003d60:	00078593          	mv	a1,a5
10003d64:	00400513          	li	a0,4
10003d68:	809fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003d6c:	0080006f          	j	10003d74 <p2p_demo+0xd0>
10003d70:	00000013          	nop

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
10003d74:	100117b7          	lui	a5,0x10011
10003d78:	8987a783          	lw	a5,-1896(a5) # 10010898 <pCmdStatus_0x08>
10003d7c:	0007a023          	sw	zero,0(a5)
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
10003d80:	100117b7          	lui	a5,0x10011
10003d84:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003d88:	04078463          	beqz	a5,10003dd0 <p2p_demo+0x12c>
10003d8c:	bf040793          	addi	a5,s0,-1040
10003d90:	40000713          	li	a4,1024
10003d94:	00070613          	mv	a2,a4
10003d98:	00000593          	li	a1,0
10003d9c:	00078513          	mv	a0,a5
10003da0:	e14fe0ef          	jal	ra,100023b4 <memset>
10003da4:	bf040713          	addi	a4,s0,-1040
10003da8:	100107b7          	lui	a5,0x10010
10003dac:	4d878613          	addi	a2,a5,1240 # 100104d8 <p2p_demo+0xc834>
10003db0:	3ff00593          	li	a1,1023
10003db4:	00070513          	mv	a0,a4
10003db8:	c34fe0ef          	jal	ra,100021ec <snprintf_>
10003dbc:	bf040793          	addi	a5,s0,-1040
10003dc0:	00078593          	mv	a1,a5
10003dc4:	00400513          	li	a0,4
10003dc8:	fa8fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003dcc:	0080006f          	j	10003dd4 <p2p_demo+0x130>
10003dd0:	00000013          	nop
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
10003dd4:	100117b7          	lui	a5,0x10011
10003dd8:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003ddc:	04078463          	beqz	a5,10003e24 <p2p_demo+0x180>
10003de0:	bf040793          	addi	a5,s0,-1040
10003de4:	40000713          	li	a4,1024
10003de8:	00070613          	mv	a2,a4
10003dec:	00000593          	li	a1,0
10003df0:	00078513          	mv	a0,a5
10003df4:	dc0fe0ef          	jal	ra,100023b4 <memset>
10003df8:	bf040713          	addi	a4,s0,-1040
10003dfc:	100107b7          	lui	a5,0x10010
10003e00:	4f478613          	addi	a2,a5,1268 # 100104f4 <p2p_demo+0xc850>
10003e04:	3ff00593          	li	a1,1023
10003e08:	00070513          	mv	a0,a4
10003e0c:	be0fe0ef          	jal	ra,100021ec <snprintf_>
10003e10:	bf040793          	addi	a5,s0,-1040
10003e14:	00078593          	mv	a1,a5
10003e18:	00400513          	li	a0,4
10003e1c:	f54fc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003e20:	0080006f          	j	10003e28 <p2p_demo+0x184>
10003e24:	00000013          	nop
    asm volatile("wfi");
10003e28:	10500073          	wfi

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
10003e2c:	100117b7          	lui	a5,0x10011
10003e30:	9807a783          	lw	a5,-1664(a5) # 10010980 <g_ulPrintSYSLogFlag>
10003e34:	04078463          	beqz	a5,10003e7c <p2p_demo+0x1d8>
10003e38:	bf040793          	addi	a5,s0,-1040
10003e3c:	40000713          	li	a4,1024
10003e40:	00070613          	mv	a2,a4
10003e44:	00000593          	li	a1,0
10003e48:	00078513          	mv	a0,a5
10003e4c:	d68fe0ef          	jal	ra,100023b4 <memset>
10003e50:	bf040713          	addi	a4,s0,-1040
10003e54:	100107b7          	lui	a5,0x10010
10003e58:	50878613          	addi	a2,a5,1288 # 10010508 <p2p_demo+0xc864>
10003e5c:	3ff00593          	li	a1,1023
10003e60:	00070513          	mv	a0,a4
10003e64:	b88fe0ef          	jal	ra,100021ec <snprintf_>
10003e68:	bf040793          	addi	a5,s0,-1040
10003e6c:	00078593          	mv	a1,a5
10003e70:	00400513          	li	a0,4
10003e74:	efcfc0ef          	jal	ra,10000570 <krnlLOGPrintLog>
10003e78:	0080006f          	j	10003e80 <p2p_demo+0x1dc>
10003e7c:	00000013          	nop
    while (1);
10003e80:	0000006f          	j	10003e80 <p2p_demo+0x1dc>
