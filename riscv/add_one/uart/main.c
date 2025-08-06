// +FHDR------------------------------------------------------------------------
// Copyright ownership belongs to CAG laboratory, Institute of Artificial
// Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
// commercial ways without permission.
// -----------------------------------------------------------------------------
// FILE NAME  : main.c
// DEPARTMENT : CAG of IAIR
// AUTHOR     : XXXX
// AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
// -----------------------------------------------------------------------------
// Ver 1.0  2019--01--01 initial version.
// -----------------------------------------------------------------------------

// #include "../inc/_intr.h"
// #include "../inc/hw_api/hpu_api.h"
// #include "../inc/krnl_op/hpu_util.h"
// #include "../inc/krnl_op/mobilenet.h"

// #ifndef FROM_ONNX
// #include "../inc/generated/global.h"
// #include "../inc/generated/mobilenet_data.h"
// #include "./generated_default_name_/common_switch.h"
// #endif

//#include "../inc/hw_api/sys_reg.inc"
#include "./krnl_log.h"

#ifdef UART_ON
#include "xuartlite/xuartlite.h"
extern XUartLite XUartLiteInstances0;
#endif

const char SendingBuffer[100] = "####Hello";
int main() {



    XUartLite * instance0 = &XUartLiteInstances0;
    XUartLite_CfgInitialize(instance0,UARTLITE_BASEADDR_0);

    XUartLite_SendAll(instance0, (uint8_t *)SendingBuffer, 9);
//    KRNL_LOG_INFO(LOG_SYSTEM, "####Init Done!!!");



}
