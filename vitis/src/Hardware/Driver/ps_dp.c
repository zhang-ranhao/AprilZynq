/*******************************************************************************
 *
 * Copyright (C) 2017 Xilinx, Inc.  All rights reserved.
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
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
*******************************************************************************/
/*****************************************************************************/
/**
*
* @file xdpdma_video_example.c
*
*
* This file contains a design example using the DPDMA driver (XDpDma)
* This example demonstrates the use of DPDMA for displaying a Graphics Overlay
*
* @note
*
* None.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who Date     Changes
* ----- --- -------- -----------------------------------------------
* 1.0	aad 10/19/17	Initial Release
* 1.1   aad 02/22/18    Fixed the header
*</pre>
*
******************************************************************************/

/***************************** Include Files *********************************/
#include "ps_dp.h"

/************************** Variable Declarations ***************************/

u16 rd_fps;
u8 rd_index;
/**************************** Type Definitions *******************************/

/*****************************************************************************/
/**
*
* Main function to call the DPDMA Video example.
*
* @param	None
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None
*
******************************************************************************/
//int main()
//{
//	int Status;
//
//	Xil_DCacheDisable();
//	Xil_ICacheDisable();
//
//	xil_printf("DPDMA Generic Video Example Test \r\n");
//	Status = DpdmaVideoExample(&RunCfg);
//	if (Status != XST_SUCCESS) {
//			xil_printf("DPDMA Video Example Test Failed\r\n");
//			return XST_FAILURE;
//	}
//
//	xil_printf("Successfully ran DPDMA Video Example Test\r\n");
//
//    return XST_SUCCESS;
//}

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the XDpDma device
* driver in Graphics overlay mode.
*
* @param	RunCfgPtr is a pointer to the application configuration structure.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
*****************************************************************************/
int DpdmaVideoExample(Run_Config *RunCfgPtr, u8 *Frame)

{
	u32 Status;
	/* Initialize the application configuration */
	InitRunConfig(RunCfgPtr);
	Status = InitDpDmaSubsystem(RunCfgPtr);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	SetupInterrupts(RunCfgPtr);
	xil_printf("Generating Overlay.....\n\r");
	//GraphicsOverlay(Frame, RunCfgPtr);

	/* Populate the FrameBuffer structure with the frame attributes */
	FrameBuffer.Address = (INTPTR)Frame;
	FrameBuffer.Stride = STRIDE;
	FrameBuffer.LineSize = LINESIZE;
	FrameBuffer.Size = BUFFERSIZE;
	XDpDma_DisplayGfxFrameBuffer(RunCfgPtr->DpDmaPtr, &FrameBuffer);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* The purpose of this function is to initialize the application configuration.
*
* @param	RunCfgPtr is a pointer to the application configuration structure.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void InitRunConfig(Run_Config *RunCfgPtr)
{
	/* Initial configuration parameters. */
		RunCfgPtr->DpPsuPtr   = &DpPsu;
		RunCfgPtr->AVBufPtr  = &AVBuf;
		RunCfgPtr->DpDmaPtr  = &DpDma;
#if VIDEO_RESOLUTION  == VIDEO_1080P_30FPS
		RunCfgPtr->VideoMode = XVIDC_VM_1920x1080_60_P;
#elif VIDEO_RESOLUTION == VIDEO_720P_60FPS
		RunCfgPtr->VideoMode = XVIDC_VM_1280x720_60_P;
#else
		RunCfgPtr->VideoMode = XVIDC_VM_640x480_60_P;
#endif
		RunCfgPtr->Bpc		 = 			XVIDC_BPC_8;
		RunCfgPtr->ColorEncode			= XDPPSU_CENC_RGB;
		RunCfgPtr->UseMaxCfgCaps		= 1;
		RunCfgPtr->LaneCount			= LANE_COUNT_2;
		RunCfgPtr->LinkRate				= LINK_RATE_540GBPS;
		RunCfgPtr->EnSynchClkMode		= 0;
		RunCfgPtr->UseMaxLaneCount		= 1;
		RunCfgPtr->UseMaxLinkRate		= 1;
}

/*****************************************************************************/
/**
*
* The purpose of this function is to initialize the DP Subsystem (XDpDma,
* XAVBuf, XDpPsu)
*
* @param	RunCfgPtr is a pointer to the application configuration structure.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
int InitDpDmaSubsystem(Run_Config *RunCfgPtr)
{
	u32 Status;
	XDpPsu		*DpPsuPtr = RunCfgPtr->DpPsuPtr;
	XDpPsu_Config	*DpPsuCfgPtr;
	XAVBuf		*AVBufPtr = RunCfgPtr->AVBufPtr;
	XDpDma_Config *DpDmaCfgPtr;
	XDpDma		*DpDmaPtr = RunCfgPtr->DpDmaPtr;


	/* Initialize DisplayPort driver. */
	DpPsuCfgPtr = XDpPsu_LookupConfig(DPPSU_DEVICE_ID);
	XDpPsu_CfgInitialize(DpPsuPtr, DpPsuCfgPtr, DpPsuCfgPtr->BaseAddr);

	/* Initialize Video Pipeline driver */
	XAVBuf_CfgInitialize(AVBufPtr, DpPsuPtr->Config.BaseAddr, AVBUF_DEVICE_ID);

	/* Initialize the DPDMA driver */
	DpDmaCfgPtr = XDpDma_LookupConfig(DPDMA_DEVICE_ID);
	XDpDma_CfgInitialize(DpDmaPtr,DpDmaCfgPtr);

	/* Initialize the DisplayPort TX core. */
	Status = XDpPsu_InitializeTx(DpPsuPtr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	/* Set the format graphics frame for DPDMA*/
	Status = XDpDma_SetGraphicsFormat(DpDmaPtr, RGBA8888);
	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
	}
	/* Set the format graphics frame for Video Pipeline*/
	Status = XAVBuf_SetInputNonLiveGraphicsFormat(AVBufPtr, RGBA8888);
	if (Status != XST_SUCCESS) {
			return XST_FAILURE;
	}
	/* Set the QOS for Video */
	XDpDma_SetQOS(RunCfgPtr->DpDmaPtr, 11);
	/* Enable the Buffers required by Graphics Channel */
	XAVBuf_EnableGraphicsBuffers(RunCfgPtr->AVBufPtr, 1);
	/* Set the output Video Format */
	XAVBuf_SetOutputVideoFormat(AVBufPtr, RGB_8BPC);
	/* Select the Input Video Sources.
	 * Here in this example we are going to demonstrate
	 * graphics overlay over the TPG video.
	 */
	XAVBuf_InputVideoSelect(AVBufPtr, XAVBUF_VIDSTREAM1_NONE,
							XAVBUF_VIDSTREAM2_NONLIVE_GFX);
	/* Configure Video pipeline for graphics channel */
	XAVBuf_ConfigureGraphicsPipeline(AVBufPtr);
	/* Configure the output video pipeline */
	XAVBuf_ConfigureOutputVideo(AVBufPtr);
	/* Disable the global alpha, since we are using the pixel based alpha */
	XAVBuf_SetBlenderAlpha(AVBufPtr, 0, 0);
	/* Set the clock mode */
	XDpPsu_CfgMsaEnSynchClkMode(DpPsuPtr, RunCfgPtr->EnSynchClkMode);
	/* Set the clock source depending on the use case.
	 * Here for simplicity we are using PS clock as the source*/
	XAVBuf_SetAudioVideoClkSrc(AVBufPtr, XAVBUF_PS_CLK, XAVBUF_PS_CLK);
	/* Issue a soft reset after selecting the input clock sources */
	XAVBuf_SoftReset(AVBufPtr);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* The purpose of this function is to setup call back functions for the DP
* controller interrupts.
*
* @param	RunCfgPtr is a pointer to the application configuration structure.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void SetupInterrupts(Run_Config *RunCfgPtr)
{
	XDpPsu *DpPsuPtr = RunCfgPtr->DpPsuPtr;
	XScuGic		*IntrPtr = &ScuGic;
	u32  IntrMask = XDPPSU_INTR_HPD_IRQ_MASK | XDPPSU_INTR_HPD_EVENT_MASK;

	XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_DIS, 0xFFFFFFFF);
	XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_MASK, 0xFFFFFFFF);

	XDpPsu_SetHpdEventHandler(DpPsuPtr, DpPsu_IsrHpdEvent, RunCfgPtr);
	XDpPsu_SetHpdPulseHandler(DpPsuPtr, DpPsu_IsrHpdPulse, RunCfgPtr);

	/* Register ISRs. */
	XScuGic_Connect(IntrPtr, DPPSU_INTR_ID,
			(Xil_InterruptHandler)XDpPsu_HpdInterruptHandler, RunCfgPtr->DpPsuPtr);

	/* Trigger DP interrupts on rising edge. */
	XScuGic_SetPriorityTriggerType(IntrPtr, DPPSU_INTR_ID, 0x0, 0x03);

	/* Connect DPDMA Interrupt */
	XScuGic_Connect(IntrPtr, DPDMA_INTR_ID,
			(Xil_ExceptionHandler)XDpDma_InterruptHandler_0, RunCfgPtr->DpDmaPtr);

	/* Enable DP interrupts. */
	XScuGic_Enable(IntrPtr, DPPSU_INTR_ID);
	XDpPsu_WriteReg(DpPsuPtr->Config.BaseAddr, XDPPSU_INTR_EN, IntrMask);

	/* Enable DPDMA Interrupts */
	XScuGic_Enable(IntrPtr, DPDMA_INTR_ID);
	XDpDma_InterruptEnable(RunCfgPtr->DpDmaPtr, XDPDMA_IEN_VSYNC_INT_MASK);

}
/*************************************************************************/
/**
 *
 * This function handles the interrupts generated by DPDMA
 *
 * @param    InstancePtr is pointer to the instance of the DPDMA
 *
 * @return   None.
 *
 * @note     None.
 *
 * **************************************************************************/
void XDpDma_InterruptHandler_0(XDpDma *InstancePtr)
{
	u32 RegVal;
	rd_fps++;
	//Xil_DCacheInvalidateRange((INTPTR) pFrames[0], (INTPTR)FRAME_SIZE);

	RegVal = XDpDma_ReadReg(InstancePtr->Config.BaseAddr,
				XDPDMA_ISR);
	if(RegVal & XDPDMA_ISR_VSYNC_INT_MASK) {
		XDpDma_VSyncHandler(InstancePtr);
	}

	if(RegVal & XDPDMA_ISR_DSCR_DONE4_MASK) {
		XDpDma_SetChannelState(InstancePtr, AudioChan0, XDPDMA_DISABLE);
		InstancePtr->Audio[0].Current = NULL;
		XDpDma_WriteReg(InstancePtr->Config.BaseAddr, XDPDMA_ISR,
				XDPDMA_ISR_DSCR_DONE4_MASK);
	}

	if(RegVal & XDPDMA_ISR_DSCR_DONE5_MASK) {
		XDpDma_SetChannelState(InstancePtr, AudioChan1, XDPDMA_DISABLE);
		InstancePtr->Audio[1].Current = NULL;
		XDpDma_WriteReg(InstancePtr->Config.BaseAddr, XDPDMA_ISR,
				XDPDMA_ISR_DSCR_DONE5_MASK);
	}
}

/*****************************************************************************/
/**
*
* The purpose of this function is to generate a Graphics frame of the format
* RGBA8888 which generates an overlay on 1/2 of the bottom of the screen.
* This is just to illustrate the functionality of the graphics overlay.
*
* @param	RunCfgPtr is a pointer to the application configuration structure.
* @param	Frame is a pointer to a buffer which is going to be populated with
* 			rendered frame
*
* @return	Returns a pointer to the frame.
*
* @note		None.
*
*****************************************************************************/
u8 *GraphicsOverlay(u8* Frame, Run_Config *RunCfgPtr)
{
	u64 Index;
	u32 *RGBA;
	RGBA = (u32 *) Frame;
	/*
		 * Red at the top half
		 * Alpha = 0x0F
		 * */
	for(Index = 0; Index < (BUFFERSIZE/4) /3; Index ++) {
		RGBA[Index] = 0xFF0000FF;
	}
	for(; Index < BUFFERSIZE/4 / 3 * 2; Index ++) {
		/*
		 * Green at the bottom half
		 * Alpha = 0xF0
		 * */
		RGBA[Index] = 0xFF00FF00;
	}
	for(; Index < BUFFERSIZE/4 ; Index ++) {
		/*
		 * Green at the bottom half
		 * Alpha = 0xF0
		 * */
		RGBA[Index] = 0xFFFF0000;
	}
	return Frame;
}