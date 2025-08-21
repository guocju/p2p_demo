
//
// Created by chenhe on 23-11-26.
//

#ifndef SYS_REG_H

#define SYS_REG_H

#define REG_BASE_ADDR 0x00010000

extern const int BRAM0_BASE_ADDR   ;
extern const int BRAM1_BASE_ADDR   ;

extern const int BASE_ADDR_UART    ;  // RW
extern const int BASE_ADDR_DSC_CTL ;  // RW
extern const int BASE_H2C_RAW_BRAM ;  // R
extern const int BASE_C2H_RAW_BRAM ;  // R
extern const int BASE_DESC_ST      ;
extern const int BASE_H2C_BRAM     ;  // W
extern const int BASE_C2H_BRAM     ;  // W
extern const int BASE_FLAG_BRAM    ;  // R


// Desc
extern volatile int* pDescCR              ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescSR              ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pVID                 ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescH2CAddr            ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescH2CNum             ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescH2CPerfCycle       ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescH2CPerfLen         ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescH2CPerfDescSent    ;  // 0x100 ~ 0x200 version number reserved

extern volatile int* pDescC2HAddr            ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescC2HNum             ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescC2HPerfCycle       ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescC2HPerfLen         ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pDescC2HPerfDescSent    ;  // 0x100 ~ 0x200 version number reserved


extern volatile int* pCmdStart_0x04              ;
extern volatile int* pCmdStatus_0x08             ;
extern volatile int* pSysBaseAddr_0x0c           ;
extern volatile int* pSimDebug_0x10              ;
extern volatile int* pErrCode_0x14               ;
extern volatile int* pData_0x14                  ;
extern volatile int* pSimDebug_0x18              ;
extern volatile int* pPSWTAddr_0x20              ;
extern volatile int* pData_0x20                  ;
extern volatile int* pPSBCAddr_0x24              ;
extern volatile int* pData_0x24                  ;
extern volatile int* pPSInputData_0x28           ;
extern volatile int* pData_0x28                  ;
extern volatile int* pPSOutputData_0x2c          ;
extern volatile int* pData_0x2c                  ;
extern volatile int* pInitFinishedFlag_0x30      ;
extern volatile int* pPLWTAddr_0x34              ;
extern volatile int* pData_0x34                  ;
extern volatile int* pPLBCAddr_0x38              ;
extern volatile int* pData_0x38                  ;
extern volatile int* pPLFMAddr_0x3c              ;
extern volatile int* pData_0x3c                  ;
extern volatile int* pWT_sz_0x40                 ;  // will be used by each project for Data xfer'
extern volatile int* pData_0x40                  ;  // will be used by each project for Data xfer'
extern volatile int* pBC_sz_0x44                 ;
extern volatile int* pData_0x44                  ;
extern volatile int* pFM_sz_0x48                 ;
extern volatile int* pData_0x48                  ;
extern volatile int* pInputData_sz_0x4c          ;
extern volatile int* pData_0x4c                  ;
extern volatile int* pOutputData_sz_0x50         ;
extern volatile int* pData_0x50                  ;
extern volatile int* pData_0x54                  ;
extern volatile int* pData_0x58                  ;
extern volatile int* pData_0x5c                  ;
extern volatile int* pData_0x60                  ;
extern volatile int* pData_0x64                  ;
extern volatile int* pData_0x68                  ;
extern volatile int* pData_0x6c                  ;
extern volatile int* pData_0x70                  ;
extern volatile int* pStartCalc_0x70             ;
extern volatile int* pData_0x74                  ;
extern volatile int* pDebug_stop_layer_idx_0x78  ;
extern volatile int* pDebug_Value_0x7c           ;
extern volatile int* pDebug_Value_0x80           ;
extern volatile int* pDebug_Time_H_0x84          ;
extern volatile int* pDebug_Time_L_0x88          ;
extern volatile int* pDebug_start_layer_idx_0x8c ;
extern volatile int* pHWDebugCtrlFlag_0x90       ;
extern volatile int* pHWDbgDumpDstBaseAddr_0x94  ;
extern volatile int* pHWDbgDumpSrcBaseAddr_0x98  ;
extern volatile int* pHWDebugDumpLength_0x9c     ;
extern volatile int* pHpuRis_0xa0                ;  //raw interrupt
extern volatile int* pHpuMis_0xa4                ;  //masked interrupt
extern volatile int* pHpuIC_0xa8                 ;
extern volatile int* pHpuImsc_0xac               ;  //interrupt mask setting
extern volatile int* pVersion600_0xd0            ;  // 0x100 ~ 0x200 version number reserved
extern volatile int* pVersion_0x100              ;  // 0x100 ~ 0x200 version number reserved


#endif // SYS_REG_H
