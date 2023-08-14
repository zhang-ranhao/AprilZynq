// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon May 15 21:56:38 2023
// Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/zrh463259112/Desktop/apriltag_demo/an5641_mipi_dp_stage1/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_v_rgb2ycrcb_0_0/design_1_v_rgb2ycrcb_0_0_sim_netlist.v
// Design      : design_1_v_rgb2ycrcb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_v_rgb2ycrcb_0_0,v_rgb2ycrcb,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "v_rgb2ycrcb,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_v_rgb2ycrcb_0_0
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tready,
    s_axis_video_tvalid,
    s_axis_video_tlast,
    s_axis_video_tuser_sof,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser_sof);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *) input aclken;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TLAST" *) input s_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser_sof;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 10} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 20} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 32}, INSERT_VIP 0" *) output [31:0]m_axis_video_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output m_axis_video_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input m_axis_video_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output m_axis_video_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output m_axis_video_tuser_sof;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [31:0]m_axis_video_tdata;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser_sof;
  wire m_axis_video_tvalid;
  wire [31:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser_sof;
  wire s_axis_video_tvalid;
  wire NLW_U0_irq_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire [8:0]NLW_U0_intc_if_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ACOEF = "19595" *) 
  (* C_ACTIVE_COLS = "1280" *) 
  (* C_ACTIVE_ROWS = "720" *) 
  (* C_BCOEF = "7471" *) 
  (* C_CBMAX = "1023" *) 
  (* C_CBMIN = "0" *) 
  (* C_CBOFFSET = "512" *) 
  (* C_CCOEF = "57493" *) 
  (* C_CRMAX = "1023" *) 
  (* C_CRMIN = "0" *) 
  (* C_CROFFSET = "512" *) 
  (* C_DCOEF = "32250" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI4_LITE = "0" *) 
  (* C_HAS_CLAMP = "1" *) 
  (* C_HAS_CLIP = "1" *) 
  (* C_HAS_DEBUG = "0" *) 
  (* C_HAS_INTC_IF = "0" *) 
  (* C_MAX_COLS = "1280" *) 
  (* C_M_AXIS_VIDEO_DATA_WIDTH = "10" *) 
  (* C_M_AXIS_VIDEO_FORMAT = "1" *) 
  (* C_M_AXIS_VIDEO_TDATA_WIDTH = "32" *) 
  (* C_S_AXIS_VIDEO_DATA_WIDTH = "10" *) 
  (* C_S_AXIS_VIDEO_FORMAT = "2" *) 
  (* C_S_AXIS_VIDEO_TDATA_WIDTH = "32" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_CLK_FREQ_HZ = "100000000" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_YMAX = "1023" *) 
  (* C_YMIN = "0" *) 
  (* C_YOFFSET = "64" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .intc_if(NLW_U0_intc_if_UNCONNECTED[8:0]),
        .irq(NLW_U0_irq_UNCONNECTED),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tuser_sof(m_axis_video_tuser_sof),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axi_aclk(1'b0),
        .s_axi_aclken(1'b1),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(1'b1),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser_sof(s_axis_video_tuser_sof),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule

(* ORIG_REF_NAME = "axi4s_control" *) 
module design_1_v_rgb2ycrcb_0_0_axi4s_control
   (in_fifo_reset,
    master_en,
    intc_if,
    fifo_wr_i,
    da,
    E,
    wen,
    fifo_rd_i_reg_0,
    SR,
    aclk,
    aclken,
    \genr_control_regs[0] ,
    resetn_out,
    \time_control_regs[0] ,
    eof_i_reg_0,
    t_qb,
    \col_cnt_reg[0]_0 ,
    \col_cnt_reg[0]_1 ,
    core_d_out,
    \GenerateDoutWriteFirstB.t_qb_reg[29] ,
    eol_late_i_reg_0);
  output in_fifo_reset;
  output master_en;
  output [7:0]intc_if;
  output fifo_wr_i;
  output [1:0]da;
  output [0:0]E;
  output wen;
  output fifo_rd_i_reg_0;
  input [0:0]SR;
  input aclk;
  input aclken;
  input [1:0]\genr_control_regs[0] ;
  input resetn_out;
  input [25:0]\time_control_regs[0] ;
  input eof_i_reg_0;
  input [1:0]t_qb;
  input \col_cnt_reg[0]_0 ;
  input \col_cnt_reg[0]_1 ;
  input core_d_out;
  input \GenerateDoutWriteFirstB.t_qb_reg[29] ;
  input eol_late_i_reg_0;

  wire [0:0]E;
  wire \GenerateDoutWriteFirstB.t_qb_reg[29] ;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire [12:0]active_cols_2;
  wire \active_cols_2[7]_i_2_n_0 ;
  wire \active_cols_2_reg[12]_i_1_n_11 ;
  wire \active_cols_2_reg[12]_i_1_n_12 ;
  wire \active_cols_2_reg[12]_i_1_n_13 ;
  wire \active_cols_2_reg[12]_i_1_n_14 ;
  wire \active_cols_2_reg[12]_i_1_n_15 ;
  wire \active_cols_2_reg[12]_i_1_n_4 ;
  wire \active_cols_2_reg[12]_i_1_n_5 ;
  wire \active_cols_2_reg[12]_i_1_n_6 ;
  wire \active_cols_2_reg[12]_i_1_n_7 ;
  wire \active_cols_2_reg[7]_i_1_n_0 ;
  wire \active_cols_2_reg[7]_i_1_n_1 ;
  wire \active_cols_2_reg[7]_i_1_n_10 ;
  wire \active_cols_2_reg[7]_i_1_n_11 ;
  wire \active_cols_2_reg[7]_i_1_n_12 ;
  wire \active_cols_2_reg[7]_i_1_n_13 ;
  wire \active_cols_2_reg[7]_i_1_n_14 ;
  wire \active_cols_2_reg[7]_i_1_n_15 ;
  wire \active_cols_2_reg[7]_i_1_n_2 ;
  wire \active_cols_2_reg[7]_i_1_n_3 ;
  wire \active_cols_2_reg[7]_i_1_n_4 ;
  wire \active_cols_2_reg[7]_i_1_n_5 ;
  wire \active_cols_2_reg[7]_i_1_n_6 ;
  wire \active_cols_2_reg[7]_i_1_n_7 ;
  wire \active_cols_2_reg[7]_i_1_n_8 ;
  wire \active_cols_2_reg[7]_i_1_n_9 ;
  wire active_delay_i;
  wire col_cnt;
  wire \col_cnt[0]_i_1_n_0 ;
  wire \col_cnt[0]_i_2_n_0 ;
  wire \col_cnt[10]_i_1_n_0 ;
  wire \col_cnt[10]_i_2_n_0 ;
  wire \col_cnt[11]_i_1_n_0 ;
  wire \col_cnt[12]_i_1_n_0 ;
  wire \col_cnt[12]_i_3_n_0 ;
  wire \col_cnt[12]_i_4_n_0 ;
  wire \col_cnt[12]_i_5_n_0 ;
  wire \col_cnt[12]_i_8_n_0 ;
  wire \col_cnt[1]_i_1_n_0 ;
  wire \col_cnt[1]_i_2_n_0 ;
  wire \col_cnt[2]_i_1_n_0 ;
  wire \col_cnt[2]_i_2_n_0 ;
  wire \col_cnt[2]_i_3_n_0 ;
  wire \col_cnt[3]_i_1_n_0 ;
  wire \col_cnt[3]_i_2_n_0 ;
  wire \col_cnt[4]_i_1_n_0 ;
  wire \col_cnt[4]_i_2_n_0 ;
  wire \col_cnt[5]_i_1_n_0 ;
  wire \col_cnt[5]_i_2_n_0 ;
  wire \col_cnt[6]_i_1_n_0 ;
  wire \col_cnt[6]_i_2_n_0 ;
  wire \col_cnt[7]_i_1_n_0 ;
  wire \col_cnt[7]_i_2_n_0 ;
  wire \col_cnt[7]_i_3_n_0 ;
  wire \col_cnt[8]_i_1_n_0 ;
  wire \col_cnt[8]_i_2_n_0 ;
  wire \col_cnt[9]_i_1_n_0 ;
  wire \col_cnt[9]_i_2_n_0 ;
  wire \col_cnt_reg[0]_0 ;
  wire \col_cnt_reg[0]_1 ;
  wire \col_cnt_reg_n_0_[0] ;
  wire \col_cnt_reg_n_0_[10] ;
  wire \col_cnt_reg_n_0_[11] ;
  wire \col_cnt_reg_n_0_[12] ;
  wire \col_cnt_reg_n_0_[1] ;
  wire \col_cnt_reg_n_0_[2] ;
  wire \col_cnt_reg_n_0_[3] ;
  wire \col_cnt_reg_n_0_[4] ;
  wire \col_cnt_reg_n_0_[5] ;
  wire \col_cnt_reg_n_0_[6] ;
  wire \col_cnt_reg_n_0_[7] ;
  wire \col_cnt_reg_n_0_[8] ;
  wire \col_cnt_reg_n_0_[9] ;
  wire core_d_out;
  wire core_en_i;
  wire [1:0]da;
  wire eof_i_i_1_n_0;
  wire eof_i_i_2_n_0;
  wire eof_i_i_3_n_0;
  wire eof_i_i_4_n_0;
  wire eof_i_i_5_n_0;
  wire eof_i_i_6_n_0;
  wire eof_i_i_7_n_0;
  wire eof_i_i_8_n_0;
  wire eof_i_reg_0;
  wire eol_early_i0;
  wire eol_early_i_i_1_n_0;
  wire eol_expected;
  wire eol_expected0;
  wire eol_expected_d;
  wire eol_expected_d_i_1_n_0;
  wire eol_expected_i_2_n_0;
  wire eol_expected_i_3_n_0;
  wire eol_expected_i_4_n_0;
  wire eol_expected_i_5_n_0;
  wire eol_expected_i_6_n_0;
  wire eol_expected_i_7_n_0;
  wire eol_expected_i_8_n_0;
  wire eol_late_i3_out;
  wire eol_late_i_i_3_n_0;
  wire eol_late_i_reg_0;
  wire eqOp1_out;
  wire fifo_rd_d;
  wire fifo_rd_d_i_1_n_0;
  wire fifo_rd_i;
  wire fifo_rd_i0;
  wire fifo_rd_i_reg_0;
  wire fifo_wr_i;
  wire fifo_wr_i0;
  wire fifo_wr_i_i_10_n_0;
  wire fifo_wr_i_i_11_n_0;
  wire fifo_wr_i_i_12_n_0;
  wire fifo_wr_i_i_13_n_0;
  wire fifo_wr_i_i_3_n_0;
  wire fifo_wr_i_i_4_n_0;
  wire fifo_wr_i_i_5_n_0;
  wire fifo_wr_i_i_6_n_0;
  wire fifo_wr_i_i_7_n_0;
  wire fifo_wr_i_i_8_n_0;
  wire fifo_wr_i_i_9_n_0;
  wire fifo_wr_i_reg_i_2_n_2;
  wire fifo_wr_i_reg_i_2_n_3;
  wire fifo_wr_i_reg_i_2_n_4;
  wire fifo_wr_i_reg_i_2_n_5;
  wire fifo_wr_i_reg_i_2_n_6;
  wire fifo_wr_i_reg_i_2_n_7;
  wire [1:0]\genr_control_regs[0] ;
  wire geqOp;
  wire geqOp_carry_i_10_n_0;
  wire geqOp_carry_i_11_n_0;
  wire geqOp_carry_i_12_n_0;
  wire geqOp_carry_i_13_n_0;
  wire geqOp_carry_i_14_n_0;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_i_7_n_0;
  wire geqOp_carry_i_8_n_0;
  wire geqOp_carry_i_9_n_0;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire geqOp_carry_n_4;
  wire geqOp_carry_n_5;
  wire geqOp_carry_n_6;
  wire geqOp_carry_n_7;
  wire gtOp;
  wire gtOp18_in;
  wire gtOp19_in;
  wire gtOp21_in;
  wire gtOp22_in;
  wire gtOp_carry_i_10_n_0;
  wire gtOp_carry_i_11_n_0;
  wire gtOp_carry_i_12_n_0;
  wire gtOp_carry_i_13_n_0;
  wire gtOp_carry_i_14_n_0;
  wire gtOp_carry_i_1_n_0;
  wire gtOp_carry_i_2_n_0;
  wire gtOp_carry_i_3_n_0;
  wire gtOp_carry_i_4_n_0;
  wire gtOp_carry_i_5_n_0;
  wire gtOp_carry_i_6_n_0;
  wire gtOp_carry_i_7_n_0;
  wire gtOp_carry_i_8_n_0;
  wire gtOp_carry_i_9_n_0;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_4;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire \gtOp_inferred__0/i__carry_n_2 ;
  wire \gtOp_inferred__0/i__carry_n_3 ;
  wire \gtOp_inferred__0/i__carry_n_4 ;
  wire \gtOp_inferred__0/i__carry_n_5 ;
  wire \gtOp_inferred__0/i__carry_n_6 ;
  wire \gtOp_inferred__0/i__carry_n_7 ;
  wire \gtOp_inferred__2/i__carry_n_2 ;
  wire \gtOp_inferred__2/i__carry_n_3 ;
  wire \gtOp_inferred__2/i__carry_n_4 ;
  wire \gtOp_inferred__2/i__carry_n_5 ;
  wire \gtOp_inferred__2/i__carry_n_6 ;
  wire \gtOp_inferred__2/i__carry_n_7 ;
  wire \gtOp_inferred__3/i__carry_n_2 ;
  wire \gtOp_inferred__3/i__carry_n_3 ;
  wire \gtOp_inferred__3/i__carry_n_4 ;
  wire \gtOp_inferred__3/i__carry_n_5 ;
  wire \gtOp_inferred__3/i__carry_n_6 ;
  wire \gtOp_inferred__3/i__carry_n_7 ;
  wire i__carry_i_10__0_n_0;
  wire i__carry_i_10__1_n_0;
  wire i__carry_i_10__2_n_0;
  wire i__carry_i_10__3_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11__0_n_0;
  wire i__carry_i_11__1_n_0;
  wire i__carry_i_11__2_n_0;
  wire i__carry_i_11__3_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12__0_n_0;
  wire i__carry_i_12__1_n_0;
  wire i__carry_i_12__2_n_0;
  wire i__carry_i_12__3_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13__0_n_0;
  wire i__carry_i_13__1_n_0;
  wire i__carry_i_13__2_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14__0_n_0;
  wire i__carry_i_14__1_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6__3_n_0;
  wire i__carry_i_6__4_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7__2_n_0;
  wire i__carry_i_7__3_n_0;
  wire i__carry_i_7__4_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8__1_n_0;
  wire i__carry_i_8__2_n_0;
  wire i__carry_i_8__3_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9__0_n_0;
  wire i__carry_i_9__1_n_0;
  wire i__carry_i_9__2_n_0;
  wire i__carry_i_9__3_n_0;
  wire i__carry_i_9_n_0;
  wire in_fifo_reset;
  wire in_fifo_reset0;
  wire in_fifo_reset_i_3_n_0;
  wire [7:0]intc_if;
  wire leqOp16_in;
  wire leqOp20_in;
  wire leqOp23_in;
  wire leqOp_carry_i_10_n_0;
  wire leqOp_carry_i_11_n_0;
  wire leqOp_carry_i_12_n_0;
  wire leqOp_carry_i_13_n_0;
  wire leqOp_carry_i_14_n_0;
  wire leqOp_carry_i_1_n_0;
  wire leqOp_carry_i_2_n_0;
  wire leqOp_carry_i_3_n_0;
  wire leqOp_carry_i_4_n_0;
  wire leqOp_carry_i_5_n_0;
  wire leqOp_carry_i_6_n_0;
  wire leqOp_carry_i_7_n_0;
  wire leqOp_carry_i_8_n_0;
  wire leqOp_carry_i_9_n_0;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire leqOp_carry_n_4;
  wire leqOp_carry_n_5;
  wire leqOp_carry_n_6;
  wire leqOp_carry_n_7;
  wire \leqOp_inferred__0/i__carry_n_2 ;
  wire \leqOp_inferred__0/i__carry_n_3 ;
  wire \leqOp_inferred__0/i__carry_n_4 ;
  wire \leqOp_inferred__0/i__carry_n_5 ;
  wire \leqOp_inferred__0/i__carry_n_6 ;
  wire \leqOp_inferred__0/i__carry_n_7 ;
  wire \leqOp_inferred__1/i__carry_n_2 ;
  wire \leqOp_inferred__1/i__carry_n_3 ;
  wire \leqOp_inferred__1/i__carry_n_4 ;
  wire \leqOp_inferred__1/i__carry_n_5 ;
  wire \leqOp_inferred__1/i__carry_n_6 ;
  wire \leqOp_inferred__1/i__carry_n_7 ;
  wire line_cnt_tc_i_1_n_0;
  wire line_cnt_tc_i_2_n_0;
  wire line_cnt_tc_i_3_n_0;
  wire line_cnt_tc_i_4_n_0;
  wire line_cnt_tc_i_5_n_0;
  wire ltOp;
  wire ltOp_carry_i_10_n_0;
  wire ltOp_carry_i_11_n_0;
  wire ltOp_carry_i_12_n_0;
  wire ltOp_carry_i_13_n_0;
  wire ltOp_carry_i_14_n_0;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8__2_n_0;
  wire ltOp_carry_i_9_n_0;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire ltOp_carry_n_4;
  wire ltOp_carry_n_5;
  wire ltOp_carry_n_6;
  wire ltOp_carry_n_7;
  wire \ltOp_inferred__0/i__carry_n_3 ;
  wire \ltOp_inferred__0/i__carry_n_4 ;
  wire \ltOp_inferred__0/i__carry_n_5 ;
  wire \ltOp_inferred__0/i__carry_n_6 ;
  wire \ltOp_inferred__0/i__carry_n_7 ;
  wire master_en;
  wire out_fifo_eol_i_2_n_0;
  wire out_fifo_eol_i_3_n_0;
  wire out_fifo_eol_i_4_n_0;
  wire out_fifo_eol_i_5_n_0;
  wire out_fifo_eol_i_6_n_0;
  wire out_fifo_eol_i_7_n_0;
  wire out_fifo_sof0;
  wire pixel_cnt_tc_i_1_n_0;
  wire pixel_cnt_tc_i_2_n_0;
  wire [12:0]plusOp;
  wire [12:0]plusOp__1;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire resetn_out;
  wire row_cnt;
  wire \row_cnt[12]_i_1_n_0 ;
  wire [12:0]row_cnt_reg;
  wire sof_early_i_i_1_n_0;
  wire sof_expected;
  wire sof_expected0;
  wire sof_expected_i_2_n_0;
  wire sof_expected_i_3_n_0;
  wire sof_expected_i_4_n_0;
  wire sof_expected_i_5_n_0;
  wire sof_expected_i_6_n_0;
  wire sof_expected_i_7_n_0;
  wire sof_expected_i_8_n_0;
  wire sof_expected_i_9_n_0;
  wire sof_late_i2_out;
  wire [1:0]t_qb;
  wire [25:0]\time_control_regs[0] ;
  wire [12:0]total_cols;
  wire \total_cols[8]_i_2_n_0 ;
  wire \total_cols[8]_i_3_n_0 ;
  wire \total_cols_reg[12]_i_1_n_5 ;
  wire \total_cols_reg[12]_i_1_n_6 ;
  wire \total_cols_reg[12]_i_1_n_7 ;
  wire \total_cols_reg[8]_i_1_n_0 ;
  wire \total_cols_reg[8]_i_1_n_1 ;
  wire \total_cols_reg[8]_i_1_n_2 ;
  wire \total_cols_reg[8]_i_1_n_3 ;
  wire \total_cols_reg[8]_i_1_n_4 ;
  wire \total_cols_reg[8]_i_1_n_5 ;
  wire \total_cols_reg[8]_i_1_n_6 ;
  wire \total_cols_reg[8]_i_1_n_7 ;
  wire [12:0]total_rows;
  wire wen;
  wire [7:4]\NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED ;
  wire [7:7]NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED;
  wire [7:0]NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED;
  wire [7:7]NLW_geqOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [7:7]NLW_gtOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [7:7]\NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:7]\NLW_gtOp_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED ;
  wire [7:7]\NLW_gtOp_inferred__3/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED ;
  wire [7:7]NLW_leqOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_leqOp_carry_O_UNCONNECTED;
  wire [7:7]\NLW_leqOp_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:7]\NLW_leqOp_inferred__1/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED ;
  wire [7:7]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [7:6]\NLW_ltOp_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:3]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_plusOp_carry__0_O_UNCONNECTED;
  wire [7:3]\NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_total_cols_reg[12]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_1 
       (.I0(\genr_control_regs[0] [0]),
        .I1(aclken),
        .I2(intc_if[5]),
        .I3(core_d_out),
        .I4(\GenerateDoutWriteFirstB.t_qb_reg[29] ),
        .I5(fifo_wr_i),
        .O(wen));
  LUT1 #(
    .INIT(2'h1)) 
    \active_cols_2[7]_i_2 
       (.I0(\time_control_regs[0] [1]),
        .O(\active_cols_2[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_15 ),
        .Q(active_cols_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[12]_i_1_n_13 ),
        .Q(active_cols_2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[12]_i_1_n_12 ),
        .Q(active_cols_2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[12]_i_1_n_11 ),
        .Q(active_cols_2[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \active_cols_2_reg[12]_i_1 
       (.CI(\active_cols_2_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_active_cols_2_reg[12]_i_1_CO_UNCONNECTED [7:4],\active_cols_2_reg[12]_i_1_n_4 ,\active_cols_2_reg[12]_i_1_n_5 ,\active_cols_2_reg[12]_i_1_n_6 ,\active_cols_2_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_active_cols_2_reg[12]_i_1_O_UNCONNECTED [7:5],\active_cols_2_reg[12]_i_1_n_11 ,\active_cols_2_reg[12]_i_1_n_12 ,\active_cols_2_reg[12]_i_1_n_13 ,\active_cols_2_reg[12]_i_1_n_14 ,\active_cols_2_reg[12]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,\time_control_regs[0] [12:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_14 ),
        .Q(active_cols_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_13 ),
        .Q(active_cols_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_12 ),
        .Q(active_cols_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_11 ),
        .Q(active_cols_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_10 ),
        .Q(active_cols_2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_9 ),
        .Q(active_cols_2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[7]_i_1_n_8 ),
        .Q(active_cols_2[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \active_cols_2_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\active_cols_2_reg[7]_i_1_n_0 ,\active_cols_2_reg[7]_i_1_n_1 ,\active_cols_2_reg[7]_i_1_n_2 ,\active_cols_2_reg[7]_i_1_n_3 ,\active_cols_2_reg[7]_i_1_n_4 ,\active_cols_2_reg[7]_i_1_n_5 ,\active_cols_2_reg[7]_i_1_n_6 ,\active_cols_2_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\time_control_regs[0] [1],1'b0}),
        .O({\active_cols_2_reg[7]_i_1_n_8 ,\active_cols_2_reg[7]_i_1_n_9 ,\active_cols_2_reg[7]_i_1_n_10 ,\active_cols_2_reg[7]_i_1_n_11 ,\active_cols_2_reg[7]_i_1_n_12 ,\active_cols_2_reg[7]_i_1_n_13 ,\active_cols_2_reg[7]_i_1_n_14 ,\active_cols_2_reg[7]_i_1_n_15 }),
        .S({\time_control_regs[0] [7:2],\active_cols_2[7]_i_2_n_0 ,\time_control_regs[0] [0]}));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[12]_i_1_n_15 ),
        .Q(active_cols_2[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \active_cols_2_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\active_cols_2_reg[12]_i_1_n_14 ),
        .Q(active_cols_2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFAAEFAAEAAAEFAA)) 
    \col_cnt[0]_i_1 
       (.I0(\col_cnt[0]_i_2_n_0 ),
        .I1(active_cols_2[0]),
        .I2(eol_late_i3_out),
        .I3(\col_cnt[12]_i_4_n_0 ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .I5(geqOp),
        .O(\col_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000DCD0DCD0DCD0)) 
    \col_cnt[0]_i_2 
       (.I0(intc_if[6]),
        .I1(fifo_rd_d),
        .I2(intc_if[7]),
        .I3(sof_expected),
        .I4(in_fifo_reset),
        .I5(t_qb[1]),
        .O(\col_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[10]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(\col_cnt[10]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[10]),
        .O(\col_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \col_cnt[10]_i_2 
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(\col_cnt[6]_i_2_n_0 ),
        .I3(\col_cnt_reg_n_0_[7] ),
        .I4(\col_cnt_reg_n_0_[9] ),
        .O(\col_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[11]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[11] ),
        .I2(pixel_cnt_tc_i_2_n_0),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[11]),
        .O(\col_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7500FFFF)) 
    \col_cnt[12]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(eol_late_i3_out),
        .I2(geqOp),
        .I3(col_cnt),
        .I4(resetn_out),
        .O(\col_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0055445500004454)) 
    \col_cnt[12]_i_2 
       (.I0(eof_i_reg_0),
        .I1(\col_cnt[12]_i_5_n_0 ),
        .I2(leqOp20_in),
        .I3(\col_cnt_reg[0]_0 ),
        .I4(\col_cnt_reg[0]_1 ),
        .I5(ltOp),
        .O(col_cnt));
  LUT6 #(
    .INIT(64'hAAAA002800000028)) 
    \col_cnt[12]_i_3 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[12] ),
        .I2(\col_cnt[12]_i_8_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[12]),
        .O(\col_cnt[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80870000808780F7)) 
    \col_cnt[12]_i_4 
       (.I0(t_qb[1]),
        .I1(in_fifo_reset),
        .I2(sof_expected),
        .I3(intc_if[7]),
        .I4(fifo_rd_d),
        .I5(intc_if[6]),
        .O(\col_cnt[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \col_cnt[12]_i_5 
       (.I0(gtOp21_in),
        .I1(gtOp22_in),
        .I2(leqOp23_in),
        .O(\col_cnt[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \col_cnt[12]_i_8 
       (.I0(\col_cnt_reg_n_0_[11] ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(\col_cnt_reg_n_0_[8] ),
        .I3(\col_cnt[7]_i_2_n_0 ),
        .I4(\col_cnt_reg_n_0_[7] ),
        .I5(\col_cnt_reg_n_0_[9] ),
        .O(\col_cnt[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h54FF540000000000)) 
    \col_cnt[1]_i_1 
       (.I0(sof_early_i_i_1_n_0),
        .I1(sof_late_i2_out),
        .I2(\col_cnt[1]_i_2_n_0 ),
        .I3(col_cnt),
        .I4(\col_cnt_reg_n_0_[1] ),
        .I5(resetn_out),
        .O(\col_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA022000000220)) 
    \col_cnt[1]_i_2 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(geqOp),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[1]),
        .O(\col_cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8C8EFFFF8C8E8CAE)) 
    \col_cnt[2]_i_1 
       (.I0(\col_cnt[2]_i_2_n_0 ),
        .I1(\col_cnt[2]_i_3_n_0 ),
        .I2(sof_expected),
        .I3(intc_if[7]),
        .I4(fifo_rd_d),
        .I5(intc_if[6]),
        .O(\col_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888B8B8B8B888888)) 
    \col_cnt[2]_i_2 
       (.I0(active_cols_2[2]),
        .I1(eol_late_i3_out),
        .I2(geqOp),
        .I3(\col_cnt_reg_n_0_[1] ),
        .I4(\col_cnt_reg_n_0_[0] ),
        .I5(\col_cnt_reg_n_0_[2] ),
        .O(\col_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \col_cnt[2]_i_3 
       (.I0(in_fifo_reset),
        .I1(t_qb[1]),
        .O(\col_cnt[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAA020002)) 
    \col_cnt[3]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt[3]_i_2_n_0 ),
        .I2(geqOp),
        .I3(eol_late_i3_out),
        .I4(active_cols_2[3]),
        .O(\col_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \col_cnt[3]_i_2 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .O(\col_cnt[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[4]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(\col_cnt[4]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[4]),
        .O(\col_cnt[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \col_cnt[4]_i_2 
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .I2(\col_cnt_reg_n_0_[2] ),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(\col_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[5]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[5] ),
        .I2(\col_cnt[5]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[5]),
        .O(\col_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \col_cnt[5]_i_2 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(\col_cnt_reg_n_0_[4] ),
        .O(\col_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[6]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(\col_cnt[6]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[6]),
        .O(\col_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \col_cnt[6]_i_2 
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .I4(\col_cnt_reg_n_0_[3] ),
        .I5(\col_cnt_reg_n_0_[5] ),
        .O(\col_cnt[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[7]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[7] ),
        .I2(\col_cnt[7]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[7]),
        .O(\col_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \col_cnt[7]_i_2 
       (.I0(\col_cnt_reg_n_0_[5] ),
        .I1(\col_cnt[7]_i_3_n_0 ),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\col_cnt_reg_n_0_[0] ),
        .I4(\col_cnt_reg_n_0_[4] ),
        .I5(\col_cnt_reg_n_0_[6] ),
        .O(\col_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \col_cnt[7]_i_3 
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .O(\col_cnt[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[8]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(\col_cnt[8]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[8]),
        .O(\col_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \col_cnt[8]_i_2 
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\col_cnt[6]_i_2_n_0 ),
        .I2(\col_cnt_reg_n_0_[7] ),
        .O(\col_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA008200000082)) 
    \col_cnt[9]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(\col_cnt_reg_n_0_[9] ),
        .I2(\col_cnt[9]_i_2_n_0 ),
        .I3(geqOp),
        .I4(eol_late_i3_out),
        .I5(active_cols_2[9]),
        .O(\col_cnt[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \col_cnt[9]_i_2 
       (.I0(\col_cnt_reg_n_0_[7] ),
        .I1(\col_cnt[6]_i_2_n_0 ),
        .I2(\col_cnt_reg_n_0_[6] ),
        .I3(\col_cnt_reg_n_0_[8] ),
        .O(\col_cnt[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \col_cnt_reg[0] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[0]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[0] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[10] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[10]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[10] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[11] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[11]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[11] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[12] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[12]_i_3_n_0 ),
        .Q(\col_cnt_reg_n_0_[12] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\col_cnt[1]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[2] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[2]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[3] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[3]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[3] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[4] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[4]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[4] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[5] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[5]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[5] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[6] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[6]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[6] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[7] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[7]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[7] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[8] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[8]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[8] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \col_cnt_reg[9] 
       (.C(aclk),
        .CE(col_cnt),
        .D(\col_cnt[9]_i_1_n_0 ),
        .Q(\col_cnt_reg_n_0_[9] ),
        .R(\col_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    core_en_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(gtOp),
        .Q(core_en_i),
        .R(active_delay_i));
  LUT6 #(
    .INIT(64'hAA00AA30AAAAAAAA)) 
    eof_i_i_1
       (.I0(intc_if[0]),
        .I1(eof_i_i_2_n_0),
        .I2(eqOp1_out),
        .I3(eof_i_reg_0),
        .I4(line_cnt_tc_i_3_n_0),
        .I5(resetn_out),
        .O(eof_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    eof_i_i_2
       (.I0(eof_i_i_3_n_0),
        .I1(eof_i_i_4_n_0),
        .I2(eof_i_i_5_n_0),
        .I3(eof_i_i_6_n_0),
        .I4(eof_i_i_7_n_0),
        .I5(eof_i_i_8_n_0),
        .O(eof_i_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eof_i_i_3
       (.I0(total_rows[3]),
        .I1(row_cnt_reg[3]),
        .I2(total_rows[2]),
        .I3(row_cnt_reg[2]),
        .O(eof_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eof_i_i_4
       (.I0(total_rows[7]),
        .I1(row_cnt_reg[7]),
        .I2(total_rows[6]),
        .I3(row_cnt_reg[6]),
        .O(eof_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eof_i_i_5
       (.I0(total_rows[9]),
        .I1(row_cnt_reg[9]),
        .I2(total_rows[8]),
        .I3(row_cnt_reg[8]),
        .O(eof_i_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eof_i_i_6
       (.I0(total_rows[5]),
        .I1(row_cnt_reg[5]),
        .I2(total_rows[4]),
        .I3(row_cnt_reg[4]),
        .O(eof_i_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eof_i_i_7
       (.I0(total_rows[11]),
        .I1(row_cnt_reg[11]),
        .I2(total_rows[10]),
        .I3(row_cnt_reg[10]),
        .O(eof_i_i_7_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    eof_i_i_8
       (.I0(total_rows[12]),
        .I1(row_cnt_reg[12]),
        .I2(row_cnt_reg[0]),
        .I3(total_rows[0]),
        .I4(row_cnt_reg[1]),
        .I5(total_rows[1]),
        .O(eof_i_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eof_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(eof_i_i_1_n_0),
        .Q(intc_if[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF4F004000000000)) 
    eol_early_i_i_1
       (.I0(eol_expected_d),
        .I1(eol_early_i0),
        .I2(fifo_rd_d),
        .I3(eof_i_reg_0),
        .I4(intc_if[4]),
        .I5(resetn_out),
        .O(eol_early_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h8989898900008900)) 
    eol_early_i_i_2
       (.I0(\col_cnt[2]_i_3_n_0 ),
        .I1(sof_expected),
        .I2(intc_if[7]),
        .I3(eol_late_i_reg_0),
        .I4(intc_if[5]),
        .I5(intc_if[4]),
        .O(eol_early_i0));
  FDRE #(
    .INIT(1'b0)) 
    eol_early_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(eol_early_i_i_1_n_0),
        .Q(intc_if[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    eol_expected_d_i_1
       (.I0(eol_expected),
        .I1(fifo_rd_i),
        .I2(aclken),
        .I3(\genr_control_regs[0] [0]),
        .I4(eol_expected_d),
        .O(eol_expected_d_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eol_expected_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(eol_expected_d_i_1_n_0),
        .Q(eol_expected_d),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    eol_expected_i_1
       (.I0(eol_expected_i_2_n_0),
        .I1(eol_expected_i_3_n_0),
        .I2(eol_expected_i_4_n_0),
        .I3(eol_expected_i_5_n_0),
        .I4(eol_expected_i_6_n_0),
        .I5(eol_expected_i_7_n_0),
        .O(eol_expected0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_2
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\time_control_regs[0] [10]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(\time_control_regs[0] [11]),
        .O(eol_expected_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_3
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\time_control_regs[0] [0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\time_control_regs[0] [1]),
        .O(eol_expected_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_4
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\time_control_regs[0] [2]),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\time_control_regs[0] [3]),
        .O(eol_expected_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_5
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\time_control_regs[0] [8]),
        .I2(\col_cnt_reg_n_0_[9] ),
        .I3(\time_control_regs[0] [9]),
        .O(eol_expected_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_6
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\time_control_regs[0] [4]),
        .I2(\col_cnt_reg_n_0_[5] ),
        .I3(\time_control_regs[0] [5]),
        .O(eol_expected_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF666FFFF)) 
    eol_expected_i_7
       (.I0(\time_control_regs[0] [12]),
        .I1(\col_cnt_reg_n_0_[12] ),
        .I2(in_fifo_reset),
        .I3(t_qb[1]),
        .I4(eol_expected_i_8_n_0),
        .O(eol_expected_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    eol_expected_i_8
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\time_control_regs[0] [6]),
        .I2(\col_cnt_reg_n_0_[7] ),
        .I3(\time_control_regs[0] [7]),
        .O(eol_expected_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eol_expected_reg
       (.C(aclk),
        .CE(master_en),
        .D(eol_expected0),
        .Q(eol_expected),
        .R(SR));
  LUT6 #(
    .INIT(64'h0555455500004000)) 
    eol_late_i_i_1
       (.I0(eol_late_i_reg_0),
        .I1(eol_late_i_i_3_n_0),
        .I2(eol_expected_d),
        .I3(fifo_rd_d),
        .I4(intc_if[4]),
        .I5(intc_if[5]),
        .O(eol_late_i3_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC111)) 
    eol_late_i_i_3
       (.I0(intc_if[7]),
        .I1(sof_expected),
        .I2(in_fifo_reset),
        .I3(t_qb[1]),
        .O(eol_late_i_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    eol_late_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(eol_late_i3_out),
        .Q(intc_if[5]),
        .R(SR));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    fifo_rd_d_i_1
       (.I0(fifo_rd_i),
        .I1(resetn_out),
        .I2(aclken),
        .I3(\genr_control_regs[0] [0]),
        .I4(fifo_rd_d),
        .O(fifo_rd_d_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_d_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_rd_d_i_1_n_0),
        .Q(fifo_rd_d),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hD555)) 
    fifo_rd_i_i_1
       (.I0(resetn_out),
        .I1(line_cnt_tc_i_3_n_0),
        .I2(\genr_control_regs[0] [0]),
        .I3(aclken),
        .O(active_delay_i));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFECECEC)) 
    fifo_rd_i_i_2
       (.I0(sof_expected),
        .I1(intc_if[7]),
        .I2(fifo_rd_d),
        .I3(leqOp20_in),
        .I4(leqOp16_in),
        .I5(\col_cnt[2]_i_3_n_0 ),
        .O(fifo_rd_i0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(fifo_rd_i0),
        .Q(fifo_rd_i),
        .R(active_delay_i));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_wr_i_i_1
       (.I0(gtOp18_in),
        .I1(gtOp19_in),
        .O(fifo_wr_i0));
  LUT2 #(
    .INIT(4'h1)) 
    fifo_wr_i_i_10
       (.I0(\col_cnt_reg_n_0_[7] ),
        .I1(\col_cnt_reg_n_0_[6] ),
        .O(fifo_wr_i_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fifo_wr_i_i_11
       (.I0(\col_cnt_reg_n_0_[5] ),
        .I1(\col_cnt_reg_n_0_[4] ),
        .O(fifo_wr_i_i_11_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_wr_i_i_12
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .O(fifo_wr_i_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_wr_i_i_13
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .O(fifo_wr_i_i_13_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_wr_i_i_3
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\col_cnt_reg_n_0_[11] ),
        .O(fifo_wr_i_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_wr_i_i_4
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\col_cnt_reg_n_0_[9] ),
        .O(fifo_wr_i_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_wr_i_i_5
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\col_cnt_reg_n_0_[7] ),
        .O(fifo_wr_i_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_wr_i_i_6
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\col_cnt_reg_n_0_[5] ),
        .O(fifo_wr_i_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fifo_wr_i_i_7
       (.I0(\col_cnt_reg_n_0_[12] ),
        .O(fifo_wr_i_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fifo_wr_i_i_8
       (.I0(\col_cnt_reg_n_0_[11] ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .O(fifo_wr_i_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fifo_wr_i_i_9
       (.I0(\col_cnt_reg_n_0_[9] ),
        .I1(\col_cnt_reg_n_0_[8] ),
        .O(fifo_wr_i_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_wr_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(fifo_wr_i0),
        .Q(fifo_wr_i),
        .R(active_delay_i));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 fifo_wr_i_reg_i_2
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_fifo_wr_i_reg_i_2_CO_UNCONNECTED[7],gtOp19_in,fifo_wr_i_reg_i_2_n_2,fifo_wr_i_reg_i_2_n_3,fifo_wr_i_reg_i_2_n_4,fifo_wr_i_reg_i_2_n_5,fifo_wr_i_reg_i_2_n_6,fifo_wr_i_reg_i_2_n_7}),
        .DI({1'b0,\col_cnt_reg_n_0_[12] ,fifo_wr_i_i_3_n_0,fifo_wr_i_i_4_n_0,fifo_wr_i_i_5_n_0,fifo_wr_i_i_6_n_0,1'b0,\col_cnt_reg_n_0_[1] }),
        .O(NLW_fifo_wr_i_reg_i_2_O_UNCONNECTED[7:0]),
        .S({1'b0,fifo_wr_i_i_7_n_0,fifo_wr_i_i_8_n_0,fifo_wr_i_i_9_n_0,fifo_wr_i_i_10_n_0,fifo_wr_i_i_11_n_0,fifo_wr_i_i_12_n_0,fifo_wr_i_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 geqOp_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_geqOp_carry_CO_UNCONNECTED[7],geqOp,geqOp_carry_n_2,geqOp_carry_n_3,geqOp_carry_n_4,geqOp_carry_n_5,geqOp_carry_n_6,geqOp_carry_n_7}),
        .DI({1'b0,geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0,geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0,geqOp_carry_i_7_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,geqOp_carry_i_8_n_0,geqOp_carry_i_9_n_0,geqOp_carry_i_10_n_0,geqOp_carry_i_11_n_0,geqOp_carry_i_12_n_0,geqOp_carry_i_13_n_0,geqOp_carry_i_14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry_i_1
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(total_cols[12]),
        .O(geqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_10
       (.I0(total_cols[8]),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(total_cols[9]),
        .I3(\col_cnt_reg_n_0_[9] ),
        .O(geqOp_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_11
       (.I0(total_cols[6]),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(total_cols[7]),
        .I3(\col_cnt_reg_n_0_[7] ),
        .O(geqOp_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_12
       (.I0(total_cols[4]),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(total_cols[5]),
        .I3(\col_cnt_reg_n_0_[5] ),
        .O(geqOp_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_13
       (.I0(total_cols[2]),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(total_cols[3]),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(geqOp_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_14
       (.I0(total_cols[0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(total_cols[1]),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(geqOp_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_2
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(total_cols[10]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(total_cols[11]),
        .O(geqOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_3
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(total_cols[8]),
        .I2(\col_cnt_reg_n_0_[9] ),
        .I3(total_cols[9]),
        .O(geqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_4
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(total_cols[6]),
        .I2(\col_cnt_reg_n_0_[7] ),
        .I3(total_cols[7]),
        .O(geqOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_5
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(total_cols[4]),
        .I2(\col_cnt_reg_n_0_[5] ),
        .I3(total_cols[5]),
        .O(geqOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_6
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(total_cols[2]),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(total_cols[3]),
        .O(geqOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    geqOp_carry_i_7
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(total_cols[0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(total_cols[1]),
        .O(geqOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    geqOp_carry_i_8
       (.I0(total_cols[12]),
        .I1(\col_cnt_reg_n_0_[12] ),
        .O(geqOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp_carry_i_9
       (.I0(total_cols[10]),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(total_cols[11]),
        .I3(\col_cnt_reg_n_0_[11] ),
        .O(geqOp_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_gtOp_carry_CO_UNCONNECTED[7],gtOp22_in,gtOp_carry_n_2,gtOp_carry_n_3,gtOp_carry_n_4,gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({1'b0,gtOp_carry_i_1_n_0,gtOp_carry_i_2_n_0,gtOp_carry_i_3_n_0,gtOp_carry_i_4_n_0,gtOp_carry_i_5_n_0,gtOp_carry_i_6_n_0,gtOp_carry_i_7_n_0}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,gtOp_carry_i_8_n_0,gtOp_carry_i_9_n_0,gtOp_carry_i_10_n_0,gtOp_carry_i_11_n_0,gtOp_carry_i_12_n_0,gtOp_carry_i_13_n_0,gtOp_carry_i_14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry_i_1
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(\time_control_regs[0] [12]),
        .O(gtOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_10
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\time_control_regs[0] [8]),
        .I2(\col_cnt_reg_n_0_[9] ),
        .I3(\time_control_regs[0] [9]),
        .O(gtOp_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_11
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\time_control_regs[0] [6]),
        .I2(\col_cnt_reg_n_0_[7] ),
        .I3(\time_control_regs[0] [7]),
        .O(gtOp_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_12
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\time_control_regs[0] [4]),
        .I2(\col_cnt_reg_n_0_[5] ),
        .I3(\time_control_regs[0] [5]),
        .O(gtOp_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_13
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\time_control_regs[0] [2]),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\time_control_regs[0] [3]),
        .O(gtOp_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_14
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\time_control_regs[0] [0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\time_control_regs[0] [1]),
        .O(gtOp_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_2
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\time_control_regs[0] [10]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(\time_control_regs[0] [11]),
        .O(gtOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_3
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\time_control_regs[0] [8]),
        .I2(\col_cnt_reg_n_0_[9] ),
        .I3(\time_control_regs[0] [9]),
        .O(gtOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_4
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\time_control_regs[0] [6]),
        .I2(\col_cnt_reg_n_0_[7] ),
        .I3(\time_control_regs[0] [7]),
        .O(gtOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_5
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\time_control_regs[0] [4]),
        .I2(\col_cnt_reg_n_0_[5] ),
        .I3(\time_control_regs[0] [5]),
        .O(gtOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_6
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\time_control_regs[0] [2]),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\time_control_regs[0] [3]),
        .O(gtOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    gtOp_carry_i_7
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\time_control_regs[0] [0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\time_control_regs[0] [1]),
        .O(gtOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    gtOp_carry_i_8
       (.I0(\time_control_regs[0] [12]),
        .I1(\col_cnt_reg_n_0_[12] ),
        .O(gtOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_9
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\time_control_regs[0] [10]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(\time_control_regs[0] [11]),
        .O(gtOp_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \gtOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_gtOp_inferred__0/i__carry_CO_UNCONNECTED [7],gtOp21_in,\gtOp_inferred__0/i__carry_n_2 ,\gtOp_inferred__0/i__carry_n_3 ,\gtOp_inferred__0/i__carry_n_4 ,\gtOp_inferred__0/i__carry_n_5 ,\gtOp_inferred__0/i__carry_n_6 ,\gtOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,i__carry_i_1__2_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,i__carry_i_4__3_n_0,i__carry_i_5__3_n_0,i__carry_i_6__3_n_0,i__carry_i_7__2_n_0}),
        .O(\NLW_gtOp_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,i__carry_i_8__2_n_0,i__carry_i_9__2_n_0,i__carry_i_10__3_n_0,i__carry_i_11__2_n_0,i__carry_i_12__3_n_0,i__carry_i_13__2_n_0,i__carry_i_14__1_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \gtOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_gtOp_inferred__2/i__carry_CO_UNCONNECTED [7],gtOp18_in,\gtOp_inferred__2/i__carry_n_2 ,\gtOp_inferred__2/i__carry_n_3 ,\gtOp_inferred__2/i__carry_n_4 ,\gtOp_inferred__2/i__carry_n_5 ,\gtOp_inferred__2/i__carry_n_6 ,\gtOp_inferred__2/i__carry_n_7 }),
        .DI({1'b0,row_cnt_reg[12],i__carry_i_1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0}),
        .O(\NLW_gtOp_inferred__2/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,i__carry_i_7__0_n_0,i__carry_i_8_n_0,i__carry_i_9__3_n_0,i__carry_i_10_n_0,i__carry_i_11__3_n_0,i__carry_i_12_n_0,i__carry_i_13_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \gtOp_inferred__3/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_gtOp_inferred__3/i__carry_CO_UNCONNECTED [7],gtOp,\gtOp_inferred__3/i__carry_n_2 ,\gtOp_inferred__3/i__carry_n_3 ,\gtOp_inferred__3/i__carry_n_4 ,\gtOp_inferred__3/i__carry_n_5 ,\gtOp_inferred__3/i__carry_n_6 ,\gtOp_inferred__3/i__carry_n_7 }),
        .DI({1'b0,\col_cnt_reg_n_0_[12] ,i__carry_i_1__0_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,i__carry_i_4__1_n_0,i__carry_i_5__1_n_0,\col_cnt_reg_n_0_[1] }),
        .O(\NLW_gtOp_inferred__3/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,i__carry_i_6__1_n_0,i__carry_i_7__4_n_0,i__carry_i_8__0_n_0,i__carry_i_9__0_n_0,i__carry_i_10__0_n_0,i__carry_i_11_n_0,i__carry_i_12__0_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1
       (.I0(row_cnt_reg[11]),
        .I1(row_cnt_reg[10]),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_10
       (.I0(row_cnt_reg[6]),
        .I1(row_cnt_reg[7]),
        .O(i__carry_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_10__0
       (.I0(\col_cnt_reg_n_0_[5] ),
        .I1(\col_cnt_reg_n_0_[4] ),
        .O(i__carry_i_10__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10__1
       (.I0(\time_control_regs[0] [21]),
        .I1(row_cnt_reg[8]),
        .I2(\time_control_regs[0] [22]),
        .I3(row_cnt_reg[9]),
        .O(i__carry_i_10__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10__2
       (.I0(total_cols[8]),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(total_cols[9]),
        .I3(\col_cnt_reg_n_0_[9] ),
        .O(i__carry_i_10__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_10__3
       (.I0(\time_control_regs[0] [21]),
        .I1(row_cnt_reg[8]),
        .I2(\time_control_regs[0] [22]),
        .I3(row_cnt_reg[9]),
        .O(i__carry_i_10__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_11
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11__0
       (.I0(\time_control_regs[0] [19]),
        .I1(row_cnt_reg[6]),
        .I2(\time_control_regs[0] [20]),
        .I3(row_cnt_reg[7]),
        .O(i__carry_i_11__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11__1
       (.I0(total_cols[6]),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(total_cols[7]),
        .I3(\col_cnt_reg_n_0_[7] ),
        .O(i__carry_i_11__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_11__2
       (.I0(\time_control_regs[0] [19]),
        .I1(row_cnt_reg[6]),
        .I2(\time_control_regs[0] [20]),
        .I3(row_cnt_reg[7]),
        .O(i__carry_i_11__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_11__3
       (.I0(row_cnt_reg[4]),
        .I1(row_cnt_reg[5]),
        .O(i__carry_i_11__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_12
       (.I0(row_cnt_reg[2]),
        .I1(row_cnt_reg[3]),
        .O(i__carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_12__0
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\col_cnt_reg_n_0_[1] ),
        .O(i__carry_i_12__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_12__1
       (.I0(\time_control_regs[0] [17]),
        .I1(row_cnt_reg[4]),
        .I2(\time_control_regs[0] [18]),
        .I3(row_cnt_reg[5]),
        .O(i__carry_i_12__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_12__2
       (.I0(total_cols[4]),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(total_cols[5]),
        .I3(\col_cnt_reg_n_0_[5] ),
        .O(i__carry_i_12__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_12__3
       (.I0(\time_control_regs[0] [17]),
        .I1(row_cnt_reg[4]),
        .I2(\time_control_regs[0] [18]),
        .I3(row_cnt_reg[5]),
        .O(i__carry_i_12__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_13
       (.I0(row_cnt_reg[0]),
        .I1(row_cnt_reg[1]),
        .O(i__carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_13__0
       (.I0(\time_control_regs[0] [15]),
        .I1(row_cnt_reg[2]),
        .I2(\time_control_regs[0] [16]),
        .I3(row_cnt_reg[3]),
        .O(i__carry_i_13__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_13__1
       (.I0(total_cols[2]),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(total_cols[3]),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(i__carry_i_13__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_13__2
       (.I0(\time_control_regs[0] [15]),
        .I1(row_cnt_reg[2]),
        .I2(\time_control_regs[0] [16]),
        .I3(row_cnt_reg[3]),
        .O(i__carry_i_13__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_14
       (.I0(\time_control_regs[0] [13]),
        .I1(row_cnt_reg[0]),
        .I2(\time_control_regs[0] [14]),
        .I3(row_cnt_reg[1]),
        .O(i__carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_14__0
       (.I0(total_cols[0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(total_cols[1]),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(i__carry_i_14__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_14__1
       (.I0(\time_control_regs[0] [13]),
        .I1(row_cnt_reg[0]),
        .I2(\time_control_regs[0] [14]),
        .I3(row_cnt_reg[1]),
        .O(i__carry_i_14__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\col_cnt_reg_n_0_[11] ),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__1
       (.I0(total_cols[12]),
        .I1(\col_cnt_reg_n_0_[12] ),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__2
       (.I0(row_cnt_reg[12]),
        .I1(\time_control_regs[0] [25]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1__3
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\col_cnt_reg_n_0_[3] ),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_1__4
       (.I0(\time_control_regs[0] [25]),
        .I1(row_cnt_reg[12]),
        .O(i__carry_i_1__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2
       (.I0(total_cols[10]),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(total_cols[11]),
        .I3(\col_cnt_reg_n_0_[11] ),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__0
       (.I0(row_cnt_reg[9]),
        .I1(row_cnt_reg[8]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__1
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\col_cnt_reg_n_0_[9] ),
        .O(i__carry_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__2
       (.I0(\time_control_regs[0] [23]),
        .I1(row_cnt_reg[10]),
        .I2(\time_control_regs[0] [24]),
        .I3(row_cnt_reg[11]),
        .O(i__carry_i_2__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_2__3
       (.I0(row_cnt_reg[10]),
        .I1(\time_control_regs[0] [23]),
        .I2(row_cnt_reg[11]),
        .I3(\time_control_regs[0] [24]),
        .O(i__carry_i_2__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2__4
       (.I0(\col_cnt_reg_n_0_[12] ),
        .O(i__carry_i_2__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3
       (.I0(total_cols[8]),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(total_cols[9]),
        .I3(\col_cnt_reg_n_0_[9] ),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__0
       (.I0(row_cnt_reg[7]),
        .I1(row_cnt_reg[6]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__1
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\col_cnt_reg_n_0_[7] ),
        .O(i__carry_i_3__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__2
       (.I0(\time_control_regs[0] [21]),
        .I1(row_cnt_reg[8]),
        .I2(\time_control_regs[0] [22]),
        .I3(row_cnt_reg[9]),
        .O(i__carry_i_3__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_3__3
       (.I0(row_cnt_reg[8]),
        .I1(\time_control_regs[0] [21]),
        .I2(row_cnt_reg[9]),
        .I3(\time_control_regs[0] [22]),
        .O(i__carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__4
       (.I0(\col_cnt_reg_n_0_[11] ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .O(i__carry_i_3__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4
       (.I0(total_cols[6]),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(total_cols[7]),
        .I3(\col_cnt_reg_n_0_[7] ),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__0
       (.I0(row_cnt_reg[5]),
        .I1(row_cnt_reg[4]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__1
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\col_cnt_reg_n_0_[5] ),
        .O(i__carry_i_4__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__2
       (.I0(\time_control_regs[0] [19]),
        .I1(row_cnt_reg[6]),
        .I2(\time_control_regs[0] [20]),
        .I3(row_cnt_reg[7]),
        .O(i__carry_i_4__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_4__3
       (.I0(row_cnt_reg[6]),
        .I1(\time_control_regs[0] [19]),
        .I2(row_cnt_reg[7]),
        .I3(\time_control_regs[0] [20]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__4
       (.I0(\col_cnt_reg_n_0_[9] ),
        .I1(\col_cnt_reg_n_0_[8] ),
        .O(i__carry_i_4__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_5
       (.I0(total_cols[4]),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(total_cols[5]),
        .I3(\col_cnt_reg_n_0_[5] ),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_5__0
       (.I0(row_cnt_reg[3]),
        .I1(row_cnt_reg[2]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_5__1
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\col_cnt_reg_n_0_[3] ),
        .O(i__carry_i_5__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_5__2
       (.I0(\time_control_regs[0] [17]),
        .I1(row_cnt_reg[4]),
        .I2(\time_control_regs[0] [18]),
        .I3(row_cnt_reg[5]),
        .O(i__carry_i_5__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_5__3
       (.I0(row_cnt_reg[4]),
        .I1(\time_control_regs[0] [17]),
        .I2(row_cnt_reg[5]),
        .I3(\time_control_regs[0] [18]),
        .O(i__carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5__4
       (.I0(\col_cnt_reg_n_0_[7] ),
        .I1(\col_cnt_reg_n_0_[6] ),
        .O(i__carry_i_5__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_6
       (.I0(total_cols[2]),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(total_cols[3]),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_6__0
       (.I0(row_cnt_reg[1]),
        .I1(row_cnt_reg[0]),
        .O(i__carry_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_6__1
       (.I0(\col_cnt_reg_n_0_[12] ),
        .O(i__carry_i_6__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_6__2
       (.I0(\time_control_regs[0] [15]),
        .I1(row_cnt_reg[2]),
        .I2(\time_control_regs[0] [16]),
        .I3(row_cnt_reg[3]),
        .O(i__carry_i_6__2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_6__3
       (.I0(row_cnt_reg[2]),
        .I1(\time_control_regs[0] [15]),
        .I2(row_cnt_reg[3]),
        .I3(\time_control_regs[0] [16]),
        .O(i__carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__4
       (.I0(\col_cnt_reg_n_0_[5] ),
        .I1(\col_cnt_reg_n_0_[4] ),
        .O(i__carry_i_6__4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_7
       (.I0(total_cols[0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(total_cols[1]),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(i__carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_7__0
       (.I0(row_cnt_reg[12]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_7__1
       (.I0(\time_control_regs[0] [13]),
        .I1(row_cnt_reg[0]),
        .I2(\time_control_regs[0] [14]),
        .I3(row_cnt_reg[1]),
        .O(i__carry_i_7__1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    i__carry_i_7__2
       (.I0(row_cnt_reg[0]),
        .I1(\time_control_regs[0] [13]),
        .I2(row_cnt_reg[1]),
        .I3(\time_control_regs[0] [14]),
        .O(i__carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_7__3
       (.I0(\col_cnt_reg_n_0_[3] ),
        .I1(\col_cnt_reg_n_0_[2] ),
        .O(i__carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__4
       (.I0(\col_cnt_reg_n_0_[11] ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .O(i__carry_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(row_cnt_reg[10]),
        .I1(row_cnt_reg[11]),
        .O(i__carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__0
       (.I0(\col_cnt_reg_n_0_[9] ),
        .I1(\col_cnt_reg_n_0_[8] ),
        .O(i__carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__1
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(total_cols[12]),
        .O(i__carry_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__2
       (.I0(\time_control_regs[0] [25]),
        .I1(row_cnt_reg[12]),
        .O(i__carry_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8__3
       (.I0(row_cnt_reg[12]),
        .I1(\time_control_regs[0] [25]),
        .O(i__carry_i_8__3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9
       (.I0(total_cols[10]),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(total_cols[11]),
        .I3(\col_cnt_reg_n_0_[11] ),
        .O(i__carry_i_9_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_9__0
       (.I0(\col_cnt_reg_n_0_[7] ),
        .I1(\col_cnt_reg_n_0_[6] ),
        .O(i__carry_i_9__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9__1
       (.I0(\time_control_regs[0] [23]),
        .I1(row_cnt_reg[10]),
        .I2(\time_control_regs[0] [24]),
        .I3(row_cnt_reg[11]),
        .O(i__carry_i_9__1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_9__2
       (.I0(\time_control_regs[0] [23]),
        .I1(row_cnt_reg[10]),
        .I2(\time_control_regs[0] [24]),
        .I3(row_cnt_reg[11]),
        .O(i__carry_i_9__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_9__3
       (.I0(row_cnt_reg[8]),
        .I1(row_cnt_reg[9]),
        .O(i__carry_i_9__3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    in_fifo_reset_i_1
       (.I0(in_fifo_reset),
        .I1(fifo_rd_i_reg_0),
        .O(in_fifo_reset0));
  LUT6 #(
    .INIT(64'hFFFF0000FFFF555D)) 
    in_fifo_reset_i_2
       (.I0(fifo_rd_i),
        .I1(eol_late_i_reg_0),
        .I2(\genr_control_regs[0] [1]),
        .I3(eol_expected_d),
        .I4(eof_i_reg_0),
        .I5(in_fifo_reset_i_3_n_0),
        .O(fifo_rd_i_reg_0));
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    in_fifo_reset_i_3
       (.I0(intc_if[7]),
        .I1(t_qb[0]),
        .I2(in_fifo_reset),
        .I3(eol_expected_d),
        .I4(intc_if[5]),
        .O(in_fifo_reset_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in_fifo_reset_reg
       (.C(aclk),
        .CE(master_en),
        .D(in_fifo_reset0),
        .Q(in_fifo_reset),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    \intc_if[0]_INST_0 
       (.I0(core_en_i),
        .I1(\genr_control_regs[0] [0]),
        .I2(aclken),
        .I3(intc_if[5]),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \intc_if[4]_INST_0 
       (.I0(intc_if[7]),
        .I1(intc_if[5]),
        .I2(intc_if[4]),
        .I3(intc_if[6]),
        .O(intc_if[3]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 leqOp_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_leqOp_carry_CO_UNCONNECTED[7],leqOp20_in,leqOp_carry_n_2,leqOp_carry_n_3,leqOp_carry_n_4,leqOp_carry_n_5,leqOp_carry_n_6,leqOp_carry_n_7}),
        .DI({1'b0,leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0,leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,leqOp_carry_i_8_n_0,leqOp_carry_i_9_n_0,leqOp_carry_i_10_n_0,leqOp_carry_i_11_n_0,leqOp_carry_i_12_n_0,leqOp_carry_i_13_n_0,leqOp_carry_i_14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    leqOp_carry_i_1
       (.I0(\time_control_regs[0] [12]),
        .I1(\col_cnt_reg_n_0_[12] ),
        .O(leqOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_10
       (.I0(\col_cnt_reg_n_0_[8] ),
        .I1(\time_control_regs[0] [8]),
        .I2(\col_cnt_reg_n_0_[9] ),
        .I3(\time_control_regs[0] [9]),
        .O(leqOp_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_11
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\time_control_regs[0] [6]),
        .I2(\col_cnt_reg_n_0_[7] ),
        .I3(\time_control_regs[0] [7]),
        .O(leqOp_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_12
       (.I0(\col_cnt_reg_n_0_[4] ),
        .I1(\time_control_regs[0] [4]),
        .I2(\col_cnt_reg_n_0_[5] ),
        .I3(\time_control_regs[0] [5]),
        .O(leqOp_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_13
       (.I0(\col_cnt_reg_n_0_[2] ),
        .I1(\time_control_regs[0] [2]),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\time_control_regs[0] [3]),
        .O(leqOp_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_14
       (.I0(\col_cnt_reg_n_0_[0] ),
        .I1(\time_control_regs[0] [0]),
        .I2(\col_cnt_reg_n_0_[1] ),
        .I3(\time_control_regs[0] [1]),
        .O(leqOp_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_2
       (.I0(\time_control_regs[0] [10]),
        .I1(\col_cnt_reg_n_0_[10] ),
        .I2(\time_control_regs[0] [11]),
        .I3(\col_cnt_reg_n_0_[11] ),
        .O(leqOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_3
       (.I0(\time_control_regs[0] [8]),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(\time_control_regs[0] [9]),
        .I3(\col_cnt_reg_n_0_[9] ),
        .O(leqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_4
       (.I0(\time_control_regs[0] [6]),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(\time_control_regs[0] [7]),
        .I3(\col_cnt_reg_n_0_[7] ),
        .O(leqOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_5
       (.I0(\time_control_regs[0] [4]),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(\time_control_regs[0] [5]),
        .I3(\col_cnt_reg_n_0_[5] ),
        .O(leqOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_6
       (.I0(\time_control_regs[0] [2]),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(\time_control_regs[0] [3]),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(leqOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    leqOp_carry_i_7
       (.I0(\time_control_regs[0] [0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(\time_control_regs[0] [1]),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(leqOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    leqOp_carry_i_8
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(\time_control_regs[0] [12]),
        .O(leqOp_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    leqOp_carry_i_9
       (.I0(\col_cnt_reg_n_0_[10] ),
        .I1(\time_control_regs[0] [10]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(\time_control_regs[0] [11]),
        .O(leqOp_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \leqOp_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_leqOp_inferred__0/i__carry_CO_UNCONNECTED [7],leqOp23_in,\leqOp_inferred__0/i__carry_n_2 ,\leqOp_inferred__0/i__carry_n_3 ,\leqOp_inferred__0/i__carry_n_4 ,\leqOp_inferred__0/i__carry_n_5 ,\leqOp_inferred__0/i__carry_n_6 ,\leqOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,i__carry_i_1__1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}),
        .O(\NLW_leqOp_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,i__carry_i_8__1_n_0,i__carry_i_9_n_0,i__carry_i_10__2_n_0,i__carry_i_11__1_n_0,i__carry_i_12__2_n_0,i__carry_i_13__1_n_0,i__carry_i_14__0_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \leqOp_inferred__1/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_leqOp_inferred__1/i__carry_CO_UNCONNECTED [7],leqOp16_in,\leqOp_inferred__1/i__carry_n_2 ,\leqOp_inferred__1/i__carry_n_3 ,\leqOp_inferred__1/i__carry_n_4 ,\leqOp_inferred__1/i__carry_n_5 ,\leqOp_inferred__1/i__carry_n_6 ,\leqOp_inferred__1/i__carry_n_7 }),
        .DI({1'b0,i__carry_i_1__4_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0,i__carry_i_4__2_n_0,i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__1_n_0}),
        .O(\NLW_leqOp_inferred__1/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,i__carry_i_8__3_n_0,i__carry_i_9__1_n_0,i__carry_i_10__1_n_0,i__carry_i_11__0_n_0,i__carry_i_12__1_n_0,i__carry_i_13__0_n_0,i__carry_i_14_n_0}));
  LUT4 #(
    .INIT(16'h0080)) 
    line_cnt_tc_i_1
       (.I0(\genr_control_regs[0] [0]),
        .I1(aclken),
        .I2(resetn_out),
        .I3(line_cnt_tc_i_3_n_0),
        .O(line_cnt_tc_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    line_cnt_tc_i_2
       (.I0(line_cnt_tc_i_4_n_0),
        .I1(line_cnt_tc_i_5_n_0),
        .I2(row_cnt_reg[11]),
        .I3(row_cnt_reg[10]),
        .I4(row_cnt_reg[3]),
        .O(line_cnt_tc_i_2_n_0));
  LUT5 #(
    .INIT(32'hC4C4F4F5)) 
    line_cnt_tc_i_3
       (.I0(ltOp),
        .I1(\col_cnt_reg[0]_1 ),
        .I2(\col_cnt_reg[0]_0 ),
        .I3(leqOp20_in),
        .I4(\col_cnt[12]_i_5_n_0 ),
        .O(line_cnt_tc_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    line_cnt_tc_i_4
       (.I0(row_cnt_reg[0]),
        .I1(row_cnt_reg[12]),
        .I2(row_cnt_reg[8]),
        .I3(row_cnt_reg[1]),
        .I4(row_cnt_reg[2]),
        .I5(row_cnt_reg[6]),
        .O(line_cnt_tc_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    line_cnt_tc_i_5
       (.I0(row_cnt_reg[5]),
        .I1(row_cnt_reg[4]),
        .I2(row_cnt_reg[7]),
        .I3(row_cnt_reg[9]),
        .O(line_cnt_tc_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_cnt_tc_reg
       (.C(aclk),
        .CE(line_cnt_tc_i_1_n_0),
        .D(line_cnt_tc_i_2_n_0),
        .Q(intc_if[2]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ltOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_ltOp_carry_CO_UNCONNECTED[7],ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3,ltOp_carry_n_4,ltOp_carry_n_5,ltOp_carry_n_6,ltOp_carry_n_7}),
        .DI({1'b0,ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0,ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,ltOp_carry_i_8__2_n_0,ltOp_carry_i_9_n_0,ltOp_carry_i_10_n_0,ltOp_carry_i_11_n_0,ltOp_carry_i_12_n_0,ltOp_carry_i_13_n_0,ltOp_carry_i_14_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_1
       (.I0(total_rows[12]),
        .I1(row_cnt_reg[12]),
        .O(ltOp_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_10
       (.I0(total_rows[9]),
        .I1(row_cnt_reg[9]),
        .I2(total_rows[8]),
        .I3(row_cnt_reg[8]),
        .O(ltOp_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_11
       (.I0(total_rows[7]),
        .I1(row_cnt_reg[7]),
        .I2(total_rows[6]),
        .I3(row_cnt_reg[6]),
        .O(ltOp_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_12
       (.I0(total_rows[5]),
        .I1(row_cnt_reg[5]),
        .I2(total_rows[4]),
        .I3(row_cnt_reg[4]),
        .O(ltOp_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_13
       (.I0(total_rows[3]),
        .I1(row_cnt_reg[3]),
        .I2(total_rows[2]),
        .I3(row_cnt_reg[2]),
        .O(ltOp_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_14
       (.I0(total_rows[1]),
        .I1(row_cnt_reg[1]),
        .I2(total_rows[0]),
        .I3(row_cnt_reg[0]),
        .O(ltOp_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_2
       (.I0(row_cnt_reg[11]),
        .I1(total_rows[11]),
        .I2(total_rows[10]),
        .I3(row_cnt_reg[10]),
        .O(ltOp_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_3
       (.I0(row_cnt_reg[9]),
        .I1(total_rows[9]),
        .I2(total_rows[8]),
        .I3(row_cnt_reg[8]),
        .O(ltOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_4
       (.I0(row_cnt_reg[7]),
        .I1(total_rows[7]),
        .I2(total_rows[6]),
        .I3(row_cnt_reg[6]),
        .O(ltOp_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_5
       (.I0(row_cnt_reg[5]),
        .I1(total_rows[5]),
        .I2(total_rows[4]),
        .I3(row_cnt_reg[4]),
        .O(ltOp_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_6
       (.I0(row_cnt_reg[3]),
        .I1(total_rows[3]),
        .I2(total_rows[2]),
        .I3(row_cnt_reg[2]),
        .O(ltOp_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    ltOp_carry_i_7
       (.I0(row_cnt_reg[1]),
        .I1(total_rows[1]),
        .I2(total_rows[0]),
        .I3(row_cnt_reg[0]),
        .O(ltOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ltOp_carry_i_8__2
       (.I0(row_cnt_reg[12]),
        .I1(total_rows[12]),
        .O(ltOp_carry_i_8__2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_9
       (.I0(total_rows[11]),
        .I1(row_cnt_reg[11]),
        .I2(total_rows[10]),
        .I3(row_cnt_reg[10]),
        .O(ltOp_carry_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \ltOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_ltOp_inferred__0/i__carry_CO_UNCONNECTED [7:6],ltOp,\ltOp_inferred__0/i__carry_n_3 ,\ltOp_inferred__0/i__carry_n_4 ,\ltOp_inferred__0/i__carry_n_5 ,\ltOp_inferred__0/i__carry_n_6 ,\ltOp_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i__carry_i_1__3_n_0}),
        .O(\NLW_ltOp_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,i__carry_i_2__4_n_0,i__carry_i_3__4_n_0,i__carry_i_4__4_n_0,i__carry_i_5__4_n_0,i__carry_i_6__4_n_0,i__carry_i_7__3_n_0}));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    out_fifo_eol_i_1
       (.I0(out_fifo_eol_i_2_n_0),
        .I1(out_fifo_eol_i_3_n_0),
        .I2(out_fifo_eol_i_4_n_0),
        .I3(out_fifo_eol_i_5_n_0),
        .I4(out_fifo_eol_i_6_n_0),
        .I5(out_fifo_eol_i_7_n_0),
        .O(eqOp1_out));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    out_fifo_eol_i_2
       (.I0(total_cols[8]),
        .I1(\col_cnt_reg_n_0_[8] ),
        .I2(total_cols[9]),
        .I3(\col_cnt_reg_n_0_[9] ),
        .O(out_fifo_eol_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_fifo_eol_i_3
       (.I0(total_cols[4]),
        .I1(\col_cnt_reg_n_0_[4] ),
        .I2(total_cols[5]),
        .I3(\col_cnt_reg_n_0_[5] ),
        .O(out_fifo_eol_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_fifo_eol_i_4
       (.I0(total_cols[6]),
        .I1(\col_cnt_reg_n_0_[6] ),
        .I2(total_cols[7]),
        .I3(\col_cnt_reg_n_0_[7] ),
        .O(out_fifo_eol_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_fifo_eol_i_5
       (.I0(total_cols[2]),
        .I1(\col_cnt_reg_n_0_[2] ),
        .I2(total_cols[3]),
        .I3(\col_cnt_reg_n_0_[3] ),
        .O(out_fifo_eol_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    out_fifo_eol_i_6
       (.I0(total_cols[0]),
        .I1(\col_cnt_reg_n_0_[0] ),
        .I2(total_cols[1]),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(out_fifo_eol_i_6_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    out_fifo_eol_i_7
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(total_cols[12]),
        .I2(\col_cnt_reg_n_0_[11] ),
        .I3(total_cols[11]),
        .I4(\col_cnt_reg_n_0_[10] ),
        .I5(total_cols[10]),
        .O(out_fifo_eol_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_fifo_eol_reg
       (.C(aclk),
        .CE(master_en),
        .D(eqOp1_out),
        .Q(da[0]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    out_fifo_sof_i_1
       (.I0(sof_expected_i_3_n_0),
        .I1(sof_expected_i_2_n_0),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .O(out_fifo_sof0));
  FDSE #(
    .INIT(1'b0)) 
    out_fifo_sof_reg
       (.C(aclk),
        .CE(master_en),
        .D(out_fifo_sof0),
        .Q(da[1]),
        .S(SR));
  LUT3 #(
    .INIT(8'h40)) 
    pixel_cnt_tc_i_1
       (.I0(pixel_cnt_tc_i_2_n_0),
        .I1(\col_cnt_reg_n_0_[11] ),
        .I2(\col_cnt_reg_n_0_[12] ),
        .O(pixel_cnt_tc_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    pixel_cnt_tc_i_2
       (.I0(\col_cnt_reg_n_0_[9] ),
        .I1(\col_cnt_reg_n_0_[7] ),
        .I2(\col_cnt[6]_i_2_n_0 ),
        .I3(\col_cnt_reg_n_0_[6] ),
        .I4(\col_cnt_reg_n_0_[8] ),
        .I5(\col_cnt_reg_n_0_[10] ),
        .O(pixel_cnt_tc_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pixel_cnt_tc_reg
       (.C(aclk),
        .CE(line_cnt_tc_i_1_n_0),
        .D(pixel_cnt_tc_i_1_n_0),
        .Q(intc_if[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry
       (.CI(row_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3,plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp__1[8:1]),
        .S(row_cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_plusOp_carry__0_CO_UNCONNECTED[7:3],plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__0_O_UNCONNECTED[7:4],plusOp__1[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,row_cnt_reg[12:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \row_cnt[0]_i_1 
       (.I0(row_cnt_reg[0]),
        .O(plusOp__1[0]));
  LUT6 #(
    .INIT(64'h55750000FFFFFFFF)) 
    \row_cnt[12]_i_1 
       (.I0(\col_cnt[12]_i_4_n_0 ),
        .I1(ltOp_carry_n_1),
        .I2(geqOp),
        .I3(eol_late_i3_out),
        .I4(col_cnt),
        .I5(resetn_out),
        .O(\row_cnt[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \row_cnt[12]_i_2 
       (.I0(col_cnt),
        .I1(eol_late_i3_out),
        .I2(geqOp),
        .O(row_cnt));
  FDSE #(
    .INIT(1'b1)) 
    \row_cnt_reg[0] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[0]),
        .Q(row_cnt_reg[0]),
        .S(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[10] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[10]),
        .Q(row_cnt_reg[10]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[11] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[11]),
        .Q(row_cnt_reg[11]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[12] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[12]),
        .Q(row_cnt_reg[12]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[1] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[1]),
        .Q(row_cnt_reg[1]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[2] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[2]),
        .Q(row_cnt_reg[2]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[3] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[3]),
        .Q(row_cnt_reg[3]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[4] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[4]),
        .Q(row_cnt_reg[4]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[5] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[5]),
        .Q(row_cnt_reg[5]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[6] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[6]),
        .Q(row_cnt_reg[6]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[7] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[7]),
        .Q(row_cnt_reg[7]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[8] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[8]),
        .Q(row_cnt_reg[8]),
        .R(\row_cnt[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \row_cnt_reg[9] 
       (.C(aclk),
        .CE(row_cnt),
        .D(plusOp__1[9]),
        .Q(row_cnt_reg[9]),
        .R(\row_cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008FFFF00080000)) 
    sof_early_i_i_1
       (.I0(t_qb[1]),
        .I1(in_fifo_reset),
        .I2(sof_expected),
        .I3(intc_if[7]),
        .I4(fifo_rd_d),
        .I5(intc_if[6]),
        .O(sof_early_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sof_early_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(sof_early_i_i_1_n_0),
        .Q(intc_if[6]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    sof_expected_i_1
       (.I0(sof_expected_i_2_n_0),
        .I1(sof_expected_i_3_n_0),
        .I2(\col_cnt_reg_n_0_[3] ),
        .I3(\col_cnt_reg_n_0_[2] ),
        .O(sof_expected0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    sof_expected_i_2
       (.I0(\col_cnt_reg_n_0_[12] ),
        .I1(\col_cnt_reg_n_0_[5] ),
        .I2(\col_cnt_reg_n_0_[4] ),
        .I3(sof_expected_i_4_n_0),
        .I4(sof_expected_i_5_n_0),
        .I5(sof_expected_i_6_n_0),
        .O(sof_expected_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    sof_expected_i_3
       (.I0(sof_expected_i_7_n_0),
        .I1(sof_expected_i_8_n_0),
        .I2(sof_expected_i_9_n_0),
        .I3(row_cnt_reg[12]),
        .I4(row_cnt_reg[0]),
        .I5(row_cnt_reg[1]),
        .O(sof_expected_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    sof_expected_i_4
       (.I0(\col_cnt_reg_n_0_[6] ),
        .I1(\col_cnt_reg_n_0_[7] ),
        .I2(\col_cnt_reg_n_0_[0] ),
        .I3(\col_cnt_reg_n_0_[1] ),
        .O(sof_expected_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sof_expected_i_5
       (.I0(\col_cnt_reg_n_0_[11] ),
        .I1(\col_cnt_reg_n_0_[10] ),
        .O(sof_expected_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sof_expected_i_6
       (.I0(\col_cnt_reg_n_0_[9] ),
        .I1(\col_cnt_reg_n_0_[8] ),
        .O(sof_expected_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    sof_expected_i_7
       (.I0(row_cnt_reg[7]),
        .I1(row_cnt_reg[6]),
        .I2(row_cnt_reg[2]),
        .I3(row_cnt_reg[3]),
        .I4(row_cnt_reg[10]),
        .I5(row_cnt_reg[11]),
        .O(sof_expected_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sof_expected_i_8
       (.I0(row_cnt_reg[8]),
        .I1(row_cnt_reg[9]),
        .O(sof_expected_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sof_expected_i_9
       (.I0(row_cnt_reg[4]),
        .I1(row_cnt_reg[5]),
        .O(sof_expected_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sof_expected_reg
       (.C(aclk),
        .CE(master_en),
        .D(sof_expected0),
        .Q(sof_expected),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    sof_late_i_i_2
       (.I0(aclken),
        .I1(\genr_control_regs[0] [0]),
        .O(master_en));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00ECECEC)) 
    sof_late_i_i_3
       (.I0(fifo_rd_d),
        .I1(intc_if[7]),
        .I2(sof_expected),
        .I3(in_fifo_reset),
        .I4(t_qb[1]),
        .O(sof_late_i2_out));
  FDRE #(
    .INIT(1'b0)) 
    sof_late_i_reg
       (.C(aclk),
        .CE(master_en),
        .D(sof_late_i2_out),
        .Q(intc_if[7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \total_cols[0]_i_1 
       (.I0(\time_control_regs[0] [0]),
        .O(plusOp[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \total_cols[8]_i_2 
       (.I0(\time_control_regs[0] [3]),
        .O(\total_cols[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_cols[8]_i_3 
       (.I0(\time_control_regs[0] [2]),
        .O(\total_cols[8]_i_3_n_0 ));
  FDRE \total_cols_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(total_cols[0]),
        .R(1'b0));
  FDRE \total_cols_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[10]),
        .Q(total_cols[10]),
        .R(1'b0));
  FDRE \total_cols_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[11]),
        .Q(total_cols[11]),
        .R(1'b0));
  FDRE \total_cols_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[12]),
        .Q(total_cols[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \total_cols_reg[12]_i_1 
       (.CI(\total_cols_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_total_cols_reg[12]_i_1_CO_UNCONNECTED [7:3],\total_cols_reg[12]_i_1_n_5 ,\total_cols_reg[12]_i_1_n_6 ,\total_cols_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_total_cols_reg[12]_i_1_O_UNCONNECTED [7:4],plusOp[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,\time_control_regs[0] [12:9]}));
  FDRE \total_cols_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(total_cols[1]),
        .R(1'b0));
  FDRE \total_cols_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(total_cols[2]),
        .R(1'b0));
  FDRE \total_cols_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(total_cols[3]),
        .R(1'b0));
  FDRE \total_cols_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(total_cols[4]),
        .R(1'b0));
  FDRE \total_cols_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(total_cols[5]),
        .R(1'b0));
  FDRE \total_cols_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(total_cols[6]),
        .R(1'b0));
  FDRE \total_cols_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(total_cols[7]),
        .R(1'b0));
  FDRE \total_cols_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(total_cols[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \total_cols_reg[8]_i_1 
       (.CI(\time_control_regs[0] [0]),
        .CI_TOP(1'b0),
        .CO({\total_cols_reg[8]_i_1_n_0 ,\total_cols_reg[8]_i_1_n_1 ,\total_cols_reg[8]_i_1_n_2 ,\total_cols_reg[8]_i_1_n_3 ,\total_cols_reg[8]_i_1_n_4 ,\total_cols_reg[8]_i_1_n_5 ,\total_cols_reg[8]_i_1_n_6 ,\total_cols_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\time_control_regs[0] [3:2],1'b0}),
        .O(plusOp[8:1]),
        .S({\time_control_regs[0] [8:4],\total_cols[8]_i_2_n_0 ,\total_cols[8]_i_3_n_0 ,\time_control_regs[0] [1]}));
  FDRE \total_cols_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(plusOp[9]),
        .Q(total_cols[9]),
        .R(1'b0));
  FDRE \total_rows_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [13]),
        .Q(total_rows[0]),
        .R(1'b0));
  FDRE \total_rows_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [23]),
        .Q(total_rows[10]),
        .R(1'b0));
  FDRE \total_rows_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [24]),
        .Q(total_rows[11]),
        .R(1'b0));
  FDRE \total_rows_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [25]),
        .Q(total_rows[12]),
        .R(1'b0));
  FDRE \total_rows_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [14]),
        .Q(total_rows[1]),
        .R(1'b0));
  FDRE \total_rows_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [15]),
        .Q(total_rows[2]),
        .R(1'b0));
  FDRE \total_rows_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [16]),
        .Q(total_rows[3]),
        .R(1'b0));
  FDRE \total_rows_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [17]),
        .Q(total_rows[4]),
        .R(1'b0));
  FDRE \total_rows_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [18]),
        .Q(total_rows[5]),
        .R(1'b0));
  FDRE \total_rows_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [19]),
        .Q(total_rows[6]),
        .R(1'b0));
  FDRE \total_rows_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [20]),
        .Q(total_rows[7]),
        .R(1'b0));
  FDRE \total_rows_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [21]),
        .Q(total_rows[8]),
        .R(1'b0));
  FDRE \total_rows_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\time_control_regs[0] [22]),
        .Q(total_rows[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_input_buffer" *) 
module design_1_v_rgb2ycrcb_0_0_axis_input_buffer
   (s_axis_tready_int_reg_0,
    aclken_0,
    empty_match_reg,
    \GenerateDoutWriteFirstB.t_qb_reg[30] ,
    Q,
    reg_update,
    SR,
    master_en,
    aclk,
    depth_match_reg,
    resetn_out,
    s_axis_video_tvalid,
    aclken,
    \genr_control_regs[0] ,
    in_fifo_reset,
    da);
  output s_axis_tready_int_reg_0;
  output aclken_0;
  output empty_match_reg;
  output \GenerateDoutWriteFirstB.t_qb_reg[30] ;
  output [31:0]Q;
  output reg_update;
  input [0:0]SR;
  input master_en;
  input aclk;
  input depth_match_reg;
  input resetn_out;
  input s_axis_video_tvalid;
  input aclken;
  input [1:0]\genr_control_regs[0] ;
  input in_fifo_reset;
  input [31:0]da;

  wire \GenerateDoutWriteFirstB.t_qb_reg[30] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire U_AXIS_SYNC_FIFO_n_0;
  wire aclk;
  wire aclken;
  wire aclken_0;
  wire [31:0]da;
  wire depth_match_reg;
  wire empty_match_reg;
  wire [1:0]\genr_control_regs[0] ;
  wire in_fifo_reset;
  wire master_en;
  wire reg_update;
  wire resetn_out;
  wire s_axis_tready_int_reg_0;
  wire s_axis_video_tvalid;

  design_1_v_rgb2ycrcb_0_0_synch_fifo U_AXIS_SYNC_FIFO
       (.\GenerateDoutWriteFirstB.t_qb_reg[30] (\GenerateDoutWriteFirstB.t_qb_reg[30] ),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aclken(aclken),
        .aclken_0(aclken_0),
        .da(da),
        .depth_match_reg_0(depth_match_reg),
        .empty_match_reg_0(empty_match_reg),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .in_fifo_reset(in_fifo_reset),
        .reg_update(reg_update),
        .resetn_out(resetn_out),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .\word_count_reg[4]_0 (U_AXIS_SYNC_FIFO_n_0),
        .\write_ptr_reg[0]_0 (s_axis_tready_int_reg_0));
  FDRE s_axis_tready_int_reg
       (.C(aclk),
        .CE(master_en),
        .D(U_AXIS_SYNC_FIFO_n_0),
        .Q(s_axis_tready_int_reg_0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_output_buffer" *) 
module design_1_v_rgb2ycrcb_0_0_axis_output_buffer
   (full_int_reg,
    \write_ptr_int_reg[3] ,
    m_axis_video_tvalid,
    O13,
    SR,
    aclk,
    aclken,
    \genr_control_regs[0] ,
    m_axis_video_tready,
    wen,
    \read_ptr_int_reg[2] ,
    fifo_wr_i,
    core_d_out,
    intc_if,
    da);
  output full_int_reg;
  output \write_ptr_int_reg[3] ;
  output m_axis_video_tvalid;
  output [31:0]O13;
  input [0:0]SR;
  input aclk;
  input aclken;
  input [0:0]\genr_control_regs[0] ;
  input m_axis_video_tready;
  input wen;
  input \read_ptr_int_reg[2] ;
  input fifo_wr_i;
  input core_d_out;
  input [0:0]intc_if;
  input [31:0]da;

  wire [31:0]O13;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire core_d_out;
  wire [31:0]da;
  wire fifo_wr_i;
  wire full_int_reg;
  wire [0:0]\genr_control_regs[0] ;
  wire [0:0]intc_if;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire \read_ptr_int_reg[2] ;
  wire wen;
  wire \write_ptr_int_reg[3] ;

  design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru UOSD_AXIS_SYNC_FIFO
       (.O13(O13),
        .SR(SR),
        .aclk(aclk),
        .aclken(aclken),
        .core_d_out(core_d_out),
        .da(da),
        .fifo_wr_i(fifo_wr_i),
        .full_int_reg_0(full_int_reg),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .intc_if(intc_if),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .\read_ptr_int_reg[2]_0 (\read_ptr_int_reg[2] ),
        .wen(wen),
        .\write_ptr_int_reg[3]_0 (\write_ptr_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_v_rgb2ycrcb_0_0_delay
   (y_intb,
    E,
    Q,
    aclk);
  output [9:0]y_intb;
  input [0:0]E;
  input [9:0]Q;
  input aclk;

  wire [0:0]E;
  wire [9:0]Q;
  wire aclk;
  wire \needs_delay.shift_register_reg[3][0]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][1]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][2]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][3]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][4]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][5]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][6]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][7]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][8]_srl3_n_0 ;
  wire \needs_delay.shift_register_reg[3][9]_srl3_n_0 ;
  wire [9:0]y_intb;

  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][0]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[0]),
        .Q(\needs_delay.shift_register_reg[3][0]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][1]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[1]),
        .Q(\needs_delay.shift_register_reg[3][1]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][2]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[2]),
        .Q(\needs_delay.shift_register_reg[3][2]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[3]),
        .Q(\needs_delay.shift_register_reg[3][3]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][4]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[4]),
        .Q(\needs_delay.shift_register_reg[3][4]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][5]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[5]),
        .Q(\needs_delay.shift_register_reg[3][5]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][6]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[6]),
        .Q(\needs_delay.shift_register_reg[3][6]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][7]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[7]),
        .Q(\needs_delay.shift_register_reg[3][7]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][8]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[8]),
        .Q(\needs_delay.shift_register_reg[3][8]_srl3_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_G/needs_delay.shift_register_reg[3][9]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[3][9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[9]),
        .Q(\needs_delay.shift_register_reg[3][9]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][0]_srl3_n_0 ),
        .Q(y_intb[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][1]_srl3_n_0 ),
        .Q(y_intb[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][2]_srl3_n_0 ),
        .Q(y_intb[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][3]_srl3_n_0 ),
        .Q(y_intb[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][4]_srl3_n_0 ),
        .Q(y_intb[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][5]_srl3_n_0 ),
        .Q(y_intb[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][6]_srl3_n_0 ),
        .Q(y_intb[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][7]_srl3_n_0 ),
        .Q(y_intb[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][8]_srl3_n_0 ),
        .Q(y_intb[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[4][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[3][9]_srl3_n_0 ),
        .Q(y_intb[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_v_rgb2ycrcb_0_0_delay__parameterized0
   (D,
    E,
    Q,
    aclk,
    s,
    \needs_delay.shift_register_reg[1][7] ,
    \needs_delay.shift_register_reg[1][12] );
  output [12:0]D;
  input [0:0]E;
  input [9:0]Q;
  input aclk;
  input [8:0]s;
  input \needs_delay.shift_register_reg[1][7] ;
  input [1:0]\needs_delay.shift_register_reg[1][12] ;

  wire [12:0]D;
  wire [0:0]E;
  wire [9:0]Q;
  wire aclk;
  wire [9:0]b_int;
  wire \needs_delay.shift_register[1][12]_i_4__0_n_0 ;
  wire \needs_delay.shift_register[1][12]_i_5__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_10__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_9__2_n_0 ;
  wire [1:0]\needs_delay.shift_register_reg[1][12] ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_4 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_7 ;
  wire \needs_delay.shift_register_reg[1][7] ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__1_n_7 ;
  wire \needs_delay.shift_register_reg[4][0]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][1]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][2]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][3]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][4]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][5]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][6]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][7]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][8]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][9]_srl4_n_0 ;
  wire [8:0]s;
  wire [7:4]\NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][12]_i_4__0 
       (.I0(b_int[9]),
        .I1(s[8]),
        .O(\needs_delay.shift_register[1][12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][12]_i_5__0 
       (.I0(b_int[8]),
        .I1(s[7]),
        .O(\needs_delay.shift_register[1][12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_10__0 
       (.I0(b_int[0]),
        .O(\needs_delay.shift_register[1][7]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_3__2 
       (.I0(b_int[7]),
        .I1(s[6]),
        .O(\needs_delay.shift_register[1][7]_i_3__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_4__2 
       (.I0(b_int[6]),
        .I1(s[5]),
        .O(\needs_delay.shift_register[1][7]_i_4__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_5__2 
       (.I0(b_int[5]),
        .I1(s[4]),
        .O(\needs_delay.shift_register[1][7]_i_5__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_6__2 
       (.I0(b_int[4]),
        .I1(s[3]),
        .O(\needs_delay.shift_register[1][7]_i_6__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_7__2 
       (.I0(b_int[3]),
        .I1(s[2]),
        .O(\needs_delay.shift_register[1][7]_i_7__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_8__2 
       (.I0(b_int[2]),
        .I1(s[1]),
        .O(\needs_delay.shift_register[1][7]_i_8__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_9__2 
       (.I0(b_int[1]),
        .I1(s[0]),
        .O(\needs_delay.shift_register[1][7]_i_9__2_n_0 ));
  CARRY8 \needs_delay.shift_register_reg[1][12]_i_1 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED [7:4],\needs_delay.shift_register_reg[1][12]_i_1_n_4 ,\needs_delay.shift_register_reg[1][12]_i_1_n_5 ,\needs_delay.shift_register_reg[1][12]_i_1_n_6 ,\needs_delay.shift_register_reg[1][12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,b_int[9:8]}),
        .O({\NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED [7:5],D[12:8]}),
        .S({1'b0,1'b0,1'b0,1'b1,\needs_delay.shift_register_reg[1][12] ,\needs_delay.shift_register[1][12]_i_4__0_n_0 ,\needs_delay.shift_register[1][12]_i_5__0_n_0 }));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1__1 
       (.CI(\needs_delay.shift_register_reg[1][7] ),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1__1_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1__1_n_7 }),
        .DI(b_int[7:0]),
        .O(D[7:0]),
        .S({\needs_delay.shift_register[1][7]_i_3__2_n_0 ,\needs_delay.shift_register[1][7]_i_4__2_n_0 ,\needs_delay.shift_register[1][7]_i_5__2_n_0 ,\needs_delay.shift_register[1][7]_i_6__2_n_0 ,\needs_delay.shift_register[1][7]_i_7__2_n_0 ,\needs_delay.shift_register[1][7]_i_8__2_n_0 ,\needs_delay.shift_register[1][7]_i_9__2_n_0 ,\needs_delay.shift_register[1][7]_i_10__0_n_0 }));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[0]),
        .Q(\needs_delay.shift_register_reg[4][0]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[1]),
        .Q(\needs_delay.shift_register_reg[4][1]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[2]),
        .Q(\needs_delay.shift_register_reg[4][2]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[3]),
        .Q(\needs_delay.shift_register_reg[4][3]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[4]),
        .Q(\needs_delay.shift_register_reg[4][4]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[5]),
        .Q(\needs_delay.shift_register_reg[4][5]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[6]),
        .Q(\needs_delay.shift_register_reg[4][6]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[7]),
        .Q(\needs_delay.shift_register_reg[4][7]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[8]),
        .Q(\needs_delay.shift_register_reg[4][8]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_B/needs_delay.shift_register_reg[4][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[9]),
        .Q(\needs_delay.shift_register_reg[4][9]_srl4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][0]_srl4_n_0 ),
        .Q(b_int[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][1]_srl4_n_0 ),
        .Q(b_int[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][2]_srl4_n_0 ),
        .Q(b_int[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][3]_srl4_n_0 ),
        .Q(b_int[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][4]_srl4_n_0 ),
        .Q(b_int[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][5]_srl4_n_0 ),
        .Q(b_int[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][6]_srl4_n_0 ),
        .Q(b_int[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][7]_srl4_n_0 ),
        .Q(b_int[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][8]_srl4_n_0 ),
        .Q(b_int[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][9]_srl4_n_0 ),
        .Q(b_int[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4
   (minusOp,
    E,
    Q,
    aclk,
    s,
    \needs_delay.shift_register_reg[1][7] ,
    \needs_delay.shift_register_reg[1][12] );
  output [12:0]minusOp;
  input [0:0]E;
  input [9:0]Q;
  input aclk;
  input [8:0]s;
  input \needs_delay.shift_register_reg[1][7] ;
  input [1:0]\needs_delay.shift_register_reg[1][12] ;

  wire [0:0]E;
  wire [9:0]Q;
  wire aclk;
  wire [12:0]minusOp;
  wire \needs_delay.shift_register[1][12]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][12]_i_5_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_2__2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_9__0_n_0 ;
  wire [1:0]\needs_delay.shift_register_reg[1][12] ;
  wire \needs_delay.shift_register_reg[1][12]_i_1__0_n_4 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1__0_n_5 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1__0_n_6 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1__0_n_7 ;
  wire \needs_delay.shift_register_reg[1][7] ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__2_n_7 ;
  wire \needs_delay.shift_register_reg[4][0]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][1]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][2]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][3]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][4]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][5]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][6]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][7]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][8]_srl4_n_0 ;
  wire \needs_delay.shift_register_reg[4][9]_srl4_n_0 ;
  wire [9:0]r_int;
  wire [8:0]s;
  wire [7:4]\NLW_needs_delay.shift_register_reg[1][12]_i_1__0_CO_UNCONNECTED ;
  wire [7:5]\NLW_needs_delay.shift_register_reg[1][12]_i_1__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][12]_i_4 
       (.I0(r_int[9]),
        .I1(s[8]),
        .O(\needs_delay.shift_register[1][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][12]_i_5 
       (.I0(r_int[8]),
        .I1(s[7]),
        .O(\needs_delay.shift_register[1][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_2__2 
       (.I0(r_int[7]),
        .I1(s[6]),
        .O(\needs_delay.shift_register[1][7]_i_2__2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_3__1 
       (.I0(r_int[6]),
        .I1(s[5]),
        .O(\needs_delay.shift_register[1][7]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_4__1 
       (.I0(r_int[5]),
        .I1(s[4]),
        .O(\needs_delay.shift_register[1][7]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_5__1 
       (.I0(r_int[4]),
        .I1(s[3]),
        .O(\needs_delay.shift_register[1][7]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_6__1 
       (.I0(r_int[3]),
        .I1(s[2]),
        .O(\needs_delay.shift_register[1][7]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_7__1 
       (.I0(r_int[2]),
        .I1(s[1]),
        .O(\needs_delay.shift_register[1][7]_i_7__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_8__1 
       (.I0(r_int[1]),
        .I1(s[0]),
        .O(\needs_delay.shift_register[1][7]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_9__0 
       (.I0(r_int[0]),
        .O(\needs_delay.shift_register[1][7]_i_9__0_n_0 ));
  CARRY8 \needs_delay.shift_register_reg[1][12]_i_1__0 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][12]_i_1__0_CO_UNCONNECTED [7:4],\needs_delay.shift_register_reg[1][12]_i_1__0_n_4 ,\needs_delay.shift_register_reg[1][12]_i_1__0_n_5 ,\needs_delay.shift_register_reg[1][12]_i_1__0_n_6 ,\needs_delay.shift_register_reg[1][12]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,r_int[9:8]}),
        .O({\NLW_needs_delay.shift_register_reg[1][12]_i_1__0_O_UNCONNECTED [7:5],minusOp[12:8]}),
        .S({1'b0,1'b0,1'b0,1'b1,\needs_delay.shift_register_reg[1][12] ,\needs_delay.shift_register[1][12]_i_4_n_0 ,\needs_delay.shift_register[1][12]_i_5_n_0 }));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1__2 
       (.CI(\needs_delay.shift_register_reg[1][7] ),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1__2_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1__2_n_7 }),
        .DI(r_int[7:0]),
        .O(minusOp[7:0]),
        .S({\needs_delay.shift_register[1][7]_i_2__2_n_0 ,\needs_delay.shift_register[1][7]_i_3__1_n_0 ,\needs_delay.shift_register[1][7]_i_4__1_n_0 ,\needs_delay.shift_register[1][7]_i_5__1_n_0 ,\needs_delay.shift_register[1][7]_i_6__1_n_0 ,\needs_delay.shift_register[1][7]_i_7__1_n_0 ,\needs_delay.shift_register[1][7]_i_8__1_n_0 ,\needs_delay.shift_register[1][7]_i_9__0_n_0 }));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[0]),
        .Q(\needs_delay.shift_register_reg[4][0]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[1]),
        .Q(\needs_delay.shift_register_reg[4][1]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[2]),
        .Q(\needs_delay.shift_register_reg[4][2]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[3]),
        .Q(\needs_delay.shift_register_reg[4][3]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[4]),
        .Q(\needs_delay.shift_register_reg[4][4]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[5]),
        .Q(\needs_delay.shift_register_reg[4][5]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[6]),
        .Q(\needs_delay.shift_register_reg[4][6]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[7]),
        .Q(\needs_delay.shift_register_reg[4][7]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][8]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[8]),
        .Q(\needs_delay.shift_register_reg[4][8]_srl4_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_R/needs_delay.shift_register_reg[4][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[4][9]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(Q[9]),
        .Q(\needs_delay.shift_register_reg[4][9]_srl4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][0]_srl4_n_0 ),
        .Q(r_int[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][1]_srl4_n_0 ),
        .Q(r_int[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][2]_srl4_n_0 ),
        .Q(r_int[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][3]_srl4_n_0 ),
        .Q(r_int[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][4]_srl4_n_0 ),
        .Q(r_int[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][5]_srl4_n_0 ),
        .Q(r_int[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][6]_srl4_n_0 ),
        .Q(r_int[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][7]_srl4_n_0 ),
        .Q(r_int[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][8]_srl4_n_0 ),
        .Q(r_int[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[5][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[4][9]_srl4_n_0 ),
        .Q(r_int[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "delay" *) 
module design_1_v_rgb2ycrcb_0_0_delay__parameterized1
   (\needs_delay.shift_register_reg[3][11]_0 ,
    \needs_delay.shift_register_reg[3][10]_0 ,
    \needs_delay.shift_register_reg[3][9]_0 ,
    \needs_delay.shift_register_reg[3][8]_0 ,
    \needs_delay.shift_register_reg[3][7]_0 ,
    \needs_delay.shift_register_reg[3][6]_0 ,
    \needs_delay.shift_register_reg[3][5]_0 ,
    \needs_delay.shift_register_reg[3][4]_0 ,
    \needs_delay.shift_register_reg[3][3]_0 ,
    \needs_delay.shift_register_reg[3][2]_0 ,
    \needs_delay.shift_register_reg[3][1]_0 ,
    \needs_delay.shift_register_reg[3][0]_0 ,
    DI,
    S,
    E,
    s,
    aclk,
    \core_control_regs[0] );
  output \needs_delay.shift_register_reg[3][11]_0 ;
  output \needs_delay.shift_register_reg[3][10]_0 ;
  output \needs_delay.shift_register_reg[3][9]_0 ;
  output \needs_delay.shift_register_reg[3][8]_0 ;
  output \needs_delay.shift_register_reg[3][7]_0 ;
  output \needs_delay.shift_register_reg[3][6]_0 ;
  output \needs_delay.shift_register_reg[3][5]_0 ;
  output \needs_delay.shift_register_reg[3][4]_0 ;
  output \needs_delay.shift_register_reg[3][3]_0 ;
  output \needs_delay.shift_register_reg[3][2]_0 ;
  output \needs_delay.shift_register_reg[3][1]_0 ;
  output \needs_delay.shift_register_reg[3][0]_0 ;
  output [5:0]DI;
  output [5:0]S;
  input [0:0]E;
  input [11:0]s;
  input aclk;
  input [9:0]\core_control_regs[0] ;

  wire [5:0]DI;
  wire [0:0]E;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[0] ;
  wire \needs_delay.shift_register_reg[2][0]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][10]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][11]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][1]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][2]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][3]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][4]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][5]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][6]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][7]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][8]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[2][9]_srl2_n_0 ;
  wire \needs_delay.shift_register_reg[3][0]_0 ;
  wire \needs_delay.shift_register_reg[3][10]_0 ;
  wire \needs_delay.shift_register_reg[3][11]_0 ;
  wire \needs_delay.shift_register_reg[3][1]_0 ;
  wire \needs_delay.shift_register_reg[3][2]_0 ;
  wire \needs_delay.shift_register_reg[3][3]_0 ;
  wire \needs_delay.shift_register_reg[3][4]_0 ;
  wire \needs_delay.shift_register_reg[3][5]_0 ;
  wire \needs_delay.shift_register_reg[3][6]_0 ;
  wire \needs_delay.shift_register_reg[3][7]_0 ;
  wire \needs_delay.shift_register_reg[3][8]_0 ;
  wire \needs_delay.shift_register_reg[3][9]_0 ;
  wire [11:0]s;

  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_10__0
       (.I0(\needs_delay.shift_register_reg[3][4]_0 ),
        .I1(\core_control_regs[0] [4]),
        .I2(\needs_delay.shift_register_reg[3][5]_0 ),
        .I3(\core_control_regs[0] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_11__0
       (.I0(\needs_delay.shift_register_reg[3][2]_0 ),
        .I1(\core_control_regs[0] [2]),
        .I2(\needs_delay.shift_register_reg[3][3]_0 ),
        .I3(\core_control_regs[0] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_12__0
       (.I0(\needs_delay.shift_register_reg[3][0]_0 ),
        .I1(\core_control_regs[0] [0]),
        .I2(\needs_delay.shift_register_reg[3][1]_0 ),
        .I3(\core_control_regs[0] [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry_i_1__0
       (.I0(\needs_delay.shift_register_reg[3][10]_0 ),
        .I1(\needs_delay.shift_register_reg[3][11]_0 ),
        .O(DI[5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2__0
       (.I0(\needs_delay.shift_register_reg[3][8]_0 ),
        .I1(\core_control_regs[0] [8]),
        .I2(\core_control_regs[0] [9]),
        .I3(\needs_delay.shift_register_reg[3][9]_0 ),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3__0
       (.I0(\needs_delay.shift_register_reg[3][6]_0 ),
        .I1(\core_control_regs[0] [6]),
        .I2(\core_control_regs[0] [7]),
        .I3(\needs_delay.shift_register_reg[3][7]_0 ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4__0
       (.I0(\needs_delay.shift_register_reg[3][4]_0 ),
        .I1(\core_control_regs[0] [4]),
        .I2(\core_control_regs[0] [5]),
        .I3(\needs_delay.shift_register_reg[3][5]_0 ),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_5__0
       (.I0(\needs_delay.shift_register_reg[3][2]_0 ),
        .I1(\core_control_regs[0] [2]),
        .I2(\core_control_regs[0] [3]),
        .I3(\needs_delay.shift_register_reg[3][3]_0 ),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_6__0
       (.I0(\needs_delay.shift_register_reg[3][0]_0 ),
        .I1(\core_control_regs[0] [0]),
        .I2(\core_control_regs[0] [1]),
        .I3(\needs_delay.shift_register_reg[3][1]_0 ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_7__0
       (.I0(\needs_delay.shift_register_reg[3][10]_0 ),
        .I1(\needs_delay.shift_register_reg[3][11]_0 ),
        .O(S[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8__0
       (.I0(\needs_delay.shift_register_reg[3][8]_0 ),
        .I1(\core_control_regs[0] [8]),
        .I2(\needs_delay.shift_register_reg[3][9]_0 ),
        .I3(\core_control_regs[0] [9]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_9__0
       (.I0(\needs_delay.shift_register_reg[3][6]_0 ),
        .I1(\core_control_regs[0] [6]),
        .I2(\needs_delay.shift_register_reg[3][7]_0 ),
        .I3(\core_control_regs[0] [7]),
        .O(S[3]));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[0]),
        .Q(\needs_delay.shift_register_reg[2][0]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][10]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][10]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[10]),
        .Q(\needs_delay.shift_register_reg[2][10]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][11]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][11]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[11]),
        .Q(\needs_delay.shift_register_reg[2][11]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[1]),
        .Q(\needs_delay.shift_register_reg[2][1]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[2]),
        .Q(\needs_delay.shift_register_reg[2][2]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[3]),
        .Q(\needs_delay.shift_register_reg[2][3]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[4]),
        .Q(\needs_delay.shift_register_reg[2][4]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[5]),
        .Q(\needs_delay.shift_register_reg[2][5]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][6]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[6]),
        .Q(\needs_delay.shift_register_reg[2][6]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][7]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[7]),
        .Q(\needs_delay.shift_register_reg[2][7]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][8]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][8]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[8]),
        .Q(\needs_delay.shift_register_reg[2][8]_srl2_n_0 ));
  (* srl_bus_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2] " *) 
  (* srl_name = "U0/\rgb2ycrcb_top_inst/intcore/del_Y/needs_delay.shift_register_reg[2][9]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \needs_delay.shift_register_reg[2][9]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(E),
        .CLK(aclk),
        .D(s[9]),
        .Q(\needs_delay.shift_register_reg[2][9]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][0]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][10] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][10]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][10]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][11] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][11]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][11]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][1]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][1]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][2]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][2]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][3]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][3]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][4]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][4]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][5]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][5]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][6]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][6]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][7]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][7]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][8]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][8]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[3][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[2][9]_srl2_n_0 ),
        .Q(\needs_delay.shift_register_reg[3][9]_0 ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr
   (out_s,
    p_0_in,
    Q,
    sclr,
    E,
    aclk);
  output [10:0]out_s;
  output [0:0]p_0_in;
  input [19:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]E;
  wire [19:0]Q;
  wire aclk;
  wire \needs_delay.shift_register[1][10]_i_2_n_0 ;
  wire \needs_delay.shift_register[1][10]_i_3_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_10_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_9__1_n_0 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1_n_13 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1_n_14 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1_n_15 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_10 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_11 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_12 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_13 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_14 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_15 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_8 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_9 ;
  wire [10:0]out_s;
  wire [0:0]p_0_in;
  wire sclr;
  wire [7:2]\NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][10]_i_2 
       (.I0(Q[19]),
        .I1(Q[9]),
        .O(\needs_delay.shift_register[1][10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][10]_i_3 
       (.I0(Q[18]),
        .I1(Q[8]),
        .O(\needs_delay.shift_register[1][10]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_10 
       (.I0(Q[10]),
        .O(\needs_delay.shift_register[1][7]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_2 
       (.I0(Q[0]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_3__0 
       (.I0(Q[17]),
        .I1(Q[7]),
        .O(\needs_delay.shift_register[1][7]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_4__0 
       (.I0(Q[16]),
        .I1(Q[6]),
        .O(\needs_delay.shift_register[1][7]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_5__0 
       (.I0(Q[15]),
        .I1(Q[5]),
        .O(\needs_delay.shift_register[1][7]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_6__0 
       (.I0(Q[14]),
        .I1(Q[4]),
        .O(\needs_delay.shift_register[1][7]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_7__0 
       (.I0(Q[13]),
        .I1(Q[3]),
        .O(\needs_delay.shift_register[1][7]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_8__0 
       (.I0(Q[12]),
        .I1(Q[2]),
        .O(\needs_delay.shift_register[1][7]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_9__1 
       (.I0(Q[11]),
        .I1(Q[1]),
        .O(\needs_delay.shift_register[1][7]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_15 ),
        .Q(out_s[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1_n_13 ),
        .Q(out_s[10]),
        .R(sclr));
  CARRY8 \needs_delay.shift_register_reg[1][10]_i_1 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][10]_i_1_CO_UNCONNECTED [7:2],\needs_delay.shift_register_reg[1][10]_i_1_n_6 ,\needs_delay.shift_register_reg[1][10]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[19:18]}),
        .O({\NLW_needs_delay.shift_register_reg[1][10]_i_1_O_UNCONNECTED [7:3],\needs_delay.shift_register_reg[1][10]_i_1_n_13 ,\needs_delay.shift_register_reg[1][10]_i_1_n_14 ,\needs_delay.shift_register_reg[1][10]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\needs_delay.shift_register[1][10]_i_2_n_0 ,\needs_delay.shift_register[1][10]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_14 ),
        .Q(out_s[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_13 ),
        .Q(out_s[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_12 ),
        .Q(out_s[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_11 ),
        .Q(out_s[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_10 ),
        .Q(out_s[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_9 ),
        .Q(out_s[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1_n_8 ),
        .Q(out_s[7]),
        .R(sclr));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1 
       (.CI(p_0_in),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1_n_7 }),
        .DI(Q[17:10]),
        .O({\needs_delay.shift_register_reg[1][7]_i_1_n_8 ,\needs_delay.shift_register_reg[1][7]_i_1_n_9 ,\needs_delay.shift_register_reg[1][7]_i_1_n_10 ,\needs_delay.shift_register_reg[1][7]_i_1_n_11 ,\needs_delay.shift_register_reg[1][7]_i_1_n_12 ,\needs_delay.shift_register_reg[1][7]_i_1_n_13 ,\needs_delay.shift_register_reg[1][7]_i_1_n_14 ,\needs_delay.shift_register_reg[1][7]_i_1_n_15 }),
        .S({\needs_delay.shift_register[1][7]_i_3__0_n_0 ,\needs_delay.shift_register[1][7]_i_4__0_n_0 ,\needs_delay.shift_register[1][7]_i_5__0_n_0 ,\needs_delay.shift_register[1][7]_i_6__0_n_0 ,\needs_delay.shift_register[1][7]_i_7__0_n_0 ,\needs_delay.shift_register[1][7]_i_8__0_n_0 ,\needs_delay.shift_register[1][7]_i_9__1_n_0 ,\needs_delay.shift_register[1][7]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1_n_15 ),
        .Q(out_s[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1_n_14 ),
        .Q(out_s[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr_11
   (out_s,
    Q,
    sclr,
    E,
    aclk,
    p_0_in);
  output [10:0]out_s;
  input [18:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;
  input [0:0]p_0_in;

  wire [0:0]E;
  wire [18:0]Q;
  wire aclk;
  wire \needs_delay.shift_register[1][10]_i_2__0_n_0 ;
  wire \needs_delay.shift_register[1][10]_i_3__0_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_2__1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_9_n_0 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1__0_n_13 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1__0_n_14 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1__0_n_15 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1__0_n_6 ;
  wire \needs_delay.shift_register_reg[1][10]_i_1__0_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_10 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_11 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_12 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_13 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_14 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_15 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_8 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1__0_n_9 ;
  wire [10:0]out_s;
  wire [0:0]p_0_in;
  wire sclr;
  wire [7:2]\NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED ;
  wire [7:3]\NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][10]_i_2__0 
       (.I0(Q[18]),
        .I1(Q[8]),
        .O(\needs_delay.shift_register[1][10]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][10]_i_3__0 
       (.I0(Q[17]),
        .I1(Q[7]),
        .O(\needs_delay.shift_register[1][10]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_2__1 
       (.I0(Q[16]),
        .I1(Q[6]),
        .O(\needs_delay.shift_register[1][7]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_3 
       (.I0(Q[15]),
        .I1(Q[5]),
        .O(\needs_delay.shift_register[1][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_4 
       (.I0(Q[14]),
        .I1(Q[4]),
        .O(\needs_delay.shift_register[1][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_5 
       (.I0(Q[13]),
        .I1(Q[3]),
        .O(\needs_delay.shift_register[1][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_6 
       (.I0(Q[12]),
        .I1(Q[2]),
        .O(\needs_delay.shift_register[1][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_7 
       (.I0(Q[11]),
        .I1(Q[1]),
        .O(\needs_delay.shift_register[1][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \needs_delay.shift_register[1][7]_i_8 
       (.I0(Q[10]),
        .I1(Q[0]),
        .O(\needs_delay.shift_register[1][7]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_9 
       (.I0(Q[9]),
        .O(\needs_delay.shift_register[1][7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_15 ),
        .Q(out_s[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1__0_n_13 ),
        .Q(out_s[10]),
        .R(sclr));
  CARRY8 \needs_delay.shift_register_reg[1][10]_i_1__0 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][10]_i_1__0_CO_UNCONNECTED [7:2],\needs_delay.shift_register_reg[1][10]_i_1__0_n_6 ,\needs_delay.shift_register_reg[1][10]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[18:17]}),
        .O({\NLW_needs_delay.shift_register_reg[1][10]_i_1__0_O_UNCONNECTED [7:3],\needs_delay.shift_register_reg[1][10]_i_1__0_n_13 ,\needs_delay.shift_register_reg[1][10]_i_1__0_n_14 ,\needs_delay.shift_register_reg[1][10]_i_1__0_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,\needs_delay.shift_register[1][10]_i_2__0_n_0 ,\needs_delay.shift_register[1][10]_i_3__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_14 ),
        .Q(out_s[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_13 ),
        .Q(out_s[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_12 ),
        .Q(out_s[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_11 ),
        .Q(out_s[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_10 ),
        .Q(out_s[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_9 ),
        .Q(out_s[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][7]_i_1__0_n_8 ),
        .Q(out_s[7]),
        .R(sclr));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1__0 
       (.CI(p_0_in),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1__0_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_7 }),
        .DI(Q[16:9]),
        .O({\needs_delay.shift_register_reg[1][7]_i_1__0_n_8 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_9 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_10 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_11 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_12 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_13 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_14 ,\needs_delay.shift_register_reg[1][7]_i_1__0_n_15 }),
        .S({\needs_delay.shift_register[1][7]_i_2__1_n_0 ,\needs_delay.shift_register[1][7]_i_3_n_0 ,\needs_delay.shift_register[1][7]_i_4_n_0 ,\needs_delay.shift_register[1][7]_i_5_n_0 ,\needs_delay.shift_register[1][7]_i_6_n_0 ,\needs_delay.shift_register[1][7]_i_7_n_0 ,\needs_delay.shift_register[1][7]_i_8_n_0 ,\needs_delay.shift_register[1][7]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1__0_n_15 ),
        .Q(out_s[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(\needs_delay.shift_register_reg[1][10]_i_1__0_n_14 ),
        .Q(out_s[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0
   (P,
    E,
    aclk,
    sclr,
    s,
    \core_control_regs[9] );
  output [27:0]P;
  input [0:0]E;
  input aclk;
  input sclr;
  input [10:0]s;
  input [16:0]\core_control_regs[9] ;

  wire [0:0]E;
  wire [27:0]P;
  wire aclk;
  wire [16:0]\core_control_regs[9] ;
  wire [10:0]s;
  wire sclr;
  wire \NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED ;
  wire \NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED ;
  wire [29:0]\NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED ;
  wire [17:0]\NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED ;
  wire [3:0]\NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED ;
  wire [47:28]\NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED ;
  wire [47:0]\NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED ;
  wire [7:0]\NLW_needs_delay.shift_register_reg[2]_XOROUT_UNCONNECTED ;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    \needs_delay.shift_register_reg[2] 
       (.A({\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] [16],\core_control_regs[9] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(\NLW_needs_delay.shift_register_reg[2]_ACOUT_UNCONNECTED [29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({s[10],s[10],s[10],s[10],s[10],s[10],s[10],s}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(\NLW_needs_delay.shift_register_reg[2]_BCOUT_UNCONNECTED [17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(\NLW_needs_delay.shift_register_reg[2]_CARRYCASCOUT_UNCONNECTED ),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(\NLW_needs_delay.shift_register_reg[2]_CARRYOUT_UNCONNECTED [3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(E),
        .CEP(E),
        .CLK(aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(\NLW_needs_delay.shift_register_reg[2]_MULTSIGNOUT_UNCONNECTED ),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(\NLW_needs_delay.shift_register_reg[2]_OVERFLOW_UNCONNECTED ),
        .P({\NLW_needs_delay.shift_register_reg[2]_P_UNCONNECTED [47:28],P}),
        .PATTERNBDETECT(\NLW_needs_delay.shift_register_reg[2]_PATTERNBDETECT_UNCONNECTED ),
        .PATTERNDETECT(\NLW_needs_delay.shift_register_reg[2]_PATTERNDETECT_UNCONNECTED ),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(\NLW_needs_delay.shift_register_reg[2]_PCOUT_UNCONNECTED [47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(sclr),
        .RSTP(sclr),
        .UNDERFLOW(\NLW_needs_delay.shift_register_reg[2]_UNDERFLOW_UNCONNECTED ),
        .XOROUT(\NLW_needs_delay.shift_register_reg[2]_XOROUT_UNCONNECTED [7:0]));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1
   (\needs_delay.shift_register_reg[1][10]_0 ,
    Q,
    \needs_delay.shift_register_reg[1][8]_0 ,
    \core_control_regs[1] ,
    sclr,
    E,
    D,
    aclk);
  output [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  output [10:0]Q;
  output [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  input [9:0]\core_control_regs[1] ;
  input sclr;
  input [0:0]E;
  input [11:0]D;
  input aclk;

  wire [11:0]D;
  wire [0:0]E;
  wire [10:0]Q;
  wire aclk;
  wire [9:0]\core_control_regs[1] ;
  wire [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  wire [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  wire \needs_delay.shift_register_reg_n_0_[1][10] ;
  wire sclr;

  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_10__0
       (.I0(\core_control_regs[1] [2]),
        .I1(Q[2]),
        .I2(\core_control_regs[1] [3]),
        .I3(Q[3]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_11__0
       (.I0(\core_control_regs[1] [0]),
        .I1(Q[0]),
        .I2(\core_control_regs[1] [1]),
        .I3(Q[1]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1__0
       (.I0(\core_control_regs[1] [8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\core_control_regs[1] [9]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2__0
       (.I0(\core_control_regs[1] [6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\core_control_regs[1] [7]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3__0
       (.I0(\core_control_regs[1] [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\core_control_regs[1] [5]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4__0
       (.I0(\core_control_regs[1] [2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\core_control_regs[1] [3]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_5__0
       (.I0(\core_control_regs[1] [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\core_control_regs[1] [1]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__0
       (.I0(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .I1(Q[10]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [5]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7__0
       (.I0(\core_control_regs[1] [8]),
        .I1(Q[8]),
        .I2(\core_control_regs[1] [9]),
        .I3(Q[9]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(\core_control_regs[1] [6]),
        .I1(Q[6]),
        .I2(\core_control_regs[1] [7]),
        .I3(Q[7]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_9__0
       (.I0(\core_control_regs[1] [4]),
        .I1(Q[4]),
        .I2(\core_control_regs[1] [5]),
        .I3(Q[5]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12
   (DI,
    S,
    \needs_delay.shift_register_reg[1][10]_0 ,
    Q,
    \needs_delay.shift_register_reg[1][8]_0 ,
    p,
    \core_control_regs[5] ,
    \core_control_regs[4] ,
    sclr,
    E,
    D,
    aclk);
  output [5:0]DI;
  output [5:0]S;
  output [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  output [10:0]Q;
  output [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  input [11:0]p;
  input [9:0]\core_control_regs[5] ;
  input [9:0]\core_control_regs[4] ;
  input sclr;
  input [0:0]E;
  input [11:0]D;
  input aclk;

  wire [11:0]D;
  wire [5:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[4] ;
  wire [9:0]\core_control_regs[5] ;
  wire [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  wire [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  wire \needs_delay.shift_register_reg_n_0_[1][10] ;
  wire [11:0]p;
  wire sclr;

  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_10__2
       (.I0(p[4]),
        .I1(\core_control_regs[4] [4]),
        .I2(p[5]),
        .I3(\core_control_regs[4] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_11__2
       (.I0(p[2]),
        .I1(\core_control_regs[4] [2]),
        .I2(p[3]),
        .I3(\core_control_regs[4] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_12__2
       (.I0(p[0]),
        .I1(\core_control_regs[4] [0]),
        .I2(p[1]),
        .I3(\core_control_regs[4] [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry_i_1__2
       (.I0(p[10]),
        .I1(p[11]),
        .O(DI[5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2__2
       (.I0(p[8]),
        .I1(\core_control_regs[4] [8]),
        .I2(\core_control_regs[4] [9]),
        .I3(p[9]),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3__2
       (.I0(p[6]),
        .I1(\core_control_regs[4] [6]),
        .I2(\core_control_regs[4] [7]),
        .I3(p[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4__2
       (.I0(p[4]),
        .I1(\core_control_regs[4] [4]),
        .I2(\core_control_regs[4] [5]),
        .I3(p[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_5__2
       (.I0(p[2]),
        .I1(\core_control_regs[4] [2]),
        .I2(\core_control_regs[4] [3]),
        .I3(p[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_6__2
       (.I0(p[0]),
        .I1(\core_control_regs[4] [0]),
        .I2(\core_control_regs[4] [1]),
        .I3(p[1]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_7__2
       (.I0(p[10]),
        .I1(p[11]),
        .O(S[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8__2
       (.I0(p[8]),
        .I1(\core_control_regs[4] [8]),
        .I2(p[9]),
        .I3(\core_control_regs[4] [9]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_9__2
       (.I0(p[6]),
        .I1(\core_control_regs[4] [6]),
        .I2(p[7]),
        .I3(\core_control_regs[4] [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_10__2
       (.I0(\core_control_regs[5] [2]),
        .I1(Q[2]),
        .I2(\core_control_regs[5] [3]),
        .I3(Q[3]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_11__2
       (.I0(\core_control_regs[5] [0]),
        .I1(Q[0]),
        .I2(\core_control_regs[5] [1]),
        .I3(Q[1]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1__2
       (.I0(\core_control_regs[5] [8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\core_control_regs[5] [9]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2__2
       (.I0(\core_control_regs[5] [6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\core_control_regs[5] [7]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3__2
       (.I0(\core_control_regs[5] [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\core_control_regs[5] [5]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4__2
       (.I0(\core_control_regs[5] [2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\core_control_regs[5] [3]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_5__2
       (.I0(\core_control_regs[5] [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\core_control_regs[5] [1]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__2
       (.I0(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .I1(Q[10]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [5]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7__2
       (.I0(\core_control_regs[5] [8]),
        .I1(Q[8]),
        .I2(\core_control_regs[5] [9]),
        .I3(Q[9]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8__1
       (.I0(\core_control_regs[5] [6]),
        .I1(Q[6]),
        .I2(\core_control_regs[5] [7]),
        .I3(Q[7]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_9__2
       (.I0(\core_control_regs[5] [4]),
        .I1(Q[4]),
        .I2(\core_control_regs[5] [5]),
        .I3(Q[5]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13
   (DI,
    S,
    \needs_delay.shift_register_reg[1][10]_0 ,
    Q,
    \needs_delay.shift_register_reg[1][8]_0 ,
    p,
    \core_control_regs[3] ,
    \core_control_regs[2] ,
    sclr,
    E,
    D,
    aclk);
  output [5:0]DI;
  output [5:0]S;
  output [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  output [10:0]Q;
  output [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  input [11:0]p;
  input [9:0]\core_control_regs[3] ;
  input [9:0]\core_control_regs[2] ;
  input sclr;
  input [0:0]E;
  input [11:0]D;
  input aclk;

  wire [11:0]D;
  wire [5:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[2] ;
  wire [9:0]\core_control_regs[3] ;
  wire [5:0]\needs_delay.shift_register_reg[1][10]_0 ;
  wire [4:0]\needs_delay.shift_register_reg[1][8]_0 ;
  wire \needs_delay.shift_register_reg_n_0_[1][10] ;
  wire [11:0]p;
  wire sclr;

  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_10__1
       (.I0(p[4]),
        .I1(\core_control_regs[2] [4]),
        .I2(p[5]),
        .I3(\core_control_regs[2] [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_11__1
       (.I0(p[2]),
        .I1(\core_control_regs[2] [2]),
        .I2(p[3]),
        .I3(\core_control_regs[2] [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_12__1
       (.I0(p[0]),
        .I1(\core_control_regs[2] [0]),
        .I2(p[1]),
        .I3(\core_control_regs[2] [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    gtOp_carry_i_1__1
       (.I0(p[10]),
        .I1(p[11]),
        .O(DI[5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2__1
       (.I0(p[8]),
        .I1(\core_control_regs[2] [8]),
        .I2(\core_control_regs[2] [9]),
        .I3(p[9]),
        .O(DI[4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3__1
       (.I0(p[6]),
        .I1(\core_control_regs[2] [6]),
        .I2(\core_control_regs[2] [7]),
        .I3(p[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4__1
       (.I0(p[4]),
        .I1(\core_control_regs[2] [4]),
        .I2(\core_control_regs[2] [5]),
        .I3(p[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_5__1
       (.I0(p[2]),
        .I1(\core_control_regs[2] [2]),
        .I2(\core_control_regs[2] [3]),
        .I3(p[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_6__1
       (.I0(p[0]),
        .I1(\core_control_regs[2] [0]),
        .I2(\core_control_regs[2] [1]),
        .I3(p[1]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    gtOp_carry_i_7__1
       (.I0(p[10]),
        .I1(p[11]),
        .O(S[5]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8__1
       (.I0(p[8]),
        .I1(\core_control_regs[2] [8]),
        .I2(p[9]),
        .I3(\core_control_regs[2] [9]),
        .O(S[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_9__1
       (.I0(p[6]),
        .I1(\core_control_regs[2] [6]),
        .I2(p[7]),
        .I3(\core_control_regs[2] [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_10__1
       (.I0(\core_control_regs[3] [2]),
        .I1(Q[2]),
        .I2(\core_control_regs[3] [3]),
        .I3(Q[3]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_11__1
       (.I0(\core_control_regs[3] [0]),
        .I1(Q[0]),
        .I2(\core_control_regs[3] [1]),
        .I3(Q[1]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1__1
       (.I0(\core_control_regs[3] [8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\core_control_regs[3] [9]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2__1
       (.I0(\core_control_regs[3] [6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\core_control_regs[3] [7]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3__1
       (.I0(\core_control_regs[3] [4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\core_control_regs[3] [5]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4__1
       (.I0(\core_control_regs[3] [2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\core_control_regs[3] [3]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_5__1
       (.I0(\core_control_regs[3] [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\core_control_regs[3] [1]),
        .O(\needs_delay.shift_register_reg[1][8]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry_i_6__1
       (.I0(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .I1(Q[10]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [5]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7__1
       (.I0(\core_control_regs[3] [8]),
        .I1(Q[8]),
        .I2(\core_control_regs[3] [9]),
        .I3(Q[9]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8__0
       (.I0(\core_control_regs[3] [6]),
        .I1(Q[6]),
        .I2(\core_control_regs[3] [7]),
        .I3(Q[7]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_9__1
       (.I0(\core_control_regs[3] [4]),
        .I1(Q[4]),
        .I2(\core_control_regs[3] [5]),
        .I3(Q[5]),
        .O(\needs_delay.shift_register_reg[1][10]_0 [2]));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(\needs_delay.shift_register_reg_n_0_[1][10] ),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14
   (da,
    sclr,
    E,
    D,
    aclk);
  output [9:0]da;
  input sclr;
  input [0:0]E;
  input [9:0]D;
  input aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire aclk;
  wire [9:0]da;
  wire sclr;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(da[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(da[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(da[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(da[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(da[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(da[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(da[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(da[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(da[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(da[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15
   (da,
    sclr,
    E,
    D,
    aclk);
  output [9:0]da;
  input sclr;
  input [0:0]E;
  input [9:0]D;
  input aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire aclk;
  wire [9:0]da;
  wire sclr;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(da[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(da[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(da[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(da[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(da[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(da[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(da[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(da[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(da[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(da[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16
   (da,
    sclr,
    E,
    D,
    aclk);
  output [9:0]da;
  input sclr;
  input [0:0]E;
  input [9:0]D;
  input aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire aclk;
  wire [9:0]da;
  wire sclr;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(da[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(da[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(da[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(da[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(da[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(da[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(da[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(da[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(da[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(da[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17
   (\needs_delay.shift_register_reg[1][0]_0 ,
    \needs_delay.shift_register_reg[1][11]_0 ,
    \needs_delay.shift_register_reg[1][11]_1 ,
    Q,
    out,
    sclr,
    E,
    plusOp,
    aclk);
  output \needs_delay.shift_register_reg[1][0]_0 ;
  output [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  output [1:0]\needs_delay.shift_register_reg[1][11]_1 ;
  output [11:0]Q;
  input [2:0]out;
  input sclr;
  input [0:0]E;
  input [11:0]plusOp;
  input aclk;

  wire [0:0]E;
  wire [11:0]Q;
  wire aclk;
  wire \needs_delay.shift_register_reg[1][0]_0 ;
  wire [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  wire [1:0]\needs_delay.shift_register_reg[1][11]_1 ;
  wire [2:0]out;
  wire [11:0]plusOp;
  wire sclr;

  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][12]_i_2__0 
       (.I0(out[2]),
        .O(\needs_delay.shift_register_reg[1][11]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][12]_i_2__1 
       (.I0(out[2]),
        .O(\needs_delay.shift_register_reg[1][11]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][12]_i_3 
       (.I0(out[1]),
        .O(\needs_delay.shift_register_reg[1][11]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][12]_i_3__0 
       (.I0(out[1]),
        .O(\needs_delay.shift_register_reg[1][11]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][7]_i_2__0 
       (.I0(out[0]),
        .O(\needs_delay.shift_register_reg[1][0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[10]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[11]),
        .Q(Q[11]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2
   (Q,
    sclr,
    E,
    plusOp,
    aclk);
  output [12:0]Q;
  input sclr;
  input [0:0]E;
  input [12:0]plusOp;
  input aclk;

  wire [0:0]E;
  wire [12:0]Q;
  wire aclk;
  wire [12:0]plusOp;
  wire sclr;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[10]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[11]),
        .Q(Q[11]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][12] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[12]),
        .Q(Q[12]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(plusOp[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7
   (SR,
    Q,
    resetn_out,
    E,
    D,
    aclk);
  output [0:0]SR;
  output [12:0]Q;
  input resetn_out;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire [12:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire resetn_out;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][12] 
       (.C(aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    sof_late_i_i_1
       (.I0(resetn_out),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "delay_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9
   (Q,
    sclr,
    E,
    D,
    aclk);
  output [12:0]Q;
  input sclr;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire [12:0]Q;
  wire aclk;
  wire sclr;

  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][0] 
       (.C(aclk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][10] 
       (.C(aclk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][11] 
       (.C(aclk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][12] 
       (.C(aclk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][1] 
       (.C(aclk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][2] 
       (.C(aclk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][3] 
       (.C(aclk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][4] 
       (.C(aclk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][5] 
       (.C(aclk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][6] 
       (.C(aclk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][7] 
       (.C(aclk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][8] 
       (.C(aclk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(sclr));
  FDRE #(
    .INIT(1'b0)) 
    \needs_delay.shift_register_reg[1][9] 
       (.C(aclk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(sclr));
endmodule

(* ORIG_REF_NAME = "dp_ram" *) 
module design_1_v_rgb2ycrcb_0_0_dp_ram
   (aclken_0,
    ADDRA,
    O13,
    aclken,
    \genr_control_regs[0] ,
    m_axis_video_tready,
    axi_fifo_empty,
    Q,
    \read_ptr_int_reg[2] ,
    aclk,
    wen,
    da,
    \GenerateDoutWriteFirstB.t_qb_reg[29]_0 );
  output aclken_0;
  output [3:0]ADDRA;
  output [31:0]O13;
  input aclken;
  input [0:0]\genr_control_regs[0] ;
  input m_axis_video_tready;
  input axi_fifo_empty;
  input [3:0]Q;
  input \read_ptr_int_reg[2] ;
  input aclk;
  input wen;
  input [31:0]da;
  input [3:0]\GenerateDoutWriteFirstB.t_qb_reg[29]_0 ;

  wire [3:0]ADDRA;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2 ;
  wire \GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3 ;
  wire [3:0]\GenerateDoutWriteFirstB.t_qb_reg[29]_0 ;
  wire [31:0]O13;
  wire [3:0]Q;
  wire aclk;
  wire aclken;
  wire aclken_0;
  wire axi_fifo_empty;
  wire [31:0]da;
  wire [0:0]\genr_control_regs[0] ;
  wire m_axis_video_tready;
  wire \read_ptr_int_reg[2] ;
  wire wen;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13 
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRA}),
        .ADDRE({1'b0,ADDRA}),
        .ADDRF({1'b0,ADDRA}),
        .ADDRG({1'b0,ADDRA}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[1:0]),
        .DIB(da[3:2]),
        .DIC(da[5:4]),
        .DID(da[7:6]),
        .DIE(da[9:8]),
        .DIF(da[11:10]),
        .DIG(da[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1 }),
        .DOB({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3 }),
        .DOC({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5 }),
        .DOD({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7 }),
        .DOE({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9 }),
        .DOF({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11 }),
        .DOG({\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12 ,\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13 }),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(wen));
  LUT3 #(
    .INIT(8'h6A)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_2 
       (.I0(Q[3]),
        .I1(aclken_0),
        .I2(Q[2]),
        .O(ADDRA[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA6AAAAA)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_3 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(axi_fifo_empty),
        .I4(m_axis_video_tready),
        .I5(\read_ptr_int_reg[2] ),
        .O(ADDRA[2]));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_4 
       (.I0(Q[1]),
        .I1(aclken),
        .I2(\genr_control_regs[0] ),
        .I3(m_axis_video_tready),
        .I4(axi_fifo_empty),
        .I5(Q[0]),
        .O(ADDRA[1]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_5 
       (.I0(Q[0]),
        .I1(axi_fifo_empty),
        .I2(m_axis_video_tready),
        .I3(\genr_control_regs[0] ),
        .I4(aclken),
        .O(ADDRA[0]));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_6__0 
       (.I0(aclken),
        .I1(\genr_control_regs[0] ),
        .I2(m_axis_video_tready),
        .I3(axi_fifo_empty),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(aclken_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_14_27 
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRA}),
        .ADDRE({1'b0,ADDRA}),
        .ADDRF({1'b0,ADDRA}),
        .ADDRG({1'b0,ADDRA}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[15:14]),
        .DIB(da[17:16]),
        .DIC(da[19:18]),
        .DID(da[21:20]),
        .DIE(da[23:22]),
        .DIF(da[25:24]),
        .DIG(da[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1 }),
        .DOB({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3 }),
        .DOC({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5 }),
        .DOD({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7 }),
        .DOE({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9 }),
        .DOF({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11 }),
        .DOG({\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12 ,\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13 }),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(wen));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_out_fifo/UOSD_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_28_31 
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,ADDRA}),
        .ADDRE({1'b0,ADDRA}),
        .ADDRF({1'b0,ADDRA}),
        .ADDRG({1'b0,ADDRA}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[29:28]),
        .DIB(da[31:30]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA({\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0 ,\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1 }),
        .DOB({\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2 ,\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3 }),
        .DOC(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED [1:0]),
        .DOE(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(wen));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_1 ),
        .Q(O13[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_11 ),
        .Q(O13[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_10 ),
        .Q(O13[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_13 ),
        .Q(O13[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_12 ),
        .Q(O13[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_1 ),
        .Q(O13[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_0 ),
        .Q(O13[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_3 ),
        .Q(O13[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_2 ),
        .Q(O13[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_5 ),
        .Q(O13[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_4 ),
        .Q(O13[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_0 ),
        .Q(O13[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_7 ),
        .Q(O13[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_6 ),
        .Q(O13[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_9 ),
        .Q(O13[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_8 ),
        .Q(O13[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_11 ),
        .Q(O13[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_10 ),
        .Q(O13[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_13 ),
        .Q(O13[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_14_27_n_12 ),
        .Q(O13[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_1 ),
        .Q(O13[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_0 ),
        .Q(O13[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_3 ),
        .Q(O13[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_3 ),
        .Q(O13[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_28_31_n_2 ),
        .Q(O13[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_2 ),
        .Q(O13[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_5 ),
        .Q(O13[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_4 ),
        .Q(O13[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_7 ),
        .Q(O13[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_6 ),
        .Q(O13[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_9 ),
        .Q(O13[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\GenerateDoutWriteFirstA.mem_reg_0_15_0_13_n_8 ),
        .Q(O13[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "dp_ram" *) 
module design_1_v_rgb2ycrcb_0_0_dp_ram_18
   (D,
    empty_match_reg,
    p_0_in,
    aclken_0,
    \GenerateDoutWriteFirstB.t_qb_reg[30]_0 ,
    \GenerateDoutWriteFirstB.t_qb_reg[31]_0 ,
    reg_update,
    Q,
    vid_empty,
    \read_ptr_reg[0] ,
    \write_ptr_reg[0] ,
    resetn_out,
    aclken,
    \genr_control_regs[0] ,
    \write_ptr_reg[0]_0 ,
    s_axis_video_tvalid,
    in_fifo_reset,
    aclk,
    da,
    \GenerateDoutWriteFirstB.t_qb_reg[29]_0 );
  output [3:0]D;
  output empty_match_reg;
  output p_0_in;
  output aclken_0;
  output \GenerateDoutWriteFirstB.t_qb_reg[30]_0 ;
  output [31:0]\GenerateDoutWriteFirstB.t_qb_reg[31]_0 ;
  output reg_update;
  input [3:0]Q;
  input vid_empty;
  input \read_ptr_reg[0] ;
  input \write_ptr_reg[0] ;
  input resetn_out;
  input aclken;
  input [1:0]\genr_control_regs[0] ;
  input \write_ptr_reg[0]_0 ;
  input s_axis_video_tvalid;
  input in_fifo_reset;
  input aclk;
  input [31:0]da;
  input [3:0]\GenerateDoutWriteFirstB.t_qb_reg[29]_0 ;

  wire [3:0]D;
  wire [3:0]\GenerateDoutWriteFirstB.t_qb_reg[29]_0 ;
  wire \GenerateDoutWriteFirstB.t_qb_reg[30]_0 ;
  wire [31:0]\GenerateDoutWriteFirstB.t_qb_reg[31]_0 ;
  wire [3:0]Q;
  wire aclk;
  wire aclken;
  wire aclken_0;
  wire [31:0]da;
  wire empty_match_reg;
  wire [1:0]\genr_control_regs[0] ;
  wire in_fifo_reset;
  wire p_0_in;
  wire \read_ptr_reg[0] ;
  wire reg_update;
  wire resetn_out;
  wire s_axis_video_tvalid;
  wire [31:0]t_qb0;
  wire vid_empty;
  wire \write_ptr_reg[0] ;
  wire \write_ptr_reg[0]_0 ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED ;
  wire [1:0]\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED ;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13 
       (.ADDRA({1'b0,D}),
        .ADDRB({1'b0,D}),
        .ADDRC({1'b0,D}),
        .ADDRD({1'b0,D}),
        .ADDRE({1'b0,D}),
        .ADDRF({1'b0,D}),
        .ADDRG({1'b0,D}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[1:0]),
        .DIB(da[3:2]),
        .DIC(da[5:4]),
        .DID(da[7:6]),
        .DIE(da[9:8]),
        .DIF(da[11:10]),
        .DIG(da[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(t_qb0[1:0]),
        .DOB(t_qb0[3:2]),
        .DOC(t_qb0[5:4]),
        .DOD(t_qb0[7:6]),
        .DOE(t_qb0[9:8]),
        .DOF(t_qb0[11:10]),
        .DOG(t_qb0[13:12]),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_0_13_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_1__0 
       (.I0(\write_ptr_reg[0] ),
        .I1(resetn_out),
        .I2(aclken),
        .I3(\genr_control_regs[0] [0]),
        .I4(\write_ptr_reg[0]_0 ),
        .I5(s_axis_video_tvalid),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_2__0 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(empty_match_reg),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_3__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(empty_match_reg),
        .I3(Q[1]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_4__0 
       (.I0(Q[1]),
        .I1(empty_match_reg),
        .I2(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_5__0 
       (.I0(Q[0]),
        .I1(empty_match_reg),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_0_13_i_6 
       (.I0(vid_empty),
        .I1(\read_ptr_reg[0] ),
        .O(empty_match_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_14_27 
       (.ADDRA({1'b0,D}),
        .ADDRB({1'b0,D}),
        .ADDRC({1'b0,D}),
        .ADDRD({1'b0,D}),
        .ADDRE({1'b0,D}),
        .ADDRF({1'b0,D}),
        .ADDRG({1'b0,D}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[15:14]),
        .DIB(da[17:16]),
        .DIC(da[19:18]),
        .DID(da[21:20]),
        .DIE(da[23:22]),
        .DIF(da[25:24]),
        .DIG(da[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(t_qb0[15:14]),
        .DOB(t_qb0[17:16]),
        .DOC(t_qb0[19:18]),
        .DOD(t_qb0[21:20]),
        .DOE(t_qb0[23:22]),
        .DOF(t_qb0[25:24]),
        .DOG(t_qb0[27:26]),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_14_27_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rgb2ycrcb_top_inst/axi_in_fifo/U_AXIS_SYNC_FIFO/mem1/GenerateDoutWriteFirstA.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \GenerateDoutWriteFirstA.mem_reg_0_15_28_31 
       (.ADDRA({1'b0,D}),
        .ADDRB({1'b0,D}),
        .ADDRC({1'b0,D}),
        .ADDRD({1'b0,D}),
        .ADDRE({1'b0,D}),
        .ADDRF({1'b0,D}),
        .ADDRG({1'b0,D}),
        .ADDRH({1'b0,\GenerateDoutWriteFirstB.t_qb_reg[29]_0 }),
        .DIA(da[29:28]),
        .DIB(da[31:30]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(t_qb0[29:28]),
        .DOB(t_qb0[31:30]),
        .DOC(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOD_UNCONNECTED [1:0]),
        .DOE(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_GenerateDoutWriteFirstA.mem_reg_0_15_28_31_DOH_UNCONNECTED [1:0]),
        .WCLK(aclk),
        .WE(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[0]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[10]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[11]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[12]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[13]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[14]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[15]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[16]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[17]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[18]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[19]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[1]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[20]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[21]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[22]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[23]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[24]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[25]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[26]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[27]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[28]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[29]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[2]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[30]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[31]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[3]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[4]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[5]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[6]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[7]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[8]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GenerateDoutWriteFirstB.t_qb_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(t_qb0[9]),
        .Q(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    U_VIDEO_CTRL_i_1
       (.I0(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [31]),
        .I1(\genr_control_regs[0] [1]),
        .O(reg_update));
  LUT2 #(
    .INIT(4'h7)) 
    eol_early_i_i_3
       (.I0(\genr_control_regs[0] [0]),
        .I1(aclken),
        .O(aclken_0));
  LUT2 #(
    .INIT(4'h8)) 
    eol_late_i_i_2
       (.I0(\GenerateDoutWriteFirstB.t_qb_reg[31]_0 [30]),
        .I1(in_fifo_reset),
        .O(\GenerateDoutWriteFirstB.t_qb_reg[30]_0 ));
endmodule

(* CREG = "0" *) (* HAS_C = "1" *) (* IWIDTHA = "11" *) 
(* IWIDTHB = "17" *) (* ORIG_REF_NAME = "mac" *) (* OWIDTH = "28" *) 
(* ROUND_MODE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* keep_hierarchy = "yes" *) 
(* mult_style = "pipe_block" *) (* register_balancing = "yes" *) (* use_dsp = "yes" *) 
module design_1_v_rgb2ycrcb_0_0_mac
   (a,
    b,
    c,
    p,
    clk,
    ce,
    sclr);
  input [10:0]a;
  input [16:0]b;
  input [27:0]c;
  output [27:0]p;
  input clk;
  input ce;
  input sclr;

  wire [10:0]a;
  wire [16:0]b;
  wire [27:0]c;
  wire ce;
  wire clk;
  wire [27:0]p;
  wire plusOp_n_58;
  wire plusOp_n_59;
  wire plusOp_n_60;
  wire plusOp_n_61;
  wire plusOp_n_62;
  wire plusOp_n_63;
  wire plusOp_n_64;
  wire plusOp_n_65;
  wire plusOp_n_66;
  wire plusOp_n_67;
  wire plusOp_n_68;
  wire plusOp_n_69;
  wire plusOp_n_70;
  wire plusOp_n_71;
  wire plusOp_n_72;
  wire plusOp_n_73;
  wire plusOp_n_74;
  wire plusOp_n_75;
  wire plusOp_n_76;
  wire plusOp_n_77;
  wire sclr;
  wire NLW_plusOp_CARRYCASCOUT_UNCONNECTED;
  wire NLW_plusOp_MULTSIGNOUT_UNCONNECTED;
  wire NLW_plusOp_OVERFLOW_UNCONNECTED;
  wire NLW_plusOp_PATTERNBDETECT_UNCONNECTED;
  wire NLW_plusOp_PATTERNDETECT_UNCONNECTED;
  wire NLW_plusOp_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_plusOp_ACOUT_UNCONNECTED;
  wire [17:0]NLW_plusOp_BCOUT_UNCONNECTED;
  wire [3:0]NLW_plusOp_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_plusOp_PCOUT_UNCONNECTED;
  wire [7:0]NLW_plusOp_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    plusOp
       (.A({b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_plusOp_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a[10],a[10],a[10],a[10],a[10],a[10],a[10],a}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_plusOp_BCOUT_UNCONNECTED[17:0]),
        .C({c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c[27],c}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_plusOp_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_plusOp_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ce),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ce),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ce),
        .CEP(ce),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_plusOp_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_plusOp_OVERFLOW_UNCONNECTED),
        .P({plusOp_n_58,plusOp_n_59,plusOp_n_60,plusOp_n_61,plusOp_n_62,plusOp_n_63,plusOp_n_64,plusOp_n_65,plusOp_n_66,plusOp_n_67,plusOp_n_68,plusOp_n_69,plusOp_n_70,plusOp_n_71,plusOp_n_72,plusOp_n_73,plusOp_n_74,plusOp_n_75,plusOp_n_76,plusOp_n_77,p}),
        .PATTERNBDETECT(NLW_plusOp_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_plusOp_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_plusOp_PCOUT_UNCONNECTED[47:0]),
        .RSTA(sclr),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(sclr),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(sclr),
        .RSTP(sclr),
        .UNDERFLOW(NLW_plusOp_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_plusOp_XOROUT_UNCONNECTED[7:0]));
endmodule

(* CREG = "0" *) (* HAS_C = "1" *) (* IWIDTHA = "13" *) 
(* IWIDTHB = "17" *) (* ORIG_REF_NAME = "mac" *) (* OWIDTH = "14" *) 
(* ROUND_MODE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* keep_hierarchy = "yes" *) 
(* mult_style = "pipe_block" *) (* register_balancing = "yes" *) (* use_dsp = "yes" *) 
module design_1_v_rgb2ycrcb_0_0_mac__parameterized0
   (a,
    b,
    c,
    p,
    clk,
    ce,
    sclr);
  input [12:0]a;
  input [16:0]b;
  input [13:0]c;
  output [13:0]p;
  input clk;
  input ce;
  input sclr;

  wire [12:0]a;
  wire [16:0]b;
  wire [13:0]c;
  wire ce;
  wire clk;
  wire mac_reg_n_100;
  wire mac_reg_n_101;
  wire mac_reg_n_102;
  wire mac_reg_n_103;
  wire mac_reg_n_104;
  wire mac_reg_n_105;
  wire mac_reg_n_90;
  wire mac_reg_n_91;
  wire mac_reg_n_92;
  wire mac_reg_n_93;
  wire mac_reg_n_94;
  wire mac_reg_n_95;
  wire mac_reg_n_96;
  wire mac_reg_n_97;
  wire mac_reg_n_98;
  wire mac_reg_n_99;
  wire [13:0]p;
  wire sclr;
  wire NLW_mac_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mac_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mac_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mac_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mac_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mac_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mac_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mac_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mac_reg_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_mac_reg_P_UNCONNECTED;
  wire [47:0]NLW_mac_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mac_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mac_reg
       (.A({b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mac_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a[12],a[12],a[12],a[12],a[12],a}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mac_reg_BCOUT_UNCONNECTED[17:0]),
        .C({c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mac_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b1),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mac_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ce),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ce),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ce),
        .CEP(ce),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mac_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mac_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_mac_reg_P_UNCONNECTED[47:30],p,mac_reg_n_90,mac_reg_n_91,mac_reg_n_92,mac_reg_n_93,mac_reg_n_94,mac_reg_n_95,mac_reg_n_96,mac_reg_n_97,mac_reg_n_98,mac_reg_n_99,mac_reg_n_100,mac_reg_n_101,mac_reg_n_102,mac_reg_n_103,mac_reg_n_104,mac_reg_n_105}),
        .PATTERNBDETECT(NLW_mac_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mac_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mac_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(sclr),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(sclr),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(sclr),
        .RSTP(sclr),
        .UNDERFLOW(NLW_mac_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mac_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* CREG = "0" *) (* HAS_C = "1" *) (* IWIDTHA = "13" *) 
(* IWIDTHB = "17" *) (* ORIG_REF_NAME = "mac" *) (* OWIDTH = "14" *) 
(* ROUND_MODE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) (* keep_hierarchy = "yes" *) 
(* mult_style = "pipe_block" *) (* register_balancing = "yes" *) (* use_dsp = "yes" *) 
module design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1
   (a,
    b,
    c,
    p,
    clk,
    ce,
    sclr);
  input [12:0]a;
  input [16:0]b;
  input [13:0]c;
  output [13:0]p;
  input clk;
  input ce;
  input sclr;

  wire [12:0]a;
  wire [16:0]b;
  wire [13:0]c;
  wire ce;
  wire clk;
  wire mac_reg_n_100;
  wire mac_reg_n_101;
  wire mac_reg_n_102;
  wire mac_reg_n_103;
  wire mac_reg_n_104;
  wire mac_reg_n_105;
  wire mac_reg_n_90;
  wire mac_reg_n_91;
  wire mac_reg_n_92;
  wire mac_reg_n_93;
  wire mac_reg_n_94;
  wire mac_reg_n_95;
  wire mac_reg_n_96;
  wire mac_reg_n_97;
  wire mac_reg_n_98;
  wire mac_reg_n_99;
  wire [13:0]p;
  wire sclr;
  wire NLW_mac_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mac_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mac_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mac_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mac_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mac_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mac_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mac_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mac_reg_CARRYOUT_UNCONNECTED;
  wire [47:30]NLW_mac_reg_P_UNCONNECTED;
  wire [47:0]NLW_mac_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mac_reg_XOROUT_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mac_reg
       (.A({b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b[16],b}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mac_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({a[12],a[12],a[12],a[12],a[12],a}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mac_reg_BCOUT_UNCONNECTED[17:0]),
        .C({c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c[13],c,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mac_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b1),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mac_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ce),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ce),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(ce),
        .CEP(ce),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mac_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mac_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_mac_reg_P_UNCONNECTED[47:30],p,mac_reg_n_90,mac_reg_n_91,mac_reg_n_92,mac_reg_n_93,mac_reg_n_94,mac_reg_n_95,mac_reg_n_96,mac_reg_n_97,mac_reg_n_98,mac_reg_n_99,mac_reg_n_100,mac_reg_n_101,mac_reg_n_102,mac_reg_n_103,mac_reg_n_104,mac_reg_n_105}),
        .PATTERNBDETECT(NLW_mac_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mac_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mac_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(sclr),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(sclr),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(sclr),
        .RSTP(sclr),
        .UNDERFLOW(NLW_mac_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mac_reg_XOROUT_UNCONNECTED[7:0]));
endmodule

(* ORIG_REF_NAME = "max_sat" *) 
module design_1_v_rgb2ycrcb_0_0_max_sat
   (S,
    Q,
    DI,
    p,
    \core_control_regs[3] ,
    sclr,
    E,
    aclk,
    \core_control_regs[2] );
  output [5:0]S;
  output [10:0]Q;
  output [4:0]DI;
  input [11:0]p;
  input [9:0]\core_control_regs[3] ;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[2] ;

  wire [4:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[2] ;
  wire [9:0]\core_control_regs[3] ;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_4;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire \needs_delay.shift_register[1][0]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][10]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][11]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][1]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][2]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][3]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][4]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][5]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][6]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][8]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][9]_i_1_n_0 ;
  wire [11:0]p;
  wire reg_n_0;
  wire reg_n_1;
  wire reg_n_10;
  wire reg_n_11;
  wire reg_n_2;
  wire reg_n_3;
  wire reg_n_4;
  wire reg_n_5;
  wire reg_n_6;
  wire reg_n_7;
  wire reg_n_8;
  wire reg_n_9;
  wire sclr;
  wire [7:6]NLW_gtOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_gtOp_carry_CO_UNCONNECTED[7:6],gtOp_carry_n_2,gtOp_carry_n_3,gtOp_carry_n_4,gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({1'b0,1'b0,reg_n_0,reg_n_1,reg_n_2,reg_n_3,reg_n_4,reg_n_5}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,reg_n_6,reg_n_7,reg_n_8,reg_n_9,reg_n_10,reg_n_11}));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[2] [0]),
        .I1(p[0]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][10]_i_1 
       (.I0(p[10]),
        .I1(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][11]_i_1 
       (.I0(p[11]),
        .I1(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[2] [1]),
        .I1(p[1]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[2] [2]),
        .I1(p[2]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[2] [3]),
        .I1(p[3]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[2] [4]),
        .I1(p[4]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[2] [5]),
        .I1(p[5]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[2] [6]),
        .I1(p[6]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[2] [7]),
        .I1(p[7]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[2] [8]),
        .I1(p[8]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[2] [9]),
        .I1(p[9]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][9]_i_1_n_0 ));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_13 \reg 
       (.D({\needs_delay.shift_register[1][11]_i_1_n_0 ,\needs_delay.shift_register[1][10]_i_1_n_0 ,\needs_delay.shift_register[1][9]_i_1_n_0 ,\needs_delay.shift_register[1][8]_i_1_n_0 ,\needs_delay.shift_register[1][7]_i_1_n_0 ,\needs_delay.shift_register[1][6]_i_1_n_0 ,\needs_delay.shift_register[1][5]_i_1_n_0 ,\needs_delay.shift_register[1][4]_i_1_n_0 ,\needs_delay.shift_register[1][3]_i_1_n_0 ,\needs_delay.shift_register[1][2]_i_1_n_0 ,\needs_delay.shift_register[1][1]_i_1_n_0 ,\needs_delay.shift_register[1][0]_i_1_n_0 }),
        .DI({reg_n_0,reg_n_1,reg_n_2,reg_n_3,reg_n_4,reg_n_5}),
        .E(E),
        .Q(Q),
        .S({reg_n_6,reg_n_7,reg_n_8,reg_n_9,reg_n_10,reg_n_11}),
        .aclk(aclk),
        .\core_control_regs[2] (\core_control_regs[2] ),
        .\core_control_regs[3] (\core_control_regs[3] ),
        .\needs_delay.shift_register_reg[1][10]_0 (S),
        .\needs_delay.shift_register_reg[1][8]_0 (DI),
        .p(p),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "max_sat" *) 
module design_1_v_rgb2ycrcb_0_0_max_sat_2
   (S,
    Q,
    DI,
    p,
    \core_control_regs[5] ,
    sclr,
    E,
    aclk,
    \core_control_regs[4] );
  output [5:0]S;
  output [10:0]Q;
  output [4:0]DI;
  input [11:0]p;
  input [9:0]\core_control_regs[5] ;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[4] ;

  wire [4:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[4] ;
  wire [9:0]\core_control_regs[5] ;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_4;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire \needs_delay.shift_register[1][0]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][10]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][11]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][1]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][2]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][3]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][4]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][5]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][6]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][8]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][9]_i_1_n_0 ;
  wire [11:0]p;
  wire reg_n_0;
  wire reg_n_1;
  wire reg_n_10;
  wire reg_n_11;
  wire reg_n_2;
  wire reg_n_3;
  wire reg_n_4;
  wire reg_n_5;
  wire reg_n_6;
  wire reg_n_7;
  wire reg_n_8;
  wire reg_n_9;
  wire sclr;
  wire [7:6]NLW_gtOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_gtOp_carry_CO_UNCONNECTED[7:6],gtOp_carry_n_2,gtOp_carry_n_3,gtOp_carry_n_4,gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({1'b0,1'b0,reg_n_0,reg_n_1,reg_n_2,reg_n_3,reg_n_4,reg_n_5}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,reg_n_6,reg_n_7,reg_n_8,reg_n_9,reg_n_10,reg_n_11}));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[4] [0]),
        .I1(p[0]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][10]_i_1 
       (.I0(p[10]),
        .I1(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][11]_i_1 
       (.I0(p[11]),
        .I1(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[4] [1]),
        .I1(p[1]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[4] [2]),
        .I1(p[2]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[4] [3]),
        .I1(p[3]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[4] [4]),
        .I1(p[4]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[4] [5]),
        .I1(p[5]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[4] [6]),
        .I1(p[6]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[4] [7]),
        .I1(p[7]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[4] [8]),
        .I1(p[8]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[4] [9]),
        .I1(p[9]),
        .I2(gtOp_carry_n_2),
        .O(\needs_delay.shift_register[1][9]_i_1_n_0 ));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_12 \reg 
       (.D({\needs_delay.shift_register[1][11]_i_1_n_0 ,\needs_delay.shift_register[1][10]_i_1_n_0 ,\needs_delay.shift_register[1][9]_i_1_n_0 ,\needs_delay.shift_register[1][8]_i_1_n_0 ,\needs_delay.shift_register[1][7]_i_1_n_0 ,\needs_delay.shift_register[1][6]_i_1_n_0 ,\needs_delay.shift_register[1][5]_i_1_n_0 ,\needs_delay.shift_register[1][4]_i_1_n_0 ,\needs_delay.shift_register[1][3]_i_1_n_0 ,\needs_delay.shift_register[1][2]_i_1_n_0 ,\needs_delay.shift_register[1][1]_i_1_n_0 ,\needs_delay.shift_register[1][0]_i_1_n_0 }),
        .DI({reg_n_0,reg_n_1,reg_n_2,reg_n_3,reg_n_4,reg_n_5}),
        .E(E),
        .Q(Q),
        .S({reg_n_6,reg_n_7,reg_n_8,reg_n_9,reg_n_10,reg_n_11}),
        .aclk(aclk),
        .\core_control_regs[4] (\core_control_regs[4] ),
        .\core_control_regs[5] (\core_control_regs[5] ),
        .\needs_delay.shift_register_reg[1][10]_0 (S),
        .\needs_delay.shift_register_reg[1][8]_0 (DI),
        .p(p),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "max_sat" *) 
module design_1_v_rgb2ycrcb_0_0_max_sat_3
   (\needs_delay.shift_register_reg[1][10] ,
    Q,
    \needs_delay.shift_register_reg[1][8] ,
    DI,
    S,
    \core_control_regs[1] ,
    sclr,
    E,
    aclk,
    \core_control_regs[0] ,
    \needs_delay.shift_register_reg[1][0] ,
    \needs_delay.shift_register_reg[1][1] ,
    \needs_delay.shift_register_reg[1][2] ,
    \needs_delay.shift_register_reg[1][3] ,
    \needs_delay.shift_register_reg[1][4] ,
    \needs_delay.shift_register_reg[1][5] ,
    \needs_delay.shift_register_reg[1][6] ,
    \needs_delay.shift_register_reg[1][7] ,
    \needs_delay.shift_register_reg[1][8]_0 ,
    \needs_delay.shift_register_reg[1][9] ,
    \needs_delay.shift_register_reg[1][10]_0 ,
    \needs_delay.shift_register_reg[1][11] );
  output [5:0]\needs_delay.shift_register_reg[1][10] ;
  output [10:0]Q;
  output [4:0]\needs_delay.shift_register_reg[1][8] ;
  input [5:0]DI;
  input [5:0]S;
  input [9:0]\core_control_regs[1] ;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[0] ;
  input \needs_delay.shift_register_reg[1][0] ;
  input \needs_delay.shift_register_reg[1][1] ;
  input \needs_delay.shift_register_reg[1][2] ;
  input \needs_delay.shift_register_reg[1][3] ;
  input \needs_delay.shift_register_reg[1][4] ;
  input \needs_delay.shift_register_reg[1][5] ;
  input \needs_delay.shift_register_reg[1][6] ;
  input \needs_delay.shift_register_reg[1][7] ;
  input \needs_delay.shift_register_reg[1][8]_0 ;
  input \needs_delay.shift_register_reg[1][9] ;
  input \needs_delay.shift_register_reg[1][10]_0 ;
  input \needs_delay.shift_register_reg[1][11] ;

  wire [5:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [11:0]c;
  wire [9:0]\core_control_regs[0] ;
  wire [9:0]\core_control_regs[1] ;
  wire gtOp;
  wire gtOp_carry_n_3;
  wire gtOp_carry_n_4;
  wire gtOp_carry_n_5;
  wire gtOp_carry_n_6;
  wire gtOp_carry_n_7;
  wire \needs_delay.shift_register_reg[1][0] ;
  wire [5:0]\needs_delay.shift_register_reg[1][10] ;
  wire \needs_delay.shift_register_reg[1][10]_0 ;
  wire \needs_delay.shift_register_reg[1][11] ;
  wire \needs_delay.shift_register_reg[1][1] ;
  wire \needs_delay.shift_register_reg[1][2] ;
  wire \needs_delay.shift_register_reg[1][3] ;
  wire \needs_delay.shift_register_reg[1][4] ;
  wire \needs_delay.shift_register_reg[1][5] ;
  wire \needs_delay.shift_register_reg[1][6] ;
  wire \needs_delay.shift_register_reg[1][7] ;
  wire [4:0]\needs_delay.shift_register_reg[1][8] ;
  wire \needs_delay.shift_register_reg[1][8]_0 ;
  wire \needs_delay.shift_register_reg[1][9] ;
  wire sclr;
  wire [7:6]NLW_gtOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_gtOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 gtOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_gtOp_carry_CO_UNCONNECTED[7:6],gtOp,gtOp_carry_n_3,gtOp_carry_n_4,gtOp_carry_n_5,gtOp_carry_n_6,gtOp_carry_n_7}),
        .DI({1'b0,1'b0,DI}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[0] [0]),
        .I1(\needs_delay.shift_register_reg[1][0] ),
        .I2(gtOp),
        .O(c[0]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][10]_i_1 
       (.I0(\needs_delay.shift_register_reg[1][10]_0 ),
        .I1(gtOp),
        .O(c[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \needs_delay.shift_register[1][11]_i_1 
       (.I0(\needs_delay.shift_register_reg[1][11] ),
        .I1(gtOp),
        .O(c[11]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[0] [1]),
        .I1(\needs_delay.shift_register_reg[1][1] ),
        .I2(gtOp),
        .O(c[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[0] [2]),
        .I1(\needs_delay.shift_register_reg[1][2] ),
        .I2(gtOp),
        .O(c[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[0] [3]),
        .I1(\needs_delay.shift_register_reg[1][3] ),
        .I2(gtOp),
        .O(c[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[0] [4]),
        .I1(\needs_delay.shift_register_reg[1][4] ),
        .I2(gtOp),
        .O(c[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[0] [5]),
        .I1(\needs_delay.shift_register_reg[1][5] ),
        .I2(gtOp),
        .O(c[5]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[0] [6]),
        .I1(\needs_delay.shift_register_reg[1][6] ),
        .I2(gtOp),
        .O(c[6]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[0] [7]),
        .I1(\needs_delay.shift_register_reg[1][7] ),
        .I2(gtOp),
        .O(c[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[0] [8]),
        .I1(\needs_delay.shift_register_reg[1][8]_0 ),
        .I2(gtOp),
        .O(c[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[0] [9]),
        .I1(\needs_delay.shift_register_reg[1][9] ),
        .I2(gtOp),
        .O(c[9]));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1 \reg 
       (.D(c),
        .E(E),
        .Q(Q),
        .aclk(aclk),
        .\core_control_regs[1] (\core_control_regs[1] ),
        .\needs_delay.shift_register_reg[1][10]_0 (\needs_delay.shift_register_reg[1][10] ),
        .\needs_delay.shift_register_reg[1][8]_0 (\needs_delay.shift_register_reg[1][8] ),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "min_sat" *) 
module design_1_v_rgb2ycrcb_0_0_min_sat
   (da,
    Q,
    DI,
    S,
    sclr,
    E,
    aclk,
    \core_control_regs[3] );
  output [9:0]da;
  input [10:0]Q;
  input [4:0]DI;
  input [5:0]S;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[3] ;

  wire [4:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[3] ;
  wire [9:0]da;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire ltOp_carry_n_4;
  wire ltOp_carry_n_5;
  wire ltOp_carry_n_6;
  wire ltOp_carry_n_7;
  wire \needs_delay.shift_register[1][0]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][1]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][2]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][3]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][4]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][5]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][6]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][8]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][9]_i_1_n_0 ;
  wire sclr;
  wire [7:6]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ltOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ltOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_ltOp_carry_CO_UNCONNECTED[7:6],ltOp_carry_n_2,ltOp_carry_n_3,ltOp_carry_n_4,ltOp_carry_n_5,ltOp_carry_n_6,ltOp_carry_n_7}),
        .DI({1'b0,1'b0,Q[10],DI}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[3] [0]),
        .I1(Q[0]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[3] [1]),
        .I1(Q[1]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[3] [2]),
        .I1(Q[2]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[3] [3]),
        .I1(Q[3]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[3] [4]),
        .I1(Q[4]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[3] [5]),
        .I1(Q[5]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[3] [6]),
        .I1(Q[6]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[3] [7]),
        .I1(Q[7]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[3] [8]),
        .I1(Q[8]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[3] [9]),
        .I1(Q[9]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][9]_i_1_n_0 ));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_16 \reg 
       (.D({\needs_delay.shift_register[1][9]_i_1_n_0 ,\needs_delay.shift_register[1][8]_i_1_n_0 ,\needs_delay.shift_register[1][7]_i_1_n_0 ,\needs_delay.shift_register[1][6]_i_1_n_0 ,\needs_delay.shift_register[1][5]_i_1_n_0 ,\needs_delay.shift_register[1][4]_i_1_n_0 ,\needs_delay.shift_register[1][3]_i_1_n_0 ,\needs_delay.shift_register[1][2]_i_1_n_0 ,\needs_delay.shift_register[1][1]_i_1_n_0 ,\needs_delay.shift_register[1][0]_i_1_n_0 }),
        .E(E),
        .aclk(aclk),
        .da(da),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "min_sat" *) 
module design_1_v_rgb2ycrcb_0_0_min_sat_0
   (da,
    Q,
    DI,
    S,
    sclr,
    E,
    aclk,
    \core_control_regs[5] );
  output [9:0]da;
  input [10:0]Q;
  input [4:0]DI;
  input [5:0]S;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[5] ;

  wire [4:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[5] ;
  wire [9:0]da;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire ltOp_carry_n_4;
  wire ltOp_carry_n_5;
  wire ltOp_carry_n_6;
  wire ltOp_carry_n_7;
  wire \needs_delay.shift_register[1][0]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][1]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][2]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][3]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][4]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][5]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][6]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][8]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][9]_i_1_n_0 ;
  wire sclr;
  wire [7:6]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ltOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ltOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_ltOp_carry_CO_UNCONNECTED[7:6],ltOp_carry_n_2,ltOp_carry_n_3,ltOp_carry_n_4,ltOp_carry_n_5,ltOp_carry_n_6,ltOp_carry_n_7}),
        .DI({1'b0,1'b0,Q[10],DI}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[5] [0]),
        .I1(Q[0]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[5] [1]),
        .I1(Q[1]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[5] [2]),
        .I1(Q[2]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[5] [3]),
        .I1(Q[3]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[5] [4]),
        .I1(Q[4]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[5] [5]),
        .I1(Q[5]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[5] [6]),
        .I1(Q[6]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[5] [7]),
        .I1(Q[7]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[5] [8]),
        .I1(Q[8]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[5] [9]),
        .I1(Q[9]),
        .I2(ltOp_carry_n_2),
        .O(\needs_delay.shift_register[1][9]_i_1_n_0 ));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_15 \reg 
       (.D({\needs_delay.shift_register[1][9]_i_1_n_0 ,\needs_delay.shift_register[1][8]_i_1_n_0 ,\needs_delay.shift_register[1][7]_i_1_n_0 ,\needs_delay.shift_register[1][6]_i_1_n_0 ,\needs_delay.shift_register[1][5]_i_1_n_0 ,\needs_delay.shift_register[1][4]_i_1_n_0 ,\needs_delay.shift_register[1][3]_i_1_n_0 ,\needs_delay.shift_register[1][2]_i_1_n_0 ,\needs_delay.shift_register[1][1]_i_1_n_0 ,\needs_delay.shift_register[1][0]_i_1_n_0 }),
        .E(E),
        .aclk(aclk),
        .da(da),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "min_sat" *) 
module design_1_v_rgb2ycrcb_0_0_min_sat_1
   (da,
    Q,
    DI,
    S,
    sclr,
    E,
    aclk,
    \core_control_regs[1] );
  output [9:0]da;
  input [10:0]Q;
  input [4:0]DI;
  input [5:0]S;
  input sclr;
  input [0:0]E;
  input aclk;
  input [9:0]\core_control_regs[1] ;

  wire [4:0]DI;
  wire [0:0]E;
  wire [10:0]Q;
  wire [5:0]S;
  wire aclk;
  wire [9:0]\core_control_regs[1] ;
  wire [9:0]da;
  wire ltOp;
  wire ltOp_carry_n_3;
  wire ltOp_carry_n_4;
  wire ltOp_carry_n_5;
  wire ltOp_carry_n_6;
  wire ltOp_carry_n_7;
  wire \needs_delay.shift_register[1][0]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][1]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][2]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][3]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][4]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][5]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][6]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][8]_i_1_n_0 ;
  wire \needs_delay.shift_register[1][9]_i_1_n_0 ;
  wire sclr;
  wire [7:6]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [7:0]NLW_ltOp_carry_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 ltOp_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_ltOp_carry_CO_UNCONNECTED[7:6],ltOp,ltOp_carry_n_3,ltOp_carry_n_4,ltOp_carry_n_5,ltOp_carry_n_6,ltOp_carry_n_7}),
        .DI({1'b0,1'b0,Q[10],DI}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,S}));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][0]_i_1 
       (.I0(\core_control_regs[1] [0]),
        .I1(Q[0]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][1]_i_1 
       (.I0(\core_control_regs[1] [1]),
        .I1(Q[1]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][2]_i_1 
       (.I0(\core_control_regs[1] [2]),
        .I1(Q[2]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][3]_i_1 
       (.I0(\core_control_regs[1] [3]),
        .I1(Q[3]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][4]_i_1 
       (.I0(\core_control_regs[1] [4]),
        .I1(Q[4]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][5]_i_1 
       (.I0(\core_control_regs[1] [5]),
        .I1(Q[5]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][6]_i_1 
       (.I0(\core_control_regs[1] [6]),
        .I1(Q[6]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][7]_i_1 
       (.I0(\core_control_regs[1] [7]),
        .I1(Q[7]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][8]_i_1 
       (.I0(\core_control_regs[1] [8]),
        .I1(Q[8]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \needs_delay.shift_register[1][9]_i_1 
       (.I0(\core_control_regs[1] [9]),
        .I1(Q[9]),
        .I2(ltOp),
        .O(\needs_delay.shift_register[1][9]_i_1_n_0 ));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_14 \reg 
       (.D({\needs_delay.shift_register[1][9]_i_1_n_0 ,\needs_delay.shift_register[1][8]_i_1_n_0 ,\needs_delay.shift_register[1][7]_i_1_n_0 ,\needs_delay.shift_register[1][6]_i_1_n_0 ,\needs_delay.shift_register[1][5]_i_1_n_0 ,\needs_delay.shift_register[1][4]_i_1_n_0 ,\needs_delay.shift_register[1][3]_i_1_n_0 ,\needs_delay.shift_register[1][2]_i_1_n_0 ,\needs_delay.shift_register[1][1]_i_1_n_0 ,\needs_delay.shift_register[1][0]_i_1_n_0 }),
        .E(E),
        .aclk(aclk),
        .da(da),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "mult" *) 
module design_1_v_rgb2ycrcb_0_0_mult
   (P,
    E,
    aclk,
    sclr,
    s,
    \core_control_regs[9] );
  output [27:0]P;
  input [0:0]E;
  input aclk;
  input sclr;
  input [10:0]s;
  input [16:0]\core_control_regs[9] ;

  wire [0:0]E;
  wire [27:0]P;
  wire aclk;
  wire [16:0]\core_control_regs[9] ;
  wire [10:0]s;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized0 \reg 
       (.E(E),
        .P(P),
        .aclk(aclk),
        .\core_control_regs[9] (\core_control_regs[9] ),
        .s(s),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr
   (s,
    Q,
    sclr,
    E,
    aclk,
    p_0_in);
  output [10:0]s;
  input [18:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;
  input [0:0]p_0_in;

  wire [0:0]E;
  wire [18:0]Q;
  wire aclk;
  wire [0:0]p_0_in;
  wire [10:0]s;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10 \use_fabric.adder 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .p_0_in(p_0_in),
        .s(s),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5
   (s,
    p_0_in,
    Q,
    sclr,
    E,
    aclk);
  output [10:0]s;
  output [0:0]p_0_in;
  input [19:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]E;
  wire [19:0]Q;
  wire aclk;
  wire [0:0]p_0_in;
  wire [10:0]s;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no \use_fabric.adder 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .p_0_in(p_0_in),
        .s(s),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0
   (S,
    s,
    \needs_delay.shift_register_reg[1][0] ,
    \needs_delay.shift_register_reg[1][11] ,
    DI,
    \needs_delay.shift_register_reg[1][11]_0 ,
    \core_control_regs[6] ,
    y_intb,
    a,
    sclr,
    E,
    aclk);
  output [0:0]S;
  output [10:0]s;
  output \needs_delay.shift_register_reg[1][0] ;
  output [1:0]\needs_delay.shift_register_reg[1][11] ;
  output [0:0]DI;
  output [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  input [0:0]\core_control_regs[6] ;
  input [9:0]y_intb;
  input [10:0]a;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire [10:0]a;
  wire aclk;
  wire [0:0]\core_control_regs[6] ;
  wire \needs_delay.shift_register_reg[1][0] ;
  wire [1:0]\needs_delay.shift_register_reg[1][11] ;
  wire [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  wire [10:0]s;
  wire sclr;
  wire [9:0]y_intb;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0 \use_fabric.adder 
       (.DI(DI),
        .E(E),
        .S(S),
        .a(a),
        .aclk(aclk),
        .\core_control_regs[6] (\core_control_regs[6] ),
        .\needs_delay.shift_register_reg[1][0] (\needs_delay.shift_register_reg[1][0] ),
        .\needs_delay.shift_register_reg[1][11] (\needs_delay.shift_register_reg[1][11] ),
        .\needs_delay.shift_register_reg[1][11]_0 (\needs_delay.shift_register_reg[1][11]_0 ),
        .s(s),
        .sclr(sclr),
        .y_intb(y_intb));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1
   (out,
    sclr,
    E,
    D,
    aclk);
  output [12:0]out;
  input sclr;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire aclk;
  wire [12:0]out;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8 \use_fabric.adder 
       (.D(D),
        .E(E),
        .aclk(aclk),
        .out(out),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6
   (out,
    sclr,
    resetn_out,
    E,
    D,
    aclk);
  output [12:0]out;
  output sclr;
  input resetn_out;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire aclk;
  wire [12:0]out;
  wire resetn_out;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1 \use_fabric.adder 
       (.D(D),
        .E(E),
        .SR(sclr),
        .aclk(aclk),
        .out(out),
        .resetn_out(resetn_out));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2
   (s,
    \core_control_regs[6] ,
    \needs_delay.shift_register_reg[1][12] ,
    DI,
    S,
    sclr,
    E,
    aclk);
  output [11:0]s;
  input [10:0]\core_control_regs[6] ;
  input [10:0]\needs_delay.shift_register_reg[1][12] ;
  input [0:0]DI;
  input [0:0]S;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire aclk;
  wire [10:0]\core_control_regs[6] ;
  wire [10:0]\needs_delay.shift_register_reg[1][12] ;
  wire [11:0]s;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2 \use_fabric.adder 
       (.DI(DI),
        .E(E),
        .S(S),
        .aclk(aclk),
        .\core_control_regs[6] (\core_control_regs[6] ),
        .\needs_delay.shift_register_reg[1][12] (\needs_delay.shift_register_reg[1][12] ),
        .s(s),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no
   (s,
    p_0_in,
    Q,
    sclr,
    E,
    aclk);
  output [10:0]s;
  output [0:0]p_0_in;
  input [19:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]E;
  wire [19:0]Q;
  wire aclk;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [10:0]out_s;
  wire [0:0]p_0_in;
  wire sclr;

  assign s[10:0] = out_s;
  design_1_v_rgb2ycrcb_0_0_delay_sclr \reg 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .out_s(out_s),
        .p_0_in(p_0_in),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no_10
   (s,
    Q,
    sclr,
    E,
    aclk,
    p_0_in);
  output [10:0]s;
  input [18:0]Q;
  input sclr;
  input [0:0]E;
  input aclk;
  input [0:0]p_0_in;

  wire [0:0]E;
  wire [18:0]Q;
  wire aclk;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [10:0]out_s;
  wire [0:0]p_0_in;
  wire sclr;

  assign s[10:0] = out_s;
  design_1_v_rgb2ycrcb_0_0_delay_sclr_11 \reg 
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .out_s(out_s),
        .p_0_in(p_0_in),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized0
   (S,
    \needs_delay.shift_register_reg[1][0] ,
    s,
    \needs_delay.shift_register_reg[1][11] ,
    DI,
    \needs_delay.shift_register_reg[1][11]_0 ,
    \core_control_regs[6] ,
    y_intb,
    a,
    sclr,
    E,
    aclk);
  output [0:0]S;
  output \needs_delay.shift_register_reg[1][0] ;
  output [10:0]s;
  output [1:0]\needs_delay.shift_register_reg[1][11] ;
  output [0:0]DI;
  output [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  input [0:0]\core_control_regs[6] ;
  input [9:0]y_intb;
  input [10:0]a;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire [10:0]a;
  wire aclk;
  wire [0:0]\core_control_regs[6] ;
  wire \needs_delay.shift_register[1][11]_i_2_n_0 ;
  wire \needs_delay.shift_register[1][11]_i_3_n_0 ;
  wire \needs_delay.shift_register[1][11]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8_n_0 ;
  wire \needs_delay.shift_register_reg[1][0] ;
  wire [1:0]\needs_delay.shift_register_reg[1][11] ;
  wire [1:0]\needs_delay.shift_register_reg[1][11]_0 ;
  wire \needs_delay.shift_register_reg[1][11]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][11]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][11]_i_1_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_7 ;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [11:0]out_s;
  wire [11:0]plusOp;
  wire sclr;
  wire [9:0]y_intb;
  wire [7:3]\NLW_needs_delay.shift_register_reg[1][11]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_needs_delay.shift_register_reg[1][11]_i_1_O_UNCONNECTED ;

  assign s[10:0] = out_s[10:0];
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][11]_i_2 
       (.I0(a[10]),
        .O(\needs_delay.shift_register[1][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][11]_i_3 
       (.I0(a[9]),
        .I1(y_intb[9]),
        .O(\needs_delay.shift_register[1][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][11]_i_4 
       (.I0(a[8]),
        .I1(y_intb[8]),
        .O(\needs_delay.shift_register[1][11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \needs_delay.shift_register[1][12]_i_2 
       (.I0(out_s[11]),
        .O(DI));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][12]_i_3__1 
       (.I0(out_s[11]),
        .I1(\core_control_regs[6] ),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_2 
       (.I0(a[7]),
        .I1(y_intb[7]),
        .O(\needs_delay.shift_register[1][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_3 
       (.I0(a[6]),
        .I1(y_intb[6]),
        .O(\needs_delay.shift_register[1][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_4 
       (.I0(a[5]),
        .I1(y_intb[5]),
        .O(\needs_delay.shift_register[1][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_5 
       (.I0(a[4]),
        .I1(y_intb[4]),
        .O(\needs_delay.shift_register[1][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_6 
       (.I0(a[3]),
        .I1(y_intb[3]),
        .O(\needs_delay.shift_register[1][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_7 
       (.I0(a[2]),
        .I1(y_intb[2]),
        .O(\needs_delay.shift_register[1][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_8 
       (.I0(a[1]),
        .I1(y_intb[1]),
        .O(\needs_delay.shift_register[1][7]_i_8_n_0 ));
  CARRY8 \needs_delay.shift_register_reg[1][11]_i_1 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][11]_i_1_CO_UNCONNECTED [7:3],\needs_delay.shift_register_reg[1][11]_i_1_n_5 ,\needs_delay.shift_register_reg[1][11]_i_1_n_6 ,\needs_delay.shift_register_reg[1][11]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,\needs_delay.shift_register[1][11]_i_2_n_0 ,a[9:8]}),
        .O({\NLW_needs_delay.shift_register_reg[1][11]_i_1_O_UNCONNECTED [7:4],plusOp[11:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b1,a[10],\needs_delay.shift_register[1][11]_i_3_n_0 ,\needs_delay.shift_register[1][11]_i_4_n_0 }));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1 
       (.CI(y_intb[0]),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1_n_7 }),
        .DI(a[7:0]),
        .O(plusOp[7:0]),
        .S({\needs_delay.shift_register[1][7]_i_2_n_0 ,\needs_delay.shift_register[1][7]_i_3_n_0 ,\needs_delay.shift_register[1][7]_i_4_n_0 ,\needs_delay.shift_register[1][7]_i_5_n_0 ,\needs_delay.shift_register[1][7]_i_6_n_0 ,\needs_delay.shift_register[1][7]_i_7_n_0 ,\needs_delay.shift_register[1][7]_i_8_n_0 ,a[0]}));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized1_17 \reg 
       (.E(E),
        .Q(out_s),
        .aclk(aclk),
        .\needs_delay.shift_register_reg[1][0]_0 (\needs_delay.shift_register_reg[1][0] ),
        .\needs_delay.shift_register_reg[1][11]_0 (\needs_delay.shift_register_reg[1][11] ),
        .\needs_delay.shift_register_reg[1][11]_1 (\needs_delay.shift_register_reg[1][11]_0 ),
        .out({out_s[11:10],out_s[0]}),
        .plusOp(plusOp),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1
   (out,
    SR,
    resetn_out,
    E,
    D,
    aclk);
  output [12:0]out;
  output [0:0]SR;
  input resetn_out;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire [0:0]SR;
  wire aclk;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [12:0]out_s;
  wire resetn_out;

  assign out[12:0] = out_s;
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_7 \reg 
       (.D(D),
        .E(E),
        .Q(out_s),
        .SR(SR),
        .aclk(aclk),
        .resetn_out(resetn_out));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized1_8
   (out,
    sclr,
    E,
    D,
    aclk);
  output [12:0]out;
  input sclr;
  input [0:0]E;
  input [12:0]D;
  input aclk;

  wire [12:0]D;
  wire [0:0]E;
  wire aclk;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [12:0]out_s;
  wire sclr;

  assign out[12:0] = out_s;
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2_9 \reg 
       (.D(D),
        .E(E),
        .Q(out_s),
        .aclk(aclk),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "radd_sub_sclr_no" *) 
module design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_no__parameterized2
   (s,
    \core_control_regs[6] ,
    \needs_delay.shift_register_reg[1][12] ,
    DI,
    S,
    sclr,
    E,
    aclk);
  output [11:0]s;
  input [10:0]\core_control_regs[6] ;
  input [10:0]\needs_delay.shift_register_reg[1][12] ;
  input [0:0]DI;
  input [0:0]S;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire aclk;
  wire [10:0]\core_control_regs[6] ;
  wire \needs_delay.shift_register[1][12]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][12]_i_5_n_0 ;
  wire \needs_delay.shift_register[1][12]_i_6_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_2_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_3_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_4_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_5_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_6_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_7_n_0 ;
  wire \needs_delay.shift_register[1][7]_i_8_n_0 ;
  wire [10:0]\needs_delay.shift_register_reg[1][12] ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_4 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][12]_i_1_n_7 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_0 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_1 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_2 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_3 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_4 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_5 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_6 ;
  wire \needs_delay.shift_register_reg[1][7]_i_1_n_7 ;
  (* RTL_KEEP = "true" *) (* USE_DSP = "no" *) wire [12:0]out_s;
  wire [12:0]plusOp;
  wire sclr;
  wire [7:4]\NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED ;

  assign s[11:0] = out_s[11:0];
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][12]_i_4 
       (.I0(\needs_delay.shift_register_reg[1][12] [10]),
        .I1(\core_control_regs[6] [10]),
        .O(\needs_delay.shift_register[1][12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][12]_i_5 
       (.I0(\needs_delay.shift_register_reg[1][12] [9]),
        .I1(\core_control_regs[6] [9]),
        .O(\needs_delay.shift_register[1][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][12]_i_6 
       (.I0(\needs_delay.shift_register_reg[1][12] [8]),
        .I1(\core_control_regs[6] [8]),
        .O(\needs_delay.shift_register[1][12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_2 
       (.I0(\needs_delay.shift_register_reg[1][12] [7]),
        .I1(\core_control_regs[6] [7]),
        .O(\needs_delay.shift_register[1][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_3 
       (.I0(\needs_delay.shift_register_reg[1][12] [6]),
        .I1(\core_control_regs[6] [6]),
        .O(\needs_delay.shift_register[1][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_4 
       (.I0(\needs_delay.shift_register_reg[1][12] [5]),
        .I1(\core_control_regs[6] [5]),
        .O(\needs_delay.shift_register[1][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_5 
       (.I0(\needs_delay.shift_register_reg[1][12] [4]),
        .I1(\core_control_regs[6] [4]),
        .O(\needs_delay.shift_register[1][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_6 
       (.I0(\needs_delay.shift_register_reg[1][12] [3]),
        .I1(\core_control_regs[6] [3]),
        .O(\needs_delay.shift_register[1][7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_7 
       (.I0(\needs_delay.shift_register_reg[1][12] [2]),
        .I1(\core_control_regs[6] [2]),
        .O(\needs_delay.shift_register[1][7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \needs_delay.shift_register[1][7]_i_8 
       (.I0(\needs_delay.shift_register_reg[1][12] [1]),
        .I1(\core_control_regs[6] [1]),
        .O(\needs_delay.shift_register[1][7]_i_8_n_0 ));
  CARRY8 \needs_delay.shift_register_reg[1][12]_i_1 
       (.CI(\needs_delay.shift_register_reg[1][7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_needs_delay.shift_register_reg[1][12]_i_1_CO_UNCONNECTED [7:4],\needs_delay.shift_register_reg[1][12]_i_1_n_4 ,\needs_delay.shift_register_reg[1][12]_i_1_n_5 ,\needs_delay.shift_register_reg[1][12]_i_1_n_6 ,\needs_delay.shift_register_reg[1][12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,DI,\needs_delay.shift_register_reg[1][12] [10:8]}),
        .O({\NLW_needs_delay.shift_register_reg[1][12]_i_1_O_UNCONNECTED [7:5],plusOp[12:8]}),
        .S({1'b0,1'b0,1'b0,1'b1,S,\needs_delay.shift_register[1][12]_i_4_n_0 ,\needs_delay.shift_register[1][12]_i_5_n_0 ,\needs_delay.shift_register[1][12]_i_6_n_0 }));
  CARRY8 \needs_delay.shift_register_reg[1][7]_i_1 
       (.CI(\core_control_regs[6] [0]),
        .CI_TOP(1'b0),
        .CO({\needs_delay.shift_register_reg[1][7]_i_1_n_0 ,\needs_delay.shift_register_reg[1][7]_i_1_n_1 ,\needs_delay.shift_register_reg[1][7]_i_1_n_2 ,\needs_delay.shift_register_reg[1][7]_i_1_n_3 ,\needs_delay.shift_register_reg[1][7]_i_1_n_4 ,\needs_delay.shift_register_reg[1][7]_i_1_n_5 ,\needs_delay.shift_register_reg[1][7]_i_1_n_6 ,\needs_delay.shift_register_reg[1][7]_i_1_n_7 }),
        .DI(\needs_delay.shift_register_reg[1][12] [7:0]),
        .O(plusOp[7:0]),
        .S({\needs_delay.shift_register[1][7]_i_2_n_0 ,\needs_delay.shift_register[1][7]_i_3_n_0 ,\needs_delay.shift_register[1][7]_i_4_n_0 ,\needs_delay.shift_register[1][7]_i_5_n_0 ,\needs_delay.shift_register[1][7]_i_6_n_0 ,\needs_delay.shift_register[1][7]_i_7_n_0 ,\needs_delay.shift_register[1][7]_i_8_n_0 ,\needs_delay.shift_register_reg[1][12] [0]}));
  design_1_v_rgb2ycrcb_0_0_delay_sclr__parameterized2 \reg 
       (.E(E),
        .Q(out_s),
        .aclk(aclk),
        .plusOp(plusOp),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "rgb2ycrcb_core" *) 
module design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core
   (SR,
    da,
    \core_control_regs[10] ,
    aclk,
    E,
    \core_control_regs[12] ,
    \core_control_regs[7] ,
    \core_control_regs[11] ,
    \core_control_regs[8] ,
    \core_control_regs[9] ,
    Q,
    \core_control_regs[6] ,
    resetn_out,
    \core_control_regs[0] ,
    \core_control_regs[1] ,
    \core_control_regs[2] ,
    \core_control_regs[3] ,
    \core_control_regs[4] ,
    \core_control_regs[5] );
  output [0:0]SR;
  output [29:0]da;
  input [16:0]\core_control_regs[10] ;
  input aclk;
  input [0:0]E;
  input [16:0]\core_control_regs[12] ;
  input [10:0]\core_control_regs[7] ;
  input [16:0]\core_control_regs[11] ;
  input [10:0]\core_control_regs[8] ;
  input [16:0]\core_control_regs[9] ;
  input [29:0]Q;
  input [10:0]\core_control_regs[6] ;
  input resetn_out;
  input [9:0]\core_control_regs[0] ;
  input [9:0]\core_control_regs[1] ;
  input [9:0]\core_control_regs[2] ;
  input [9:0]\core_control_regs[3] ;
  input [9:0]\core_control_regs[4] ;
  input [9:0]\core_control_regs[5] ;

  wire [0:0]E;
  wire [29:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire add_aRG_bBG_G_n_0;
  wire add_aRG_bBG_G_n_12;
  wire add_aRG_bBG_G_n_13;
  wire add_aRG_bBG_G_n_14;
  wire add_aRG_bBG_G_n_15;
  wire add_aRG_bBG_G_n_16;
  wire add_aRG_bBG_G_n_17;
  wire [10:0]bg;
  wire [12:0]by;
  wire \clip.max_Cb_n_0 ;
  wire \clip.max_Cb_n_1 ;
  wire \clip.max_Cb_n_10 ;
  wire \clip.max_Cb_n_11 ;
  wire \clip.max_Cb_n_12 ;
  wire \clip.max_Cb_n_13 ;
  wire \clip.max_Cb_n_14 ;
  wire \clip.max_Cb_n_15 ;
  wire \clip.max_Cb_n_16 ;
  wire \clip.max_Cb_n_17 ;
  wire \clip.max_Cb_n_18 ;
  wire \clip.max_Cb_n_19 ;
  wire \clip.max_Cb_n_2 ;
  wire \clip.max_Cb_n_20 ;
  wire \clip.max_Cb_n_21 ;
  wire \clip.max_Cb_n_3 ;
  wire \clip.max_Cb_n_4 ;
  wire \clip.max_Cb_n_5 ;
  wire \clip.max_Cb_n_6 ;
  wire \clip.max_Cb_n_7 ;
  wire \clip.max_Cb_n_8 ;
  wire \clip.max_Cb_n_9 ;
  wire \clip.max_Cr_n_0 ;
  wire \clip.max_Cr_n_1 ;
  wire \clip.max_Cr_n_10 ;
  wire \clip.max_Cr_n_11 ;
  wire \clip.max_Cr_n_12 ;
  wire \clip.max_Cr_n_13 ;
  wire \clip.max_Cr_n_14 ;
  wire \clip.max_Cr_n_15 ;
  wire \clip.max_Cr_n_16 ;
  wire \clip.max_Cr_n_17 ;
  wire \clip.max_Cr_n_18 ;
  wire \clip.max_Cr_n_19 ;
  wire \clip.max_Cr_n_2 ;
  wire \clip.max_Cr_n_20 ;
  wire \clip.max_Cr_n_21 ;
  wire \clip.max_Cr_n_3 ;
  wire \clip.max_Cr_n_4 ;
  wire \clip.max_Cr_n_5 ;
  wire \clip.max_Cr_n_6 ;
  wire \clip.max_Cr_n_7 ;
  wire \clip.max_Cr_n_8 ;
  wire \clip.max_Cr_n_9 ;
  wire \clip.max_Y_n_0 ;
  wire \clip.max_Y_n_1 ;
  wire \clip.max_Y_n_10 ;
  wire \clip.max_Y_n_11 ;
  wire \clip.max_Y_n_12 ;
  wire \clip.max_Y_n_13 ;
  wire \clip.max_Y_n_14 ;
  wire \clip.max_Y_n_15 ;
  wire \clip.max_Y_n_16 ;
  wire \clip.max_Y_n_17 ;
  wire \clip.max_Y_n_18 ;
  wire \clip.max_Y_n_19 ;
  wire \clip.max_Y_n_2 ;
  wire \clip.max_Y_n_20 ;
  wire \clip.max_Y_n_21 ;
  wire \clip.max_Y_n_3 ;
  wire \clip.max_Y_n_4 ;
  wire \clip.max_Y_n_5 ;
  wire \clip.max_Y_n_6 ;
  wire \clip.max_Y_n_7 ;
  wire \clip.max_Y_n_8 ;
  wire \clip.max_Y_n_9 ;
  wire [9:0]\core_control_regs[0] ;
  wire [16:0]\core_control_regs[10] ;
  wire [16:0]\core_control_regs[11] ;
  wire [16:0]\core_control_regs[12] ;
  wire [9:0]\core_control_regs[1] ;
  wire [9:0]\core_control_regs[2] ;
  wire [9:0]\core_control_regs[3] ;
  wire [9:0]\core_control_regs[4] ;
  wire [9:0]\core_control_regs[5] ;
  wire [10:0]\core_control_regs[6] ;
  wire [10:0]\core_control_regs[7] ;
  wire [10:0]\core_control_regs[8] ;
  wire [16:0]\core_control_regs[9] ;
  wire [29:0]da;
  wire del_B_n_0;
  wire del_B_n_1;
  wire del_B_n_10;
  wire del_B_n_11;
  wire del_B_n_12;
  wire del_B_n_2;
  wire del_B_n_3;
  wire del_B_n_4;
  wire del_B_n_5;
  wire del_B_n_6;
  wire del_B_n_7;
  wire del_B_n_8;
  wire del_B_n_9;
  wire del_R_n_0;
  wire del_R_n_1;
  wire del_R_n_10;
  wire del_R_n_11;
  wire del_R_n_12;
  wire del_R_n_2;
  wire del_R_n_3;
  wire del_R_n_4;
  wire del_R_n_5;
  wire del_R_n_6;
  wire del_R_n_7;
  wire del_R_n_8;
  wire del_R_n_9;
  wire del_Y_n_0;
  wire del_Y_n_1;
  wire del_Y_n_10;
  wire del_Y_n_11;
  wire del_Y_n_12;
  wire del_Y_n_13;
  wire del_Y_n_14;
  wire del_Y_n_15;
  wire del_Y_n_16;
  wire del_Y_n_17;
  wire del_Y_n_18;
  wire del_Y_n_19;
  wire del_Y_n_2;
  wire del_Y_n_20;
  wire del_Y_n_21;
  wire del_Y_n_22;
  wire del_Y_n_23;
  wire del_Y_n_3;
  wire del_Y_n_4;
  wire del_Y_n_5;
  wire del_Y_n_6;
  wire del_Y_n_7;
  wire del_Y_n_8;
  wire del_Y_n_9;
  wire resetn_out;
  wire [10:0]rg;
  wire [27:0]rgm;
  wire [12:0]ry;
  wire [0:0]\use_fabric.adder/p_0_in ;
  wire \v4_mac23.mac_cBY_n_10 ;
  wire \v4_mac23.mac_cBY_n_11 ;
  wire \v4_mac23.mac_cBY_n_12 ;
  wire \v4_mac23.mac_cBY_n_13 ;
  wire \v4_mac23.mac_cBY_n_2 ;
  wire \v4_mac23.mac_cBY_n_3 ;
  wire \v4_mac23.mac_cBY_n_4 ;
  wire \v4_mac23.mac_cBY_n_5 ;
  wire \v4_mac23.mac_cBY_n_6 ;
  wire \v4_mac23.mac_cBY_n_7 ;
  wire \v4_mac23.mac_cBY_n_8 ;
  wire \v4_mac23.mac_cBY_n_9 ;
  wire \v4_mac23.mac_cRY_n_10 ;
  wire \v4_mac23.mac_cRY_n_11 ;
  wire \v4_mac23.mac_cRY_n_12 ;
  wire \v4_mac23.mac_cRY_n_13 ;
  wire \v4_mac23.mac_cRY_n_2 ;
  wire \v4_mac23.mac_cRY_n_3 ;
  wire \v4_mac23.mac_cRY_n_4 ;
  wire \v4_mac23.mac_cRY_n_5 ;
  wire \v4_mac23.mac_cRY_n_6 ;
  wire \v4_mac23.mac_cRY_n_7 ;
  wire \v4_mac23.mac_cRY_n_8 ;
  wire \v4_mac23.mac_cRY_n_9 ;
  wire [10:0]y_int;
  wire [11:0]y_int_round;
  wire [26:16]y_inta_raw;
  wire [9:0]y_intb;
  wire [27:0]\NLW_v4_mac1.mult_aCr_p_UNCONNECTED ;
  wire [13:12]\NLW_v4_mac23.mac_cBY_p_UNCONNECTED ;
  wire [13:12]\NLW_v4_mac23.mac_cRY_p_UNCONNECTED ;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized0 add_aRG_bBG_G
       (.DI(add_aRG_bBG_G_n_15),
        .E(E),
        .S(add_aRG_bBG_G_n_0),
        .a(y_inta_raw),
        .aclk(aclk),
        .\core_control_regs[6] (\core_control_regs[6] [10]),
        .\needs_delay.shift_register_reg[1][0] (add_aRG_bBG_G_n_12),
        .\needs_delay.shift_register_reg[1][11] ({add_aRG_bBG_G_n_13,add_aRG_bBG_G_n_14}),
        .\needs_delay.shift_register_reg[1][11]_0 ({add_aRG_bBG_G_n_16,add_aRG_bBG_G_n_17}),
        .s(y_int),
        .sclr(SR),
        .y_intb(y_intb));
  design_1_v_rgb2ycrcb_0_0_min_sat \clamp.min_Cb 
       (.DI({\clip.max_Cb_n_17 ,\clip.max_Cb_n_18 ,\clip.max_Cb_n_19 ,\clip.max_Cb_n_20 ,\clip.max_Cb_n_21 }),
        .E(E),
        .Q({\clip.max_Cb_n_6 ,\clip.max_Cb_n_7 ,\clip.max_Cb_n_8 ,\clip.max_Cb_n_9 ,\clip.max_Cb_n_10 ,\clip.max_Cb_n_11 ,\clip.max_Cb_n_12 ,\clip.max_Cb_n_13 ,\clip.max_Cb_n_14 ,\clip.max_Cb_n_15 ,\clip.max_Cb_n_16 }),
        .S({\clip.max_Cb_n_0 ,\clip.max_Cb_n_1 ,\clip.max_Cb_n_2 ,\clip.max_Cb_n_3 ,\clip.max_Cb_n_4 ,\clip.max_Cb_n_5 }),
        .aclk(aclk),
        .\core_control_regs[3] (\core_control_regs[3] ),
        .da(da[19:10]),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_min_sat_0 \clamp.min_Cr 
       (.DI({\clip.max_Cr_n_17 ,\clip.max_Cr_n_18 ,\clip.max_Cr_n_19 ,\clip.max_Cr_n_20 ,\clip.max_Cr_n_21 }),
        .E(E),
        .Q({\clip.max_Cr_n_6 ,\clip.max_Cr_n_7 ,\clip.max_Cr_n_8 ,\clip.max_Cr_n_9 ,\clip.max_Cr_n_10 ,\clip.max_Cr_n_11 ,\clip.max_Cr_n_12 ,\clip.max_Cr_n_13 ,\clip.max_Cr_n_14 ,\clip.max_Cr_n_15 ,\clip.max_Cr_n_16 }),
        .S({\clip.max_Cr_n_0 ,\clip.max_Cr_n_1 ,\clip.max_Cr_n_2 ,\clip.max_Cr_n_3 ,\clip.max_Cr_n_4 ,\clip.max_Cr_n_5 }),
        .aclk(aclk),
        .\core_control_regs[5] (\core_control_regs[5] ),
        .da(da[29:20]),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_min_sat_1 \clamp.min_Y 
       (.DI({\clip.max_Y_n_17 ,\clip.max_Y_n_18 ,\clip.max_Y_n_19 ,\clip.max_Y_n_20 ,\clip.max_Y_n_21 }),
        .E(E),
        .Q({\clip.max_Y_n_6 ,\clip.max_Y_n_7 ,\clip.max_Y_n_8 ,\clip.max_Y_n_9 ,\clip.max_Y_n_10 ,\clip.max_Y_n_11 ,\clip.max_Y_n_12 ,\clip.max_Y_n_13 ,\clip.max_Y_n_14 ,\clip.max_Y_n_15 ,\clip.max_Y_n_16 }),
        .S({\clip.max_Y_n_0 ,\clip.max_Y_n_1 ,\clip.max_Y_n_2 ,\clip.max_Y_n_3 ,\clip.max_Y_n_4 ,\clip.max_Y_n_5 }),
        .aclk(aclk),
        .\core_control_regs[1] (\core_control_regs[1] ),
        .da(da[9:0]),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_max_sat \clip.max_Cb 
       (.DI({\clip.max_Cb_n_17 ,\clip.max_Cb_n_18 ,\clip.max_Cb_n_19 ,\clip.max_Cb_n_20 ,\clip.max_Cb_n_21 }),
        .E(E),
        .Q({\clip.max_Cb_n_6 ,\clip.max_Cb_n_7 ,\clip.max_Cb_n_8 ,\clip.max_Cb_n_9 ,\clip.max_Cb_n_10 ,\clip.max_Cb_n_11 ,\clip.max_Cb_n_12 ,\clip.max_Cb_n_13 ,\clip.max_Cb_n_14 ,\clip.max_Cb_n_15 ,\clip.max_Cb_n_16 }),
        .S({\clip.max_Cb_n_0 ,\clip.max_Cb_n_1 ,\clip.max_Cb_n_2 ,\clip.max_Cb_n_3 ,\clip.max_Cb_n_4 ,\clip.max_Cb_n_5 }),
        .aclk(aclk),
        .\core_control_regs[2] (\core_control_regs[2] ),
        .\core_control_regs[3] (\core_control_regs[3] ),
        .p({\v4_mac23.mac_cBY_n_2 ,\v4_mac23.mac_cBY_n_3 ,\v4_mac23.mac_cBY_n_4 ,\v4_mac23.mac_cBY_n_5 ,\v4_mac23.mac_cBY_n_6 ,\v4_mac23.mac_cBY_n_7 ,\v4_mac23.mac_cBY_n_8 ,\v4_mac23.mac_cBY_n_9 ,\v4_mac23.mac_cBY_n_10 ,\v4_mac23.mac_cBY_n_11 ,\v4_mac23.mac_cBY_n_12 ,\v4_mac23.mac_cBY_n_13 }),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_max_sat_2 \clip.max_Cr 
       (.DI({\clip.max_Cr_n_17 ,\clip.max_Cr_n_18 ,\clip.max_Cr_n_19 ,\clip.max_Cr_n_20 ,\clip.max_Cr_n_21 }),
        .E(E),
        .Q({\clip.max_Cr_n_6 ,\clip.max_Cr_n_7 ,\clip.max_Cr_n_8 ,\clip.max_Cr_n_9 ,\clip.max_Cr_n_10 ,\clip.max_Cr_n_11 ,\clip.max_Cr_n_12 ,\clip.max_Cr_n_13 ,\clip.max_Cr_n_14 ,\clip.max_Cr_n_15 ,\clip.max_Cr_n_16 }),
        .S({\clip.max_Cr_n_0 ,\clip.max_Cr_n_1 ,\clip.max_Cr_n_2 ,\clip.max_Cr_n_3 ,\clip.max_Cr_n_4 ,\clip.max_Cr_n_5 }),
        .aclk(aclk),
        .\core_control_regs[4] (\core_control_regs[4] ),
        .\core_control_regs[5] (\core_control_regs[5] ),
        .p({\v4_mac23.mac_cRY_n_2 ,\v4_mac23.mac_cRY_n_3 ,\v4_mac23.mac_cRY_n_4 ,\v4_mac23.mac_cRY_n_5 ,\v4_mac23.mac_cRY_n_6 ,\v4_mac23.mac_cRY_n_7 ,\v4_mac23.mac_cRY_n_8 ,\v4_mac23.mac_cRY_n_9 ,\v4_mac23.mac_cRY_n_10 ,\v4_mac23.mac_cRY_n_11 ,\v4_mac23.mac_cRY_n_12 ,\v4_mac23.mac_cRY_n_13 }),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_max_sat_3 \clip.max_Y 
       (.DI({del_Y_n_12,del_Y_n_13,del_Y_n_14,del_Y_n_15,del_Y_n_16,del_Y_n_17}),
        .E(E),
        .Q({\clip.max_Y_n_6 ,\clip.max_Y_n_7 ,\clip.max_Y_n_8 ,\clip.max_Y_n_9 ,\clip.max_Y_n_10 ,\clip.max_Y_n_11 ,\clip.max_Y_n_12 ,\clip.max_Y_n_13 ,\clip.max_Y_n_14 ,\clip.max_Y_n_15 ,\clip.max_Y_n_16 }),
        .S({del_Y_n_18,del_Y_n_19,del_Y_n_20,del_Y_n_21,del_Y_n_22,del_Y_n_23}),
        .aclk(aclk),
        .\core_control_regs[0] (\core_control_regs[0] ),
        .\core_control_regs[1] (\core_control_regs[1] ),
        .\needs_delay.shift_register_reg[1][0] (del_Y_n_11),
        .\needs_delay.shift_register_reg[1][10] ({\clip.max_Y_n_0 ,\clip.max_Y_n_1 ,\clip.max_Y_n_2 ,\clip.max_Y_n_3 ,\clip.max_Y_n_4 ,\clip.max_Y_n_5 }),
        .\needs_delay.shift_register_reg[1][10]_0 (del_Y_n_1),
        .\needs_delay.shift_register_reg[1][11] (del_Y_n_0),
        .\needs_delay.shift_register_reg[1][1] (del_Y_n_10),
        .\needs_delay.shift_register_reg[1][2] (del_Y_n_9),
        .\needs_delay.shift_register_reg[1][3] (del_Y_n_8),
        .\needs_delay.shift_register_reg[1][4] (del_Y_n_7),
        .\needs_delay.shift_register_reg[1][5] (del_Y_n_6),
        .\needs_delay.shift_register_reg[1][6] (del_Y_n_5),
        .\needs_delay.shift_register_reg[1][7] (del_Y_n_4),
        .\needs_delay.shift_register_reg[1][8] ({\clip.max_Y_n_17 ,\clip.max_Y_n_18 ,\clip.max_Y_n_19 ,\clip.max_Y_n_20 ,\clip.max_Y_n_21 }),
        .\needs_delay.shift_register_reg[1][8]_0 (del_Y_n_3),
        .\needs_delay.shift_register_reg[1][9] (del_Y_n_2),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_delay__parameterized0 del_B
       (.D({del_B_n_0,del_B_n_1,del_B_n_2,del_B_n_3,del_B_n_4,del_B_n_5,del_B_n_6,del_B_n_7,del_B_n_8,del_B_n_9,del_B_n_10,del_B_n_11,del_B_n_12}),
        .E(E),
        .Q(Q[19:10]),
        .aclk(aclk),
        .\needs_delay.shift_register_reg[1][12] ({add_aRG_bBG_G_n_16,add_aRG_bBG_G_n_17}),
        .\needs_delay.shift_register_reg[1][7] (add_aRG_bBG_G_n_12),
        .s(y_int[9:1]));
  design_1_v_rgb2ycrcb_0_0_delay del_G
       (.E(E),
        .Q(Q[9:0]),
        .aclk(aclk),
        .y_intb(y_intb));
  design_1_v_rgb2ycrcb_0_0_delay__parameterized0_4 del_R
       (.E(E),
        .Q(Q[29:20]),
        .aclk(aclk),
        .minusOp({del_R_n_0,del_R_n_1,del_R_n_2,del_R_n_3,del_R_n_4,del_R_n_5,del_R_n_6,del_R_n_7,del_R_n_8,del_R_n_9,del_R_n_10,del_R_n_11,del_R_n_12}),
        .\needs_delay.shift_register_reg[1][12] ({add_aRG_bBG_G_n_13,add_aRG_bBG_G_n_14}),
        .\needs_delay.shift_register_reg[1][7] (add_aRG_bBG_G_n_12),
        .s(y_int[9:1]));
  design_1_v_rgb2ycrcb_0_0_delay__parameterized1 del_Y
       (.DI({del_Y_n_12,del_Y_n_13,del_Y_n_14,del_Y_n_15,del_Y_n_16,del_Y_n_17}),
        .E(E),
        .S({del_Y_n_18,del_Y_n_19,del_Y_n_20,del_Y_n_21,del_Y_n_22,del_Y_n_23}),
        .aclk(aclk),
        .\core_control_regs[0] (\core_control_regs[0] ),
        .\needs_delay.shift_register_reg[3][0]_0 (del_Y_n_11),
        .\needs_delay.shift_register_reg[3][10]_0 (del_Y_n_1),
        .\needs_delay.shift_register_reg[3][11]_0 (del_Y_n_0),
        .\needs_delay.shift_register_reg[3][1]_0 (del_Y_n_10),
        .\needs_delay.shift_register_reg[3][2]_0 (del_Y_n_9),
        .\needs_delay.shift_register_reg[3][3]_0 (del_Y_n_8),
        .\needs_delay.shift_register_reg[3][4]_0 (del_Y_n_7),
        .\needs_delay.shift_register_reg[3][5]_0 (del_Y_n_6),
        .\needs_delay.shift_register_reg[3][6]_0 (del_Y_n_5),
        .\needs_delay.shift_register_reg[3][7]_0 (del_Y_n_4),
        .\needs_delay.shift_register_reg[3][8]_0 (del_Y_n_3),
        .\needs_delay.shift_register_reg[3][9]_0 (del_Y_n_2),
        .s(y_int_round));
  design_1_v_rgb2ycrcb_0_0_mult mult_aRG
       (.E(E),
        .P(rgm),
        .aclk(aclk),
        .\core_control_regs[9] (\core_control_regs[9] ),
        .s(rg),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr sub_BG
       (.E(E),
        .Q(Q[19:1]),
        .aclk(aclk),
        .p_0_in(\use_fabric.adder/p_0_in ),
        .s(bg),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1 sub_BY
       (.D({del_B_n_0,del_B_n_1,del_B_n_2,del_B_n_3,del_B_n_4,del_B_n_5,del_B_n_6,del_B_n_7,del_B_n_8,del_B_n_9,del_B_n_10,del_B_n_11,del_B_n_12}),
        .E(E),
        .aclk(aclk),
        .out(by),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr_5 sub_RG
       (.E(E),
        .Q({Q[29:20],Q[9:0]}),
        .aclk(aclk),
        .p_0_in(\use_fabric.adder/p_0_in ),
        .s(rg),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized1_6 sub_RY
       (.D({del_R_n_0,del_R_n_1,del_R_n_2,del_R_n_3,del_R_n_4,del_R_n_5,del_R_n_6,del_R_n_7,del_R_n_8,del_R_n_9,del_R_n_10,del_R_n_11,del_R_n_12}),
        .E(E),
        .aclk(aclk),
        .out(ry),
        .resetn_out(resetn_out),
        .sclr(SR));
  (* CREG = "0" *) 
  (* HAS_C = "1" *) 
  (* IWIDTHA = "11" *) 
  (* IWIDTHB = "17" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* OWIDTH = "28" *) 
  (* ROUND_MODE = "0" *) 
  (* USE_DSP = "yes" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* mult_style = "pipe_block" *) 
  (* register_balancing = "yes" *) 
  design_1_v_rgb2ycrcb_0_0_mac \v4_mac1.mult_aCr 
       (.a(bg),
        .b(\core_control_regs[10] ),
        .c(rgm),
        .ce(E),
        .clk(aclk),
        .p({\NLW_v4_mac1.mult_aCr_p_UNCONNECTED [27],y_inta_raw,\NLW_v4_mac1.mult_aCr_p_UNCONNECTED [15:0]}),
        .sclr(SR));
  (* CREG = "0" *) 
  (* HAS_C = "1" *) 
  (* IWIDTHA = "13" *) 
  (* IWIDTHB = "17" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* OWIDTH = "14" *) 
  (* ROUND_MODE = "0" *) 
  (* USE_DSP = "yes" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* mult_style = "pipe_block" *) 
  (* register_balancing = "yes" *) 
  design_1_v_rgb2ycrcb_0_0_mac__parameterized0__1 \v4_mac23.mac_cBY 
       (.a(by),
        .b(\core_control_regs[12] ),
        .c({\core_control_regs[7] [10],\core_control_regs[7] [10],\core_control_regs[7] [10],\core_control_regs[7] }),
        .ce(E),
        .clk(aclk),
        .p({\NLW_v4_mac23.mac_cBY_p_UNCONNECTED [13:12],\v4_mac23.mac_cBY_n_2 ,\v4_mac23.mac_cBY_n_3 ,\v4_mac23.mac_cBY_n_4 ,\v4_mac23.mac_cBY_n_5 ,\v4_mac23.mac_cBY_n_6 ,\v4_mac23.mac_cBY_n_7 ,\v4_mac23.mac_cBY_n_8 ,\v4_mac23.mac_cBY_n_9 ,\v4_mac23.mac_cBY_n_10 ,\v4_mac23.mac_cBY_n_11 ,\v4_mac23.mac_cBY_n_12 ,\v4_mac23.mac_cBY_n_13 }),
        .sclr(SR));
  (* CREG = "0" *) 
  (* HAS_C = "1" *) 
  (* IWIDTHA = "13" *) 
  (* IWIDTHB = "17" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* OWIDTH = "14" *) 
  (* ROUND_MODE = "0" *) 
  (* USE_DSP = "yes" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* mult_style = "pipe_block" *) 
  (* register_balancing = "yes" *) 
  design_1_v_rgb2ycrcb_0_0_mac__parameterized0 \v4_mac23.mac_cRY 
       (.a(ry),
        .b(\core_control_regs[11] ),
        .c({\core_control_regs[8] [10],\core_control_regs[8] [10],\core_control_regs[8] [10],\core_control_regs[8] }),
        .ce(E),
        .clk(aclk),
        .p({\NLW_v4_mac23.mac_cRY_p_UNCONNECTED [13:12],\v4_mac23.mac_cRY_n_2 ,\v4_mac23.mac_cRY_n_3 ,\v4_mac23.mac_cRY_n_4 ,\v4_mac23.mac_cRY_n_5 ,\v4_mac23.mac_cRY_n_6 ,\v4_mac23.mac_cRY_n_7 ,\v4_mac23.mac_cRY_n_8 ,\v4_mac23.mac_cRY_n_9 ,\v4_mac23.mac_cRY_n_10 ,\v4_mac23.mac_cRY_n_11 ,\v4_mac23.mac_cRY_n_12 ,\v4_mac23.mac_cRY_n_13 }),
        .sclr(SR));
  design_1_v_rgb2ycrcb_0_0_round \y_needs_round.round_Y 
       (.DI(add_aRG_bBG_G_n_15),
        .E(E),
        .S(add_aRG_bBG_G_n_0),
        .aclk(aclk),
        .\core_control_regs[6] (\core_control_regs[6] ),
        .\needs_delay.shift_register_reg[1][12] (y_int),
        .s(y_int_round),
        .sclr(SR));
endmodule

(* ORIG_REF_NAME = "rgb2ycrcb_top" *) 
module design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top
   (E,
    s_axis_tready_int_reg,
    intc_if,
    O13,
    reg_update,
    m_axis_video_tvalid,
    \core_control_regs[10] ,
    aclk,
    \core_control_regs[12] ,
    \core_control_regs[7] ,
    \core_control_regs[11] ,
    \core_control_regs[8] ,
    \core_control_regs[9] ,
    aclken,
    \genr_control_regs[0] ,
    m_axis_video_tready,
    resetn_out,
    \core_control_regs[6] ,
    \time_control_regs[0] ,
    \core_control_regs[0] ,
    \core_control_regs[1] ,
    \core_control_regs[2] ,
    \core_control_regs[3] ,
    \core_control_regs[4] ,
    \core_control_regs[5] ,
    da,
    core_d_out,
    s_axis_video_tvalid);
  output [0:0]E;
  output s_axis_tready_int_reg;
  output [7:0]intc_if;
  output [31:0]O13;
  output reg_update;
  output m_axis_video_tvalid;
  input [16:0]\core_control_regs[10] ;
  input aclk;
  input [16:0]\core_control_regs[12] ;
  input [10:0]\core_control_regs[7] ;
  input [16:0]\core_control_regs[11] ;
  input [10:0]\core_control_regs[8] ;
  input [16:0]\core_control_regs[9] ;
  input aclken;
  input [2:0]\genr_control_regs[0] ;
  input m_axis_video_tready;
  input resetn_out;
  input [10:0]\core_control_regs[6] ;
  input [25:0]\time_control_regs[0] ;
  input [9:0]\core_control_regs[0] ;
  input [9:0]\core_control_regs[1] ;
  input [9:0]\core_control_regs[2] ;
  input [9:0]\core_control_regs[3] ;
  input [9:0]\core_control_regs[4] ;
  input [9:0]\core_control_regs[5] ;
  input [31:0]da;
  input core_d_out;
  input s_axis_video_tvalid;

  wire [0:0]E;
  wire [31:0]O13;
  wire \UOSD_AXIS_SYNC_FIFO/wen ;
  wire aclk;
  wire aclken;
  wire axi_control_n_15;
  wire axi_in_fifo_n_1;
  wire axi_in_fifo_n_10;
  wire axi_in_fifo_n_11;
  wire axi_in_fifo_n_12;
  wire axi_in_fifo_n_13;
  wire axi_in_fifo_n_14;
  wire axi_in_fifo_n_15;
  wire axi_in_fifo_n_16;
  wire axi_in_fifo_n_17;
  wire axi_in_fifo_n_18;
  wire axi_in_fifo_n_19;
  wire axi_in_fifo_n_2;
  wire axi_in_fifo_n_20;
  wire axi_in_fifo_n_21;
  wire axi_in_fifo_n_22;
  wire axi_in_fifo_n_23;
  wire axi_in_fifo_n_24;
  wire axi_in_fifo_n_25;
  wire axi_in_fifo_n_26;
  wire axi_in_fifo_n_27;
  wire axi_in_fifo_n_28;
  wire axi_in_fifo_n_29;
  wire axi_in_fifo_n_3;
  wire axi_in_fifo_n_30;
  wire axi_in_fifo_n_31;
  wire axi_in_fifo_n_32;
  wire axi_in_fifo_n_33;
  wire axi_in_fifo_n_34;
  wire axi_in_fifo_n_35;
  wire axi_in_fifo_n_6;
  wire axi_in_fifo_n_7;
  wire axi_in_fifo_n_8;
  wire axi_in_fifo_n_9;
  wire axi_out_fifo_n_0;
  wire axi_out_fifo_n_1;
  wire [9:0]\core_control_regs[0] ;
  wire [16:0]\core_control_regs[10] ;
  wire [16:0]\core_control_regs[11] ;
  wire [16:0]\core_control_regs[12] ;
  wire [9:0]\core_control_regs[1] ;
  wire [9:0]\core_control_regs[2] ;
  wire [9:0]\core_control_regs[3] ;
  wire [9:0]\core_control_regs[4] ;
  wire [9:0]\core_control_regs[5] ;
  wire [10:0]\core_control_regs[6] ;
  wire [10:0]\core_control_regs[7] ;
  wire [10:0]\core_control_regs[8] ;
  wire [16:0]\core_control_regs[9] ;
  wire core_d_out;
  wire [31:0]da;
  wire fifo_wr_i;
  wire [2:0]\genr_control_regs[0] ;
  wire in_fifo_reset;
  wire [7:0]intc_if;
  wire intcore_n_1;
  wire intcore_n_10;
  wire intcore_n_11;
  wire intcore_n_12;
  wire intcore_n_13;
  wire intcore_n_14;
  wire intcore_n_15;
  wire intcore_n_16;
  wire intcore_n_17;
  wire intcore_n_18;
  wire intcore_n_19;
  wire intcore_n_2;
  wire intcore_n_20;
  wire intcore_n_21;
  wire intcore_n_22;
  wire intcore_n_23;
  wire intcore_n_24;
  wire intcore_n_25;
  wire intcore_n_26;
  wire intcore_n_27;
  wire intcore_n_28;
  wire intcore_n_29;
  wire intcore_n_3;
  wire intcore_n_30;
  wire intcore_n_4;
  wire intcore_n_5;
  wire intcore_n_6;
  wire intcore_n_7;
  wire intcore_n_8;
  wire intcore_n_9;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire master_en;
  wire out_fifo_eol;
  wire out_fifo_sof;
  wire reg_update;
  wire resetn_out;
  wire s_axis_tready_int_reg;
  wire s_axis_video_tvalid;
  wire sclr;
  wire [25:0]\time_control_regs[0] ;
  wire [29:0]vid_data_in_r;
  wire vid_eol_in;
  wire vid_sof_in;

  design_1_v_rgb2ycrcb_0_0_axi4s_control axi_control
       (.E(E),
        .\GenerateDoutWriteFirstB.t_qb_reg[29] (axi_out_fifo_n_0),
        .SR(sclr),
        .aclk(aclk),
        .aclken(aclken),
        .\col_cnt_reg[0]_0 (axi_in_fifo_n_2),
        .\col_cnt_reg[0]_1 (axi_out_fifo_n_1),
        .core_d_out(core_d_out),
        .da({out_fifo_sof,out_fifo_eol}),
        .eof_i_reg_0(axi_in_fifo_n_1),
        .eol_late_i_reg_0(axi_in_fifo_n_3),
        .fifo_rd_i_reg_0(axi_control_n_15),
        .fifo_wr_i(fifo_wr_i),
        .\genr_control_regs[0] ({\genr_control_regs[0] [2],\genr_control_regs[0] [0]}),
        .in_fifo_reset(in_fifo_reset),
        .intc_if(intc_if),
        .master_en(master_en),
        .resetn_out(resetn_out),
        .t_qb({vid_sof_in,vid_eol_in}),
        .\time_control_regs[0] (\time_control_regs[0] ),
        .wen(\UOSD_AXIS_SYNC_FIFO/wen ));
  design_1_v_rgb2ycrcb_0_0_axis_input_buffer axi_in_fifo
       (.\GenerateDoutWriteFirstB.t_qb_reg[30] (axi_in_fifo_n_3),
        .Q({vid_sof_in,vid_eol_in,axi_in_fifo_n_6,axi_in_fifo_n_7,axi_in_fifo_n_8,axi_in_fifo_n_9,axi_in_fifo_n_10,axi_in_fifo_n_11,axi_in_fifo_n_12,axi_in_fifo_n_13,axi_in_fifo_n_14,axi_in_fifo_n_15,axi_in_fifo_n_16,axi_in_fifo_n_17,axi_in_fifo_n_18,axi_in_fifo_n_19,axi_in_fifo_n_20,axi_in_fifo_n_21,axi_in_fifo_n_22,axi_in_fifo_n_23,axi_in_fifo_n_24,axi_in_fifo_n_25,axi_in_fifo_n_26,axi_in_fifo_n_27,axi_in_fifo_n_28,axi_in_fifo_n_29,axi_in_fifo_n_30,axi_in_fifo_n_31,axi_in_fifo_n_32,axi_in_fifo_n_33,axi_in_fifo_n_34,axi_in_fifo_n_35}),
        .SR(sclr),
        .aclk(aclk),
        .aclken(aclken),
        .aclken_0(axi_in_fifo_n_1),
        .da(da),
        .depth_match_reg(axi_control_n_15),
        .empty_match_reg(axi_in_fifo_n_2),
        .\genr_control_regs[0] (\genr_control_regs[0] [1:0]),
        .in_fifo_reset(in_fifo_reset),
        .master_en(master_en),
        .reg_update(reg_update),
        .resetn_out(resetn_out),
        .s_axis_tready_int_reg_0(s_axis_tready_int_reg),
        .s_axis_video_tvalid(s_axis_video_tvalid));
  design_1_v_rgb2ycrcb_0_0_axis_output_buffer axi_out_fifo
       (.O13(O13),
        .SR(sclr),
        .aclk(aclk),
        .aclken(aclken),
        .core_d_out(core_d_out),
        .da({out_fifo_sof,out_fifo_eol,intcore_n_1,intcore_n_2,intcore_n_3,intcore_n_4,intcore_n_5,intcore_n_6,intcore_n_7,intcore_n_8,intcore_n_9,intcore_n_10,intcore_n_11,intcore_n_12,intcore_n_13,intcore_n_14,intcore_n_15,intcore_n_16,intcore_n_17,intcore_n_18,intcore_n_19,intcore_n_20,intcore_n_21,intcore_n_22,intcore_n_23,intcore_n_24,intcore_n_25,intcore_n_26,intcore_n_27,intcore_n_28,intcore_n_29,intcore_n_30}),
        .fifo_wr_i(fifo_wr_i),
        .full_int_reg(axi_out_fifo_n_0),
        .\genr_control_regs[0] (\genr_control_regs[0] [0]),
        .intc_if(intc_if[5]),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .\read_ptr_int_reg[2] (axi_in_fifo_n_1),
        .wen(\UOSD_AXIS_SYNC_FIFO/wen ),
        .\write_ptr_int_reg[3] (axi_out_fifo_n_1));
  design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_core intcore
       (.E(E),
        .Q(vid_data_in_r),
        .SR(sclr),
        .aclk(aclk),
        .\core_control_regs[0] (\core_control_regs[0] ),
        .\core_control_regs[10] (\core_control_regs[10] ),
        .\core_control_regs[11] (\core_control_regs[11] ),
        .\core_control_regs[12] (\core_control_regs[12] ),
        .\core_control_regs[1] (\core_control_regs[1] ),
        .\core_control_regs[2] (\core_control_regs[2] ),
        .\core_control_regs[3] (\core_control_regs[3] ),
        .\core_control_regs[4] (\core_control_regs[4] ),
        .\core_control_regs[5] (\core_control_regs[5] ),
        .\core_control_regs[6] (\core_control_regs[6] ),
        .\core_control_regs[7] (\core_control_regs[7] ),
        .\core_control_regs[8] (\core_control_regs[8] ),
        .\core_control_regs[9] (\core_control_regs[9] ),
        .da({intcore_n_1,intcore_n_2,intcore_n_3,intcore_n_4,intcore_n_5,intcore_n_6,intcore_n_7,intcore_n_8,intcore_n_9,intcore_n_10,intcore_n_11,intcore_n_12,intcore_n_13,intcore_n_14,intcore_n_15,intcore_n_16,intcore_n_17,intcore_n_18,intcore_n_19,intcore_n_20,intcore_n_21,intcore_n_22,intcore_n_23,intcore_n_24,intcore_n_25,intcore_n_26,intcore_n_27,intcore_n_28,intcore_n_29,intcore_n_30}),
        .resetn_out(resetn_out));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_35),
        .Q(vid_data_in_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_25),
        .Q(vid_data_in_r[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_24),
        .Q(vid_data_in_r[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_23),
        .Q(vid_data_in_r[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_22),
        .Q(vid_data_in_r[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_21),
        .Q(vid_data_in_r[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_20),
        .Q(vid_data_in_r[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_19),
        .Q(vid_data_in_r[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_18),
        .Q(vid_data_in_r[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_17),
        .Q(vid_data_in_r[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_16),
        .Q(vid_data_in_r[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_34),
        .Q(vid_data_in_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_15),
        .Q(vid_data_in_r[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_14),
        .Q(vid_data_in_r[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_13),
        .Q(vid_data_in_r[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_12),
        .Q(vid_data_in_r[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_11),
        .Q(vid_data_in_r[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_10),
        .Q(vid_data_in_r[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_9),
        .Q(vid_data_in_r[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_8),
        .Q(vid_data_in_r[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_7),
        .Q(vid_data_in_r[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_6),
        .Q(vid_data_in_r[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_33),
        .Q(vid_data_in_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_32),
        .Q(vid_data_in_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_31),
        .Q(vid_data_in_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_30),
        .Q(vid_data_in_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_29),
        .Q(vid_data_in_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_28),
        .Q(vid_data_in_r[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_27),
        .Q(vid_data_in_r[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vid_data_in_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(axi_in_fifo_n_26),
        .Q(vid_data_in_r[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "round" *) 
module design_1_v_rgb2ycrcb_0_0_round
   (s,
    \core_control_regs[6] ,
    \needs_delay.shift_register_reg[1][12] ,
    DI,
    S,
    sclr,
    E,
    aclk);
  output [11:0]s;
  input [10:0]\core_control_regs[6] ;
  input [10:0]\needs_delay.shift_register_reg[1][12] ;
  input [0:0]DI;
  input [0:0]S;
  input sclr;
  input [0:0]E;
  input aclk;

  wire [0:0]DI;
  wire [0:0]E;
  wire [0:0]S;
  wire aclk;
  wire [10:0]\core_control_regs[6] ;
  wire [10:0]\needs_delay.shift_register_reg[1][12] ;
  wire [11:0]s;
  wire sclr;

  design_1_v_rgb2ycrcb_0_0_radd_sub_sclr__parameterized2 adder
       (.DI(DI),
        .E(E),
        .S(S),
        .aclk(aclk),
        .\core_control_regs[6] (\core_control_regs[6] ),
        .\needs_delay.shift_register_reg[1][12] (\needs_delay.shift_register_reg[1][12] ),
        .s(s),
        .sclr(sclr));
endmodule

(* ORIG_REF_NAME = "synch_fifo" *) 
module design_1_v_rgb2ycrcb_0_0_synch_fifo
   (\word_count_reg[4]_0 ,
    aclken_0,
    empty_match_reg_0,
    \GenerateDoutWriteFirstB.t_qb_reg[30] ,
    Q,
    reg_update,
    SR,
    aclk,
    depth_match_reg_0,
    resetn_out,
    s_axis_video_tvalid,
    \write_ptr_reg[0]_0 ,
    aclken,
    \genr_control_regs[0] ,
    in_fifo_reset,
    da);
  output \word_count_reg[4]_0 ;
  output aclken_0;
  output empty_match_reg_0;
  output \GenerateDoutWriteFirstB.t_qb_reg[30] ;
  output [31:0]Q;
  output reg_update;
  input [0:0]SR;
  input aclk;
  input depth_match_reg_0;
  input resetn_out;
  input s_axis_video_tvalid;
  input \write_ptr_reg[0]_0 ;
  input aclken;
  input [1:0]\genr_control_regs[0] ;
  input in_fifo_reset;
  input [31:0]da;

  wire \GenerateDoutWriteFirstB.t_qb_reg[30] ;
  wire [31:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire aclken_0;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire [31:0]da;
  wire depth_match_i_1_n_0;
  wire depth_match_i_2_n_0;
  wire depth_match_reg_0;
  wire depth_match_reg_n_0;
  wire empty_match_i_1_n_0;
  wire empty_match_i_2_n_0;
  wire empty_match_i_3_n_0;
  wire empty_match_reg_0;
  wire [1:0]\genr_control_regs[0] ;
  wire in_fifo_reset;
  wire mem1_n_4;
  wire p_0_in;
  wire [3:0]plusOp__0;
  wire [3:0]read_ptr_reg;
  wire reg_update;
  wire resetn_out;
  wire s_axis_video_tvalid;
  wire vid_empty;
  wire \word_count[0]_i_1_n_0 ;
  wire \word_count[1]_i_1_n_0 ;
  wire \word_count[2]_i_1_n_0 ;
  wire \word_count[3]_i_1_n_0 ;
  wire \word_count[4]_i_1_n_0 ;
  wire \word_count[4]_i_2_n_0 ;
  wire \word_count[4]_i_3_n_0 ;
  wire \word_count_reg[4]_0 ;
  wire \word_count_reg_n_0_[0] ;
  wire \word_count_reg_n_0_[1] ;
  wire \word_count_reg_n_0_[2] ;
  wire \word_count_reg_n_0_[3] ;
  wire \word_count_reg_n_0_[4] ;
  wire \write_ptr_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \col_cnt[12]_i_6 
       (.I0(vid_empty),
        .I1(depth_match_reg_0),
        .I2(\word_count_reg_n_0_[2] ),
        .I3(\word_count_reg_n_0_[3] ),
        .I4(\word_count_reg_n_0_[1] ),
        .I5(\word_count_reg_n_0_[4] ),
        .O(empty_match_reg_0));
  LUT6 #(
    .INIT(64'hFFAF010000000000)) 
    depth_match_i_1
       (.I0(depth_match_i_2_n_0),
        .I1(empty_match_i_2_n_0),
        .I2(\word_count_reg_n_0_[0] ),
        .I3(depth_match_reg_0),
        .I4(depth_match_reg_n_0),
        .I5(resetn_out),
        .O(depth_match_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    depth_match_i_2
       (.I0(\word_count_reg_n_0_[4] ),
        .I1(\word_count_reg_n_0_[3] ),
        .I2(\word_count_reg_n_0_[2] ),
        .I3(\word_count_reg_n_0_[1] ),
        .O(depth_match_i_2_n_0));
  FDRE depth_match_reg
       (.C(aclk),
        .CE(1'b1),
        .D(depth_match_i_1_n_0),
        .Q(depth_match_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEF0080)) 
    empty_match_i_1
       (.I0(\word_count_reg_n_0_[0] ),
        .I1(empty_match_i_2_n_0),
        .I2(empty_match_i_3_n_0),
        .I3(depth_match_reg_0),
        .I4(vid_empty),
        .O(empty_match_i_1_n_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    empty_match_i_2
       (.I0(s_axis_video_tvalid),
        .I1(\write_ptr_reg[0]_0 ),
        .I2(\genr_control_regs[0] [0]),
        .I3(aclken),
        .I4(resetn_out),
        .O(empty_match_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    empty_match_i_3
       (.I0(\word_count_reg_n_0_[2] ),
        .I1(\word_count_reg_n_0_[3] ),
        .I2(\word_count_reg_n_0_[1] ),
        .I3(\word_count_reg_n_0_[4] ),
        .O(empty_match_i_3_n_0));
  FDSE empty_match_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_match_i_1_n_0),
        .Q(vid_empty),
        .S(SR));
  design_1_v_rgb2ycrcb_0_0_dp_ram_18 mem1
       (.D(addrb),
        .\GenerateDoutWriteFirstB.t_qb_reg[29]_0 (addra),
        .\GenerateDoutWriteFirstB.t_qb_reg[30]_0 (\GenerateDoutWriteFirstB.t_qb_reg[30] ),
        .\GenerateDoutWriteFirstB.t_qb_reg[31]_0 (Q),
        .Q(read_ptr_reg),
        .aclk(aclk),
        .aclken(aclken),
        .aclken_0(aclken_0),
        .da(da),
        .empty_match_reg(mem1_n_4),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .in_fifo_reset(in_fifo_reset),
        .p_0_in(p_0_in),
        .\read_ptr_reg[0] (depth_match_reg_0),
        .reg_update(reg_update),
        .resetn_out(resetn_out),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .vid_empty(vid_empty),
        .\write_ptr_reg[0] (depth_match_reg_n_0),
        .\write_ptr_reg[0]_0 (\write_ptr_reg[0]_0 ));
  FDSE \read_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(read_ptr_reg[0]),
        .S(SR));
  FDSE \read_ptr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(read_ptr_reg[1]),
        .S(SR));
  FDSE \read_ptr_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(read_ptr_reg[2]),
        .S(SR));
  FDSE \read_ptr_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(addrb[3]),
        .Q(read_ptr_reg[3]),
        .S(SR));
  LUT4 #(
    .INIT(16'h1555)) 
    s_axis_tready_int_i_1
       (.I0(\word_count_reg_n_0_[4] ),
        .I1(\word_count_reg_n_0_[3] ),
        .I2(\word_count_reg_n_0_[2] ),
        .I3(\word_count_reg_n_0_[1] ),
        .O(\word_count_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \word_count[0]_i_1 
       (.I0(\word_count_reg_n_0_[0] ),
        .O(\word_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9A65)) 
    \word_count[1]_i_1 
       (.I0(\word_count_reg_n_0_[0] ),
        .I1(mem1_n_4),
        .I2(p_0_in),
        .I3(\word_count_reg_n_0_[1] ),
        .O(\word_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDFF2200D)) 
    \word_count[2]_i_1 
       (.I0(p_0_in),
        .I1(mem1_n_4),
        .I2(\word_count_reg_n_0_[0] ),
        .I3(\word_count_reg_n_0_[1] ),
        .I4(\word_count_reg_n_0_[2] ),
        .O(\word_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFBA20000045)) 
    \word_count[3]_i_1 
       (.I0(\word_count_reg_n_0_[0] ),
        .I1(mem1_n_4),
        .I2(p_0_in),
        .I3(\word_count_reg_n_0_[1] ),
        .I4(\word_count_reg_n_0_[2] ),
        .I5(\word_count_reg_n_0_[3] ),
        .O(\word_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \word_count[4]_i_1 
       (.I0(s_axis_video_tvalid),
        .I1(\write_ptr_reg[0]_0 ),
        .I2(aclken_0),
        .I3(depth_match_reg_n_0),
        .I4(mem1_n_4),
        .O(\word_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAA9AAAA)) 
    \word_count[4]_i_2 
       (.I0(\word_count_reg_n_0_[4] ),
        .I1(\word_count_reg_n_0_[3] ),
        .I2(\word_count_reg_n_0_[2] ),
        .I3(\word_count_reg_n_0_[0] ),
        .I4(\word_count[4]_i_3_n_0 ),
        .I5(\word_count_reg_n_0_[1] ),
        .O(\word_count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \word_count[4]_i_3 
       (.I0(mem1_n_4),
        .I1(s_axis_video_tvalid),
        .I2(\write_ptr_reg[0]_0 ),
        .I3(aclken_0),
        .I4(resetn_out),
        .I5(depth_match_reg_n_0),
        .O(\word_count[4]_i_3_n_0 ));
  FDRE \word_count_reg[0] 
       (.C(aclk),
        .CE(\word_count[4]_i_1_n_0 ),
        .D(\word_count[0]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[0] ),
        .R(SR));
  FDRE \word_count_reg[1] 
       (.C(aclk),
        .CE(\word_count[4]_i_1_n_0 ),
        .D(\word_count[1]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[1] ),
        .R(SR));
  FDRE \word_count_reg[2] 
       (.C(aclk),
        .CE(\word_count[4]_i_1_n_0 ),
        .D(\word_count[2]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[2] ),
        .R(SR));
  FDRE \word_count_reg[3] 
       (.C(aclk),
        .CE(\word_count[4]_i_1_n_0 ),
        .D(\word_count[3]_i_1_n_0 ),
        .Q(\word_count_reg_n_0_[3] ),
        .R(SR));
  FDRE \word_count_reg[4] 
       (.C(aclk),
        .CE(\word_count[4]_i_1_n_0 ),
        .D(\word_count[4]_i_2_n_0 ),
        .Q(\word_count_reg_n_0_[4] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_ptr[0]_i_1 
       (.I0(addra[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_ptr[1]_i_1 
       (.I0(addra[1]),
        .I1(addra[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \write_ptr[2]_i_1 
       (.I0(addra[2]),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \write_ptr[3]_i_1 
       (.I0(addra[3]),
        .I1(addra[1]),
        .I2(addra[0]),
        .I3(addra[2]),
        .O(plusOp__0[3]));
  FDRE \write_ptr_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(plusOp__0[0]),
        .Q(addra[0]),
        .R(SR));
  FDRE \write_ptr_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(plusOp__0[1]),
        .Q(addra[1]),
        .R(SR));
  FDRE \write_ptr_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(plusOp__0[2]),
        .Q(addra[2]),
        .R(SR));
  FDRE \write_ptr_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(plusOp__0[3]),
        .Q(addra[3]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "synch_fifo_fallthru" *) 
module design_1_v_rgb2ycrcb_0_0_synch_fifo_fallthru
   (full_int_reg_0,
    \write_ptr_int_reg[3]_0 ,
    m_axis_video_tvalid,
    O13,
    SR,
    aclk,
    aclken,
    \genr_control_regs[0] ,
    m_axis_video_tready,
    wen,
    \read_ptr_int_reg[2]_0 ,
    fifo_wr_i,
    core_d_out,
    intc_if,
    da);
  output full_int_reg_0;
  output \write_ptr_int_reg[3]_0 ;
  output m_axis_video_tvalid;
  output [31:0]O13;
  input [0:0]SR;
  input aclk;
  input aclken;
  input [0:0]\genr_control_regs[0] ;
  input m_axis_video_tready;
  input wen;
  input \read_ptr_int_reg[2]_0 ;
  input fifo_wr_i;
  input core_d_out;
  input [0:0]intc_if;
  input [31:0]da;

  wire [1:4]L;
  wire [31:0]O13;
  wire [0:0]SR;
  wire aclk;
  wire aclken;
  wire axi_fifo_empty;
  wire \col_cnt[12]_i_10_n_0 ;
  wire \col_cnt[12]_i_11_n_0 ;
  wire \col_cnt[12]_i_12_n_0 ;
  wire \col_cnt[12]_i_9_n_0 ;
  wire core_d_out;
  wire [31:0]da;
  wire empty_int_i_1_n_0;
  wire empty_int_i_2_n_0;
  wire empty_int_i_3_n_0;
  wire empty_int_i_4_n_0;
  wire eqOp0_out;
  wire fifo_wr_i;
  wire full_int_i_2_n_0;
  wire full_int_i_3_n_0;
  wire full_int_i_4_n_0;
  wire full_int_reg_0;
  wire [0:0]\genr_control_regs[0] ;
  wire [0:0]intc_if;
  wire m_axis_video_tready;
  wire m_axis_video_tvalid;
  wire mem1_n_0;
  wire mem1_n_1;
  wire mem1_n_2;
  wire mem1_n_3;
  wire mem1_n_4;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_1_in;
  wire p_1_in1_in;
  wire \read_ptr_int_reg[2]_0 ;
  wire \read_ptr_int_reg_n_0_[0] ;
  wire \read_ptr_int_reg_n_0_[1] ;
  wire \read_ptr_int_reg_n_0_[2] ;
  wire \read_ptr_int_reg_n_0_[3] ;
  wire wen;
  wire \write_ptr_int[0]_i_1_n_0 ;
  wire \write_ptr_int[1]_i_1_n_0 ;
  wire \write_ptr_int[2]_i_1_n_0 ;
  wire \write_ptr_int[3]_i_1_n_0 ;
  wire \write_ptr_int_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \col_cnt[12]_i_10 
       (.I0(p_0_in),
        .I1(p_1_in1_in),
        .O(\col_cnt[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h5D5D5DDF455D5D5D)) 
    \col_cnt[12]_i_11 
       (.I0(full_int_i_4_n_0),
        .I1(\read_ptr_int_reg_n_0_[1] ),
        .I2(L[3]),
        .I3(L[4]),
        .I4(wen),
        .I5(\read_ptr_int_reg_n_0_[0] ),
        .O(\col_cnt[12]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \col_cnt[12]_i_12 
       (.I0(L[2]),
        .I1(\read_ptr_int_reg_n_0_[2] ),
        .O(\col_cnt[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEF38FBAE8EF3EFBA)) 
    \col_cnt[12]_i_7 
       (.I0(\col_cnt[12]_i_9_n_0 ),
        .I1(L[1]),
        .I2(\read_ptr_int_reg_n_0_[3] ),
        .I3(\col_cnt[12]_i_10_n_0 ),
        .I4(\col_cnt[12]_i_11_n_0 ),
        .I5(\col_cnt[12]_i_12_n_0 ),
        .O(\write_ptr_int_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h02405415A82A0240)) 
    \col_cnt[12]_i_9 
       (.I0(full_int_i_4_n_0),
        .I1(L[4]),
        .I2(wen),
        .I3(\read_ptr_int_reg_n_0_[0] ),
        .I4(\read_ptr_int_reg_n_0_[1] ),
        .I5(L[3]),
        .O(\col_cnt[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0884400040000884)) 
    empty_int_i_1
       (.I0(L[1]),
        .I1(empty_int_i_2_n_0),
        .I2(\read_ptr_int_reg_n_0_[3] ),
        .I3(empty_int_i_3_n_0),
        .I4(p_0_in),
        .I5(p_1_in1_in),
        .O(empty_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h0041820082000082)) 
    empty_int_i_2
       (.I0(full_int_i_4_n_0),
        .I1(L[4]),
        .I2(mem1_n_4),
        .I3(L[3]),
        .I4(\read_ptr_int_reg_n_0_[1] ),
        .I5(empty_int_i_4_n_0),
        .O(empty_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    empty_int_i_3
       (.I0(\read_ptr_int_reg_n_0_[2] ),
        .I1(\read_ptr_int_reg_n_0_[1] ),
        .I2(\read_ptr_int_reg_n_0_[0] ),
        .I3(axi_fifo_empty),
        .I4(m_axis_video_tready),
        .I5(\read_ptr_int_reg[2]_0 ),
        .O(empty_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    empty_int_i_4
       (.I0(\read_ptr_int_reg_n_0_[0] ),
        .I1(axi_fifo_empty),
        .I2(m_axis_video_tready),
        .I3(\genr_control_regs[0] ),
        .I4(aclken),
        .O(empty_int_i_4_n_0));
  FDSE empty_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(empty_int_i_1_n_0),
        .Q(axi_fifo_empty),
        .S(SR));
  LUT6 #(
    .INIT(64'h0009060006000006)) 
    full_int_i_1
       (.I0(p_0_in),
        .I1(p_1_in1_in),
        .I2(full_int_i_2_n_0),
        .I3(\read_ptr_int_reg_n_0_[3] ),
        .I4(L[1]),
        .I5(full_int_i_3_n_0),
        .O(eqOp0_out));
  LUT6 #(
    .INIT(64'hD6BFFFD6FFFFBFFF)) 
    full_int_i_2
       (.I0(\read_ptr_int_reg_n_0_[0] ),
        .I1(wen),
        .I2(L[4]),
        .I3(L[3]),
        .I4(\read_ptr_int_reg_n_0_[1] ),
        .I5(full_int_i_4_n_0),
        .O(full_int_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    full_int_i_3
       (.I0(L[4]),
        .I1(wen),
        .I2(L[3]),
        .I3(L[2]),
        .O(full_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h9)) 
    full_int_i_4
       (.I0(L[2]),
        .I1(\read_ptr_int_reg_n_0_[2] ),
        .O(full_int_i_4_n_0));
  FDRE full_int_reg
       (.C(aclk),
        .CE(1'b1),
        .D(eqOp0_out),
        .Q(full_int_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_video_tvalid_INST_0
       (.I0(axi_fifo_empty),
        .O(m_axis_video_tvalid));
  design_1_v_rgb2ycrcb_0_0_dp_ram mem1
       (.ADDRA({mem1_n_1,mem1_n_2,mem1_n_3,mem1_n_4}),
        .\GenerateDoutWriteFirstB.t_qb_reg[29]_0 ({L[1],L[2],L[3],L[4]}),
        .O13(O13),
        .Q({\read_ptr_int_reg_n_0_[3] ,\read_ptr_int_reg_n_0_[2] ,\read_ptr_int_reg_n_0_[1] ,\read_ptr_int_reg_n_0_[0] }),
        .aclk(aclk),
        .aclken(aclken),
        .aclken_0(mem1_n_0),
        .axi_fifo_empty(axi_fifo_empty),
        .da(da),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .m_axis_video_tready(m_axis_video_tready),
        .\read_ptr_int_reg[2] (\read_ptr_int_reg[2]_0 ),
        .wen(wen));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \read_ptr_int[4]_i_1 
       (.I0(p_0_in),
        .I1(\read_ptr_int_reg_n_0_[2] ),
        .I2(mem1_n_0),
        .I3(\read_ptr_int_reg_n_0_[3] ),
        .O(p_0_in0_in));
  FDRE \read_ptr_int_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mem1_n_4),
        .Q(\read_ptr_int_reg_n_0_[0] ),
        .R(SR));
  FDRE \read_ptr_int_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mem1_n_3),
        .Q(\read_ptr_int_reg_n_0_[1] ),
        .R(SR));
  FDRE \read_ptr_int_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mem1_n_2),
        .Q(\read_ptr_int_reg_n_0_[2] ),
        .R(SR));
  FDRE \read_ptr_int_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(mem1_n_1),
        .Q(\read_ptr_int_reg_n_0_[3] ),
        .R(SR));
  FDRE \read_ptr_int_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in0_in),
        .Q(p_0_in),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA6)) 
    \write_ptr_int[0]_i_1 
       (.I0(L[4]),
        .I1(fifo_wr_i),
        .I2(full_int_reg_0),
        .I3(core_d_out),
        .I4(intc_if),
        .I5(\read_ptr_int_reg[2]_0 ),
        .O(\write_ptr_int[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_ptr_int[1]_i_1 
       (.I0(L[4]),
        .I1(wen),
        .I2(L[3]),
        .O(\write_ptr_int[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \write_ptr_int[2]_i_1 
       (.I0(L[2]),
        .I1(L[4]),
        .I2(wen),
        .I3(L[3]),
        .O(\write_ptr_int[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \write_ptr_int[3]_i_1 
       (.I0(L[1]),
        .I1(L[2]),
        .I2(L[3]),
        .I3(wen),
        .I4(L[4]),
        .O(\write_ptr_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \write_ptr_int[4]_i_1 
       (.I0(p_1_in1_in),
        .I1(L[4]),
        .I2(wen),
        .I3(L[3]),
        .I4(L[2]),
        .I5(L[1]),
        .O(p_1_in));
  FDRE \write_ptr_int_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_ptr_int[0]_i_1_n_0 ),
        .Q(L[4]),
        .R(SR));
  FDRE \write_ptr_int_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_ptr_int[1]_i_1_n_0 ),
        .Q(L[3]),
        .R(SR));
  FDRE \write_ptr_int_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_ptr_int[2]_i_1_n_0 ),
        .Q(L[2]),
        .R(SR));
  FDRE \write_ptr_int_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\write_ptr_int[3]_i_1_n_0 ),
        .Q(L[1]),
        .R(SR));
  FDRE \write_ptr_int_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_1_in1_in),
        .R(SR));
endmodule

(* C_ACOEF = "19595" *) (* C_ACTIVE_COLS = "1280" *) (* C_ACTIVE_ROWS = "720" *) 
(* C_BCOEF = "7471" *) (* C_CBMAX = "1023" *) (* C_CBMIN = "0" *) 
(* C_CBOFFSET = "512" *) (* C_CCOEF = "57493" *) (* C_CRMAX = "1023" *) 
(* C_CRMIN = "0" *) (* C_CROFFSET = "512" *) (* C_DCOEF = "32250" *) 
(* C_FAMILY = "zynquplus" *) (* C_HAS_AXI4_LITE = "0" *) (* C_HAS_CLAMP = "1" *) 
(* C_HAS_CLIP = "1" *) (* C_HAS_DEBUG = "0" *) (* C_HAS_INTC_IF = "0" *) 
(* C_MAX_COLS = "1280" *) (* C_M_AXIS_VIDEO_DATA_WIDTH = "10" *) (* C_M_AXIS_VIDEO_FORMAT = "1" *) 
(* C_M_AXIS_VIDEO_TDATA_WIDTH = "32" *) (* C_S_AXIS_VIDEO_DATA_WIDTH = "10" *) (* C_S_AXIS_VIDEO_FORMAT = "2" *) 
(* C_S_AXIS_VIDEO_TDATA_WIDTH = "32" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_CLK_FREQ_HZ = "100000000" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_YMAX = "1023" *) (* C_YMIN = "0" *) 
(* C_YOFFSET = "64" *) (* ORIG_REF_NAME = "v_rgb2ycrcb" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_1_v_rgb2ycrcb_0_0_v_rgb2ycrcb
   (s_axi_aclk,
    s_axi_aclken,
    s_axi_aresetn,
    aclk,
    aclken,
    aresetn,
    intc_if,
    irq,
    s_axis_video_tdata,
    s_axis_video_tready,
    s_axis_video_tvalid,
    s_axis_video_tlast,
    s_axis_video_tuser_sof,
    m_axis_video_tdata,
    m_axis_video_tvalid,
    m_axis_video_tready,
    m_axis_video_tlast,
    m_axis_video_tuser_sof,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  (* sigis = "CLK" *) input s_axi_aclk;
  input s_axi_aclken;
  (* sigis = "RST" *) input s_axi_aresetn;
  (* sigis = "CLK" *) input aclk;
  input aclken;
  (* sigis = "RST" *) input aresetn;
  output [8:0]intc_if;
  (* sigis = "INTR_LEVEL_HIGH" *) output irq;
  input [31:0]s_axis_video_tdata;
  output s_axis_video_tready;
  input s_axis_video_tvalid;
  input s_axis_video_tlast;
  input s_axis_video_tuser_sof;
  output [31:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  input m_axis_video_tready;
  output m_axis_video_tlast;
  output m_axis_video_tuser_sof;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire U_VIDEO_CTRL_n_318;
  wire U_VIDEO_CTRL_n_319;
  wire U_VIDEO_CTRL_n_320;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [15:0]\core_control_regs[0] ;
  wire [16:0]\core_control_regs[10] ;
  wire [16:0]\core_control_regs[11] ;
  wire [16:0]\core_control_regs[12] ;
  wire [15:0]\core_control_regs[1] ;
  wire [15:0]\core_control_regs[2] ;
  wire [15:0]\core_control_regs[3] ;
  wire [15:0]\core_control_regs[4] ;
  wire [15:0]\core_control_regs[5] ;
  wire [16:0]\core_control_regs[6] ;
  wire [16:0]\core_control_regs[7] ;
  wire [16:0]\core_control_regs[8] ;
  wire [16:0]\core_control_regs[9] ;
  wire core_d;
  wire [31:0]\genr_control_regs[0] ;
  wire [8:0]intc_if;
  wire irq;
  wire [29:0]\^m_axis_video_tdata ;
  wire m_axis_video_tlast;
  wire m_axis_video_tready;
  wire m_axis_video_tuser_sof;
  wire m_axis_video_tvalid;
  wire reg_update;
  wire resetn;
  wire s_axi_aclk;
  wire s_axi_aclken;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [8:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser_sof;
  wire s_axis_video_tvalid;
  wire [28:0]\time_control_regs[0] ;
  wire NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED;
  wire NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED ;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED ;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED ;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED ;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED ;
  wire [31:16]\NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED ;
  wire [31:17]\NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED ;
  wire [8:0]NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED;
  wire [31:0]NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED;
  wire [31:29]\NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED ;
  wire [31:0]\NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED ;

  assign m_axis_video_tdata[31] = \<const0> ;
  assign m_axis_video_tdata[30] = \<const0> ;
  assign m_axis_video_tdata[29:0] = \^m_axis_video_tdata [29:0];
  GND GND
       (.G(\<const0> ));
  (* C_COREGEN_PATCH = "0" *) 
  (* C_CORE_AXI_WRITE = "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111" *) 
  (* C_CORE_DBUFFER = "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111" *) 
  (* C_CORE_DEFAULT = "416'b00000000000000000000001111111111000000000000000000000000000000000000000000000000000000111111111100000000000000000000000000000000000000000000000000000011111111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000010000000000000000000000000000000100000000000000000000000000100110010001011000000000000000000011101001011110000000000000000111000001001010100000000000000000111110111111010" *) 
  (* C_CORE_NUM_REGS = "13" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_GENR_AXI_WRITE = "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_GENR_DBUFFER = "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_GENR_DEFAULT = "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_GENR_NUM_REGS = "8" *) 
  (* C_GENR_SELFCLR = "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_HAS_AXI4_LITE = "0" *) 
  (* C_HAS_IRQ = "1" *) 
  (* C_IS_EVAL = "FALSE" *) 
  (* C_REVISION_NUMBER = "1" *) 
  (* C_SRESET_LENGTH = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "9" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_TIMEOUT_HOURS = "8" *) 
  (* C_TIMEOUT_MINS = "0" *) 
  (* C_TIME_AXI_WRITE = "64'b1111111111111111111111111111111100000000000000000000000000000111" *) 
  (* C_TIME_DBUFFER = "64'b1111111111111111111111111111111100000000000000000000000000000111" *) 
  (* C_TIME_DEFAULT = "64'b0000001011010000000001010000000000000000000000000000000000000000" *) 
  (* C_TIME_NUM_REGS = "2" *) 
  (* C_VERSION_MAJOR = "7" *) 
  (* C_VERSION_MINOR = "1" *) 
  (* C_VERSION_REVISION = "0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_v_rgb2ycrcb_0_0_video_ctrl U_VIDEO_CTRL
       (.aclk(s_axi_aclk),
        .aclk_en(s_axi_aclken),
        .aresetn(s_axi_aresetn),
        .\core_control_regs[0] ({\NLW_U_VIDEO_CTRL_core_control_regs[0]_UNCONNECTED [31:16],\core_control_regs[0] }),
        .\core_control_regs[10] ({\NLW_U_VIDEO_CTRL_core_control_regs[10]_UNCONNECTED [31:17],\core_control_regs[10] }),
        .\core_control_regs[11] ({\NLW_U_VIDEO_CTRL_core_control_regs[11]_UNCONNECTED [31:17],\core_control_regs[11] }),
        .\core_control_regs[12] ({\NLW_U_VIDEO_CTRL_core_control_regs[12]_UNCONNECTED [31:17],\core_control_regs[12] }),
        .\core_control_regs[1] ({\NLW_U_VIDEO_CTRL_core_control_regs[1]_UNCONNECTED [31:16],\core_control_regs[1] }),
        .\core_control_regs[2] ({\NLW_U_VIDEO_CTRL_core_control_regs[2]_UNCONNECTED [31:16],\core_control_regs[2] }),
        .\core_control_regs[3] ({\NLW_U_VIDEO_CTRL_core_control_regs[3]_UNCONNECTED [31:16],\core_control_regs[3] }),
        .\core_control_regs[4] ({\NLW_U_VIDEO_CTRL_core_control_regs[4]_UNCONNECTED [31:16],\core_control_regs[4] }),
        .\core_control_regs[5] ({\NLW_U_VIDEO_CTRL_core_control_regs[5]_UNCONNECTED [31:16],\core_control_regs[5] }),
        .\core_control_regs[6] ({\NLW_U_VIDEO_CTRL_core_control_regs[6]_UNCONNECTED [31:17],\core_control_regs[6] }),
        .\core_control_regs[7] ({\NLW_U_VIDEO_CTRL_core_control_regs[7]_UNCONNECTED [31:17],\core_control_regs[7] }),
        .\core_control_regs[8] ({\NLW_U_VIDEO_CTRL_core_control_regs[8]_UNCONNECTED [31:17],\core_control_regs[8] }),
        .\core_control_regs[9] ({\NLW_U_VIDEO_CTRL_core_control_regs[9]_UNCONNECTED [31:17],\core_control_regs[9] }),
        .core_d_out(core_d),
        .\core_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[10] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[11] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[12] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[2] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[3] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[4] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[5] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[6] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[7] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[8] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\core_status_regs[9] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_control_regs[0] (\genr_control_regs[0] ),
        .\genr_control_regs[1] (\NLW_U_VIDEO_CTRL_genr_control_regs[1]_UNCONNECTED [31:0]),
        .\genr_control_regs[2] (\NLW_U_VIDEO_CTRL_genr_control_regs[2]_UNCONNECTED [31:0]),
        .\genr_control_regs[3] (\NLW_U_VIDEO_CTRL_genr_control_regs[3]_UNCONNECTED [31:0]),
        .\genr_control_regs[4] (\NLW_U_VIDEO_CTRL_genr_control_regs[4]_UNCONNECTED [31:0]),
        .\genr_control_regs[5] (\NLW_U_VIDEO_CTRL_genr_control_regs[5]_UNCONNECTED [31:0]),
        .\genr_control_regs[6] (\NLW_U_VIDEO_CTRL_genr_control_regs[6]_UNCONNECTED [31:0]),
        .\genr_control_regs[7] (\NLW_U_VIDEO_CTRL_genr_control_regs[7]_UNCONNECTED [31:0]),
        .\genr_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,intc_if[4],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,intc_if[3:0]}),
        .\genr_status_regs[2] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,intc_if[8:5]}),
        .\genr_status_regs[3] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[4] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[5] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[6] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\genr_status_regs[7] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ipif_addr_out(NLW_U_VIDEO_CTRL_ipif_addr_out_UNCONNECTED[8:0]),
        .ipif_cs_out(NLW_U_VIDEO_CTRL_ipif_cs_out_UNCONNECTED),
        .ipif_data_out(NLW_U_VIDEO_CTRL_ipif_data_out_UNCONNECTED[31:0]),
        .ipif_rnw_out(NLW_U_VIDEO_CTRL_ipif_rnw_out_UNCONNECTED),
        .irq(irq),
        .reg_update(reg_update),
        .resetn_out(resetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\time_control_regs[0] ({\NLW_U_VIDEO_CTRL_time_control_regs[0]_UNCONNECTED [31:29],\time_control_regs[0] [28:16],U_VIDEO_CTRL_n_318,U_VIDEO_CTRL_n_319,U_VIDEO_CTRL_n_320,\time_control_regs[0] [12:0]}),
        .\time_control_regs[1] (\NLW_U_VIDEO_CTRL_time_control_regs[1]_UNCONNECTED [31:0]),
        .\time_status_regs[0] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .\time_status_regs[1] ({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vid_aclk(aclk),
        .vid_aclk_en(aclken),
        .vid_aresetn(aresetn));
  design_1_v_rgb2ycrcb_0_0_rgb2ycrcb_top rgb2ycrcb_top_inst
       (.E(intc_if[0]),
        .O13({m_axis_video_tuser_sof,m_axis_video_tlast,\^m_axis_video_tdata }),
        .aclk(aclk),
        .aclken(aclken),
        .\core_control_regs[0] (\core_control_regs[0] [9:0]),
        .\core_control_regs[10] (\core_control_regs[10] ),
        .\core_control_regs[11] (\core_control_regs[11] ),
        .\core_control_regs[12] (\core_control_regs[12] ),
        .\core_control_regs[1] (\core_control_regs[1] [9:0]),
        .\core_control_regs[2] (\core_control_regs[2] [9:0]),
        .\core_control_regs[3] (\core_control_regs[3] [9:0]),
        .\core_control_regs[4] (\core_control_regs[4] [9:0]),
        .\core_control_regs[5] (\core_control_regs[5] [9:0]),
        .\core_control_regs[6] (\core_control_regs[6] [10:0]),
        .\core_control_regs[7] (\core_control_regs[7] [10:0]),
        .\core_control_regs[8] (\core_control_regs[8] [10:0]),
        .\core_control_regs[9] (\core_control_regs[9] ),
        .core_d_out(core_d),
        .da({s_axis_video_tuser_sof,s_axis_video_tlast,s_axis_video_tdata[29:0]}),
        .\genr_control_regs[0] ({\genr_control_regs[0] [4],\genr_control_regs[0] [1:0]}),
        .intc_if(intc_if[8:1]),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .reg_update(reg_update),
        .resetn_out(resetn),
        .s_axis_tready_int_reg(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .\time_control_regs[0] ({\time_control_regs[0] [28:16],\time_control_regs[0] [12:0]}));
endmodule

(* C_COREGEN_PATCH = "0" *) (* C_CORE_AXI_WRITE = "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000111111111111111111000000000000001111111111111111110000000000000011111111111111111100000000000000111111111111111111" *) (* C_CORE_DBUFFER = "416'b00000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000001111111111111111000000000000000011111111111111110000000000000000111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111000000000000000111111111111111110000000000000001111111111111111100000000000000011111111111111111" *) 
(* C_CORE_DEFAULT = "416'b00000000000000000000001111111111000000000000000000000000000000000000000000000000000000111111111100000000000000000000000000000000000000000000000000000011111111110000000000000000000000000000000000000000000000000000000001000000000000000000000000000010000000000000000000000000000000100000000000000000000000000100110010001011000000000000000000011101001011110000000000000000111000001001010100000000000000000111110111111010" *) (* C_CORE_NUM_REGS = "13" *) (* C_FAMILY = "zynquplus" *) 
(* C_GENR_AXI_WRITE = "256'b1100000000000000000000000011111100000000000000010000000000001111000000000000000000000000000011110000000000000001000000000000111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_GENR_DBUFFER = "256'b0000000000000000000000000010110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_GENR_DEFAULT = "256'b0000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_GENR_NUM_REGS = "8" *) (* C_GENR_SELFCLR = "256'b0000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_HAS_AXI4_LITE = "0" *) 
(* C_HAS_IRQ = "1" *) (* C_IS_EVAL = "FALSE" *) (* C_REVISION_NUMBER = "1" *) 
(* C_SRESET_LENGTH = "1" *) (* C_S_AXI_ADDR_WIDTH = "9" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_TIMEOUT_HOURS = "8" *) (* C_TIMEOUT_MINS = "0" *) (* C_TIME_AXI_WRITE = "64'b1111111111111111111111111111111100000000000000000000000000000111" *) 
(* C_TIME_DBUFFER = "64'b1111111111111111111111111111111100000000000000000000000000000111" *) (* C_TIME_DEFAULT = "64'b0000001011010000000001010000000000000000000000000000000000000000" *) (* C_TIME_NUM_REGS = "2" *) 
(* C_VERSION_MAJOR = "7" *) (* C_VERSION_MINOR = "1" *) (* C_VERSION_REVISION = "0" *) 
(* ORIG_REF_NAME = "video_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) (* keep_hierarchy = "yes" *) 
module design_1_v_rgb2ycrcb_0_0_video_ctrl
   (aclk,
    aclk_en,
    aresetn,
    vid_aclk,
    vid_aclk_en,
    vid_aresetn,
    reg_update,
    irq,
    resetn_out,
    core_d_out,
    ipif_addr_out,
    ipif_rnw_out,
    ipif_cs_out,
    ipif_data_out,
    \genr_control_regs[0] ,
    \genr_control_regs[1] ,
    \genr_control_regs[2] ,
    \genr_control_regs[3] ,
    \genr_control_regs[4] ,
    \genr_control_regs[5] ,
    \genr_control_regs[6] ,
    \genr_control_regs[7] ,
    \genr_status_regs[0] ,
    \genr_status_regs[1] ,
    \genr_status_regs[2] ,
    \genr_status_regs[3] ,
    \genr_status_regs[4] ,
    \genr_status_regs[5] ,
    \genr_status_regs[6] ,
    \genr_status_regs[7] ,
    \time_control_regs[0] ,
    \time_control_regs[1] ,
    \time_status_regs[0] ,
    \time_status_regs[1] ,
    \core_control_regs[0] ,
    \core_control_regs[1] ,
    \core_control_regs[2] ,
    \core_control_regs[3] ,
    \core_control_regs[4] ,
    \core_control_regs[5] ,
    \core_control_regs[6] ,
    \core_control_regs[7] ,
    \core_control_regs[8] ,
    \core_control_regs[9] ,
    \core_control_regs[10] ,
    \core_control_regs[11] ,
    \core_control_regs[12] ,
    \core_status_regs[0] ,
    \core_status_regs[1] ,
    \core_status_regs[2] ,
    \core_status_regs[3] ,
    \core_status_regs[4] ,
    \core_status_regs[5] ,
    \core_status_regs[6] ,
    \core_status_regs[7] ,
    \core_status_regs[8] ,
    \core_status_regs[9] ,
    \core_status_regs[10] ,
    \core_status_regs[11] ,
    \core_status_regs[12] ,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aclk_en;
  input aresetn;
  input vid_aclk;
  input vid_aclk_en;
  input vid_aresetn;
  input reg_update;
  output irq;
  output resetn_out;
  output core_d_out;
  output [8:0]ipif_addr_out;
  output ipif_rnw_out;
  output ipif_cs_out;
  output [31:0]ipif_data_out;
  output [31:0]\genr_control_regs[0] ;
  output [31:0]\genr_control_regs[1] ;
  output [31:0]\genr_control_regs[2] ;
  output [31:0]\genr_control_regs[3] ;
  output [31:0]\genr_control_regs[4] ;
  output [31:0]\genr_control_regs[5] ;
  output [31:0]\genr_control_regs[6] ;
  output [31:0]\genr_control_regs[7] ;
  input [31:0]\genr_status_regs[0] ;
  input [31:0]\genr_status_regs[1] ;
  input [31:0]\genr_status_regs[2] ;
  input [31:0]\genr_status_regs[3] ;
  input [31:0]\genr_status_regs[4] ;
  input [31:0]\genr_status_regs[5] ;
  input [31:0]\genr_status_regs[6] ;
  input [31:0]\genr_status_regs[7] ;
  output [31:0]\time_control_regs[0] ;
  output [31:0]\time_control_regs[1] ;
  input [31:0]\time_status_regs[0] ;
  input [31:0]\time_status_regs[1] ;
  output [31:0]\core_control_regs[0] ;
  output [31:0]\core_control_regs[1] ;
  output [31:0]\core_control_regs[2] ;
  output [31:0]\core_control_regs[3] ;
  output [31:0]\core_control_regs[4] ;
  output [31:0]\core_control_regs[5] ;
  output [31:0]\core_control_regs[6] ;
  output [31:0]\core_control_regs[7] ;
  output [31:0]\core_control_regs[8] ;
  output [31:0]\core_control_regs[9] ;
  output [31:0]\core_control_regs[10] ;
  output [31:0]\core_control_regs[11] ;
  output [31:0]\core_control_regs[12] ;
  input [31:0]\core_status_regs[0] ;
  input [31:0]\core_status_regs[1] ;
  input [31:0]\core_status_regs[2] ;
  input [31:0]\core_status_regs[3] ;
  input [31:0]\core_status_regs[4] ;
  input [31:0]\core_status_regs[5] ;
  input [31:0]\core_status_regs[6] ;
  input [31:0]\core_status_regs[7] ;
  input [31:0]\core_status_regs[8] ;
  input [31:0]\core_status_regs[9] ;
  input [31:0]\core_status_regs[10] ;
  input [31:0]\core_status_regs[11] ;
  input [31:0]\core_status_regs[12] ;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;

  wire \<const0> ;
  wire \<const1> ;
  wire vid_aresetn;

  assign \core_control_regs[0] [31] = \<const0> ;
  assign \core_control_regs[0] [30] = \<const0> ;
  assign \core_control_regs[0] [29] = \<const0> ;
  assign \core_control_regs[0] [28] = \<const0> ;
  assign \core_control_regs[0] [27] = \<const0> ;
  assign \core_control_regs[0] [26] = \<const0> ;
  assign \core_control_regs[0] [25] = \<const0> ;
  assign \core_control_regs[0] [24] = \<const0> ;
  assign \core_control_regs[0] [23] = \<const0> ;
  assign \core_control_regs[0] [22] = \<const0> ;
  assign \core_control_regs[0] [21] = \<const0> ;
  assign \core_control_regs[0] [20] = \<const0> ;
  assign \core_control_regs[0] [19] = \<const0> ;
  assign \core_control_regs[0] [18] = \<const0> ;
  assign \core_control_regs[0] [17] = \<const0> ;
  assign \core_control_regs[0] [16] = \<const0> ;
  assign \core_control_regs[0] [15] = \<const0> ;
  assign \core_control_regs[0] [14] = \<const0> ;
  assign \core_control_regs[0] [13] = \<const0> ;
  assign \core_control_regs[0] [12] = \<const0> ;
  assign \core_control_regs[0] [11] = \<const0> ;
  assign \core_control_regs[0] [10] = \<const0> ;
  assign \core_control_regs[0] [9] = \<const1> ;
  assign \core_control_regs[0] [8] = \<const1> ;
  assign \core_control_regs[0] [7] = \<const1> ;
  assign \core_control_regs[0] [6] = \<const1> ;
  assign \core_control_regs[0] [5] = \<const1> ;
  assign \core_control_regs[0] [4] = \<const1> ;
  assign \core_control_regs[0] [3] = \<const1> ;
  assign \core_control_regs[0] [2] = \<const1> ;
  assign \core_control_regs[0] [1] = \<const1> ;
  assign \core_control_regs[0] [0] = \<const1> ;
  assign \core_control_regs[10] [31] = \<const0> ;
  assign \core_control_regs[10] [30] = \<const0> ;
  assign \core_control_regs[10] [29] = \<const0> ;
  assign \core_control_regs[10] [28] = \<const0> ;
  assign \core_control_regs[10] [27] = \<const0> ;
  assign \core_control_regs[10] [26] = \<const0> ;
  assign \core_control_regs[10] [25] = \<const0> ;
  assign \core_control_regs[10] [24] = \<const0> ;
  assign \core_control_regs[10] [23] = \<const0> ;
  assign \core_control_regs[10] [22] = \<const0> ;
  assign \core_control_regs[10] [21] = \<const0> ;
  assign \core_control_regs[10] [20] = \<const0> ;
  assign \core_control_regs[10] [19] = \<const0> ;
  assign \core_control_regs[10] [18] = \<const0> ;
  assign \core_control_regs[10] [17] = \<const0> ;
  assign \core_control_regs[10] [16] = \<const0> ;
  assign \core_control_regs[10] [15] = \<const0> ;
  assign \core_control_regs[10] [14] = \<const0> ;
  assign \core_control_regs[10] [13] = \<const0> ;
  assign \core_control_regs[10] [12] = \<const1> ;
  assign \core_control_regs[10] [11] = \<const1> ;
  assign \core_control_regs[10] [10] = \<const1> ;
  assign \core_control_regs[10] [9] = \<const0> ;
  assign \core_control_regs[10] [8] = \<const1> ;
  assign \core_control_regs[10] [7] = \<const0> ;
  assign \core_control_regs[10] [6] = \<const0> ;
  assign \core_control_regs[10] [5] = \<const1> ;
  assign \core_control_regs[10] [4] = \<const0> ;
  assign \core_control_regs[10] [3] = \<const1> ;
  assign \core_control_regs[10] [2] = \<const1> ;
  assign \core_control_regs[10] [1] = \<const1> ;
  assign \core_control_regs[10] [0] = \<const1> ;
  assign \core_control_regs[11] [31] = \<const0> ;
  assign \core_control_regs[11] [30] = \<const0> ;
  assign \core_control_regs[11] [29] = \<const0> ;
  assign \core_control_regs[11] [28] = \<const0> ;
  assign \core_control_regs[11] [27] = \<const0> ;
  assign \core_control_regs[11] [26] = \<const0> ;
  assign \core_control_regs[11] [25] = \<const0> ;
  assign \core_control_regs[11] [24] = \<const0> ;
  assign \core_control_regs[11] [23] = \<const0> ;
  assign \core_control_regs[11] [22] = \<const0> ;
  assign \core_control_regs[11] [21] = \<const0> ;
  assign \core_control_regs[11] [20] = \<const0> ;
  assign \core_control_regs[11] [19] = \<const0> ;
  assign \core_control_regs[11] [18] = \<const0> ;
  assign \core_control_regs[11] [17] = \<const0> ;
  assign \core_control_regs[11] [16] = \<const0> ;
  assign \core_control_regs[11] [15] = \<const1> ;
  assign \core_control_regs[11] [14] = \<const1> ;
  assign \core_control_regs[11] [13] = \<const1> ;
  assign \core_control_regs[11] [12] = \<const0> ;
  assign \core_control_regs[11] [11] = \<const0> ;
  assign \core_control_regs[11] [10] = \<const0> ;
  assign \core_control_regs[11] [9] = \<const0> ;
  assign \core_control_regs[11] [8] = \<const0> ;
  assign \core_control_regs[11] [7] = \<const1> ;
  assign \core_control_regs[11] [6] = \<const0> ;
  assign \core_control_regs[11] [5] = \<const0> ;
  assign \core_control_regs[11] [4] = \<const1> ;
  assign \core_control_regs[11] [3] = \<const0> ;
  assign \core_control_regs[11] [2] = \<const1> ;
  assign \core_control_regs[11] [1] = \<const0> ;
  assign \core_control_regs[11] [0] = \<const1> ;
  assign \core_control_regs[12] [31] = \<const0> ;
  assign \core_control_regs[12] [30] = \<const0> ;
  assign \core_control_regs[12] [29] = \<const0> ;
  assign \core_control_regs[12] [28] = \<const0> ;
  assign \core_control_regs[12] [27] = \<const0> ;
  assign \core_control_regs[12] [26] = \<const0> ;
  assign \core_control_regs[12] [25] = \<const0> ;
  assign \core_control_regs[12] [24] = \<const0> ;
  assign \core_control_regs[12] [23] = \<const0> ;
  assign \core_control_regs[12] [22] = \<const0> ;
  assign \core_control_regs[12] [21] = \<const0> ;
  assign \core_control_regs[12] [20] = \<const0> ;
  assign \core_control_regs[12] [19] = \<const0> ;
  assign \core_control_regs[12] [18] = \<const0> ;
  assign \core_control_regs[12] [17] = \<const0> ;
  assign \core_control_regs[12] [16] = \<const0> ;
  assign \core_control_regs[12] [15] = \<const0> ;
  assign \core_control_regs[12] [14] = \<const1> ;
  assign \core_control_regs[12] [13] = \<const1> ;
  assign \core_control_regs[12] [12] = \<const1> ;
  assign \core_control_regs[12] [11] = \<const1> ;
  assign \core_control_regs[12] [10] = \<const1> ;
  assign \core_control_regs[12] [9] = \<const0> ;
  assign \core_control_regs[12] [8] = \<const1> ;
  assign \core_control_regs[12] [7] = \<const1> ;
  assign \core_control_regs[12] [6] = \<const1> ;
  assign \core_control_regs[12] [5] = \<const1> ;
  assign \core_control_regs[12] [4] = \<const1> ;
  assign \core_control_regs[12] [3] = \<const1> ;
  assign \core_control_regs[12] [2] = \<const0> ;
  assign \core_control_regs[12] [1] = \<const1> ;
  assign \core_control_regs[12] [0] = \<const0> ;
  assign \core_control_regs[1] [31] = \<const0> ;
  assign \core_control_regs[1] [30] = \<const0> ;
  assign \core_control_regs[1] [29] = \<const0> ;
  assign \core_control_regs[1] [28] = \<const0> ;
  assign \core_control_regs[1] [27] = \<const0> ;
  assign \core_control_regs[1] [26] = \<const0> ;
  assign \core_control_regs[1] [25] = \<const0> ;
  assign \core_control_regs[1] [24] = \<const0> ;
  assign \core_control_regs[1] [23] = \<const0> ;
  assign \core_control_regs[1] [22] = \<const0> ;
  assign \core_control_regs[1] [21] = \<const0> ;
  assign \core_control_regs[1] [20] = \<const0> ;
  assign \core_control_regs[1] [19] = \<const0> ;
  assign \core_control_regs[1] [18] = \<const0> ;
  assign \core_control_regs[1] [17] = \<const0> ;
  assign \core_control_regs[1] [16] = \<const0> ;
  assign \core_control_regs[1] [15] = \<const0> ;
  assign \core_control_regs[1] [14] = \<const0> ;
  assign \core_control_regs[1] [13] = \<const0> ;
  assign \core_control_regs[1] [12] = \<const0> ;
  assign \core_control_regs[1] [11] = \<const0> ;
  assign \core_control_regs[1] [10] = \<const0> ;
  assign \core_control_regs[1] [9] = \<const0> ;
  assign \core_control_regs[1] [8] = \<const0> ;
  assign \core_control_regs[1] [7] = \<const0> ;
  assign \core_control_regs[1] [6] = \<const0> ;
  assign \core_control_regs[1] [5] = \<const0> ;
  assign \core_control_regs[1] [4] = \<const0> ;
  assign \core_control_regs[1] [3] = \<const0> ;
  assign \core_control_regs[1] [2] = \<const0> ;
  assign \core_control_regs[1] [1] = \<const0> ;
  assign \core_control_regs[1] [0] = \<const0> ;
  assign \core_control_regs[2] [31] = \<const0> ;
  assign \core_control_regs[2] [30] = \<const0> ;
  assign \core_control_regs[2] [29] = \<const0> ;
  assign \core_control_regs[2] [28] = \<const0> ;
  assign \core_control_regs[2] [27] = \<const0> ;
  assign \core_control_regs[2] [26] = \<const0> ;
  assign \core_control_regs[2] [25] = \<const0> ;
  assign \core_control_regs[2] [24] = \<const0> ;
  assign \core_control_regs[2] [23] = \<const0> ;
  assign \core_control_regs[2] [22] = \<const0> ;
  assign \core_control_regs[2] [21] = \<const0> ;
  assign \core_control_regs[2] [20] = \<const0> ;
  assign \core_control_regs[2] [19] = \<const0> ;
  assign \core_control_regs[2] [18] = \<const0> ;
  assign \core_control_regs[2] [17] = \<const0> ;
  assign \core_control_regs[2] [16] = \<const0> ;
  assign \core_control_regs[2] [15] = \<const0> ;
  assign \core_control_regs[2] [14] = \<const0> ;
  assign \core_control_regs[2] [13] = \<const0> ;
  assign \core_control_regs[2] [12] = \<const0> ;
  assign \core_control_regs[2] [11] = \<const0> ;
  assign \core_control_regs[2] [10] = \<const0> ;
  assign \core_control_regs[2] [9] = \<const1> ;
  assign \core_control_regs[2] [8] = \<const1> ;
  assign \core_control_regs[2] [7] = \<const1> ;
  assign \core_control_regs[2] [6] = \<const1> ;
  assign \core_control_regs[2] [5] = \<const1> ;
  assign \core_control_regs[2] [4] = \<const1> ;
  assign \core_control_regs[2] [3] = \<const1> ;
  assign \core_control_regs[2] [2] = \<const1> ;
  assign \core_control_regs[2] [1] = \<const1> ;
  assign \core_control_regs[2] [0] = \<const1> ;
  assign \core_control_regs[3] [31] = \<const0> ;
  assign \core_control_regs[3] [30] = \<const0> ;
  assign \core_control_regs[3] [29] = \<const0> ;
  assign \core_control_regs[3] [28] = \<const0> ;
  assign \core_control_regs[3] [27] = \<const0> ;
  assign \core_control_regs[3] [26] = \<const0> ;
  assign \core_control_regs[3] [25] = \<const0> ;
  assign \core_control_regs[3] [24] = \<const0> ;
  assign \core_control_regs[3] [23] = \<const0> ;
  assign \core_control_regs[3] [22] = \<const0> ;
  assign \core_control_regs[3] [21] = \<const0> ;
  assign \core_control_regs[3] [20] = \<const0> ;
  assign \core_control_regs[3] [19] = \<const0> ;
  assign \core_control_regs[3] [18] = \<const0> ;
  assign \core_control_regs[3] [17] = \<const0> ;
  assign \core_control_regs[3] [16] = \<const0> ;
  assign \core_control_regs[3] [15] = \<const0> ;
  assign \core_control_regs[3] [14] = \<const0> ;
  assign \core_control_regs[3] [13] = \<const0> ;
  assign \core_control_regs[3] [12] = \<const0> ;
  assign \core_control_regs[3] [11] = \<const0> ;
  assign \core_control_regs[3] [10] = \<const0> ;
  assign \core_control_regs[3] [9] = \<const0> ;
  assign \core_control_regs[3] [8] = \<const0> ;
  assign \core_control_regs[3] [7] = \<const0> ;
  assign \core_control_regs[3] [6] = \<const0> ;
  assign \core_control_regs[3] [5] = \<const0> ;
  assign \core_control_regs[3] [4] = \<const0> ;
  assign \core_control_regs[3] [3] = \<const0> ;
  assign \core_control_regs[3] [2] = \<const0> ;
  assign \core_control_regs[3] [1] = \<const0> ;
  assign \core_control_regs[3] [0] = \<const0> ;
  assign \core_control_regs[4] [31] = \<const0> ;
  assign \core_control_regs[4] [30] = \<const0> ;
  assign \core_control_regs[4] [29] = \<const0> ;
  assign \core_control_regs[4] [28] = \<const0> ;
  assign \core_control_regs[4] [27] = \<const0> ;
  assign \core_control_regs[4] [26] = \<const0> ;
  assign \core_control_regs[4] [25] = \<const0> ;
  assign \core_control_regs[4] [24] = \<const0> ;
  assign \core_control_regs[4] [23] = \<const0> ;
  assign \core_control_regs[4] [22] = \<const0> ;
  assign \core_control_regs[4] [21] = \<const0> ;
  assign \core_control_regs[4] [20] = \<const0> ;
  assign \core_control_regs[4] [19] = \<const0> ;
  assign \core_control_regs[4] [18] = \<const0> ;
  assign \core_control_regs[4] [17] = \<const0> ;
  assign \core_control_regs[4] [16] = \<const0> ;
  assign \core_control_regs[4] [15] = \<const0> ;
  assign \core_control_regs[4] [14] = \<const0> ;
  assign \core_control_regs[4] [13] = \<const0> ;
  assign \core_control_regs[4] [12] = \<const0> ;
  assign \core_control_regs[4] [11] = \<const0> ;
  assign \core_control_regs[4] [10] = \<const0> ;
  assign \core_control_regs[4] [9] = \<const1> ;
  assign \core_control_regs[4] [8] = \<const1> ;
  assign \core_control_regs[4] [7] = \<const1> ;
  assign \core_control_regs[4] [6] = \<const1> ;
  assign \core_control_regs[4] [5] = \<const1> ;
  assign \core_control_regs[4] [4] = \<const1> ;
  assign \core_control_regs[4] [3] = \<const1> ;
  assign \core_control_regs[4] [2] = \<const1> ;
  assign \core_control_regs[4] [1] = \<const1> ;
  assign \core_control_regs[4] [0] = \<const1> ;
  assign \core_control_regs[5] [31] = \<const0> ;
  assign \core_control_regs[5] [30] = \<const0> ;
  assign \core_control_regs[5] [29] = \<const0> ;
  assign \core_control_regs[5] [28] = \<const0> ;
  assign \core_control_regs[5] [27] = \<const0> ;
  assign \core_control_regs[5] [26] = \<const0> ;
  assign \core_control_regs[5] [25] = \<const0> ;
  assign \core_control_regs[5] [24] = \<const0> ;
  assign \core_control_regs[5] [23] = \<const0> ;
  assign \core_control_regs[5] [22] = \<const0> ;
  assign \core_control_regs[5] [21] = \<const0> ;
  assign \core_control_regs[5] [20] = \<const0> ;
  assign \core_control_regs[5] [19] = \<const0> ;
  assign \core_control_regs[5] [18] = \<const0> ;
  assign \core_control_regs[5] [17] = \<const0> ;
  assign \core_control_regs[5] [16] = \<const0> ;
  assign \core_control_regs[5] [15] = \<const0> ;
  assign \core_control_regs[5] [14] = \<const0> ;
  assign \core_control_regs[5] [13] = \<const0> ;
  assign \core_control_regs[5] [12] = \<const0> ;
  assign \core_control_regs[5] [11] = \<const0> ;
  assign \core_control_regs[5] [10] = \<const0> ;
  assign \core_control_regs[5] [9] = \<const0> ;
  assign \core_control_regs[5] [8] = \<const0> ;
  assign \core_control_regs[5] [7] = \<const0> ;
  assign \core_control_regs[5] [6] = \<const0> ;
  assign \core_control_regs[5] [5] = \<const0> ;
  assign \core_control_regs[5] [4] = \<const0> ;
  assign \core_control_regs[5] [3] = \<const0> ;
  assign \core_control_regs[5] [2] = \<const0> ;
  assign \core_control_regs[5] [1] = \<const0> ;
  assign \core_control_regs[5] [0] = \<const0> ;
  assign \core_control_regs[6] [31] = \<const0> ;
  assign \core_control_regs[6] [30] = \<const0> ;
  assign \core_control_regs[6] [29] = \<const0> ;
  assign \core_control_regs[6] [28] = \<const0> ;
  assign \core_control_regs[6] [27] = \<const0> ;
  assign \core_control_regs[6] [26] = \<const0> ;
  assign \core_control_regs[6] [25] = \<const0> ;
  assign \core_control_regs[6] [24] = \<const0> ;
  assign \core_control_regs[6] [23] = \<const0> ;
  assign \core_control_regs[6] [22] = \<const0> ;
  assign \core_control_regs[6] [21] = \<const0> ;
  assign \core_control_regs[6] [20] = \<const0> ;
  assign \core_control_regs[6] [19] = \<const0> ;
  assign \core_control_regs[6] [18] = \<const0> ;
  assign \core_control_regs[6] [17] = \<const0> ;
  assign \core_control_regs[6] [16] = \<const0> ;
  assign \core_control_regs[6] [15] = \<const0> ;
  assign \core_control_regs[6] [14] = \<const0> ;
  assign \core_control_regs[6] [13] = \<const0> ;
  assign \core_control_regs[6] [12] = \<const0> ;
  assign \core_control_regs[6] [11] = \<const0> ;
  assign \core_control_regs[6] [10] = \<const0> ;
  assign \core_control_regs[6] [9] = \<const0> ;
  assign \core_control_regs[6] [8] = \<const0> ;
  assign \core_control_regs[6] [7] = \<const0> ;
  assign \core_control_regs[6] [6] = \<const1> ;
  assign \core_control_regs[6] [5] = \<const0> ;
  assign \core_control_regs[6] [4] = \<const0> ;
  assign \core_control_regs[6] [3] = \<const0> ;
  assign \core_control_regs[6] [2] = \<const0> ;
  assign \core_control_regs[6] [1] = \<const0> ;
  assign \core_control_regs[6] [0] = \<const0> ;
  assign \core_control_regs[7] [31] = \<const0> ;
  assign \core_control_regs[7] [30] = \<const0> ;
  assign \core_control_regs[7] [29] = \<const0> ;
  assign \core_control_regs[7] [28] = \<const0> ;
  assign \core_control_regs[7] [27] = \<const0> ;
  assign \core_control_regs[7] [26] = \<const0> ;
  assign \core_control_regs[7] [25] = \<const0> ;
  assign \core_control_regs[7] [24] = \<const0> ;
  assign \core_control_regs[7] [23] = \<const0> ;
  assign \core_control_regs[7] [22] = \<const0> ;
  assign \core_control_regs[7] [21] = \<const0> ;
  assign \core_control_regs[7] [20] = \<const0> ;
  assign \core_control_regs[7] [19] = \<const0> ;
  assign \core_control_regs[7] [18] = \<const0> ;
  assign \core_control_regs[7] [17] = \<const0> ;
  assign \core_control_regs[7] [16] = \<const0> ;
  assign \core_control_regs[7] [15] = \<const0> ;
  assign \core_control_regs[7] [14] = \<const0> ;
  assign \core_control_regs[7] [13] = \<const0> ;
  assign \core_control_regs[7] [12] = \<const0> ;
  assign \core_control_regs[7] [11] = \<const0> ;
  assign \core_control_regs[7] [10] = \<const0> ;
  assign \core_control_regs[7] [9] = \<const1> ;
  assign \core_control_regs[7] [8] = \<const0> ;
  assign \core_control_regs[7] [7] = \<const0> ;
  assign \core_control_regs[7] [6] = \<const0> ;
  assign \core_control_regs[7] [5] = \<const0> ;
  assign \core_control_regs[7] [4] = \<const0> ;
  assign \core_control_regs[7] [3] = \<const0> ;
  assign \core_control_regs[7] [2] = \<const0> ;
  assign \core_control_regs[7] [1] = \<const0> ;
  assign \core_control_regs[7] [0] = \<const0> ;
  assign \core_control_regs[8] [31] = \<const0> ;
  assign \core_control_regs[8] [30] = \<const0> ;
  assign \core_control_regs[8] [29] = \<const0> ;
  assign \core_control_regs[8] [28] = \<const0> ;
  assign \core_control_regs[8] [27] = \<const0> ;
  assign \core_control_regs[8] [26] = \<const0> ;
  assign \core_control_regs[8] [25] = \<const0> ;
  assign \core_control_regs[8] [24] = \<const0> ;
  assign \core_control_regs[8] [23] = \<const0> ;
  assign \core_control_regs[8] [22] = \<const0> ;
  assign \core_control_regs[8] [21] = \<const0> ;
  assign \core_control_regs[8] [20] = \<const0> ;
  assign \core_control_regs[8] [19] = \<const0> ;
  assign \core_control_regs[8] [18] = \<const0> ;
  assign \core_control_regs[8] [17] = \<const0> ;
  assign \core_control_regs[8] [16] = \<const0> ;
  assign \core_control_regs[8] [15] = \<const0> ;
  assign \core_control_regs[8] [14] = \<const0> ;
  assign \core_control_regs[8] [13] = \<const0> ;
  assign \core_control_regs[8] [12] = \<const0> ;
  assign \core_control_regs[8] [11] = \<const0> ;
  assign \core_control_regs[8] [10] = \<const0> ;
  assign \core_control_regs[8] [9] = \<const1> ;
  assign \core_control_regs[8] [8] = \<const0> ;
  assign \core_control_regs[8] [7] = \<const0> ;
  assign \core_control_regs[8] [6] = \<const0> ;
  assign \core_control_regs[8] [5] = \<const0> ;
  assign \core_control_regs[8] [4] = \<const0> ;
  assign \core_control_regs[8] [3] = \<const0> ;
  assign \core_control_regs[8] [2] = \<const0> ;
  assign \core_control_regs[8] [1] = \<const0> ;
  assign \core_control_regs[8] [0] = \<const0> ;
  assign \core_control_regs[9] [31] = \<const0> ;
  assign \core_control_regs[9] [30] = \<const0> ;
  assign \core_control_regs[9] [29] = \<const0> ;
  assign \core_control_regs[9] [28] = \<const0> ;
  assign \core_control_regs[9] [27] = \<const0> ;
  assign \core_control_regs[9] [26] = \<const0> ;
  assign \core_control_regs[9] [25] = \<const0> ;
  assign \core_control_regs[9] [24] = \<const0> ;
  assign \core_control_regs[9] [23] = \<const0> ;
  assign \core_control_regs[9] [22] = \<const0> ;
  assign \core_control_regs[9] [21] = \<const0> ;
  assign \core_control_regs[9] [20] = \<const0> ;
  assign \core_control_regs[9] [19] = \<const0> ;
  assign \core_control_regs[9] [18] = \<const0> ;
  assign \core_control_regs[9] [17] = \<const0> ;
  assign \core_control_regs[9] [16] = \<const0> ;
  assign \core_control_regs[9] [15] = \<const0> ;
  assign \core_control_regs[9] [14] = \<const1> ;
  assign \core_control_regs[9] [13] = \<const0> ;
  assign \core_control_regs[9] [12] = \<const0> ;
  assign \core_control_regs[9] [11] = \<const1> ;
  assign \core_control_regs[9] [10] = \<const1> ;
  assign \core_control_regs[9] [9] = \<const0> ;
  assign \core_control_regs[9] [8] = \<const0> ;
  assign \core_control_regs[9] [7] = \<const1> ;
  assign \core_control_regs[9] [6] = \<const0> ;
  assign \core_control_regs[9] [5] = \<const0> ;
  assign \core_control_regs[9] [4] = \<const0> ;
  assign \core_control_regs[9] [3] = \<const1> ;
  assign \core_control_regs[9] [2] = \<const0> ;
  assign \core_control_regs[9] [1] = \<const1> ;
  assign \core_control_regs[9] [0] = \<const1> ;
  assign core_d_out = \<const0> ;
  assign \genr_control_regs[0] [31] = \<const0> ;
  assign \genr_control_regs[0] [30] = \<const0> ;
  assign \genr_control_regs[0] [29] = \<const0> ;
  assign \genr_control_regs[0] [28] = \<const0> ;
  assign \genr_control_regs[0] [27] = \<const0> ;
  assign \genr_control_regs[0] [26] = \<const0> ;
  assign \genr_control_regs[0] [25] = \<const0> ;
  assign \genr_control_regs[0] [24] = \<const0> ;
  assign \genr_control_regs[0] [23] = \<const0> ;
  assign \genr_control_regs[0] [22] = \<const0> ;
  assign \genr_control_regs[0] [21] = \<const0> ;
  assign \genr_control_regs[0] [20] = \<const0> ;
  assign \genr_control_regs[0] [19] = \<const0> ;
  assign \genr_control_regs[0] [18] = \<const0> ;
  assign \genr_control_regs[0] [17] = \<const0> ;
  assign \genr_control_regs[0] [16] = \<const0> ;
  assign \genr_control_regs[0] [15] = \<const0> ;
  assign \genr_control_regs[0] [14] = \<const0> ;
  assign \genr_control_regs[0] [13] = \<const0> ;
  assign \genr_control_regs[0] [12] = \<const0> ;
  assign \genr_control_regs[0] [11] = \<const0> ;
  assign \genr_control_regs[0] [10] = \<const0> ;
  assign \genr_control_regs[0] [9] = \<const0> ;
  assign \genr_control_regs[0] [8] = \<const0> ;
  assign \genr_control_regs[0] [7] = \<const0> ;
  assign \genr_control_regs[0] [6] = \<const0> ;
  assign \genr_control_regs[0] [5] = \<const0> ;
  assign \genr_control_regs[0] [4] = \<const0> ;
  assign \genr_control_regs[0] [3] = \<const0> ;
  assign \genr_control_regs[0] [2] = \<const0> ;
  assign \genr_control_regs[0] [1] = \<const0> ;
  assign \genr_control_regs[0] [0] = \<const1> ;
  assign \genr_control_regs[1] [31] = \<const0> ;
  assign \genr_control_regs[1] [30] = \<const0> ;
  assign \genr_control_regs[1] [29] = \<const0> ;
  assign \genr_control_regs[1] [28] = \<const0> ;
  assign \genr_control_regs[1] [27] = \<const0> ;
  assign \genr_control_regs[1] [26] = \<const0> ;
  assign \genr_control_regs[1] [25] = \<const0> ;
  assign \genr_control_regs[1] [24] = \<const0> ;
  assign \genr_control_regs[1] [23] = \<const0> ;
  assign \genr_control_regs[1] [22] = \<const0> ;
  assign \genr_control_regs[1] [21] = \<const0> ;
  assign \genr_control_regs[1] [20] = \<const0> ;
  assign \genr_control_regs[1] [19] = \<const0> ;
  assign \genr_control_regs[1] [18] = \<const0> ;
  assign \genr_control_regs[1] [17] = \<const0> ;
  assign \genr_control_regs[1] [16] = \<const0> ;
  assign \genr_control_regs[1] [15] = \<const0> ;
  assign \genr_control_regs[1] [14] = \<const0> ;
  assign \genr_control_regs[1] [13] = \<const0> ;
  assign \genr_control_regs[1] [12] = \<const0> ;
  assign \genr_control_regs[1] [11] = \<const0> ;
  assign \genr_control_regs[1] [10] = \<const0> ;
  assign \genr_control_regs[1] [9] = \<const0> ;
  assign \genr_control_regs[1] [8] = \<const0> ;
  assign \genr_control_regs[1] [7] = \<const0> ;
  assign \genr_control_regs[1] [6] = \<const0> ;
  assign \genr_control_regs[1] [5] = \<const0> ;
  assign \genr_control_regs[1] [4] = \<const0> ;
  assign \genr_control_regs[1] [3] = \<const0> ;
  assign \genr_control_regs[1] [2] = \<const0> ;
  assign \genr_control_regs[1] [1] = \<const0> ;
  assign \genr_control_regs[1] [0] = \<const0> ;
  assign \genr_control_regs[2] [31] = \<const0> ;
  assign \genr_control_regs[2] [30] = \<const0> ;
  assign \genr_control_regs[2] [29] = \<const0> ;
  assign \genr_control_regs[2] [28] = \<const0> ;
  assign \genr_control_regs[2] [27] = \<const0> ;
  assign \genr_control_regs[2] [26] = \<const0> ;
  assign \genr_control_regs[2] [25] = \<const0> ;
  assign \genr_control_regs[2] [24] = \<const0> ;
  assign \genr_control_regs[2] [23] = \<const0> ;
  assign \genr_control_regs[2] [22] = \<const0> ;
  assign \genr_control_regs[2] [21] = \<const0> ;
  assign \genr_control_regs[2] [20] = \<const0> ;
  assign \genr_control_regs[2] [19] = \<const0> ;
  assign \genr_control_regs[2] [18] = \<const0> ;
  assign \genr_control_regs[2] [17] = \<const0> ;
  assign \genr_control_regs[2] [16] = \<const0> ;
  assign \genr_control_regs[2] [15] = \<const0> ;
  assign \genr_control_regs[2] [14] = \<const0> ;
  assign \genr_control_regs[2] [13] = \<const0> ;
  assign \genr_control_regs[2] [12] = \<const0> ;
  assign \genr_control_regs[2] [11] = \<const0> ;
  assign \genr_control_regs[2] [10] = \<const0> ;
  assign \genr_control_regs[2] [9] = \<const0> ;
  assign \genr_control_regs[2] [8] = \<const0> ;
  assign \genr_control_regs[2] [7] = \<const0> ;
  assign \genr_control_regs[2] [6] = \<const0> ;
  assign \genr_control_regs[2] [5] = \<const0> ;
  assign \genr_control_regs[2] [4] = \<const0> ;
  assign \genr_control_regs[2] [3] = \<const0> ;
  assign \genr_control_regs[2] [2] = \<const0> ;
  assign \genr_control_regs[2] [1] = \<const0> ;
  assign \genr_control_regs[2] [0] = \<const0> ;
  assign \genr_control_regs[3] [31] = \<const0> ;
  assign \genr_control_regs[3] [30] = \<const0> ;
  assign \genr_control_regs[3] [29] = \<const0> ;
  assign \genr_control_regs[3] [28] = \<const0> ;
  assign \genr_control_regs[3] [27] = \<const0> ;
  assign \genr_control_regs[3] [26] = \<const0> ;
  assign \genr_control_regs[3] [25] = \<const0> ;
  assign \genr_control_regs[3] [24] = \<const0> ;
  assign \genr_control_regs[3] [23] = \<const0> ;
  assign \genr_control_regs[3] [22] = \<const0> ;
  assign \genr_control_regs[3] [21] = \<const0> ;
  assign \genr_control_regs[3] [20] = \<const0> ;
  assign \genr_control_regs[3] [19] = \<const0> ;
  assign \genr_control_regs[3] [18] = \<const0> ;
  assign \genr_control_regs[3] [17] = \<const0> ;
  assign \genr_control_regs[3] [16] = \<const0> ;
  assign \genr_control_regs[3] [15] = \<const0> ;
  assign \genr_control_regs[3] [14] = \<const0> ;
  assign \genr_control_regs[3] [13] = \<const0> ;
  assign \genr_control_regs[3] [12] = \<const0> ;
  assign \genr_control_regs[3] [11] = \<const0> ;
  assign \genr_control_regs[3] [10] = \<const0> ;
  assign \genr_control_regs[3] [9] = \<const0> ;
  assign \genr_control_regs[3] [8] = \<const0> ;
  assign \genr_control_regs[3] [7] = \<const0> ;
  assign \genr_control_regs[3] [6] = \<const0> ;
  assign \genr_control_regs[3] [5] = \<const0> ;
  assign \genr_control_regs[3] [4] = \<const0> ;
  assign \genr_control_regs[3] [3] = \<const0> ;
  assign \genr_control_regs[3] [2] = \<const0> ;
  assign \genr_control_regs[3] [1] = \<const0> ;
  assign \genr_control_regs[3] [0] = \<const0> ;
  assign \genr_control_regs[4] [31] = \<const0> ;
  assign \genr_control_regs[4] [30] = \<const0> ;
  assign \genr_control_regs[4] [29] = \<const0> ;
  assign \genr_control_regs[4] [28] = \<const0> ;
  assign \genr_control_regs[4] [27] = \<const0> ;
  assign \genr_control_regs[4] [26] = \<const0> ;
  assign \genr_control_regs[4] [25] = \<const0> ;
  assign \genr_control_regs[4] [24] = \<const0> ;
  assign \genr_control_regs[4] [23] = \<const0> ;
  assign \genr_control_regs[4] [22] = \<const0> ;
  assign \genr_control_regs[4] [21] = \<const0> ;
  assign \genr_control_regs[4] [20] = \<const0> ;
  assign \genr_control_regs[4] [19] = \<const0> ;
  assign \genr_control_regs[4] [18] = \<const0> ;
  assign \genr_control_regs[4] [17] = \<const0> ;
  assign \genr_control_regs[4] [16] = \<const0> ;
  assign \genr_control_regs[4] [15] = \<const0> ;
  assign \genr_control_regs[4] [14] = \<const0> ;
  assign \genr_control_regs[4] [13] = \<const0> ;
  assign \genr_control_regs[4] [12] = \<const0> ;
  assign \genr_control_regs[4] [11] = \<const0> ;
  assign \genr_control_regs[4] [10] = \<const0> ;
  assign \genr_control_regs[4] [9] = \<const0> ;
  assign \genr_control_regs[4] [8] = \<const0> ;
  assign \genr_control_regs[4] [7] = \<const0> ;
  assign \genr_control_regs[4] [6] = \<const0> ;
  assign \genr_control_regs[4] [5] = \<const0> ;
  assign \genr_control_regs[4] [4] = \<const0> ;
  assign \genr_control_regs[4] [3] = \<const0> ;
  assign \genr_control_regs[4] [2] = \<const0> ;
  assign \genr_control_regs[4] [1] = \<const0> ;
  assign \genr_control_regs[4] [0] = \<const0> ;
  assign \genr_control_regs[5] [31] = \<const0> ;
  assign \genr_control_regs[5] [30] = \<const0> ;
  assign \genr_control_regs[5] [29] = \<const0> ;
  assign \genr_control_regs[5] [28] = \<const0> ;
  assign \genr_control_regs[5] [27] = \<const0> ;
  assign \genr_control_regs[5] [26] = \<const0> ;
  assign \genr_control_regs[5] [25] = \<const0> ;
  assign \genr_control_regs[5] [24] = \<const0> ;
  assign \genr_control_regs[5] [23] = \<const0> ;
  assign \genr_control_regs[5] [22] = \<const0> ;
  assign \genr_control_regs[5] [21] = \<const0> ;
  assign \genr_control_regs[5] [20] = \<const0> ;
  assign \genr_control_regs[5] [19] = \<const0> ;
  assign \genr_control_regs[5] [18] = \<const0> ;
  assign \genr_control_regs[5] [17] = \<const0> ;
  assign \genr_control_regs[5] [16] = \<const0> ;
  assign \genr_control_regs[5] [15] = \<const0> ;
  assign \genr_control_regs[5] [14] = \<const0> ;
  assign \genr_control_regs[5] [13] = \<const0> ;
  assign \genr_control_regs[5] [12] = \<const0> ;
  assign \genr_control_regs[5] [11] = \<const0> ;
  assign \genr_control_regs[5] [10] = \<const0> ;
  assign \genr_control_regs[5] [9] = \<const0> ;
  assign \genr_control_regs[5] [8] = \<const0> ;
  assign \genr_control_regs[5] [7] = \<const0> ;
  assign \genr_control_regs[5] [6] = \<const0> ;
  assign \genr_control_regs[5] [5] = \<const0> ;
  assign \genr_control_regs[5] [4] = \<const0> ;
  assign \genr_control_regs[5] [3] = \<const0> ;
  assign \genr_control_regs[5] [2] = \<const0> ;
  assign \genr_control_regs[5] [1] = \<const0> ;
  assign \genr_control_regs[5] [0] = \<const0> ;
  assign \genr_control_regs[6] [31] = \<const0> ;
  assign \genr_control_regs[6] [30] = \<const0> ;
  assign \genr_control_regs[6] [29] = \<const0> ;
  assign \genr_control_regs[6] [28] = \<const0> ;
  assign \genr_control_regs[6] [27] = \<const0> ;
  assign \genr_control_regs[6] [26] = \<const0> ;
  assign \genr_control_regs[6] [25] = \<const0> ;
  assign \genr_control_regs[6] [24] = \<const0> ;
  assign \genr_control_regs[6] [23] = \<const0> ;
  assign \genr_control_regs[6] [22] = \<const0> ;
  assign \genr_control_regs[6] [21] = \<const0> ;
  assign \genr_control_regs[6] [20] = \<const0> ;
  assign \genr_control_regs[6] [19] = \<const0> ;
  assign \genr_control_regs[6] [18] = \<const0> ;
  assign \genr_control_regs[6] [17] = \<const0> ;
  assign \genr_control_regs[6] [16] = \<const0> ;
  assign \genr_control_regs[6] [15] = \<const0> ;
  assign \genr_control_regs[6] [14] = \<const0> ;
  assign \genr_control_regs[6] [13] = \<const0> ;
  assign \genr_control_regs[6] [12] = \<const0> ;
  assign \genr_control_regs[6] [11] = \<const0> ;
  assign \genr_control_regs[6] [10] = \<const0> ;
  assign \genr_control_regs[6] [9] = \<const0> ;
  assign \genr_control_regs[6] [8] = \<const0> ;
  assign \genr_control_regs[6] [7] = \<const0> ;
  assign \genr_control_regs[6] [6] = \<const0> ;
  assign \genr_control_regs[6] [5] = \<const0> ;
  assign \genr_control_regs[6] [4] = \<const0> ;
  assign \genr_control_regs[6] [3] = \<const0> ;
  assign \genr_control_regs[6] [2] = \<const0> ;
  assign \genr_control_regs[6] [1] = \<const0> ;
  assign \genr_control_regs[6] [0] = \<const0> ;
  assign \genr_control_regs[7] [31] = \<const0> ;
  assign \genr_control_regs[7] [30] = \<const0> ;
  assign \genr_control_regs[7] [29] = \<const0> ;
  assign \genr_control_regs[7] [28] = \<const0> ;
  assign \genr_control_regs[7] [27] = \<const0> ;
  assign \genr_control_regs[7] [26] = \<const0> ;
  assign \genr_control_regs[7] [25] = \<const0> ;
  assign \genr_control_regs[7] [24] = \<const0> ;
  assign \genr_control_regs[7] [23] = \<const0> ;
  assign \genr_control_regs[7] [22] = \<const0> ;
  assign \genr_control_regs[7] [21] = \<const0> ;
  assign \genr_control_regs[7] [20] = \<const0> ;
  assign \genr_control_regs[7] [19] = \<const0> ;
  assign \genr_control_regs[7] [18] = \<const0> ;
  assign \genr_control_regs[7] [17] = \<const0> ;
  assign \genr_control_regs[7] [16] = \<const0> ;
  assign \genr_control_regs[7] [15] = \<const0> ;
  assign \genr_control_regs[7] [14] = \<const0> ;
  assign \genr_control_regs[7] [13] = \<const0> ;
  assign \genr_control_regs[7] [12] = \<const0> ;
  assign \genr_control_regs[7] [11] = \<const0> ;
  assign \genr_control_regs[7] [10] = \<const0> ;
  assign \genr_control_regs[7] [9] = \<const0> ;
  assign \genr_control_regs[7] [8] = \<const0> ;
  assign \genr_control_regs[7] [7] = \<const0> ;
  assign \genr_control_regs[7] [6] = \<const0> ;
  assign \genr_control_regs[7] [5] = \<const0> ;
  assign \genr_control_regs[7] [4] = \<const0> ;
  assign \genr_control_regs[7] [3] = \<const0> ;
  assign \genr_control_regs[7] [2] = \<const0> ;
  assign \genr_control_regs[7] [1] = \<const0> ;
  assign \genr_control_regs[7] [0] = \<const0> ;
  assign ipif_addr_out[8] = \<const0> ;
  assign ipif_addr_out[7] = \<const0> ;
  assign ipif_addr_out[6] = \<const0> ;
  assign ipif_addr_out[5] = \<const0> ;
  assign ipif_addr_out[4] = \<const0> ;
  assign ipif_addr_out[3] = \<const0> ;
  assign ipif_addr_out[2] = \<const0> ;
  assign ipif_addr_out[1] = \<const0> ;
  assign ipif_addr_out[0] = \<const0> ;
  assign ipif_cs_out = \<const0> ;
  assign ipif_data_out[31] = \<const0> ;
  assign ipif_data_out[30] = \<const0> ;
  assign ipif_data_out[29] = \<const0> ;
  assign ipif_data_out[28] = \<const0> ;
  assign ipif_data_out[27] = \<const0> ;
  assign ipif_data_out[26] = \<const0> ;
  assign ipif_data_out[25] = \<const0> ;
  assign ipif_data_out[24] = \<const0> ;
  assign ipif_data_out[23] = \<const0> ;
  assign ipif_data_out[22] = \<const0> ;
  assign ipif_data_out[21] = \<const0> ;
  assign ipif_data_out[20] = \<const0> ;
  assign ipif_data_out[19] = \<const0> ;
  assign ipif_data_out[18] = \<const0> ;
  assign ipif_data_out[17] = \<const0> ;
  assign ipif_data_out[16] = \<const0> ;
  assign ipif_data_out[15] = \<const0> ;
  assign ipif_data_out[14] = \<const0> ;
  assign ipif_data_out[13] = \<const0> ;
  assign ipif_data_out[12] = \<const0> ;
  assign ipif_data_out[11] = \<const0> ;
  assign ipif_data_out[10] = \<const0> ;
  assign ipif_data_out[9] = \<const0> ;
  assign ipif_data_out[8] = \<const0> ;
  assign ipif_data_out[7] = \<const0> ;
  assign ipif_data_out[6] = \<const0> ;
  assign ipif_data_out[5] = \<const0> ;
  assign ipif_data_out[4] = \<const0> ;
  assign ipif_data_out[3] = \<const0> ;
  assign ipif_data_out[2] = \<const0> ;
  assign ipif_data_out[1] = \<const0> ;
  assign ipif_data_out[0] = \<const0> ;
  assign ipif_rnw_out = \<const1> ;
  assign irq = \<const0> ;
  assign resetn_out = vid_aresetn;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign \time_control_regs[0] [31] = \<const0> ;
  assign \time_control_regs[0] [30] = \<const0> ;
  assign \time_control_regs[0] [29] = \<const0> ;
  assign \time_control_regs[0] [28] = \<const0> ;
  assign \time_control_regs[0] [27] = \<const0> ;
  assign \time_control_regs[0] [26] = \<const0> ;
  assign \time_control_regs[0] [25] = \<const1> ;
  assign \time_control_regs[0] [24] = \<const0> ;
  assign \time_control_regs[0] [23] = \<const1> ;
  assign \time_control_regs[0] [22] = \<const1> ;
  assign \time_control_regs[0] [21] = \<const0> ;
  assign \time_control_regs[0] [20] = \<const1> ;
  assign \time_control_regs[0] [19] = \<const0> ;
  assign \time_control_regs[0] [18] = \<const0> ;
  assign \time_control_regs[0] [17] = \<const0> ;
  assign \time_control_regs[0] [16] = \<const0> ;
  assign \time_control_regs[0] [15] = \<const0> ;
  assign \time_control_regs[0] [14] = \<const0> ;
  assign \time_control_regs[0] [13] = \<const0> ;
  assign \time_control_regs[0] [12] = \<const0> ;
  assign \time_control_regs[0] [11] = \<const0> ;
  assign \time_control_regs[0] [10] = \<const1> ;
  assign \time_control_regs[0] [9] = \<const0> ;
  assign \time_control_regs[0] [8] = \<const1> ;
  assign \time_control_regs[0] [7] = \<const0> ;
  assign \time_control_regs[0] [6] = \<const0> ;
  assign \time_control_regs[0] [5] = \<const0> ;
  assign \time_control_regs[0] [4] = \<const0> ;
  assign \time_control_regs[0] [3] = \<const0> ;
  assign \time_control_regs[0] [2] = \<const0> ;
  assign \time_control_regs[0] [1] = \<const0> ;
  assign \time_control_regs[0] [0] = \<const0> ;
  assign \time_control_regs[1] [31] = \<const0> ;
  assign \time_control_regs[1] [30] = \<const0> ;
  assign \time_control_regs[1] [29] = \<const0> ;
  assign \time_control_regs[1] [28] = \<const0> ;
  assign \time_control_regs[1] [27] = \<const0> ;
  assign \time_control_regs[1] [26] = \<const0> ;
  assign \time_control_regs[1] [25] = \<const0> ;
  assign \time_control_regs[1] [24] = \<const0> ;
  assign \time_control_regs[1] [23] = \<const0> ;
  assign \time_control_regs[1] [22] = \<const0> ;
  assign \time_control_regs[1] [21] = \<const0> ;
  assign \time_control_regs[1] [20] = \<const0> ;
  assign \time_control_regs[1] [19] = \<const0> ;
  assign \time_control_regs[1] [18] = \<const0> ;
  assign \time_control_regs[1] [17] = \<const0> ;
  assign \time_control_regs[1] [16] = \<const0> ;
  assign \time_control_regs[1] [15] = \<const0> ;
  assign \time_control_regs[1] [14] = \<const0> ;
  assign \time_control_regs[1] [13] = \<const0> ;
  assign \time_control_regs[1] [12] = \<const0> ;
  assign \time_control_regs[1] [11] = \<const0> ;
  assign \time_control_regs[1] [10] = \<const0> ;
  assign \time_control_regs[1] [9] = \<const0> ;
  assign \time_control_regs[1] [8] = \<const0> ;
  assign \time_control_regs[1] [7] = \<const0> ;
  assign \time_control_regs[1] [6] = \<const0> ;
  assign \time_control_regs[1] [5] = \<const0> ;
  assign \time_control_regs[1] [4] = \<const0> ;
  assign \time_control_regs[1] [3] = \<const0> ;
  assign \time_control_regs[1] [2] = \<const0> ;
  assign \time_control_regs[1] [1] = \<const0> ;
  assign \time_control_regs[1] [0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
