// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Nov 16 00:39:52 2023
// Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/zrh463259112/Desktop/AprilZynq/main_system/prj/project_1.srcs/sources_1/bd/design_1/ip/design_1_GaussBlur_0_0/design_1_GaussBlur_0_0_stub.v
// Design      : design_1_GaussBlur_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu2cg-sfvc784-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GaussBlur,Vivado 2020.1" *)
module design_1_GaussBlur_0_0(clk, rst_n, i_s_valid, i_s_data, i_s_fstart, 
  i_s_last, o_s_ready, o_m_valid, o_m_data, o_m_fstart, o_m_last, i_m_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,i_s_valid,i_s_data[7:0],i_s_fstart,i_s_last,o_s_ready,o_m_valid,o_m_data[7:0],o_m_fstart,o_m_last,i_m_ready" */;
  input clk;
  input rst_n;
  input i_s_valid;
  input [7:0]i_s_data;
  input i_s_fstart;
  input i_s_last;
  output o_s_ready;
  output o_m_valid;
  output [7:0]o_m_data;
  output o_m_fstart;
  output o_m_last;
  input i_m_ready;
endmodule
