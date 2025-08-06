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

#include "sys_reg.h"

//#include "../inc/int.h"
#include "../inc/global.h"
#include "../inc/_intr.h"
#include "./krnl_log.h"

#include "xuartlite.h"
extern XUartLite XUartLiteInstances0;

#define DEBUG_EN 1
#define CLOCK  250


uint32_t count = 0;
#define DEBUG_EN 1
// //flag，2个1字节
// #define FLAG1 0x000000
// #define FLAG2 0x000001

// //remote端flag状态，在ddr中
// #define FLAG1_REMOTE 0x00010000
// #define FLAG2_REMOTE 0x00010004

// //buffer1、2的位置
// #define BUFFER1 0x00000000
// #define BUFFER2 0x00001000

void reg_write(int addr, uint32_t data)
{
    *((volatile int*)addr) = data;
}

uint32_t read_reg(uint32_t* addr, uint32_t len)
{
    return *(volatile uint32_t *)((uint32_t)addr | REG_BASE_ADDR);
}

volatile int * pAxiAddr = (volatile int *)0x00040000;
int test_ma[36];
int test_mb[36];
int test_mc[36];
//uint32_t stAddrDesc_addr = REG_BASE_ADDR | 0x20;


uint32_t get_local_falg(uint32_t* flag_addr)
{
    return *(flag_addr);
}

//给xdma传递一次参数
void trans_xdma(uint32_t src_lo, uint32_t src_hi, uint32_t dst_lo, uint32_t dst_hi, uint32_t byp_len, int count, uint32_t num)
{
    uint32_t dsc_byp_src_addr_lo;
    uint32_t dsc_byp_src_addr_hi;
    uint32_t dsc_byp_dst_addr_lo;
    uint32_t dsc_byp_dst_addr_hi;
    uint32_t dsc_byp_len;
    uint32_t dsc_byp_ctl;

    dsc_byp_src_addr_lo = src_lo;
    dsc_byp_src_addr_hi = src_hi;
    dsc_byp_src_addr_lo = dst_lo;
    dsc_byp_src_addr_hi = dst_hi;
    dsc_byp_ctl      = (count  == num) ? 0x00000001 : 0x00000004;
    dsc_byp_len      = byp_len;

    *((volatile int*)((0x00000000 + count*32)       | BASE_H2C_BRAM))       = dsc_byp_src_addr_lo;
    *((volatile int*)((0x00000000 + count*32 + 4)   | BASE_H2C_BRAM))       = dsc_byp_src_addr_hi;
            
    *((volatile int*)((0x00000000 + count*32 + 8)   | BASE_H2C_BRAM)) = dsc_byp_dst_addr_lo;
    *((volatile int*)((0x00000000 + count*32 + 12)  | BASE_H2C_BRAM)) = dsc_byp_dst_addr_hi;
    *((volatile int*)((0x00000000 + count*32 + 20)  | BASE_H2C_BRAM)) = dsc_byp_ctl;
    *((volatile int*)((0x00000000 + count*32 + 16)  | BASE_H2C_BRAM)) = dsc_byp_len;
}       

   

//1是ready，0是不ready
int get_remote_flag(uint32_t *desc_group, uint32_t *flag_remote_addr)
{   
    //每一组有一个flag，描述符里的存放的是flag的address high and low，大小都为一字节
    //先读地址
    while(*pDescSR != 0)
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
    };
    uint32_t *src_lo_buf_hi = (uint32_t *)read_reg(desc_group, 4);
    uint32_t *src_lo_buf_lo = (uint32_t *)read_reg(desc_group+4, 4);
    trans_xdma(src_lo_buf_lo, src_lo_buf_hi, flag_remote_addr, 0x00000000, 4, 1, 1);

    // *pDescDirection_0xb0 = 1;
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;
    reg_write(BASE_ADDR_DSC_CTL | 0x0c, 0x20);
    reg_write(BASE_ADDR_DSC_CTL | 0x10, 1);
    reg_write(BASE_ADDR_DSC_CTL | 0x0, 1);
    //uint32_t which_buf_remote;
    // while(*pDescDone_0xc0);
    
    
    // *pCmdStatus_0x08 = 0x1;
    // if(!*(volatile int *)FLAG1_REMOTE)
    // {
    //     which_buf_remote = 1;
    // }
    // else if(!*(volatile int *)FLAG2_REMOTE)
    // {
    //     which_buf_remote = 2;
    // }
    // else{
    //     which_buf_remote = 0;
    // }
    // return which_buf_remote;
}

void update_count(uint32_t *flag_remote_addr)
{
    while(*pDescSR != 0)
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
    };
    if(*flag_remote_addr == 0)
    {
        count++;
    }
}
void set_remote_falg(uint32_t *desc_group, uint32_t *flag_remote_addr)
{

    uint32_t *dst_lo_buf1_hi = (uint32_t *)read_reg(desc_group, 4);
    uint32_t *dst_lo_buf1_lo = (uint32_t *)read_reg(desc_group+4, 4);
    trans_xdma(*(volatile uint32_t *)flag_remote_addr, 0x00000000, dst_lo_buf1_lo, dst_lo_buf1_hi, 4, 1, 1);

    
    
    // *pDescDirection_0xb0 = 1;
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;
    while(*pDescSR != 0)
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
    };
}

//传输，0->1，并设置接口，每次传4个描述符，
void transfer_set(uint32_t *buf, uint32_t *desc_group)
{
    uint32_t dsc_byp_src_addr_lo;
    uint32_t dsc_byp_src_addr_hi;
    uint32_t dsc_byp_dst_addr_lo;
    uint32_t dsc_byp_dst_addr_hi;
    uint32_t dsc_byp_len;
    uint32_t dsc_byp_ctl;

    uint32_t desc_num;
    desc_num = read_reg((uint32_t *)(desc_group+28), 4);
    int count = 0;
    while(count < desc_num)
    {
        uint32_t len = (uint32_t)read_reg((uint32_t *)(desc_group + 16 + count*12), 4);
        trans_xdma((uint32_t)(buf + len), (uint32_t)(0x00000000), (uint32_t)read_reg((uint32_t *)(desc_group + 20 + count*12), 4), (uint32_t)read_reg((uint32_t *)(desc_group + 24 + count*12), 4), len, count, desc_num);
        count += 1;
        buf += len;
    }       
        
    // *pDescDirection_0xb0 = 1;
    // *pDescAddr_0xb4 = 0x000;
    // *pDescNum_0xb8 = 0x4;
    // *pDescStart_0xbc = 0x1;
    // *pDescStart_0xbc = 0x0;

    while(*pDescSR != 0)
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "wait Descriptor bypass IP ...");
    };
}


void main()
{
    register int i, j, k;
    // initial the interrupt signal
    disable_intr();
    // uint32_t res;
    // uint32_t var;

    // volatile int* m0_addr0 = (volatile int*)(0x00000010 | BRAM0_BASE_ADDR);
    // volatile int* m0_addr1 = (volatile int*)(0x00000014 | BRAM0_BASE_ADDR);


    // volatile int* m1_dsc[0x40];
    // m1_dsc[0x0]  = (volatile int*)(0x00000000 | BRAM1_BASE_ADDR);
    // m1_dsc[0x1]  = (volatile int*)(0x00000010 | BRAM1_BASE_ADDR);
    // m1_dsc[0x2]  = (volatile int*)(0x00000020 | BRAM1_BASE_ADDR);
    // m1_dsc[0x3]  = (volatile int*)(0x00000030 | BRAM1_BASE_ADDR);
    // m1_dsc[0x4]  = (volatile int*)(0x00000040 | BRAM1_BASE_ADDR);
    // m1_dsc[0x5]  = (volatile int*)(0x00000050 | BRAM1_BASE_ADDR);
    // m1_dsc[0x6]  = (volatile int*)(0x00000060 | BRAM1_BASE_ADDR);
    // m1_dsc[0x7]  = (volatile int*)(0x00000070 | BRAM1_BASE_ADDR);
    // m1_dsc[0x8]  = (volatile int*)(0x00000080 | BRAM1_BASE_ADDR);
    // m1_dsc[0x9]  = (volatile int*)(0x00000090 | BRAM1_BASE_ADDR);
    // m1_dsc[0xa]  = (volatile int*)(0x000000a0 | BRAM1_BASE_ADDR);
    // m1_dsc[0xb]  = (volatile int*)(0x000000b0 | BRAM1_BASE_ADDR);
    // m1_dsc[0xc]  = (volatile int*)(0x000000c0 | BRAM1_BASE_ADDR);
    // m1_dsc[0xd]  = (volatile int*)(0x000000d0 | BRAM1_BASE_ADDR);
    // m1_dsc[0xe]  = (volatile int*)(0x000000e0 | BRAM1_BASE_ADDR);
    // m1_dsc[0xf]  = (volatile int*)(0x000000f0 | BRAM1_BASE_ADDR);

    // var = 0;
    // uint32_t dsc_byp_src_addr;
    // uint32_t dsc_byp_dst_addr;
    // uint32_t dsc_byp_len;
    // uint32_t dsc_byp_ctl;
    // uint32_t dsc_byp_src_addr_0;
    // uint32_t dsc_byp_src_addr_1;
    // uint32_t dsc_byp_dst_addr_0;
    // uint32_t dsc_byp_dst_addr_1;

    // uint32_t descAddr = 0x89abcdee;
    // uint32_t descNum = 0x89abcdef;
    // uint32_t descStart = 1;
    
    // uint32_t m0_data0;
    // uint32_t m0_data1;
    // uint32_t m1_data0;
    // uint32_t m1_data1;
    //记录传递的次数
    uint32_t pass_times = 0;
    uint32_t cycle_times = 0;
    uint32_t *local_addr;
    uint32_t *remote_addr;
    uint32_t *buf;
    uint32_t *desc_group;
    uint32_t desc_group_get_remote;
    uint32_t flag_trans = 0;
    uint32_t remote_addr_trans;

    const char SendingBuffer[100] = "####Hello World\n\r";
    XUartLite * instance0 = &XUartLiteInstances0;
    XUartLite_CfgInitialize(instance0,UARTLITE_BASEADDR_0);

    XUartLite_SendAll(instance0, (uint8_t *)SendingBuffer, 17);

    // NOTE: open this one when testing p2p basic operations demo
    p2p_demo();

    
    //此处应该是有一个结束标志
    //uint32_t slice_num = *(uint32_t *)(BRAM0_BASE_ADDR);
    // while(1)
    // {
    //     //等待开始传输信号
    //     while(*pCmdStart_0x04 == 0);
       
    //     if(pass_times % 2 == 0)
    //     {
    //         local_addr = FLAG1;
    //         remote_addr_trans = FLAG1_REMOTE;
    //         buf = BUFFER1;
    //         desc_group = *(uint32_t *)(*(uint32_t *)(stAddrDesc_addr + 4) + stAddrDesc_addr);
    //     }
    //     else
    //     {
    //         local_addr = FLAG2;
    //         remote_addr_trans = FLAG2_REMOTE;
    //         buf = BUFFER2;
    //         desc_group = *(uint32_t *)(*(uint32_t *)(stAddrDesc_addr + 8) + stAddrDesc_addr);
    //     }
    //     if(cycle_times % 2 == 0)
    //     {
    //         remote_addr = FLAG1_REMOTE;
    //         desc_group_get_remote = *(uint32_t *)(*(uint32_t *)(stAddrDesc_addr + 4) + stAddrDesc_addr);
    //     }
    //     else
    //     {
    //         remote_addr = FLAG2_REMOTE;
    //         desc_group_get_remote = *(uint32_t *)(*(uint32_t *)(stAddrDesc_addr + 8) + stAddrDesc_addr);
    //     }
    //     //获取远端的状态
    //     get_remote_flag(desc_group_get_remote, remote_addr);
    //     if(count != 0)
    //     {
    //         //等待ip计算完成
    //         while(get_local_falg(local_addr));

    //         //传输
    //         transfer_set(buf, desc_group);

    //         flag_trans = 1;

    //         count--;

    //         pass_times++count_;
    //     }
    //     update_count(remote_addr);
    //     cycle_times++;
    //     //如果进行了传输，这在完成后需要更新远端flag
    //     if(flag_trans)
    //     {
    //         flag_trans = 0;
    //         set_remote_falg(desc_group+8, remote_addr_trans);
    //     }
    //     //完成了一次传输
    //     *pCmdStatus_0x08 = 0x1;
        
    //     //slice_num--;
    // }
    // *pCmdStart_0x04 = 0;

    

}
