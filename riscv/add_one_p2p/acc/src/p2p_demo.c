
#include "p2p_demo.h"

#define CLOCK 250 * 1000 * 1000

int dma_check()
{
    return (3 - *(volatile int *)(DMA_STATUS));
}

void dma_set_done(int done)
{
    *(volatile int *)(DMA_STATUS) = done;
    // int dma_status = *(volatile int*)(DMA_STATUS);
    // KRNL_LOG_INFO(LOG_SYSTEM, "DMA_STATUS:%08d", "PRINT", dma_status);
}

void fetchDMA(uint32_t ddr_addr, uint32_t lm_addr_i, uint32_t len)
{
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
    {
        len_align = len;
    }
    else
    {
        len_align = ((len + 63) / 64) * 64;
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_i_ = lm_addr_i >> 6;
    int p_ld_option[1] = {0 | (0x1 << 20) | (0x1 << 16)};
    KRNL_LOG_INFO(LOG_SYSTEM, "start fetch");
    *((volatile uint32_t *)DMA_LD_DDR_ADDR) = (uint32_t)ddr_addr;
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_i);
    *(volatile int *)(DMA_LD_LEN) = (int)(len_align >> 6);
    *(volatile int *)(DMA_LD_LM_ADDR) = (int)(lm_addr_i_);
    *(volatile int *)(DMA_LD_CONCAT) = (int)(len_align >> 6);
    *(volatile int *)(DMA_OPTION) = (int)(p_ld_option[0]);
    *(volatile int *)(DMA_CTRL) = (int)1;
}


void putDMA(int ddr_addr, int lm_addr_o, int len)
{
    // aligning 64B
    uint32_t len_align;
    if((len % 64) == 0)
    {
        len_align = len;
    }
    else
    {
        len_align = ((len / 64) + 1) * 64;
    }
    // uint32_t ddr_addr_ = ddr_addr >> 6;
    uint32_t lm_addr_o_ = lm_addr_o >> 6;
    KRNL_LOG_INFO(LOG_SYSTEM, "start put");
    KRNL_LOG_INFO(LOG_SYSTEM, "DDR Address:%08x", ddr_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "Local Memery:%08x", lm_addr_o);
    *(volatile int *)(DMA_ST_DDR_ADDR) = (int)ddr_addr;
    *(volatile int *)(DMA_ST_LM_ADDR) = (int)lm_addr_o_;
    *(volatile int *)(DMA_ST_LEN) = (int)(len_align >> 6);
    *(volatile int *)(DMA_OPTION) = (int)((0x1 << 20) | (0x1 << 16));
    *(volatile int *)(DMA_CTRL) = (int)2;
}

void IP(uint32_t dst_lm_addr, uint32_t src_lm_addr, uint32_t SliceSize, uint32_t PlusNum)
{
    uint32_t slicesize = ((SliceSize + 63) / 64) * 64;
    uint32_t res_dst_lm_addr = dst_lm_addr >> 6;
    uint32_t res_src_lm_addr = src_lm_addr >> 6;

    uint32_t data_npu_conv_fm = ((res_dst_lm_addr) & 0xFFFF) << 16 | ((res_src_lm_addr) & 0xFFFF);
    uint32_t data_npu_conv_wbc = ((PlusNum) & 0xFFFF) << 16 | ((slicesize) & 0xFFFF);
    uint32_t data_npu_ctrl = 0x1;

    *(volatile uint32_t *)NPU_CONV_FM = data_npu_conv_fm;
    *(volatile uint32_t *)NPU_CONV_WBC = data_npu_conv_wbc;
    *(volatile uint32_t *)NPU_CTRL = data_npu_ctrl;

    KRNL_LOG_INFO(LOG_SYSTEM, "_____IP______");
    KRNL_LOG_INFO(LOG_SYSTEM, "dst lm addr : %08x, src lm addr : %08x", dst_lm_addr, src_lm_addr);
    KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV FM : %08x", data_npu_conv_fm);
    KRNL_LOG_INFO(LOG_SYSTEM, "NPU CONV WBC : %08x", data_npu_conv_wbc);
}

void wait_ip()
{
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP OVER______");
    while (!(*(volatile uint32_t *)NPU_STATUS1 & 0x1));
    KRNL_LOG_INFO(LOG_SYSTEM, "______IP really OVER______");
}

void init_acc(uint32_t out_buf)
{
    // init IP head and tail
    // head
    *(uint32_t*)(BASE_FLAG_BRAM | 0x0) = out_buf;
    // tail
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = out_buf;

    *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024)) = 0;

    // 0 : head catch up tail
    // 1 : tail catch up head
    *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 0;
}

void wrap_buf(uint32_t lo, uint32_t hi, uint32_t size, uint32_t num, uint32_t addr, uint32_t over)
{
    uint32_t ddr = addr;
    *(uint32_t*)ddr = over;
    ddr += 4;
    *(uint32_t*)ddr = 0x0;
    ddr += 4;
    *(uint32_t*)ddr = lo;
    ddr += 4;
    *(uint32_t*)ddr = hi;
    ddr += 4;
    *(uint32_t*)ddr = size;
    ddr += 4;
    *(uint32_t*)ddr = 0x0;
    ddr += 4;
    *(uint32_t*)ddr = (lo + size);
    ddr += 4;
    *(uint32_t*)ddr = hi;
    ddr += 4;
    *(uint32_t*)ddr = num;
    ddr += 4;
}

#define BANK_SIZE_LM 32 * 1024

uint32_t all_proc_head_tail(uint32_t inbuf, uint32_t outbuf, uint32_t input_length, uint32_t plus, uint32_t buf_size, uint32_t buf_num,
                            uint32_t plus_g, uint32_t gpu_addr_plddr, uint32_t gpu_buf_num,
                            uint32_t slice_num)
{
    init_acc(outbuf);
    dma_set_done(3);
    uint32_t data = inbuf;
    KRNL_LOG_INFO(LOG_SYSTEM, "data: %08x", data);
    uint32_t tail = outbuf;
    uint32_t head = outbuf;
    uint32_t gpu_addr_lo[10];
    uint32_t gpu_addr_hi[10];
    uint32_t slice_size = input_length * sizeof(uint8_t);

    for(int i = 0; i < gpu_buf_num; i++)
    {
        // little-endian
        gpu_addr_lo[i] = *(uint32_t*)(gpu_addr_plddr + 8 * i);
        gpu_addr_hi[i] = *(uint32_t*)(gpu_addr_plddr + 4 + 8 * i);
    }

    uint32_t k = 0;
    fetchDMA(data, MMA_START_ADDR, slice_size);
    DMA_CHECK;
    k++;

    fetchDMA((data + k * slice_size), (MMA_START_ADDR + (k % 4) * BANK_SIZE_LM), slice_size);
    IP(MMA_BANK_RES_ADDR, MMA_START_ADDR, slice_size, plus);
    DMA_CHECK;
    wait_ip();
    k++;
    uint32_t cycle = slice_num - 2;
    while(cycle > 0)
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
        if((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
        {
            KRNL_LOG_INFO(LOG_SYSTEM, "tail = head!");
            break;
        }
        wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0);
        putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
        IP((MMA_BANK_RES_ADDR + ((k-1) % 4) * BANK_SIZE_LM), (MMA_START_ADDR + ((k-1) % 4) * BANK_SIZE_LM), slice_size, plus);
        DMA_CHECK;
        fetchDMA((data + k * slice_size), (MMA_START_ADDR + (k % 4) * BANK_SIZE_LM), slice_size);
        wait_ip();
        DMA_CHECK;
        tail = (outbuf + (((k-1) % buf_num) * buf_size));
        if(tail == head)
        {
            *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
        }
        *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;
        cycle--;
        k++;
    }
    head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
    }
    wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0);
    putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
    IP((MMA_BANK_RES_ADDR + ((k-1) % 4) * BANK_SIZE_LM), (MMA_START_ADDR + ((k-1) % 4) * BANK_SIZE_LM), slice_size, plus);
    DMA_CHECK;
    wait_ip();
    tail = (outbuf + (((k-1) % buf_num) * buf_size));
    if(tail == head)
    {
        *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
    }
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;
    k++;


    head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
    while((tail == head) & (*(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) == 1))
    {
        head = *(uint32_t*)(BASE_FLAG_BRAM | 0x0);
    }
    wrap_buf(gpu_addr_lo[((k-2) % gpu_buf_num)], gpu_addr_hi[((k-2) % gpu_buf_num)], slice_size, plus_g, (outbuf + (((k-2) % buf_num) * buf_size)), 0xffffffff);
    putDMA((outbuf + 32 + (((k-2) % buf_num) * buf_size)), (MMA_BANK_RES_ADDR + (((k-1) % 4) * BANK_SIZE_LM)), slice_size);
    tail = (outbuf + (((k-1) % buf_num) * buf_size));
    if(tail == head)
    {
        *(uint32_t*)(BASE_FLAG_BRAM | (0xc + 8 * 1024)) = 1;
    }
    *(uint32_t*)(BASE_FLAG_BRAM | 0x4) = tail;


    *(uint32_t*)(BASE_FLAG_BRAM | (0x8 + 8 * 1024)) = 1;
}

uint32_t all_proc_no_head(uint32_t inbuf, uint32_t outbuf, uint32_t input_length, uint32_t plus)
{
    // inbuf : source data
    // outbuf : IP result in ddr
    // input_length
    // plus : plus num
    uint32_t slice_size = input_length * sizeof(uint8_t);
    uint32_t data = (uint32_t)inbuf;
    KRNL_LOG_INFO(LOG_SYSTEM, "data: %08x", data);
    uint32_t result = (uint32_t)outbuf;

    dma_set_done(3);
    KRNL_LOG_INFO(LOG_SYSTEM, "dma set done");

    fetchDMA(data, (MMA_START_ADDR), slice_size);
    KRNL_LOG_INFO(LOG_SYSTEM, "DMA CHECK!");
    DMA_CHECK;

    IP((MMA_BANK_RES_ADDR), (MMA_START_ADDR), slice_size, plus);
    KRNL_LOG_INFO(LOG_SYSTEM, "IP ###### is working");
    KRNL_LOG_INFO(LOG_SYSTEM, "start wait ip!!!!");
    wait_ip();

    putDMA((result), (MMA_BANK_RES_ADDR), slice_size);
    DMA_CHECK;
}

void test_uart_print()
{
    uint32_t var = 0xdeadbeef;
    KRNL_LOG_INFO(LOG_SYSTEM, "####example: %s, hex %08x, dec %08d!!!", "PRINT", var, var);
}

void all_proc_()
{
    uint32_t in_buf;
    uint32_t out_buf;
    uint32_t length;
    uint32_t plus;

    // BASE H2C BRAM: the base addr of BRAM
    static uint32_t DDR_BASE_INFO = 0x20000000;
    in_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x0);
    KRNL_LOG_INFO(LOG_SYSTEM, "in buf %08x", in_buf);
    out_buf = *(volatile uint32_t *)(DDR_BASE_INFO | 0x4);
    KRNL_LOG_INFO(LOG_SYSTEM, "out buf %08x", out_buf);
    length = *(volatile uint32_t *)(DDR_BASE_INFO | 0x8);
    KRNL_LOG_INFO(LOG_SYSTEM, "slice length %08x", length);
    plus = *(volatile uint32_t *)(DDR_BASE_INFO | 0xc);
    KRNL_LOG_INFO(LOG_SYSTEM, "plus %08x", plus);

    all_proc_no_head(in_buf, out_buf, length, plus);
    KRNL_LOG_INFO(LOG_SYSTEM, "_________________OVER!!!!!");
}

void p2p_demo()
{
    // initial the interrupt signal
    test_uart_print();

    KRNL_LOG_INFO(LOG_SYSTEM, "wait start indication from host");

    while(*pCmdStart_0x04 == 0);

    // set rv status to busy
    *pCmdStatus_0x08 = 1;

    KRNL_LOG_INFO(LOG_SYSTEM, "received start indication from host");
    KRNL_LOG_INFO(LOG_SYSTEM, "12345678901234567890");
    KRNL_LOG_INFO(LOG_SYSTEM, "12345678901234567890");

    all_proc_();


    KRNL_LOG_INFO(LOG_SYSTEM, "#### end of riscv");

    // set rv status to idle
    *pCmdStatus_0x08 = 0;
    KRNL_LOG_INFO(LOG_SYSTEM, "#### wait for restart");
    KRNL_LOG_INFO(LOG_SYSTEM, "#### before wfi");
    asm volatile("wfi");

    KRNL_LOG_INFO(LOG_SYSTEM, "#### before loop");
    while (1);
}