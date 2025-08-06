/*
 * This file is part of the Xilinx DMA IP Core driver for Linux
 *
 * Copyright (c) 2016-present,  Xilinx, Inc.
 * All rights reserved.
 *
 * This source code is free software; you can redistribute it and/or modify it
 * under the terms and conditions of the GNU General Public License,
 * version 2, as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * The full GNU General Public License is included in this distribution in
 * the file called "COPYING".
 */

#ifndef _XDMA_IOCALLS_POSIX_H_
#define _XDMA_IOCALLS_POSIX_H_

#include <linux/ioctl.h>


#define IOCTL_XDMA_PERF_V1 (1)
#define XDMA_ADDRMODE_MEMORY (0)
#define XDMA_ADDRMODE_FIXED (1)


//自己新增部分

#ifndef _XDMA_IOCTL_H_
#define _XDMA_IOCTL_H_

#include <linux/types.h>
#include <linux/ioctl.h>

#define XDMA_MAGIC 'x'

/* 定义新的 IOCTL 宏 */
#define IOCTL_XDMA_DSC_BYP _IOWR(XDMA_MAGIC, 0x20, struct xdma_ioctl_args)

/* 定义结构体用于传递参数 */
struct xdma_ioctl_args {
    __u64 buf;    // 用户空间缓冲区地址
    __u64 count;  // 数据传输大小
    __u64 pos;    // 偏移地址
    __u32 write;  // 0: 读，1: 写
}; 
/* 用于传递desc_array的结构体 */
struct xdma_desc_array_ioctl {
    size_t desc_count;    // 描述符的数量
    void *desc_array;     // 描述符数组的指针
};


#endif /* _XDMA_IOCTL_H_ */

/*
 * S means "Set" through a ptr,
 * T means "Tell" directly with the argument value
 * G means "Get": reply by setting through a pointer
 * Q means "Query": response is on the return value
 * X means "eXchange": switch G and S atomically
 * H means "sHift": switch T and Q atomically
 *
 * _IO(type,nr)		    no arguments
 * _IOR(type,nr,datatype)   read data from driver
 * _IOW(type,nr.datatype)   write data to driver
 * _IORW(type,nr,datatype)  read/write data
 *
 * _IOC_DIR(nr)		    returns direction
 * _IOC_TYPE(nr)	    returns magic
 * _IOC_NR(nr)		    returns number
 * _IOC_SIZE(nr)	    returns size
 */
struct xdma_performance_ioctl {
	/* IOCTL_XDMA_IOCTL_Vx */
	uint32_t version;
	uint32_t transfer_size;
	/* measurement */
	uint32_t stopped;
	uint32_t iterations;
	uint64_t clock_cycle_count;
	uint64_t data_cycle_count;
	uint64_t pending_count;
};
/*
typedef struct xdma_data_ioctl{
  char *value;
  size_t count;
} dma_read;
*/

/* IOCTL codes */

#define IOCTL_XDMA_PERF_START   _IOW('q', 1, struct xdma_performance_ioctl *)
#define IOCTL_XDMA_PERF_STOP    _IOW('q', 2, struct xdma_performance_ioctl *)
#define IOCTL_XDMA_PERF_GET     _IOR('q', 3, struct xdma_performance_ioctl *)
#define IOCTL_XDMA_ADDRMODE_SET _IOW('q', 4, int)
#define IOCTL_XDMA_ADDRMODE_GET _IOR('q', 5, int)
#define IOCTL_XDMA_ALIGN_GET    _IOR('q', 6, int)
#define IOCTL_XDMA_TRY          _IOR('q', 7, struct xdma_data_ioctl *)
#define IOCTL_XDMA_WRITE        _IOR('q', 8, struct xdma_data_ioctl *)
#define IOCTL_XDMA_GPU_WRITE    _IOR('q', 9, struct gpudma_lock_t *)
#define IOCTL_XDMA_GPU_READ     _IOR('q', 10, struct gpudma_lock_t *)
//获取描述符
#define IOCTL_XDMA_DESC_ARRAY_GET _IOR('q', 11, struct xdma_desc_array_ioctl *)
#define IOCTL_XDMA_GPU_FREE _IO('q', 12)
#define IOCTL_XDMA_GPU_BYP      _IOR('q', 13, struct gpudma_lock_t *)


//以下为我新增的获取XDMA_DSC_BYP定义 

//#define IOCTL_XDMA_DSC_BYP      _IOWR('q', 11, struct xdma_dsc_byp_ioctl *)
#endif /* _XDMA_IOCALLS_POSIX_H_ */
