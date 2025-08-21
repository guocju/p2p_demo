#ifndef P2P_DEMO_H
#define P2P_DEMO_H

#include "krnl_log.h"
#include "sys_reg.h"
#include "../inc/int.h"

#define NPU_STATUS1  (0x01001004 | 0x10000) 
#define NPU_CTRL     (0x01000000 | 0x10000) 
#define NPU_CONV_FM  (0x01001100 | 0x10000) 
#define NPU_CONV_WBC (0x01001104 | 0x10000)

#define DMA_LD_DDR_ADDR (0x00004008 | 0x10000)
#define DMA_LD_LM_ADDR  (0x0000400c | 0x10000)
#define DMA_LD_LEN      (0x00004010 | 0x10000)
#define DMA_LD_CONCAT   (0x00004024 | 0x10000)
#define DMA_OPTION      (0x00004014 | 0x10000)
#define DMA_CTRL        (0x00004000 | 0x10000)
#define DMA_ST_DDR_ADDR (0x00004018 | 0x10000)
#define DMA_ST_LM_ADDR  (0x0000401c | 0x10000)
#define DMA_ST_LEN      (0x00004020 | 0x10000)
#define DMA_STATUS      (0x00004004 | 0x10000)

#define MMA_BEGIN (0) // in bytes, 0 - 256 KB
#define MMA_BYTE_SIZE (1 << 18)
#define MEM_LCMEM_ADDR_S (0x0000)
#define MMA_BANK_SIZE (MMA_BYTE_SIZE >> 3 >> 6)
#define MMA_START_ADDR (MEM_LCMEM_ADDR_S + MMA_BEGIN)
#define MMA_BANK0_START_ADDR (MMA_START_ADDR)
#define MMA_BANK1_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 1)
#define MMA_BANK2_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 2)
#define MMA_BANK3_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 3)
#define MMA_BANK_RES_ADDR    (1 << 15 << 2)
#define MMA_BANK4_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 4)
#define MMA_BANK5_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 5)
#define MMA_BANK6_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 6)
#define MMA_BANK7_START_ADDR (MMA_START_ADDR + MMA_BANK_SIZE * 7)


#define EMPTY 0
#define FULL 1
#define SUCCESS 0
#define DMA_CHECK while(dma_check())

int dma_check();

void demo_reg_write(int addr, uint32_t data);

uint32_t demo_reg_read(uint32_t addr);

void p2p_demo();
void test_uart_print();
void pool_desc_byp_ctrl();
void process_desc();

void pool_h2c_ready();
void pool_c2h_ready();
#endif