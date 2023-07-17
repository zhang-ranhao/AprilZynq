
/****************************************************************/
/*	pl_vdma.c													*/
/****************************************************************/
/*	Author: Ranhao zhang
	Copyright 2023(c) Space Mechatronics Laboratory,
	School of Astronautics NUAA									*/
/****************************************************************/
/*  Description:
  	This file completes the initialization of the ps_vdma
		 														*/
/****************************************************************/
/*  Revision History:
	4/30/2023(Ranhao): Created
																*/
/****************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */
#include "pl_vdma.h"
/* ------------------------------------------------------------ */
/*				Miscellaneous Definations						*/
/* ------------------------------------------------------------ */
#define DELAY_TIMER_COUNTER 0
#define WriteCount          1
#define ReadCount           1

/* ------------------------------------------------------------ */
/*				Global Variables Definations					*/
/* ------------------------------------------------------------ */
u8 wr_color_index;
u16 wr_fps;
u8 wr_gray_index;

XAxiVdma Vdma_0;
XAxiVdma Vdma_1;
/* ------------------------------------------------------------ */
/*				Procedure Definations							*/
/* ------------------------------------------------------------ */

static void ImageReadingControl (void *CallbackRef)
{
	/*Color image updating*/
	wr_color_index = (XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET)
			 	 	 & XAXIVDMA_PARKPTR_WRTSTR_MASK)
					 >> XAXIVDMA_WRTSTR_SHIFT;
	FrameBuffer.Address = (INTPTR)pcolor_buf[(wr_color_index+2)%3];
	XDpDma_DisplayGfxFrameBuffer(RunCfg.DpDmaPtr, &FrameBuffer);

	/*Grayscale update*/
	if (key1_flag == 1)
	{
		key1_flag = 2;
		return;
	}
	else if (key1_flag == 2)
	{
		return;
	}
	else
	{

	}

	if (apriltag_flag == 1)
	{
		return;
	}
	else
	{

	}

	if (wr_gray_index == 2) {
		wr_gray_index = 0;
	}
	else {
		wr_gray_index++;
	}

	XAxiVdma_StartParking((XAxiVdma*)CallbackRef, wr_gray_index, XAXIVDMA_WRITE);
}
/*****************************************************************************/
/*
 * Call back function for write channel
 *
 * This callback only clears the interrupts and updates the transfer status.
 *
 * @param	CallbackRef is the call back reference pointer
 * @param	Mask is the interrupt mask passed in from the driver
 *
 * @return	None
 *
 ******************************************************************************/
static void WriteCallBack(void *CallbackRef, u32 Mask)
{

	if (Mask & XAXIVDMA_IXR_FRMCNT_MASK)
	{
		Xil_DCacheInvalidate();   //invalidate the cache
		wr_fps++;
		ImageReadingControl(CallbackRef);
	}
}

u32 vdma_version(XAxiVdma *Vdma) {
	return XAxiVdma_GetVersion(Vdma);
}

int vdma_read_start(XAxiVdma *Vdma) {
	int Status;

	// MM2S Startup
	Status = XAxiVdma_DmaStart(Vdma, XAXIVDMA_READ);
	if (Status != XST_SUCCESS)
	{
	   xil_printf("Start read transfer failed %d\n\r", Status);
	   return XST_FAILURE;
	}

	return XST_SUCCESS;
}


int vdma_read_stop(XAxiVdma *Vdma) {
	XAxiVdma_DmaStop(Vdma, XAXIVDMA_READ);
	return XST_SUCCESS;
}


int vdma_read_init(short DeviceID,short HoriSizeInput,short VertSizeInput,short Stride,unsigned int FrameStoreStartAddr)
{
	XAxiVdma Vdma;
	XAxiVdma_Config *Config;
	XAxiVdma_DmaSetup ReadCfg;
	int Status;


	Config = XAxiVdma_LookupConfig(DeviceID);
	if (NULL == Config) {
		xil_printf("XAxiVdma_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	Status = XAxiVdma_CfgInitialize(&Vdma, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XAxiVdma_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}

	

	ReadCfg.EnableCircularBuf = 1;
	ReadCfg.EnableFrameCounter = 0;
	ReadCfg.FixedFrameStoreAddr = 0;

	ReadCfg.EnableSync = 1;
	ReadCfg.PointNum = 1;

	ReadCfg.FrameDelay = 0;

	ReadCfg.VertSizeInput = VertSizeInput;
	ReadCfg.HoriSizeInput = HoriSizeInput;
	ReadCfg.Stride = Stride;



	Status = XAxiVdma_DmaConfig(&Vdma, XAXIVDMA_READ, &ReadCfg);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel config failed %d\r\n", Status);

			return XST_FAILURE;
	}

	Status = XAxiVdma_DmaSetBufferAddr(&Vdma, XAXIVDMA_READ, ReadCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,"Read channel set buffer address failed %d\r\n", Status);
			return XST_FAILURE;
	}


	Status = vdma_read_start(&Vdma);
	if (Status != XST_SUCCESS) {
		   xil_printf("error starting VDMA..!");
		   return Status;
	}
	return XST_SUCCESS;

}


int vdma_write_start(XAxiVdma *Vdma) {
	int Status;

	// MM2S Startup
	Status = XAxiVdma_DmaStart(Vdma, XAXIVDMA_WRITE);
	if (Status != XST_SUCCESS)
	{
	   xil_printf("Start write transfer failed %d\n\r", Status);
	   return XST_FAILURE;
	}

	return XST_SUCCESS;
}


int vdma_write_stop(XAxiVdma *Vdma) {
	XAxiVdma_DmaStop(Vdma, XAXIVDMA_WRITE);
	return XST_SUCCESS;
}


int vdma_write_init_0(short DeviceID,short HoriSizeInput,short VertSizeInput,short Stride, u32 FrameStoreStartAddr, u8 video_format)
{
	XAxiVdma_Config *Config;
	XAxiVdma_DmaSetup WriteCfg;
	int Status;


	Config = XAxiVdma_LookupConfig(DeviceID);
	if (NULL == Config) {
		xil_printf("XAxiVdma_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	Status = XAxiVdma_CfgInitialize(&Vdma_0, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XAxiVdma_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}

	WriteCfg.EnableCircularBuf = 1;
	WriteCfg.EnableFrameCounter = 0;
	WriteCfg.FixedFrameStoreAddr = 0;
	WriteCfg.EnableSync = 1;
	WriteCfg.PointNum = 1;
	WriteCfg.FrameDelay = 0;
	WriteCfg.VertSizeInput = VertSizeInput;
	WriteCfg.HoriSizeInput = HoriSizeInput * VIDEO_BPP;
	WriteCfg.Stride = Stride;

	Status = XAxiVdma_DmaConfig(&Vdma_0, XAXIVDMA_WRITE, &WriteCfg);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel config failed %d\r\n", Status);

			return XST_FAILURE;
	}

	for (int i = 0; i < DISPLAY_NUM_FRAMES; i++) {
		WriteCfg.FrameStoreStartAddr[i] = FrameStoreStartAddr + i * FRAME_SIZE;
	}

	Status = XAxiVdma_DmaSetBufferAddr(&Vdma_0, XAXIVDMA_WRITE, WriteCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,"Write channel set buffer address failed %d\r\n", Status);
			return XST_FAILURE;
	}

	Status = vdma_write_start(&Vdma_0);
	if (Status != XST_SUCCESS) {
		   xil_printf("error starting VDMA..!");
		   return Status;
	}
	return XST_SUCCESS;
}

int vdma_write_init_1(short DeviceID,short HoriSizeInput,short VertSizeInput,short Stride, u32 FrameStoreStartAddr, u8 video_format)
{
	XAxiVdma_Config *Config;
	XAxiVdma_DmaSetup WriteCfg;
	XAxiVdma_FrameCounter FrameCfg;
	int Status;

	Config = XAxiVdma_LookupConfig(DeviceID);
	if (NULL == Config) {
		xil_printf("XAxiVdma_LookupConfig failure\r\n");
		return XST_FAILURE;
	}

	Status = XAxiVdma_CfgInitialize(&Vdma_1, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("XAxiVdma_CfgInitialize failure\r\n");
		return XST_FAILURE;
	}

	WriteCfg.EnableCircularBuf = 0;
	WriteCfg.EnableFrameCounter = 0;
	WriteCfg.FixedFrameStoreAddr = 0;
	WriteCfg.EnableSync = 1;
	WriteCfg.PointNum = 1;
	WriteCfg.FrameDelay = 0;
	WriteCfg.VertSizeInput = VertSizeInput;
	WriteCfg.HoriSizeInput = HoriSizeInput;
	WriteCfg.Stride = Stride;

	Status = XAxiVdma_DmaConfig(&Vdma_1, XAXIVDMA_WRITE, &WriteCfg);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,
				"Read channel config failed %d\r\n", Status);

			return XST_FAILURE;
	}

	/* Set General Callback for Sensor Vdma */
	XAxiVdma_SetCallBack(&Vdma_1, XAXIVDMA_HANDLER_GENERAL, WriteCallBack, (void *)&Vdma_1, XAXIVDMA_WRITE);

	Status = SetupIntrSystem(&Vdma_1, VDMA_INTR_WRITE_1);
	if (Status != XST_SUCCESS) {
		xil_printf("Setup interrupt system failed %d\r\n", Status);
		return XST_FAILURE;
	}
	/* Setup frame counter and delay counter for both channels
	 *
	 * This is to monitor the progress of the test only
	 *
	 * WARNING: In free-run mode, interrupts may overwhelm the system.
	 * In that case, it is better to disable interrupts.
	 */

	FrameCfg.WriteFrameCount = WriteCount;
	FrameCfg.WriteDelayTimerCount = DELAY_TIMER_COUNTER;
	FrameCfg.ReadFrameCount = ReadCount;
	FrameCfg.ReadDelayTimerCount = DELAY_TIMER_COUNTER;


	Status = XAxiVdma_SetFrameCounter(&Vdma_1, &FrameCfg);
	if (Status != XST_SUCCESS) {
		xil_printf(
			"Set frame counter failed %d\r\n", Status);

		if (Status == XST_VDMA_MISMATCH_ERROR)
			xil_printf("DMA Mismatch Error\r\n");

		return XST_FAILURE;
	}

	XAxiVdma_IntrEnable(&Vdma_1, XAXIVDMA_IXR_FRMCNT_MASK, XAXIVDMA_WRITE);


	for (int i = 0; i < DISPLAY_NUM_FRAMES; i++) {
		WriteCfg.FrameStoreStartAddr[i] = FrameStoreStartAddr + i * GRAY_FRAME_SIZE;
	}
	Status = XAxiVdma_DmaSetBufferAddr(&Vdma_1, XAXIVDMA_WRITE, WriteCfg.FrameStoreStartAddr);
	if (Status != XST_SUCCESS) {
			xdbg_printf(XDBG_DEBUG_ERROR,"Write channel set buffer address failed %d\r\n", Status);
			return XST_FAILURE;
	}

	XAxiVdma_StartParking(&Vdma_1, 0, XAXIVDMA_WRITE);

	Status = vdma_write_start(&Vdma_1);
	if (Status != XST_SUCCESS) {
		   xil_printf("error starting VDMA..!");
		   return Status;
	}
	return XST_SUCCESS;
}

inline u8 get_write_frame(u8 video_format) {
	if (video_format == RGBA_8888)
		return (XAxiVdma_ReadReg(XPAR_AXIVDMA_0_BASEADDR, XAXIVDMA_PARKPTR_OFFSET)
				& XAXIVDMA_PARKPTR_WRTSTR_MASK)
				>> XAXIVDMA_WRTSTR_SHIFT;
	else
		return (XAxiVdma_ReadReg(XPAR_AXIVDMA_1_BASEADDR, XAXIVDMA_PARKPTR_OFFSET)
				& XAXIVDMA_PARKPTR_WRTSTR_MASK)
				>> XAXIVDMA_WRTSTR_SHIFT;
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA.  This function assumes INTC component exists in the hardware system.
*
* @param	AxiDmaPtr is a pointer to the instance of the DMA engine
* @param	WriteIntrId is the write channel Interrupt ID.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int SetupIntrSystem(XAxiVdma *AxiVdmaPtr, u16 WriteIntrId) {

	int Status;

	XScuGic *IntcInstancePtr = &ScuGic;

	XScuGic_SetPriorityTriggerType(IntcInstancePtr, WriteIntrId, 0xA0, 0x3);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */


	Status = XScuGic_Connect(IntcInstancePtr, WriteIntrId,
				(Xil_InterruptHandler)XAxiVdma_WriteIntrHandler,
				AxiVdmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the DMA device.
	 */
	XScuGic_Enable(IntcInstancePtr, WriteIntrId);

	return XST_SUCCESS;
}










