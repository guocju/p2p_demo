
#include "p2p_demo.h"

#define CLOCK 250*1000*1000

void test_uart_print()
{
    uint32_t var = 0xdeadbeef;
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
}

void pool_c2h()
{
    // wait the c2h channel over
    KRNL_LOG_INFO(LOG_SYSTEM, "wait the C2H channel over");
    uint32_t sr;
    while (1)
    {
        sr = *pDescSR;
        KRNL_LOG_INFO(LOG_SYSTEM, "sr is %d", sr);

        if((sr && (0x1 << 1)) == 0)
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "C2H Channel turns to idle");
            break;
        }
    }

    return;
}

void pool_h2c()
{
    // wait the c2h channel over
    KRNL_LOG_INFO(LOG_SYSTEM, "wait the H2C channel over");
    uint32_t sr;
    while (1)
    {
        sr = *pDescSR;
        KRNL_LOG_INFO(LOG_SYSTEM, "sr is %d", sr);

        if((sr && (0x1 << 0)) == 0)
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "H2C Channel turns to idle");
            break;
        }
    }

    return;
}

void get_head(uint32_t head_hi, uint32_t head_lo)
{
    *(uint32_t*)(BASE_H2C_BRAM | (0x0)) = head_lo;
    *(uint32_t*)(BASE_H2C_BRAM | (0x4)) = head_hi;
    uint32_t dst = (BASE_FLAG_BRAM | 0x8);
    *(uint32_t*)(BASE_H2C_BRAM | (0x8)) = dst;
    *(uint32_t*)(BASE_H2C_BRAM | (0xc)) = 0x00000000;
    *(uint32_t*)(BASE_H2C_BRAM | (0x10)) = 4 * 1024;
    *(uint32_t*)(BASE_H2C_BRAM | (0x14)) = 0x1;

    // *(uint32_t*)(BASE_H2C_BRAM | (0x0)) = status_lo;
    // *(uint32_t*)(BASE_H2C_BRAM | (0x4)) = status_hi;
    // dst = (BASE_FLAG_BRAM | (0x10 + 8 * 1024));
    // *(uint32_t*)(BASE_H2C_BRAM | (0x8)) = dst;
    // *(uint32_t*)(BASE_H2C_BRAM | (0xc)) = 0x00000000;
    // *(uint32_t*)(BASE_H2C_BRAM | (0x10)) = 4 * 1024;
    // *(uint32_t*)(BASE_H2C_BRAM | (0x14)) = 0x1;

    KRNL_LOG_INFO(LOG_SYSTEM, "get head from %08x_%08x (gpu) to %08x (fpga)", head_hi, head_lo, dst);
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x20) = 0x0;
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x24) = 1;

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x1;
}

void update_tail(uint32_t tail_hi, uint32_t tail_lo)
{
    uint32_t src = (BASE_FLAG_BRAM | (0x8 + 4 * 1024));
    *(uint32_t*)(BASE_C2H_BRAM |(0x0)) = src;
    *(uint32_t*)(BASE_C2H_BRAM |(0x4)) = 0x00000000;
    *(uint32_t*)(BASE_C2H_BRAM | (0x8)) = tail_lo;
    *(uint32_t*)(BASE_C2H_BRAM | (0xc)) = tail_hi;
    *(uint32_t*)(BASE_C2H_BRAM | (0x10)) = 4 * 1024;
    *(uint32_t*)(BASE_C2H_BRAM | (0x14)) = 0x1;

    // src = (BASE_FLAG_BRAM | (0x10 + 8 * 1024));
    // *(uint32_t*)(BASE_C2H_BRAM |(0x0)) = src;
    // *(uint32_t*)(BASE_C2H_BRAM |(0x4)) = 0x00000000;
    // *(uint32_t*)(BASE_C2H_BRAM | (0x8)) = status_lo;
    // *(uint32_t*)(BASE_C2H_BRAM | (0xc)) = status_hi;
    // *(uint32_t*)(BASE_C2H_BRAM | (0x10)) = 4 * 1024;
    // *(uint32_t*)(BASE_C2H_BRAM | (0x14)) = 0x1;

    KRNL_LOG_INFO(LOG_SYSTEM, "update tail from %08x (fpga) to %08x_%08x (gpu)", src, tail_hi, tail_lo);
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x40) = 0x0;
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x44) = 1;

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x2;
}


void trans(uint32_t src, uint32_t gbuf_addr, uint32_t bytes)
{
    //C2H
    KRNL_LOG_INFO(LOG_SYSTEM, "trans start");
    uint32_t fpga_lo = src;
    uint32_t desc_num = *(uint32_t*)gbuf_addr;
    KRNL_LOG_INFO(LOG_SYSTEM, "desc num: %d", desc_num);
    uint32_t k = (bytes + 64 * 1024 - 1) / (64 * 1024);
    uint32_t remote_lo;
    uint32_t remote_hi;
    uint32_t len;
    uint32_t ctrl;
    if(desc_num < k)
    {
        KRNL_LOG_INFO(LOG_SYSTEM, "the data size is greater than gpu buf size");
        return;
    }
    for(int i = 0; i < k; i++)
    {
        remote_lo = *(uint32_t*)(gbuf_addr + 0x4 + i * 12);
        remote_hi = *(uint32_t*)(gbuf_addr + 0x8 + i * 12);
        len = *(uint32_t*)(gbuf_addr + 0xc + i * 12);
        ctrl = (i == (k - 1)) ? 0x1 : 0x4;
        *(uint32_t*)(BASE_C2H_BRAM |(i * 0x20 + 0x0)) = fpga_lo;
        *(uint32_t*)(BASE_C2H_BRAM |(i * 0x20 + 0x4)) = 0x00000000;
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x8)) = remote_lo;
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0xc)) = remote_hi;
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x10)) = (i == (k - 1)) ? len : (bytes % (64 * 1024));
        *(uint32_t*)(BASE_C2H_BRAM | (i * 0x20 + 0x14)) = ctrl;
        fpga_lo += len;
        KRNL_LOG_INFO(LOG_SYSTEM, "remote addr: %08x_%08x, fpga: %08x", remote_hi, remote_lo, fpga_lo);
    }
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x40) = 0x0;
    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x44) = k;
    KRNL_LOG_INFO(LOG_SYSTEM, "all times: %d", k);

    *(uint32_t*)(BASE_ADDR_DSC_CTL | 0x0) = 0x2;
}

void process_desc()
{
    // plddr: p2p 0x0 - 0x1fffffff; acc 0x20000000
    KRNL_LOG_INFO(LOG_SYSTEM, "parse info from host");
    uint32_t info_addr = 0x00000000;
    uint32_t buf_num = *(uint32_t*)(info_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "buf_num: %d", buf_num);
    info_addr += 4;
    uint32_t head_hi = *(uint32_t*)(info_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "head_hi: %08x", head_hi);
    info_addr += 4;
    uint32_t head_lo = *(uint32_t*)(info_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "head_lo: %08x", head_lo);
    info_addr += 4;
    uint32_t tail_hi = *(uint32_t*)(info_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "tail_hi: %08x", tail_hi);
    info_addr += 4;
    uint32_t tail_lo = *(uint32_t*)(info_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "tail_lo: %08x", tail_lo);
    info_addr += 4;

    uint32_t size_group = (1 + 8 * 3) * sizeof(uint32_t);
    
    uint32_t IP_OVER = 0;
    // bank size in plddr
    uint32_t bytes = 32 * 1024;
    uint32_t pl_buf_num = 4;
    // IP head -> IP tail -> GPU head -> GPU tail -> IP over
    // IP h/t content is the address
    // GPU h/t content is the index
    uint32_t IP_head = *(uint32_t*)(BASE_FLAG_BRAM | 0x00000000);
    uint32_t IP_tail = IP_head + 1;
    uint32_t GPU_head = 0;
    uint32_t GPU_tail = 0;
    uint32_t trans_time = 0;
    uint32_t cycle = 0;
    uint32_t src;
    uint32_t gpu_buf;
    uint32_t ACC_DDR_ADDR = IP_head;
    // 0 : head catch up tail
    // 1 : tail catch up head
    *(uint32_t*)(BASE_FLAG_BRAM | (0x10 + 8 * 1024)) = 0;

    while (!IP_OVER | !(IP_head == IP_tail) | !(*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 0))
    {
        IP_tail = *(uint32_t*)(BASE_FLAG_BRAM | 0x00000004);
        KRNL_LOG_INFO(LOG_SYSTEM, "IP tail: %08x", IP_tail);
        if((IP_head == IP_tail) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 0))
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "ip head = tail!");
            break;
        }
        else
        {
            GPU_head = *(uint32_t*)(BASE_FLAG_BRAM | (0x8));
            KRNL_LOG_INFO(LOG_SYSTEM, "GPU head: %d", GPU_head);
            if((GPU_head == ((GPU_tail + 1) % buf_num)))
            {
                KRNL_LOG_INFO(LOG_SYSTEM, "gpu head = tail!");
                get_head(head_hi, head_lo);
                pool_h2c();
                break;
            }
            else
            {
                src = IP_head;
                KRNL_LOG_INFO(LOG_SYSTEM, "IP head: %08x", IP_head);
                get_head(head_hi, head_lo);
                IP_head = ACC_DDR_ADDR + ((cycle + 1) % pl_buf_num) * bytes;
                gpu_buf = info_addr + GPU_tail * size_group;
                KRNL_LOG_INFO(LOG_SYSTEM, "GPU tail: %d", GPU_tail);
                trans(src, gpu_buf, bytes);
                pool_c2h();
                if(IP_head == IP_tail)
                {
                    *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 0;
                }
                *(uint32_t*)(BASE_FLAG_BRAM | 0x0) = IP_head;
                GPU_tail = (GPU_tail + 1) % buf_num;
                *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 4 * 1024)) = GPU_tail;
                update_tail(tail_hi, tail_lo);
                pool_c2h();
                pool_h2c();

                cycle++;
                IP_OVER = *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024));
            }
        }
    }
    
}


void performance_monitor()
{
    uint32_t perfH2CLen;
    uint32_t perfH2CCycle;
    uint32_t perfH2CSpeed;
    uint32_t perfC2HLen;
    uint32_t perfC2HCycle;
    uint32_t perfC2HSpeed;

    perfH2CLen = *pDescH2CPerfLen;
    perfH2CCycle = *pDescH2CPerfCycle;
    perfH2CSpeed = CLOCK * (perfH2CLen / perfH2CCycle) / (1024 * 1024 * 1024);

    perfC2HLen = *pDescC2HPerfLen;
    perfC2HCycle = *pDescC2HPerfCycle;
    perfC2HSpeed = CLOCK * (perfC2HLen / perfC2HCycle) / (1024 * 1024);

    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c len: %08x", *pDescH2CPerfLen);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c cycle: %08x", *pDescH2CPerfCycle);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c DescSent: %08x", *pDescH2CPerfDescSent);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf h2c speed: %d MBytes per second", perfH2CSpeed);

    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h len: %08x", *pDescC2HPerfLen);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h cycle: %08x", *pDescC2HPerfCycle);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h DescSent: %08x", *pDescC2HPerfDescSent);
    KRNL_LOG_INFO(LOG_SYSTEM, "desc perf c2h speed: %d GBytes per second", perfC2HSpeed);
}



void p2p_demo()
{
    // initial the interrupt signal
    test_uart_print();

    KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");

    // while(*pCmdStart_0x04 == 0);

    // set rv status to busy
    *pCmdStatus_0x08 = 1;

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");

    process_desc();

    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
    asm volatile("wfi");

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
    while(1);

}
