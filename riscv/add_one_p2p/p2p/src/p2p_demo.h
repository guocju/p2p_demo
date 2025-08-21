#ifndef P2P_DEMO_H
#define P2P_DEMO_H

#include "krnl_log.h"
#include "sys_reg.h"
#include "../inc/int.h"

void demo_reg_write(int addr, uint32_t data);

uint32_t demo_reg_read(uint32_t addr);

void p2p_demo();
void test_uart_print();
void pool_desc_byp_ctrl();
void process_desc();

void pool_h2c_ready();
void pool_c2h_ready();
#endif