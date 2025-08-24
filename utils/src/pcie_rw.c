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
#define _XOPEN_SOURCE 500
#include "../include/pcie_rw.h"
#include "../include/p2p.h"

#include <assert.h>
#include <byteswap.h>
#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <getopt.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <sys/types.h>
#include <termios.h>
#include <time.h>
#include <unistd.h>

#include "dma_utils.c"
// pcie read write functions
static int fd_regs;
void *fd_regs_map_base;
static int transfer_h2c_write(char *devname, uint64_t addr, uint64_t size,
                              uint64_t count, char *buffer)
{
  ssize_t rc;
  uint64_t i;
  int fpga_fd = open(devname, O_RDWR);
  long total_time = 0;
  if (fpga_fd < 0)
  {
    fprintf(stderr, "unable to open device %s, %d.\n", devname, fpga_fd);
    perror("open device");
    return -EINVAL;
  }
  /* write buffer to AXI MM address using SGDMA */
  rc = write_from_buffer(devname, fpga_fd, buffer, size, addr);
  if (rc < 0)
    goto out;
out:
  close(fpga_fd);
  return rc;
}

static int transfer_c2h_read(char *devname, uint64_t addr, uint64_t size,
                             uint64_t count, char *buffer)
{
  ssize_t rc;
  uint64_t i;
  int fpga_fd = open(devname, O_RDWR | O_NONBLOCK);
  long total_time = 0;
  if (fpga_fd < 0)
  {
    fprintf(stderr, "unable to open device %s, %d.\n", devname, fpga_fd);
    perror("open device");
    return -EINVAL;
  }
  rc = read_to_buffer(devname, fpga_fd, buffer, size, addr);
  if (rc < 0)
    goto out;
out:
  close(fpga_fd);
  return rc;
}

static int read_write_regs(int fd, void *fd_regs_map_base, char *devname,
                           uint64_t addr, uint32_t writeval, int type)
{
  void *map_base, *virt_addr;
  uint32_t read_result;
  /* access width */
  int access_width = 'w';
  map_base = fd_regs_map_base;
  /* calculate the virtual address to be accessed */
  virt_addr = map_base + addr;
  // printf("virt_addr  at address %p.\n", virt_addr);
  /* read only */
  if (type == 0)
  {
    // printf("Read from address %p.\n", virt_addr);
    read_result = *((uint32_t *)virt_addr);
    return (int)read_result;
  }
  /* data value given, i.e. writing? */
  if (type == 1)
  {
    *((uint32_t *)virt_addr) = writeval;
  }
  return 0;
}

int pl_init()
{
  printf("pl_init()\n");

  if ((fd_regs = open(DEVICE_USR_DEFAULT, O_RDWR | O_SYNC)) == -1)
    FATAL;
  fd_regs_map_base =
      mmap(0, MAP_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd_regs, 0);
  printf("fd_regs_map_base 0x%p \n", fd_regs_map_base);
  // printf("fd_regs_map_base 0x%p \n",&fd_regs_map_base);
  if (fd_regs_map_base == (void *)-1)
    FATAL;
  return 0;
}

void write_bram_reg(uint64_t offset, size_t size, void *src)
{
  uint32_t writeval;
  if (size == 1)
  {
    writeval = *(uint8_t *)src;
  }
  else if (size == 2)
  {
    writeval = *(uint16_t *)src;
  }
  else if (size == 4)
  {
    writeval = *(uint32_t *)src;
  }
  else if (size == 8)
  {
    writeval = *(uint64_t *)src;
  }
  read_write_regs(fd_regs, fd_regs_map_base, DEVICE_USR_DEFAULT, offset,
                  writeval, 1);
}

void read_bram_reg(uint64_t offset, size_t size, void *dest)
{
  uint32_t writeval;
  writeval = read_write_regs(fd_regs, fd_regs_map_base, DEVICE_USR_DEFAULT,
                             offset, 0, 0);
  memcpy(dest, &writeval, size);
}

void write_plddr(uint64_t offset, size_t size, void *src)
{
  printf("write plddr, addr %lx, size %lx\n", offset, size);
  transfer_h2c_write(DEVICE_H2C_DEFAULT, offset, size, 1, src);
}
void read_plddr(uint64_t offset, size_t size, void *dest)
{
  printf("read plddr, addr %lx, size %lx\n", offset, size);
  transfer_c2h_read(DEVICE_C2H_DEFAULT, offset, size, 1, dest);
}