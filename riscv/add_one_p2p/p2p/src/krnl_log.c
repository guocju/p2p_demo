
#include <stddef.h>
#include "krnl_log.h"
#include "std_lib_util.h"
#define UART_ON

#ifdef UART_ON
#include "./xuartlite.h"
extern XUartLite XUartLiteInstances0;
#endif


unsigned long g_ulPrintDebugLogFlag = 1;
unsigned long g_ulPrintHardwareCmdLogFlag = 0;
unsigned long g_ulPrintSYSLogFlag = 1;
unsigned long g_ulPrintNDMALogFlag = 1;

unsigned long g_ulPrintOPLogFlag = 0;

unsigned long krnlLOGLogTypeToStr(unsigned char ucType, unsigned char *pucTypeString, unsigned long ulBufLen)
{
    if (NULL == pucTypeString)
    {
        return -1;
    }
    ulBufLen -= 1;

    switch (ucType)
    {
    case LOG_DEBUG:
    {
        strncpy((char *)pucTypeString, "DBG", ulBufLen);
        break;
    }
    case LOG_ERROR:
    {
        strncpy((char *)pucTypeString, "ERR", ulBufLen);
        break;
    }
    case LOG_WARNING:
    {
        strncpy((char *)pucTypeString, "WAR", ulBufLen);
        break;
    }
    case LOG_ACTION:
    {
        strncpy((char *)pucTypeString, "ACT", ulBufLen);
        break;
    }
    case LOG_SYSTEM:
    {
        strncpy((char *)pucTypeString, "SYS", ulBufLen);
        break;
    }
    case LOG_HARDWARE_CMD:
    {
        strncpy((char *)pucTypeString, "HARDWARE_CMD", ulBufLen);
        break;
    }
    case LOG_NDMA:
    {
        strncpy((char *)pucTypeString, "NDMA", ulBufLen);
        break;
    }
    case LOG_OP_CMD:
    {
        strncpy((char *)pucTypeString, "OP", ulBufLen);
        break;
    }
    default:
    {
        strncpy((char *)pucTypeString, "UKN", ulBufLen);
        break;
    }
    }
    return 0;
}

unsigned long krnlLOGPrintLog(unsigned char ucType, unsigned char *pucLogInfo)
{
    unsigned long ulResult = 0;
    unsigned long ulFileLen = 0;
    char ucTime[STR_COMM_SIZE] = { 0 };
    char ucLogTypeStr[STR_COMM_SIZE] = { 0 };
    char ucLogInfo[STR_MAX_SIZE] = { 0 };

    if (NULL == pucLogInfo)
    {
        return -1;
    }

    ulResult = krnlLOGLogTypeToStr(ucType, ucLogTypeStr, sizeof(ucLogTypeStr));
    // ulResult += krnlLOGPrintLogTime(ucTime, sizeof(ucTime));
    if (0 != ulResult)
    {
        return -1;
    }
    snprintf((char *)ucLogInfo, sizeof(ucLogInfo) - 1, "[__%s__][%s] %s", __TIME__, ucLogTypeStr, pucLogInfo);
    unsigned int len = len_of_str(ucLogInfo);

#ifdef UART_ON
    XUartLite *uart_inst0 = &XUartLiteInstances0;
    XUartLite_SendAll(uart_inst0, ucLogInfo, len);
    // const char SendingBuffer[100] = "####in Krnl log\n\r";
    // XUartLite * instance0 = &XUartLiteInstances0;
    // XUartLite_CfgInitialize(instance0,UARTLITE_BASEADDR_0);
    // XUartLite_SendAll(instance0, (uint8_t *)SendingBuffer, 17);
#else
    printf("%s", ucLogInfo);
#endif
    return 0;
}


