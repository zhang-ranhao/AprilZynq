/******************** (C) COPYRIGHT 2022 Zhang ********************************
 * ���ߣ���Ƚ�
 * ʱ�䣺2023��11��7��
 * ��������Ŀ�����ļ�
******************************************************************************/
module top(
	inout 	cam0_i2c_scl_io					,  //�������IIC����
	inout 	cam0_i2c_sda_io					,
	inout 	[8:0]	emio_tri_io				,	//EMIO����
	input 	mipi_phy_if_0_clk_n				,	//mipiЭ��D��PHY����
	input 	mipi_phy_if_0_clk_p				,
	input 	[1:0]	mipi_phy_if_0_data_n	,	
	input 	[1:0]	mipi_phy_if_0_data_p	,
	input 	uav_uart_rxd					,	//uart����
	output 	uav_uart_txd
);
	
	wire [7:0] o_m_data_0;
	wire o_m_fstart_0;
	wire o_m_last_0;
	wire o_m_valid_0;	
	
	wire [0:0] 	peripheral_aresetn;			//��λ�ź�
	wire 		pl_clk0;					//ʱ���ź�
	
	wire [7:0] 	S_AXIS_S2MM_0_tdata;		//VDMA������˿�
	wire 		S_AXIS_S2MM_0_tlast;
	wire 		S_AXIS_S2MM_0_tready;
	wire [0:0] 	S_AXIS_S2MM_0_tuser;
	wire 		S_AXIS_S2MM_0_tvalid;
	
	
/***************************BDģ������*********************/
	design_1_wrapper design_1_wrapper_0 (
		.S_AXIS_S2MM_0_tdata(S_AXIS_S2MM_0_tdata),
		.S_AXIS_S2MM_0_tkeep(1'b1),
		.S_AXIS_S2MM_0_tlast(S_AXIS_S2MM_0_tlast),
		.S_AXIS_S2MM_0_tready(S_AXIS_S2MM_0_tready),
		.S_AXIS_S2MM_0_tuser(S_AXIS_S2MM_0_tuser),
		.S_AXIS_S2MM_0_tvalid(S_AXIS_S2MM_0_tvalid),
		.cam0_i2c_scl_io(cam0_i2c_scl_io),
		.cam0_i2c_sda_io(cam0_i2c_sda_io),
		.emio_tri_io(emio_tri_io),
		.mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
		.mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p	),
		.mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
		.mipi_phy_if_0_data_p(mipi_phy_if_0_data_p),
		.o_m_data_0(o_m_data_0),
		.o_m_fstart_0(o_m_fstart_0),
		.o_m_last_0(o_m_last_0),
		.o_m_valid_0(o_m_valid_0),
		.peripheral_aresetn(peripheral_aresetn),
		.pl_clk0(pl_clk0),
		.uav_uart_rxd(uav_uart_rxd),
		.uav_uart_txd(uav_uart_txd)
	);
	

	
	
/***************************����Ӧ��ֵ�ָ�ģ������*********************/	
	Th_Seg #(
		.DATA_WIDTH(8)			,
		.ROW_SIZE(360)			,
		.COL_SIZE(640)
	) Th_Seg_0 (
		.clk(pl_clk0)						,
		.rst_n(peripheral_aresetn)			,
		
		.i_s_valid(o_m_valid_0)				,
		.i_s_data(o_m_data_0)				,
		.i_s_fstart(o_m_fstart_0)			,
		.i_s_last(o_m_last_0)				,
		.o_s_ready()				,
		
		.o_m_valid(S_AXIS_S2MM_0_tvalid)	,
		.o_m_data(S_AXIS_S2MM_0_tdata)		,
		.o_m_fstart(S_AXIS_S2MM_0_tuser)	,
		.o_m_last(S_AXIS_S2MM_0_tlast)		,
		.i_m_ready(S_AXIS_S2MM_0_tready)		
	);	


endmodule









