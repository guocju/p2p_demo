/******************************************************************************
*
* Copyright (C) 2002 - 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/****************************************************************************/
/**
*
* @file xuartlite_l.h
* @addtogroup uartlite_v3_2
* @{
*
* This header file contains identifiers and low-level driver functions (or
* macros) that can be used to access the device.  High-level driver functions
* are defined in xuartlite.h.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00b rpm  04/25/02 First release
* 1.00b rpm  07/07/03 Removed references to XUartLite_GetControlReg macro
*                     since the control register is write-only
* 1.12a mta  03/21/07 Updated to new coding style
* 1.13a sv   01/21/08 Updated driver to support access through DCR bus
* 2.00a ktn  10/20/09 Updated to use HAL Processor APIs. The macros have been
*		      renamed to remove _m from the name.
* 3.2   sk   11/10/15 Used UINTPTR instead of uint32_t for Baseaddress CR# 867425.
*                     Changed the prototypes of XUartLite_SendByte,
*                     XUartLite_RecvByte APIs.
* </pre>
*
*****************************************************************************/

#ifndef XUARTLITE_L_H /* prevent circular inclusions */
#define XUARTLITE_L_H /* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files ********************************/
#include<stdint.h>
/*
 * XPAR_XUARTLITE_USE_DCR_BRIDGE has to be set to 1 if the UartLite device is
 * accessed through a DCR bus connected to a bridge.
 */

/************************** Constant Definitions ****************************/

/************************** Static Inlines ****************************/

static inline uint32_t Xil_In32(uintptr_t Addr)
{
	return *(volatile uint32_t *) Addr;
}

static inline void Xil_Out32(uintptr_t Addr, uint32_t Value)
{
	volatile uint32_t *LocalAddr = (volatile uint32_t *)Addr;
	*LocalAddr = Value;
}

#define UARTLITE_BASEADDR_0 (( uintptr_t )0x01000000)
#define UARTLITE_BASEADDR_1 (( uintptr_t )0x10001000)
#define UARTLITE_BASEADDR_2 (( uintptr_t )0x10003000)

#define XIL_COMPONENT_IS_READY     0x11111111U  /**< In device drivers, This macro will be
                                                 assigend to "IsReady" member of driver
												 instance to indicate that driver
												 instance is initialized and ready to use. */
#define XIL_COMPONENT_IS_STARTED   0x22222222U  /**< In device drivers, This macro will be assigend to
                                                 "IsStarted" member of driver instance
												 to indicate that driver instance is
												 started and it can be enabled. */


/* UART Lite register offsets */

#define XUL_RX_FIFO_OFFSET		0	/* receive FIFO, read only */
#define XUL_TX_FIFO_OFFSET		4	/* transmit FIFO, write only */
#define XUL_STATUS_REG_OFFSET		8	/* status register, read only */
#define XUL_CONTROL_REG_OFFSET		12	/* control reg, write only */


/* Control Register bit positions */

#define XUL_CR_ENABLE_INTR		0x10	/* enable interrupt */
#define XUL_CR_FIFO_RX_RESET		0x02	/* reset receive FIFO */
#define XUL_CR_FIFO_TX_RESET		0x01	/* reset transmit FIFO */

/* Status Register bit positions */

#define XUL_SR_PARITY_ERROR		0x80
#define XUL_SR_FRAMING_ERROR		0x40
#define XUL_SR_OVERRUN_ERROR		0x20
#define XUL_SR_INTR_ENABLED		0x10	/* interrupt enabled */
#define XUL_SR_TX_FIFO_FULL		0x08	/* transmit FIFO full */
#define XUL_SR_TX_FIFO_EMPTY		0x04	/* transmit FIFO empty */
#define XUL_SR_RX_FIFO_FULL		0x02	/* receive FIFO full */
#define XUL_SR_RX_FIFO_VALID_DATA	0x01	/* data in receive FIFO */

/* The following constant specifies the size of the Transmit/Receive FIFOs.
 * The FIFO size is fixed to 16 in the Uartlite IP and the size is not
 * configurable. This constant is not used in the driver.
 */
#define XUL_FIFO_SIZE			16

/* Stop bits are fixed at 1. Baud, parity, and data bits are fixed on a
 * per instance basis
 */
#define XUL_STOP_BITS			1

/* Parity definitions
 */
#define XUL_PARITY_NONE			0
#define XUL_PARITY_ODD			1
#define XUL_PARITY_EVEN			2

/**************************** Type Definitions ******************************/

/***************** Macros (Inline Functions) Definitions ********************/

/*
 * Define the appropriate I/O access method to memory mapped I/O or DCR.
 */


#define XUartLite_In32  Xil_In32
#define XUartLite_Out32 Xil_Out32



/****************************************************************************/
/**
*
* Write a value to a UartLite register. A 32 bit write is performed.
*
* @param	BaseAddress is the base address of the UartLite device.
* @param	RegOffset is the register offset from the base to write to.
* @param	Data is the data written to the register.
*
* @return	None.
*
* @note		C-style signature:
*		void XUartLite_WriteReg(uint32_t BaseAddress, uint32_t RegOffset,
*					uint32_t Data)
*
****************************************************************************/
#define XUartLite_WriteReg(BaseAddress, RegOffset, Data) \
	XUartLite_Out32((BaseAddress) + (RegOffset), (uint32_t)(Data))

/****************************************************************************/
/**
*
* Read a value from a UartLite register. A 32 bit read is performed.
*
* @param	BaseAddress is the base address of the UartLite device.
* @param	RegOffset is the register offset from the base to read from.
*
* @return	Data read from the register.
*
* @note		C-style signature:
*		uint32_t XUartLite_ReadReg(uint32_t BaseAddress, uint32_t RegOffset)
*
****************************************************************************/
#define XUartLite_ReadReg(BaseAddress, RegOffset) \
	XUartLite_In32((BaseAddress) + (RegOffset))


/****************************************************************************/
/**
*
* Set the contents of the control register. Use the XUL_CR_* constants defined
* above to create the bit-mask to be written to the register.
*
* @param	BaseAddress is the base address of the device
* @param	Mask is the 32-bit value to write to the control register
*
* @return	None.
*
* @note		C-style Signature:
*		void XUartLite_SetControlReg(uint32_t BaseAddress, uint32_t Mask);
*
*****************************************************************************/
#define XUartLite_SetControlReg(BaseAddress, Mask) \
	XUartLite_WriteReg((BaseAddress), XUL_CONTROL_REG_OFFSET, (Mask))


/****************************************************************************/
/**
*
* Get the contents of the status register. Use the XUL_SR_* constants defined
* above to interpret the bit-mask returned.
*
* @param	BaseAddress is the  base address of the device
*
* @return	A 32-bit value representing the contents of the status register.
*
* @note		C-style Signature:
*		uint32_t XUartLite_GetStatusReg(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_GetStatusReg(BaseAddress) \
		XUartLite_ReadReg((BaseAddress), XUL_STATUS_REG_OFFSET)


/****************************************************************************/
/**
*
* Check to see if the receiver has data.
*
* @param	BaseAddress is the  base address of the device
*
* @return	TRUE if the receiver is empty, FALSE if there is data present.
*
* @note		C-style Signature:
*		int XUartLite_IsReceiveEmpty(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_IsReceiveEmpty(BaseAddress) \
  ((XUartLite_GetStatusReg((BaseAddress)) & XUL_SR_RX_FIFO_VALID_DATA) != \
	XUL_SR_RX_FIFO_VALID_DATA)


/****************************************************************************/
/**
*
* Check to see if the transmitter is full.
*
* @param	BaseAddress is the  base address of the device
*
* @return	TRUE if the transmitter is full, FALSE otherwise.
*
* @note		C-style Signature:
* 		int XUartLite_IsTransmitFull(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_IsTransmitFull(BaseAddress) \
	((XUartLite_GetStatusReg((BaseAddress)) & XUL_SR_TX_FIFO_FULL) == \
	  XUL_SR_TX_FIFO_FULL)


/****************************************************************************/
/**
*
* Check to see if the interrupt is enabled.
*
* @param	BaseAddress is the  base address of the device
*
* @return	TRUE if the interrupt is enabled, FALSE otherwise.
*
* @note		C-style Signature:
*		int XUartLite_IsIntrEnabled(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_IsIntrEnabled(BaseAddress) \
	((XUartLite_GetStatusReg((BaseAddress)) & XUL_SR_INTR_ENABLED) == \
	  XUL_SR_INTR_ENABLED)


/****************************************************************************/
/**
*
* Enable the device interrupt. We cannot read the control register, so we
* just write the enable interrupt bit and clear all others. Since the only
* other ones are the FIFO reset bits, this works without side effects.
*
* @param	BaseAddress is the  base address of the device
*
* @return	None.
*
* @note		C-style Signature:
* 		void XUartLite_EnableIntr(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_EnableIntr(BaseAddress) \
		XUartLite_SetControlReg((BaseAddress), XUL_CR_ENABLE_INTR)


/****************************************************************************/
/**
*
* Disable the device interrupt. We cannot read the control register, so we
* just clear all bits. Since the only other ones are the FIFO reset bits,
* this works without side effects.
*
* @param	BaseAddress is the  base address of the device
*
* @return	None.
*
* @note		C-style Signature:
* 		void XUartLite_DisableIntr(uint32_t BaseAddress);
*
*****************************************************************************/
#define XUartLite_DisableIntr(BaseAddress) \
		XUartLite_SetControlReg((BaseAddress), 0)

/************************** Function Prototypes *****************************/

//void XUartLite_SendByte(UINTPTR BaseAddress, u8 Data);
//u8 XUartLite_RecvByte(UINTPTR BaseAddress);

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */


/** @} */
