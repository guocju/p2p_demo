/*
 * @Descripttion: 
 * @version: 
 * @Author: AlonzoChen
 * @Date: 2021-01-14 18:21:52
 * @LastEditors: AlonzoChen
 * @LastEditTime: 2021-05-25 17:10:53
 */
#ifndef _krnl_LOG_H__
#define _krnl_LOG_H__


#ifdef IN_X86

#include "printf.h"		//debug printf.c
//#include <stdio.h>	//use buildin printf

#include <string.h>

#else
#include "printf.h"
#endif



extern char *strrchr (const char *__s, int __c);

#ifdef __cplusplus
extern "C" {
#endif


#define STR_COMM_SIZE               128
#define STR_MAX_SIZE                1024

#define MAX_LOG_FILE_NUM		    (3)

#define NUMBER(type)                sizeof(type)/sizeof(type[0])

// #define __FILENAME__                ((strrchr(__FILE__, (int)'/') != NULL) ? (strrchr(__FILE__, '/') + 1) : __FILE__)
#define __FILENAME__                (strrchr(__FILE__, '/') ? (strrchr(__FILE__, '/') + 1) : __FILE__)

enum
{
    LOG_DEBUG = 0,  
    LOG_ERROR,      
    LOG_WARNING,    
    LOG_ACTION,     
    LOG_SYSTEM,     
    LOG_HARDWARE_CMD,  
    LOG_NDMA,
    LOG_OP_CMD,
    BOTTOM
};

extern unsigned long g_ulPrintDebugLogFlag;
extern unsigned long g_ulPrintHardwareCmdLogFlag;
extern unsigned long g_ulPrintSYSLogFlag;
extern unsigned long g_ulPrintNDMALogFlag;
extern unsigned long g_ulPrintOPLogFlag;

unsigned long krnlLOGPrintLog(unsigned char ucType, unsigned char *pucLogInfo);
#define HPU_KERNEL_DEBUG

#ifdef HPU_KERNEL_DEBUG

	#define KRNL_LOG_INFO(type, fmt, ...) do{\
			if((0 == g_ulPrintDebugLogFlag) && (LOG_DEBUG == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintHardwareCmdLogFlag) && (LOG_HARDWARE_CMD == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintSYSLogFlag) && (LOG_SYSTEM == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintNDMALogFlag) && (LOG_NDMA == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintOPLogFlag) && (LOG_OP_CMD == type)) \
			{\
				break;\
			}\
	    	unsigned char ucLogInfo[STR_MAX_SIZE] = {0}; \
			snprintf((char *)ucLogInfo, sizeof(ucLogInfo) - 1, fmt" \r\n", ##__VA_ARGS__); \
			krnlLOGPrintLog(type, ucLogInfo); \
		}while(0)

    #define KRNL_LOG_NO_RETURN(type, fmt, ...) do{\
			if((0 == g_ulPrintDebugLogFlag) && (LOG_DEBUG == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintHardwareCmdLogFlag) && (LOG_HARDWARE_CMD == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintSYSLogFlag) && (LOG_SYSTEM == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintNDMALogFlag) && (LOG_NDMA == type)) \
			{\
				break;\
			}\
			if((0 == g_ulPrintOPLogFlag) && (LOG_OP_CMD == type)) \
			{\
				break;\
			}\
	    	unsigned char ucLogInfo[STR_MAX_SIZE] = {0}; \
			snprintf((char *)ucLogInfo, sizeof(ucLogInfo) - 1, fmt, ##__VA_ARGS__); \
			krnlLOGPrintLog(type, ucLogInfo); \
		}while(0)
#else
	#define KRNL_LOG_INFO(type, fmt, ...) 
    #define KRNL_LOG_NO_RETURN(type, fmt, ...)

#endif

#ifdef __cplusplus
}
#endif
#endif //_krnl_LOG_H__

