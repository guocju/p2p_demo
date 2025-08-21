//
// Created by chenhe on 23-11-26.
//
#include "sys_reg.h"

// const int REG_BASE_ADDR     = 0x00010000;
const int BRAM0_BASE_ADDR   = 0x01010000;
const int BRAM1_BASE_ADDR   = 0x00050000;

const int BASE_ADDR_UART    = 0x01000000;  // RW
const int BASE_ADDR_DSC_CTL = 0x01010000;  // RW
const int BASE_H2C_RAW_BRAM = 0x01020000;  // R
const int BASE_C2H_RAW_BRAM = 0x01030000;  // R
const int BASE_DESC_ST      = 0x01020000;  // R
const int BASE_H2C_BRAM     = 0x01040000;  // W
const int BASE_C2H_BRAM     = 0x01050000;  // W
const int BASE_FLAG_BRAM    = 0x01060000;  // R

// // byp desc addr
// addr_lo 0000_0000
// addr_hi 0000_0001 
// range 64k

// Desc
volatile int* pDescCR                   = (volatile int*)(0x00000000 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescSR                   = (volatile int*)(0x00000004 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pVID                      = (volatile int*)(0x00000008 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescH2CAddr              = (volatile int*)(0x00000020 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescH2CNum               = (volatile int*)(0x00000024 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescH2CPerfCycle         = (volatile int*)(0x00000028 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescH2CPerfLen           = (volatile int*)(0x0000002c | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescH2CPerfDescSent      = (volatile int*)(0x00000030 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescC2HAddr              = (volatile int*)(0x00000040 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescC2HNum               = (volatile int*)(0x00000044 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescC2HPerfCycle         = (volatile int*)(0x00000048 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescC2HPerfLen           = (volatile int*)(0x0000004c | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved
volatile int* pDescC2HPerfDescSent      = (volatile int*)(0x00000050 | BASE_ADDR_DSC_CTL);  // 0x100 ~ 0x200 version number reserved



volatile int* pCmdStart_0x04              = (volatile int*)(0x00000004 | REG_BASE_ADDR);
volatile int* pCmdStatus_0x08             = (volatile int*)(0x00000008 | REG_BASE_ADDR);
volatile int* pSysBaseAddr_0x0c           = (volatile int*)(0x0000000c | REG_BASE_ADDR);
volatile int* pSimDebug_0x10              = (volatile int*)(0x00000010 | REG_BASE_ADDR);
volatile int* pErrCode_0x14               = (volatile int*)(0x00000014 | REG_BASE_ADDR);
volatile int* pData_0x14                  = (volatile int*)(0x00000014 | REG_BASE_ADDR);
volatile int* pSimDebug_0x18              = (volatile int*)(0x00000018 | REG_BASE_ADDR);
volatile int* pPSWTAddr_0x20              = (volatile int*)(0x00000020 | REG_BASE_ADDR);
volatile int* pData_0x20                  = (volatile int*)(0x00000020 | REG_BASE_ADDR);
volatile int* pPSBCAddr_0x24              = (volatile int*)(0x00000024 | REG_BASE_ADDR);
volatile int* pData_0x24                  = (volatile int*)(0x00000024 | REG_BASE_ADDR);
volatile int* pPSInputData_0x28           = (volatile int*)(0x00000028 | REG_BASE_ADDR);
volatile int* pData_0x28                  = (volatile int*)(0x00000028 | REG_BASE_ADDR);
volatile int* pPSOutputData_0x2c          = (volatile int*)(0x0000002c | REG_BASE_ADDR);
volatile int* pData_0x2c                  = (volatile int*)(0x0000002c | REG_BASE_ADDR);
volatile int* pInitFinishedFlag_0x30      = (volatile int*)(0x00000030 | REG_BASE_ADDR);
volatile int* pPLWTAddr_0x34              = (volatile int*)(0x00000034 | REG_BASE_ADDR);
volatile int* pData_0x34                  = (volatile int*)(0x00000034 | REG_BASE_ADDR);
volatile int* pPLBCAddr_0x38              = (volatile int*)(0x00000038 | REG_BASE_ADDR);
volatile int* pData_0x38                  = (volatile int*)(0x00000038 | REG_BASE_ADDR);
volatile int* pPLFMAddr_0x3c              = (volatile int*)(0x0000003c | REG_BASE_ADDR);
volatile int* pData_0x3c                  = (volatile int*)(0x0000003c | REG_BASE_ADDR);
volatile int* pWT_sz_0x40                 = (volatile int*)(0x00000040 | REG_BASE_ADDR);  // will be used by each project for Data xfer'
volatile int* pData_0x40                  = (volatile int*)(0x00000040 | REG_BASE_ADDR);  // will be used by each project for Data xfer'
volatile int* pBC_sz_0x44                 = (volatile int*)(0x00000044 | REG_BASE_ADDR);
volatile int* pData_0x44                  = (volatile int*)(0x00000044 | REG_BASE_ADDR);
volatile int* pFM_sz_0x48                 = (volatile int*)(0x00000048 | REG_BASE_ADDR);
volatile int* pData_0x48                  = (volatile int*)(0x00000048 | REG_BASE_ADDR);
volatile int* pInputData_sz_0x4c          = (volatile int*)(0x0000004c | REG_BASE_ADDR);
volatile int* pData_0x4c                  = (volatile int*)(0x0000004c | REG_BASE_ADDR);
volatile int* pOutputData_sz_0x50         = (volatile int*)(0x00000050 | REG_BASE_ADDR);
volatile int* pData_0x50                  = (volatile int*)(0x00000050 | REG_BASE_ADDR);
volatile int* pData_0x54                  = (volatile int*)(0x00000054 | REG_BASE_ADDR);
volatile int* pData_0x58                  = (volatile int*)(0x00000058 | REG_BASE_ADDR);
volatile int* pData_0x5c                  = (volatile int*)(0x0000005c | REG_BASE_ADDR);
volatile int* pData_0x60                  = (volatile int*)(0x00000060 | REG_BASE_ADDR);
volatile int* pData_0x64                  = (volatile int*)(0x00000064 | REG_BASE_ADDR);
volatile int* pData_0x68                  = (volatile int*)(0x00000068 | REG_BASE_ADDR);
volatile int* pData_0x6c                  = (volatile int*)(0x0000006c | REG_BASE_ADDR);
volatile int* pData_0x70                  = (volatile int*)(0x00000070 | REG_BASE_ADDR);
volatile int* pStartCalc_0x70             = (volatile int*)(0x00000070 | REG_BASE_ADDR);
volatile int* pData_0x74                  = (volatile int*)(0x00000074 | REG_BASE_ADDR);
volatile int* pDebug_stop_layer_idx_0x78  = (volatile int*)(0x00000078 | REG_BASE_ADDR);
volatile int* pDebug_Value_0x7c           = (volatile int*)(0x0000007c | REG_BASE_ADDR);
volatile int* pDebug_Value_0x80           = (volatile int*)(0x00000080 | REG_BASE_ADDR);
volatile int* pDebug_Time_H_0x84          = (volatile int*)(0x00000084 | REG_BASE_ADDR);
volatile int* pDebug_Time_L_0x88          = (volatile int*)(0x00000088 | REG_BASE_ADDR);
volatile int* pDebug_start_layer_idx_0x8c = (volatile int*)(0x0000008c | REG_BASE_ADDR);
volatile int* pHWDebugCtrlFlag_0x90       = (volatile int*)(0x00000090 | REG_BASE_ADDR);
volatile int* pHWDbgDumpDstBaseAddr_0x94  = (volatile int*)(0x00000094 | REG_BASE_ADDR);
volatile int* pHWDbgDumpSrcBaseAddr_0x98  = (volatile int*)(0x00000098 | REG_BASE_ADDR);
volatile int* pHWDebugDumpLength_0x9c     = (volatile int*)(0x0000009c | REG_BASE_ADDR);
volatile int* pHpuRis_0xa0                = (volatile int*)(0x000000a0 | REG_BASE_ADDR);  //raw interrupt
volatile int* pHpuMis_0xa4                = (volatile int*)(0x000000a4 | REG_BASE_ADDR);  //masked interrupt
volatile int* pHpuIC_0xa8                 = (volatile int*)(0x000000a8 | REG_BASE_ADDR);
volatile int* pHpuImsc_0xac               = (volatile int*)(0x000000ac | REG_BASE_ADDR);  //interrupt mask setting

volatile int* pVersion600_0xd0            = (volatile int*)(0x000000d0 | REG_BASE_ADDR);  // 0x100 ~ 0x200 version number reserved
volatile int* pVersion_0x100              = (volatile int*)(0x00000100 | REG_BASE_ADDR);  // 0x100 ~ 0x200 version number reserved


