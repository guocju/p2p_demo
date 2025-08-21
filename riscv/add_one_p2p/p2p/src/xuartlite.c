#include "xuartlite.h"
//#include "commprotocol.h"
//#include "hitl.h"

XUartLite XUartLiteInstances0;
XUartLite XUartLiteInstances1;
XUartLite XUartLiteInstances2;
void RecvHandler(void *CallBackRef, unsigned int EventData);
void XUartLite_ClearStats(XUartLite *InstancePtr);
static void ReceiveDataHandler(XUartLite *InstancePtr);
static void SendDataHandler(XUartLite *InstancePtr);
void XUartLite_ResetFifos(XUartLite *InstancePtr);
volatile int TotalSentCount;
volatile int * uart0_intr_clr   = (volatile int *)(0x00030a00 | (0x19<<2));
volatile int * uart1_intr_clr   = (volatile int *)(0x00030a00 | (0x20<<2));

//extern ctrl_msg_t  g_hitl_msg;
//extern target_t    g_tracking_target;
//extern int         g_tracking_enabled;
//int                g_receive_counter = 0;

//unsigned int XUartLite_Recv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
//                unsigned int NumBytes)
//{
//    unsigned int ReceivedCount;
//    uint32_t StatusRegister;
//
//    /*
//     * Assert validates the input arguments
//     */
//    if((InstancePtr != NULL) && (DataBufferPtr != NULL) && (InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
//        /*
//         * Enter a critical region by disabling all the UART interrupts to allow
//         * this call to stop a previous operation that may be interrupt driven
//         */
//        StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
//        XUartLite_WriteReg(InstancePtr->RegBaseAddress,
//                    XUL_CONTROL_REG_OFFSET, 0);
//
//        /*
//         * Setup the specified buffer to be received by setting the instance
//         * variables so it can be received with polled or interrupt mode
//         */
//        InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
//        InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
//        InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
//
//        /*
//         * Restore the interrupt enable register to it's previous value such
//         * that the critical region is exited
//         */
//        StatusRegister &= XUL_CR_ENABLE_INTR;
//        XUartLite_WriteReg(InstancePtr->RegBaseAddress,
//                    XUL_CONTROL_REG_OFFSET, StatusRegister);
//
//        /*
//         * Receive the data from the UART and return the number of bytes
//         * received
//         * This is done here to minimize the amount of time the interrupt is
//         * disabled since there is only one interrupt and the transmit could
//         * be emptying out while interrupts are blocked.
//         */
//        ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
//
//        return ReceivedCount;
//    }
//
//    return 0xffffffff;
//}
enum PROTO_STATE{
    INVALID = 0,
    HEADER1, 
    VALID    
};
unsigned int XUartLite_InterruptHandlerWrapper(int id){
    XUartLite * InstancePtr;
	uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    uint8_t fifo_in;
    unsigned int ReceivedCount = 0;
    static  int recv_cnt = 0;
    static enum PROTO_STATE header_state = INVALID;
    if(id == 0){
        InstancePtr = & XUartLiteInstances0;
    }else if(id==1){
        InstancePtr = & XUartLiteInstances1;
    }


    if(id==0){
        while (1) {
            StatusRegister =
                XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
            if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
                   //InstancePtr->ForwardBuffer[recv_cnt] = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
                                //XUL_RX_FIFO_OFFSET);
                   fifo_in = XUartLite_ReadReg(InstancePtr->RegBaseAddress,XUL_RX_FIFO_OFFSET);

                   //InstancePtr->ReceiveBuffer.NextBytePtr[recv_cnt]=
                   //    XUartLite_ReadReg(InstancePtr->RegBaseAddress,XUL_RX_FIFO_OFFSET);
                   //if(!InstancePtr->ReceiveBuffer.locked){
                   //    if(header_state==INVALID){
                   //        if(fifo_in == 0xee){header_state = HEADER1;}
                   //    }else if(header_state==HEADER1){
                   //        if(fifo_in == 0xf6){
                   //            header_state = VALID;
                   //            InstancePtr->ReceiveBuffer.NextBytePtr[0]=0xee;
                   //            InstancePtr->ReceiveBuffer.NextBytePtr[1]=0xf6;
                   //            recv_cnt = 2;
                   //        }
                   //        else{header_state=INVALID;}
                   //    }else if(header_state==VALID){
                   //        InstancePtr->ReceiveBuffer.NextBytePtr[recv_cnt]=fifo_in;
                   //        recv_cnt += 1;
                   //        if(recv_cnt == 60){
                   //            header_state = INVALID;
                   //            recv_cnt = 0;
                   //            InstancePtr->ReceiveBuffer.RemainingBytes = 0;
                   //            InstancePtr->ReceiveBuffer.locked = 1;
                   //        }
                   //    }
                   //}
            }else {
                break;
            }
        }
        //if((recv_cnt % 10)== 0 && (recv_cnt > 0)){
        //    XUartLite_Send(InstancePtr->ForwardInstPtr,InstancePtr->ForwardBuffer + recv_cnt - 10, 10);
        //}

    }
    //XUartLite_InterruptHandler(InstancePtr);

    if(id == 0){
        *uart0_intr_clr  = 1;
    }else if(id==1){
        *uart1_intr_clr  = 1;
    }
}

unsigned int XUartLite_SendBuffer(XUartLite *InstancePtr)
{
	unsigned int SentCount = 0;
	uint8_t StatusRegister;
	uint8_t IntrEnableStatus;

	/*
	 * Read the status register to determine if the transmitter is full
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);

	/*
	 * Enter a critical region by disabling all the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
				XUL_CONTROL_REG_OFFSET, 0);

	/*
	 * Save the status register contents to restore the interrupt enable
	 * register to it's previous value when that the critical region is
	 * exited
	 */
	IntrEnableStatus = StatusRegister;

	/*
	 * Fill the FIFO from the the buffer that was specified
	 */

	while (((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0) &&
		(SentCount < InstancePtr->SendBuffer.RemainingBytes)) {
		XUartLite_WriteReg(InstancePtr->RegBaseAddress,
					XUL_TX_FIFO_OFFSET,
					InstancePtr->SendBuffer.NextBytePtr[
					SentCount]);

		SentCount++;

		StatusRegister =
			XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);

	}

	/*
	 * Update the buffer to reflect the bytes that were sent from it
	 */
	InstancePtr->SendBuffer.NextBytePtr += SentCount;
	InstancePtr->SendBuffer.RemainingBytes -= SentCount;

	/*
	 * Increment associated counters
	 */
	 InstancePtr->Stats.CharactersTransmitted += SentCount;

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited
	 */
	IntrEnableStatus &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
				IntrEnableStatus);

	/*
	 * Return the number of bytes that were sent, althought they really were
	 * only put into the FIFO, not completely sent yet
	 */
	return SentCount;
}

unsigned int XUartLite_ReceiveBuffer(XUartLite *InstancePtr)
{
    uint8_t StatusRegister;
    uint8_t StatusRegisterVal;
    unsigned int ReceivedCount = 0;

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegisterVal = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, 0);
    /*
     * Loop until there is not more data buffered by the UART or the
     * specified number of bytes is received
     */

    while (ReceivedCount < InstancePtr->ReceiveBuffer.RemainingBytes) {
        /*
         * Read the Status Register to determine if there is any data in
         * the receiver/FIFO
         */
        StatusRegister =
            XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);

        /*
         * If there is data ready to be removed, then put the next byte
         * received into the specified buffer and update the stats to
         * reflect any receive errors for the byte
         */
        if (StatusRegister & XUL_SR_RX_FIFO_VALID_DATA) {
            InstancePtr->ReceiveBuffer.NextBytePtr[ReceivedCount++]=
                XUartLite_ReadReg(InstancePtr->RegBaseAddress,
                            XUL_RX_FIFO_OFFSET);
            //if(InstancePtr== &XUartLiteInstances0){
            //    g_receive_counter += 1;
            //    if((g_receive_counter%10==0 && g_receive_counter>0)){
            //        XUartLite_Send(InstancePtr->ForwardInstPtr,
            //                InstancePtr->ReceiveBuffer.NextBytePtr + ReceivedCount - 10, 10);
            //    }
            //    if(g_receive_counter == 60){
            //        g_receive_counter = 0;
            //    }
            //}

            //XUartLite_UpdateStats(InstancePtr, StatusRegister);
        }

        /*
         * There's no more data buffered, so exit such that this
         * function does not block waiting for data
         */
        else {
            break;
        }
    }

    /*
     * Update the receive buffer to reflect the number of bytes that was
     * received
     */
    InstancePtr->ReceiveBuffer.NextBytePtr += ReceivedCount;
    InstancePtr->ReceiveBuffer.RemainingBytes -= ReceivedCount;

    /*
     * Increment associated counters in the statistics
     */
    InstancePtr->Stats.CharactersReceived += ReceivedCount;

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegisterVal &= XUL_CR_ENABLE_INTR;
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, StatusRegisterVal);

    return ReceivedCount;
}

void XUartLite_InterruptHandler(XUartLite *InstancePtr)
{
    uint32_t IsrStatus;

    //assert(InstancePtr != NULL);

    /*
     * Read the status register to determine which, coulb be both
     * interrupt is active
     */
    IsrStatus = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
                    XUL_STATUS_REG_OFFSET);

    if ((IsrStatus & (XUL_SR_RX_FIFO_FULL |
        XUL_SR_RX_FIFO_VALID_DATA)) != 0) {
        ReceiveDataHandler(InstancePtr);
    }

	//if (((IsrStatus & XUL_SR_TX_FIFO_EMPTY) != 0) &&
	//	(InstancePtr->SendBuffer.RequestedBytes > 0)) {
	//	SendDataHandler(InstancePtr);
	//}

}
//static void ProtocolAlign(XUartLite *InstancePtr,int ReceivedCount){
//	/* Based on 27's protocol, align header to first byte of buffer */
//
//    int WaitStatus;
//	int HeaderPosition;
//	int d;
//	int s;
//	int NewMsgReceivedCount;
//
//    if(!header_is_correct(InstancePtr->ForwardBuffer)){
//        HeaderPosition = find_any_header(InstancePtr->ForwardBuffer,ReceivedCount);
//        if(HeaderPosition == -1){
//            WaitStatus = wait_header(InstancePtr,InstancePtr->ForwardBuffer);
//            if(WaitStatus==0){
//                InstancePtr->ReceiveBuffer.NextBytePtr = InstancePtr->ForwardBuffer+2;
//                InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes-2;
//            }
//        }else if(HeaderPosition>=0 && HeaderPosition < ReceivedCount){
//            for(d=0,s=HeaderPosition;s<ReceivedCount;d++,s++){
//                InstancePtr->ForwardBuffer[d] = InstancePtr->ForwardBuffer[s];
//            }
//            NewMsgReceivedCount =  (ReceivedCount - HeaderPosition);
//            InstancePtr->ReceiveBuffer.NextBytePtr = InstancePtr->ForwardBuffer + NewMsgReceivedCount;
//            InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ForwardBytes - NewMsgReceivedCount;
//        }
//    }
//}
//static void ProcessAndForward(XUartLite *InstancePtr){
//	/* This function:
//	 * 1. automatically forward (aligned) received protocol message
//	 * 2. package hpu's target information into protocol
//	 * 3. samples human in the loop info from protocol message
//	 */
//    if(InstancePtr->ReceiveBuffer.RemainingBytes == 0 && InstancePtr->ForwardInstPtr && InstancePtr->ForwardBuffer){
//        if(InstancePtr == &XUartLiteInstances0){
//			if(g_tracking_enabled){
//				//txproto_settarget(&InstancePtr->TxProto, &g_tracking_target);
//			}else{
//            	txproto_setbox(&InstancePtr->TxProto,InstancePtr->BBoxes, InstancePtr->NumBox);
//			}
//        }
//        if(InstancePtr == &XUartLiteInstances1){
//            if(*InstancePtr->RxProto.ctrl0 & HITL_VALID_MASK){
//                rxproto_get_ctrlmsg(&InstancePtr->RxProto, &g_hitl_msg);
//            }
//        }
//        //XUartLite_Send(InstancePtr->ForwardInstPtr, InstancePtr->ForwardBuffer, InstancePtr->ForwardBytes);
//        XUartLite_Send(InstancePtr->ForwardInstPtr, InstancePtr->ForwardBuffer, 16);
//        InstancePtr->ReceiveBuffer.NextBytePtr = InstancePtr->ForwardBuffer;
//        InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    }
//}

static void ReceiveDataHandler(XUartLite *InstancePtr)
{
    int WaitStatus;
	int HeaderPosition;
	int d;
	int s;
	int TotalReceivedCount;
	int NewMsgReceivedCount;
    /*
     * If there are bytes still to be received in the specified buffer
     * go ahead and receive them
     */
    if (InstancePtr->ReceiveBuffer.RemainingBytes != 0) {
        NewMsgReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
    }

    /*
     * If the last byte of a message was received then call the application
     * handler, this code should not use an else from the previous check of
     * the number of bytes to receive because the call to receive the buffer
     * updates the bytes to receive
     */
    
	TotalReceivedCount = TotalReceivedCountOf(InstancePtr);
    InstancePtr->Stats.ReceiveInterrupts++;

    
    //if(InstancePtr->AutoForward){
    //    XUartLite_Send(InstancePtr->ForwardInstPtr,
    //            InstancePtr->ReceiveBuffer.NextBytePtr - NewMsgReceivedCount, NewMsgReceivedCount);
    //    if(TotalReceivedCount == InstancePtr->ReceiveBuffer.RequestedBytes){
    //        //XUartLite_Send(InstancePtr->ForwardInstPtr,InstancePtr->ForwardBuffer,
    //        //               InstancePtr->ForwardBytes);
    //        //XUartLite_Recv(InstancePtr, InstancePtr->ForwardBuffer,
    //        //               InstancePtr->ForwardBytes);
    //    //    //if(!header_is_correct(InstancePtr->ForwardBuffer)){
    //    //    //    //WaitStatus = wait_header(InstancePtr,InstancePtr->ForwardBuffer);
    //    //    //    //if(WaitStatus==0){
    //    //    //    //    XUartLite_Recv(InstancePtr, InstancePtr->ForwardBuffer + 2,
    //    //    //    //                   InstancePtr->ForwardBytes-2);
    //    //    //    //}
    //    //    //}else{
    //    //    //    XUartLite_Send(InstancePtr->ForwardInstPtr,InstancePtr->ForwardBuffer,
    //    //    //                   InstancePtr->ForwardBytes);
    //    //    //    XUartLite_Recv(InstancePtr, InstancePtr->ForwardBuffer,
    //    //    //                   InstancePtr->ForwardBytes);
    //    //    //}
    //    }
    //    //if(TotalReceivedCount == InstancePtr->ForwardBytes){
    //    //    XUartLite_Send(InstancePtr->ForwardInstPtr, InstancePtr->ForwardBuffer,InstancePtr->ForwardBytes);
    //    //}
	//	//ProtocolAlign(InstancePtr,TotalReceivedCount);
    //    //XUartLite_Send(&XUartLiteInstances1, "abc\n", 4);
    //    //XUartLite_Send(&XUartLiteInstances1, &TotalReceivedCount, 4);
	//	//ProcessAndForward(InstancePtr);
	//}

}

static void SendDataHandler(XUartLite *InstancePtr)
{
	/*
	 * If there are not bytes to be sent from the specified buffer,
	 * call the callback function
	 */
	if (InstancePtr->SendBuffer.RemainingBytes == 0) {
		int SaveReq;

		/*
		 * Save and zero the requested bytes since transmission
		 * is complete
		 */
		SaveReq = InstancePtr->SendBuffer.RequestedBytes;
		InstancePtr->SendBuffer.RequestedBytes = 0;

		/*
		 * Call the application handler to indicate
		 * the data has been sent
		 */
		InstancePtr->SendHandler(InstancePtr->SendCallBackRef, SaveReq);
	}
	/*
	 * Otherwise there is still more data to send in the specified buffer
	 * so go ahead and send it
	 */
	else {
		XUartLite_SendBuffer(InstancePtr);
	}

	/*
	 * Update the transmit stats to reflect the transmit interrupt
	 */
	InstancePtr->Stats.TransmitInterrupts++;
}

int TotalReceivedCountOf(XUartLite * InstancePtr){
    return InstancePtr->ReceiveBuffer.RequestedBytes
        - InstancePtr->ReceiveBuffer.RemainingBytes;

}



//void XUartLite_SetRecvHandler(XUartLite *InstancePtr,
//                XUartLite_Handler FuncPtr, void *CallBackRef)
//{
//    /*
//     * Assert validates the input arguments
//     * CallBackRef not checked, no way to know what is valid
//     */
//    Xil_AssertVoid(InstancePtr != NULL);
//    Xil_AssertVoid(FuncPtr != NULL);
//    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
//
//    InstancePtr->RecvHandler = FuncPtr;
//    InstancePtr->RecvCallBackRef = CallBackRef;
//}

int XUartLite_CfgInitialize(XUartLite *InstancePtr, uintptr_t EffectiveAddr)
{
    /*
     * Assert validates the input arguments
     */
    //Xil_AssertNonvoid(InstancePtr != NULL);

    /*
     * Set some default values, including setting the callback
     * handlers to stubs.
     */
    InstancePtr->SendBuffer.NextBytePtr = NULL;
    InstancePtr->SendBuffer.RemainingBytes = 0;
    InstancePtr->SendBuffer.RequestedBytes = 0;

    InstancePtr->ReceiveBuffer.NextBytePtr = NULL;
    InstancePtr->ReceiveBuffer.RemainingBytes = 0;
    InstancePtr->ReceiveBuffer.RequestedBytes = 0;

    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    InstancePtr->RegBaseAddress = EffectiveAddr;

    InstancePtr->RecvHandler = NULL;
    InstancePtr->SendHandler = NULL;

    InstancePtr->AutoForward = 0;
    InstancePtr->ForwardBytes = 0;
    InstancePtr->ForwardBuffer = NULL;
    InstancePtr->ForwardInstPtr = NULL;
//    InstancePtr->BBoxes = NULL;
//    InstancePtr->NumBox = 0;
//    connect_txproto(&InstancePtr->TxProto,InstancePtr->ForwardBuffer);
//    connect_rxproto(&InstancePtr->RxProto,InstancePtr->ForwardBuffer);

    /* Write to the control register to disable the interrupts, don't
     * reset the FIFOs are the user may want the data that's present
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, 0);

    /*
     * Clear the statistics for this driver
     */
    XUartLite_ClearStats(InstancePtr);

    return 0;
}
//void XUartLite_ForwardWithBBox(XUartLite * InstancePtr,BoundingBox * BBox,int NumBBox){
//    InstancePtr->BBoxes = BBox;
//    InstancePtr->NumBox = NumBBox;
//}

/* If Enabled Auto Forward, then XUartLite_Recv Function should not be used*/
//void XUartLite_EnableAutoForward(XUartLite * InstancePtr, uint8_t* ForwardBuffer, int NumBytes,
//                                 XUartLite * ForwardInstPtr){
//    unsigned int ReceivedCount;
//    uint32_t StatusRegister;
//    uint32_t HeaderPosition;
//    int      WaitStatus;
//
//    /*
//     * Enter a critical region by disabling all the UART interrupts to allow
//     * this call to stop a previous operation that may be interrupt driven
//     */
//    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
//    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
//                XUL_CONTROL_REG_OFFSET, 0);
//
//    /*
//     * Setup the specified buffer to be received by setting the instance
//     * variables so it can be received with polled or interrupt mode
//     */
//    InstancePtr->AutoForward = 1;
//    InstancePtr->ForwardBytes = NumBytes;
//    InstancePtr->ForwardBuffer = ForwardBuffer;
//    InstancePtr->ForwardInstPtr = ForwardInstPtr;
//    connect_txproto(&InstancePtr->TxProto,InstancePtr->ForwardBuffer);
//    connect_rxproto(&InstancePtr->RxProto,InstancePtr->ForwardBuffer);
//
//    /*
//     * Restore the interrupt enable register to it's previous value such
//     * that the critical region is exited
//     */
//    StatusRegister &= XUL_CR_ENABLE_INTR;
//    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
//                XUL_CONTROL_REG_OFFSET, StatusRegister);
//
//
//    XUartLite_Recv(InstancePtr, InstancePtr->ForwardBuffer,
//                                   InstancePtr->ForwardBytes);
//
//    //if(ReceivedCount == InstancePtr->ForwardBytes){
//    //    XUartLite_Send(InstancePtr->ForwardInstPtr,InstancePtr->ForwardBuffer,
//    //                   InstancePtr->ForwardBytes);
//    //}
//    //
//    //WaitStatus = wait_header(InstancePtr,InstancePtr->ForwardBuffer);
//    //if(WaitStatus==0){
//    //    InstancePtr->ReceiveBuffer.NextBytePtr = InstancePtr->ForwardBuffer+2;
//    //    InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes-2;
//    //}
//    //ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);
//
//    //if(InstancePtr->ReceiveBuffer.RemainingBytes == 0 && InstancePtr->ForwardInstPtr && InstancePtr->ForwardBuffer){
//    //    XUartLite_Send(InstancePtr->ForwardInstPtr, InstancePtr->ForwardBuffer, InstancePtr->ForwardBytes);
//    //    InstancePtr->ReceiveBuffer.NextBytePtr = InstancePtr->ForwardBuffer;
//    //    InstancePtr->ReceiveBuffer.RemainingBytes = InstancePtr->ReceiveBuffer.RequestedBytes;
//    //}
//}

void XUartLite_ClearStats(XUartLite *InstancePtr)
{
    /*
     * Assert validates the input arguments
     */
    //Xil_AssertVoid(InstancePtr != NULL);
    //Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    InstancePtr->Stats.TransmitInterrupts = 0;
    InstancePtr->Stats.ReceiveInterrupts = 0;
    InstancePtr->Stats.CharactersTransmitted = 0;
    InstancePtr->Stats.CharactersReceived = 0;
    InstancePtr->Stats.ReceiveOverrunErrors = 0;
    InstancePtr->Stats.ReceiveFramingErrors = 0;
    InstancePtr->Stats.ReceiveParityErrors = 0;

}


unsigned int XUartLite_Recv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
    unsigned int ReceivedCount;
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
        return 0;
    }

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, 0);

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;
    InstancePtr->ReceiveBuffer.locked = 0;

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, StatusRegister);

    /*
     * Receive the data from the UART and return the number of bytes
     * received
     * This is done here to minimize the amount of time the interrupt is
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

    return ReceivedCount;

}

unsigned int XUartLite_RepeatRecv(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
                unsigned int NumBytes)
{
    unsigned int ReceivedCount;
    uint32_t StatusRegister;

    /*
     * Assert validates the input arguments
     */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
        return 0;
    }

    /*
     * Enter a critical region by disabling all the UART interrupts to allow
     * this call to stop a previous operation that may be interrupt driven
     */
    StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, 0);

    /*
     * Setup the specified buffer to be received by setting the instance
     * variables so it can be received with polled or interrupt mode
     */
    InstancePtr->ReceiveBuffer.RequestedBytes = NumBytes;
    InstancePtr->ReceiveBuffer.RemainingBytes = NumBytes;
    InstancePtr->ReceiveBuffer.NextBytePtr = DataBufferPtr;

    /*
     * Restore the interrupt enable register to it's previous value such
     * that the critical region is exited
     */
    StatusRegister &= XUL_CR_ENABLE_INTR;
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, StatusRegister);

    /*
     * Receive the data from the UART and return the number of bytes
     * received
     * This is done here to minimize the amount of time the interrupt is
     * disabled since there is only one interrupt and the transmit could
     * be emptying out while interrupts are blocked.
     */
    //ReceivedCount = XUartLite_ReceiveBuffer(InstancePtr);

    return ReceivedCount;

}

//void XUartLite_Send(XUartLite *InstancePtr, uint8_t *DataBufferPtr, unsigned int NumBytes){
//    unsigned int SentCount = 0;
//    uint8_t StatusRegister;
//    uint8_t IntrEnableStatus;
//
//    while (SentCount < NumBytes) {
//        StatusRegister =
//        XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
//        if(((StatusRegister & XUL_SR_TX_FIFO_FULL) == 0)){
//            XUartLite_WriteReg(InstancePtr->RegBaseAddress,
//                        XUL_TX_FIFO_OFFSET,
//                        DataBufferPtr[SentCount]);
//            SentCount++;
//
//            StatusRegister =
//                XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);
//        }
//
//    }
//}

unsigned int XUartLite_Send(XUartLite *InstancePtr, uint8_t *DataBufferPtr,
				unsigned int NumBytes)
{
	unsigned int BytesSent;
	uint32_t StatusRegister;

	/*
	 * Assert validates the input arguments
	 */
    if(!(InstancePtr != NULL && DataBufferPtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
        return 0;
    }

	/*
	 * Enter a critical region by disabling the UART interrupts to allow
	 * this call to stop a previous operation that may be interrupt driven.
	 */
	StatusRegister = XUartLite_GetStatusReg(InstancePtr->RegBaseAddress);

	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
				XUL_CONTROL_REG_OFFSET, 0);

	/*
	 * Setup the specified buffer to be sent by setting the instance
	 * variables so it can be sent with polled or interrupt mode
	 */
	InstancePtr->SendBuffer.RequestedBytes = NumBytes;
	InstancePtr->SendBuffer.RemainingBytes = NumBytes;
	InstancePtr->SendBuffer.NextBytePtr = DataBufferPtr;

	/*
	 * Restore the interrupt enable register to it's previous value such
	 * that the critical region is exited.
	 * This is done here to minimize the amount of time the interrupt is
	 * disabled since there is only one interrupt and the receive could
	 * be filling up while interrupts are blocked.
	 */

	StatusRegister &= XUL_CR_ENABLE_INTR;
	XUartLite_WriteReg(InstancePtr->RegBaseAddress,
				XUL_CONTROL_REG_OFFSET, StatusRegister);

	/*
	 * Send the buffer using the UART and return the number of bytes sent
	 */
	BytesSent = XUartLite_SendBuffer(InstancePtr);

	return BytesSent;
}

void XUartLite_EnableInterrupt(XUartLite *InstancePtr)
{
//    Xil_AssertVoid(InstancePtr != NULL);
//    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, XUL_CR_ENABLE_INTR);
}
void XUartLite_DisableInterrupt(XUartLite *InstancePtr)
{
//    Xil_AssertVoid(InstancePtr != NULL);
//    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    /*
     * Write to the control register to enable the interrupts, the only
     * other bits in this register are the FIFO reset bits such that
     * writing them to zero will not affect them.
     */
    XUartLite_WriteReg(InstancePtr->RegBaseAddress,
                XUL_CONTROL_REG_OFFSET, 0);
}

void XUartLite_ResetFifos(XUartLite *InstancePtr)
{
	uint32_t Register;

    if(!(InstancePtr != NULL && InstancePtr->IsReady == XIL_COMPONENT_IS_READY)){
        return;
    }

	/*
	 * Read the status register 1st such that the next write to the control
	 * register won't destroy the state of the interrupt enable bit
	 */
	Register = XUartLite_ReadReg(InstancePtr->RegBaseAddress,
					XUL_STATUS_REG_OFFSET);

	/*
	 * Mask off the interrupt enable bit to maintain it's state.
	 */
	Register &= XUL_SR_INTR_ENABLED;

	/*
	 * Write to the control register to reset both FIFOs, these bits are
	 * self-clearing such that there's no need to clear them
	 */
	XUartLite_WriteReg(InstancePtr->RegBaseAddress, XUL_CONTROL_REG_OFFSET,
			Register | XUL_CR_FIFO_TX_RESET | XUL_CR_FIFO_RX_RESET);
}

//int proc_rx_protocol(XUartLite * instance,uint8_t *buffer){
//    //return 1 if currently protocol is all received
//    //return 0 if not
//    static int is_receiving = 0;
//    static int received_cnt = 0;
//
//    if(!is_receiving){
//        received_cnt = XUartLite_Recv(instance,buffer,PROTOBUF_SIZE);
//        is_receiving = 1;
//    }
//    if(is_receiving){
//        received_cnt = TotalReceivedCountOf(instance);
//    }
//    if(received_cnt == 60){
//        if(buffer[0]==0xee && buffer[1]==0xf6){
//            if(sum_array(buffer,PROTOBUF_SIZE-1) == buffer[PROTOBUF_SIZE-1]){
//                received_cnt = 0;
//                is_receiving = 0;
//                return 1;
//            }
//        }else{
//            //TODO do something to align the Protocol
//	}
//    }
//    return 0;
//}
void XUartLite_RxUnlock(XUartLite * inst){
    inst->ReceiveBuffer.locked = 0;
}

int hw_uart0_is_valid(){
    return (*(uint32_t *)UARTLITE_BASEADDR_0)& 0x1;
}
void hw_uart0_get_data(uint8_t * buffer){
    int size = 15;//15*4==60, 27's protocol is 60 byte;
    for(int i = 0; i< size ; i++){
        *(uint32_t*)(buffer + i*4) = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
    }
    //for(int i = 0; i< size ; i++){
    //    uint32_t temp = *((uint32_t*)(UARTLITE_BASEADDR_0+(i+1)*4));
    //    *(uint32_t*)(buffer + i*4) = (temp>>24)|((temp&0x00ff0000)>>8)|((temp&0x0000ff00)<<8)|((temp&0x000000ff)<<24);
    //}
}
void hw_uart0_clr_state(){
    *(uint32_t *)UARTLITE_BASEADDR_0 = 0;
}
void XUartLite_SendAll(XUartLite *InstancePtr, uint8_t *DataBufferPtr, unsigned int NumBytes) {
    int sentbytes=0;
    int remainbytes = NumBytes;
    while(sentbytes<NumBytes){
        sentbytes += XUartLite_Send(InstancePtr, DataBufferPtr + sentbytes  , remainbytes);
        remainbytes = NumBytes - sentbytes;
    }
}
