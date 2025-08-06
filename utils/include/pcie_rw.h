/*
 * This file is for hipu_vu9p project.
 * author: CF
 * data: 2019.07.12
 * purpose: control ;transfer data; show results
 * Copyright ownership belongs to CAG laboratory, Institute of Artificial
 * Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
 * commercial ways without permission.
 */

#define _BSD_SOURCE
#ifndef _XOPEN_SOURCE
#define _XOPEN_SOURCE 500
#endif
#include <assert.h>
#include <fcntl.h>
#include <getopt.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>

#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#include <byteswap.h>
#include <errno.h>
#include <signal.h>
#include <ctype.h>
#include <termios.h>


/* ltoh: little to host */
/* htol: little to host */
#if __BYTE_ORDER == __LITTLE_ENDIAN
#define ltohl(x) (x)
#define ltohs(x) (x)
#define htoll(x) (x)
#define htols(x) (x)
#elif __BYTE_ORDER == __BIG_ENDIAN
#define ltohl(x) __bswap_32(x)
#define ltohs(x) __bswap_16(x)
#define htoll(x) __bswap_32(x)
#define htols(x) __bswap_16(x)
#endif

#define IMAGE_DEFAULT "./image_exp.jpg"
#define VIDEO_STEAM_DEFAULT "./image_exp.mpg"
#define DEVICE_H2C_DEFAULT "/dev/xdma0_h2c_1"
#define DEVICE_C2H_DEFAULT "/dev/xdma0_c2h_1"
#define DEVICE_CTRL_DEFAULT "/dev/xdma0_control"
#define DEVICE_USR_DEFAULT "/dev/xdma0_user"
#define SIZE_DEFAULT (32)
#define COUNT_DEFAULT (1)

#define FATAL                                                                                                 \
	do                                                                                                        \
	{                                                                                                         \
		fprintf(stderr, "Error at line %d, file %s (%d) [%s]\n", __LINE__, __FILE__, errno, strerror(errno)); \
		exit(1);                                                                                              \
	} while (0)

#define MAP_SIZE (1*1024*1024UL) //(32*1024*1024UL)
#define MAP_MASK (MAP_SIZE - 1)
int pl_init();
void write_bram_reg(uint64_t offset,size_t size,void * src);
void read_bram_reg(uint64_t offset,size_t size,void * dest);

void write_plddr(uint64_t offset,size_t size,void * src);
void read_plddr(uint64_t offset,size_t size,void * dest);

