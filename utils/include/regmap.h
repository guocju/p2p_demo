#include <stdint.h>
#define REG_INIT_PC 0x0

#define REG_HIPU_CR 0x4
#define REG_HIPU_CR_BIT_START_CONV 1
#define REG_HIPU_SR 0x8

#define BASE_ADDR 0x00010000
#define MAX_GROUP_NUM 16
#define MAX_DESC_PER_GROUP 16

struct AddrDescUnit
{
    uint32_t remote_addr_lo;
    uint32_t remote_addr_hi;
    uint32_t len;
};

struct AddrGroup
{
    uint32_t flag_hi_read;
    uint32_t flag_hi_write;
    uint32_t flag_lo_read;
    uint32_t flag_lo_write;

    uint32_t flag_offset;
    uint32_t desc_num;
    struct AddrDescUnit desc_list[MAX_DESC_PER_GROUP];
};

struct AddrDesc
{
    uint32_t head_lo;
    uint32_t head_hi;
    uint32_t tail_lo;
    uint32_t tail_hi;
    uint32_t group_num;
    uint32_t group_offset[MAX_GROUP_NUM];
    struct AddrGroup group[MAX_GROUP_NUM];
}stAddrDesc;

