#include "test_trans.h"

#define BUF 80000000
#define strAddr 0x01020000
#define remote_flag_1 0x01060000
#define remote_flag_2 0x01060004
#define local_flag_1 0x01060008
#define local_flag_2 0x0106000c

void check_desc()
{
    KRNL_LOG_INFO(LOG_SYSTEM, "group num: %d", *(volatile int *)(strAddr));
    KRNL_LOG_INFO(LOG_SYSTEM, "group offset 1: %d", *(volatile int *)(strAddr + 4));
    KRNL_LOG_INFO(LOG_SYSTEM, "group offset 2: %d", *(volatile int *)(strAddr + 8));
    KRNL_LOG_INFO(LOG_SYSTEM, "group 1 flag hi read: %08x", *(volatile int *)(strAddr + 12));
    KRNL_LOG_INFO(LOG_SYSTEM, "group 1 flag lo read: %08x", *(volatile int *)(strAddr + 16));
    KRNL_LOG_INFO(LOG_SYSTEM, "group 1 flag hi write: %08x", *(volatile int *)(strAddr + 20));
    KRNL_LOG_INFO(LOG_SYSTEM, "group 1 flag lo write: %08x", *(volatile int *)(strAddr + 24));
    KRNL_LOG_INFO(LOG_SYSTEM, "group 1 desc num: %d", *(volatile int *)(strAddr + 28));
}

void 

void set_bypasss()
{
    // initial the interrupt signal
    test_uart_print();

    KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");

    while(*pCmdStart_0x04 == 0);

    // set rv status to busy
    *pCmdStatus_0x08 = 1;

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");

    check_desc();


    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
    asm volatile("wfi");

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
    while(1);
}