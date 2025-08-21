//+FHDR------------------------------------------------------------------------
//Copyright ownership belongs to CAG laboratory, Institute of Artificial
//Intelligence and Robotics, Xi'an Jiaotong University, shall not be used in
//commercial ways without permission.
//-----------------------------------------------------------------------------
//FILE NAME  : memory_map.inc
//DEPARTMENT : CAG of IAIR
//AUTHOR     : XXXX
//AUTHOR'S EMAIL :XXXX@mail.xjtu.edu.cn
//-----------------------------------------------------------------------------
//Ver 1.0  2019--01--01 initial version.
//-----------------------------------------------------------------------------

// General memory map
#define CLINT             0x02000000
#define PLIC              0x0c000000
#define ITCM              0x00000000
#define DTCM              0x00008000

#define STACK_BASE_ADDR   0x1001fffc

// the HPU register map address
#define NPU_CTRL          0x00001000
#define NPU_STATUS1       0x00001004
#define NPU_STATUS2       0x00001008

#define NPU_CONV0_FM      0x00001100
#define NPU_CONV0_WBC     0x00001104
#define NPU_CONV0_EFM     0x00001108
#define NPU_CONV0_OPT     0x0000110c
#define NPU_CONV0_PARA1   0x00001110
#define NPU_CONV0_PARA2   0x00001114
#define NPU_CONV0_PARA3   0x00001118
#define NPU_CONV0_PARA4   0x0000111c
#define NPU_CONV0_PARA5   0x00001120
#define NPU_CONV0_PARA6   0x00001124
#define NPU_CONV0_PARA7   0x00001128
#define NPU_CONV0_PARA8   0x0000112c
#define NPU_CONV0_PARA9   0x00001130
#define NPU_DWC1_FM       0x00001200
#define NPU_DWC1_WBC      0x00001204
#define NPU_DWC1_EFM      0x00001208
#define NPU_DWC1_OPT      0x0000120c
#define NPU_DWC1_PARA1    0x00001210
#define NPU_DWC1_PARA2    0x00001214
#define NPU_DWC1_PARA3    0x00001218
#define NPU_DWC1_PARA4    0x0000121c
#define NPU_DWC1_PARA5    0x00001220
#define NPU_DWC1_PARA6    0x00001224
#define NPU_DWC1_PARA7    0x00001228
#define NPU_DWC1_PARA8    0x0000122c
#define NPU_DWC1_PARA9    0x00001230
#define NPU_CONV2_FM      0x00001300
#define NPU_CONV2_WBC     0x00001304
#define NPU_CONV2_EFM     0x00001308
#define NPU_CONV2_OPT     0x0000130c
#define NPU_CONV2_PARA1   0x00001310
#define NPU_CONV2_PARA2   0x00001314
#define NPU_CONV2_PARA3   0x00001318
#define NPU_CONV2_PARA4   0x0000131c
#define NPU_CONV2_PARA5   0x00001320
#define NPU_CONV2_PARA6   0x00001324
#define NPU_CONV2_PARA7   0x00001328
#define NPU_CONV2_PARA8   0x0000132c
#define NPU_CONV2_PARA9   0x00001330

#define NPU_UPADD_ADD0    0x00001400
#define NPU_UPADD_ADD1    0x00001404
#define NPU_UPADD_PROD    0x00001408
#define NPU_UPADD_PARA1   0x00001410
#define NPU_UPADD_PARA2   0x00001414

#define DMA_CTRL          0x00004000
#define DMA_STATUS        0x00004004
#define DMA_LD_DDR_ADDR   0x00004008
#define DMA_LD_LM_ADDR    0x0000400c
#define DMA_LD_LEN        0x00004010
#define DMA_LD_OPTION     0x00004014
#define DMA_ST_DDR_ADDR   0x00004018
#define DMA_ST_LM_ADDR    0x0000401c
#define DMA_ST_LEN        0x00004020
