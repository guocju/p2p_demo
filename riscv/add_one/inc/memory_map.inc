# +FHDR------------------------------------------------------------------------
# Copyright ownership belongs to CAG laboratory, Institute of Artificial
# Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
# commercial ways without permission.
# -----------------------------------------------------------------------------
# FILE NAME  : memory_map.inc
# DEPARTMENT : CAG of IAIR
# AUTHOR     : XXXX
# AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
# -----------------------------------------------------------------------------
# Ver 1.0  2019--01--01 initial version.
# -----------------------------------------------------------------------------

# General memory map
.equ CLINT,             0x02000000                  # Core local interrupt controller register region, 0x02000000 - 0x0200ffff
.equ PLIC,              0x0c000000                  # Platform level interrupt controller register region, 0x0c000000 - 0x0cffffff
.equ ITCM,              0x00000000                  # Instruction tightly coupled memory region, 0x00010000 - 0x0001ffff
.equ DTCM,              0x00008000                  # Data tightly coupled memory region, 0x00020000 - 0x0002ffff

.equ STACK_BASE_ADDR,   0x1001fffc

# the HPU register map address
.equ NPU_CTRL,          0x00001000
.equ NPU_STATUS1,       0x00001004
.equ NPU_STATUS2,       0x00001008

.equ NPU_CONV0_FM,      0x00001100
.equ NPU_CONV0_WBC,     0x00001104
.equ NPU_CONV0_EFM,     0x00001108
.equ NPU_CONV0_OPT,     0x0000110c
.equ NPU_CONV0_PARA1,   0x00001110
.equ NPU_CONV0_PARA2,   0x00001114
.equ NPU_CONV0_PARA3,   0x00001118
.equ NPU_CONV0_PARA4,   0x0000111c
.equ NPU_CONV0_PARA5,   0x00001120
.equ NPU_CONV0_PARA6,   0x00001124
.equ NPU_CONV0_PARA7,   0x00001128
.equ NPU_CONV0_PARA8,   0x0000112c
.equ NPU_CONV0_PARA9,   0x00001130
.equ NPU_DWC1_FM,       0x00001200
.equ NPU_DWC1_WBC,      0x00001204
.equ NPU_DWC1_EFM,      0x00001208
.equ NPU_DWC1_OPT,      0x0000120c
.equ NPU_DWC1_PARA1,    0x00001210
.equ NPU_DWC1_PARA2,    0x00001214
.equ NPU_DWC1_PARA3,    0x00001218
.equ NPU_DWC1_PARA4,    0x0000121c
.equ NPU_DWC1_PARA5,    0x00001220
.equ NPU_DWC1_PARA6,    0x00001224
.equ NPU_DWC1_PARA7,    0x00001228
.equ NPU_DWC1_PARA8,    0x0000122c
.equ NPU_DWC1_PARA9,    0x00001230
.equ NPU_CONV2_FM,      0x00001300
.equ NPU_CONV2_WBC,     0x00001304
.equ NPU_CONV2_EFM,     0x00001308
.equ NPU_CONV2_OPT,     0x0000130c
.equ NPU_CONV2_PARA1,   0x00001310
.equ NPU_CONV2_PARA2,   0x00001314
.equ NPU_CONV2_PARA3,   0x00001318
.equ NPU_CONV2_PARA4,   0x0000131c
.equ NPU_CONV2_PARA5,   0x00001320
.equ NPU_CONV2_PARA6,   0x00001324
.equ NPU_CONV2_PARA7,   0x00001328
.equ NPU_CONV2_PARA8,   0x0000132c
.equ NPU_CONV2_PARA9,   0x00001330

.equ NPU_UPADD_ADD0,    0x00001400
.equ NPU_UPADD_ADD1,    0x00001404
.equ NPU_UPADD_PROD,    0x00001408
.equ NPU_UPADD_PARA1,   0x00001410
.equ NPU_UPADD_PARA2,   0x00001414

.equ DMA_CTRL,          0x00004000
.equ DMA_STATUS,        0x00004004
.equ DMA_LD_DDR_ADDR,   0x00004008
.equ DMA_LD_LM_ADDR,    0x0000400c
.equ DMA_LD_LEN,        0x00004010
.equ DMA_LD_OPTION,     0x00004014
.equ DMA_ST_DDR_ADDR,   0x00004018
.equ DMA_ST_LM_ADDR,    0x0000401c
.equ DMA_ST_LEN,        0x00004020
