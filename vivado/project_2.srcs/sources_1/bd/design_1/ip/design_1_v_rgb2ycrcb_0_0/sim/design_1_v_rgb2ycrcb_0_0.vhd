-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_rgb2ycrcb:7.1
-- IP Revision: 13

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_rgb2ycrcb_v7_1_13;
USE v_rgb2ycrcb_v7_1_13.v_rgb2ycrcb;

ENTITY design_1_v_rgb2ycrcb_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    s_axis_video_tuser_sof : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC;
    m_axis_video_tuser_sof : OUT STD_LOGIC
  );
END design_1_v_rgb2ycrcb_0_0;

ARCHITECTURE design_1_v_rgb2ycrcb_0_0_arch OF design_1_v_rgb2ycrcb_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_v_rgb2ycrcb_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT v_rgb2ycrcb IS
    GENERIC (
      C_S_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_FORMAT : INTEGER;
      C_S_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_FORMAT : INTEGER;
      C_M_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      c_s_axi_addr_width : INTEGER;
      c_s_axi_data_width : INTEGER;
      C_HAS_AXI4_LITE : INTEGER;
      C_HAS_DEBUG : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_MAX_COLS : INTEGER;
      C_ACTIVE_COLS : INTEGER;
      C_ACTIVE_ROWS : INTEGER;
      C_HAS_CLIP : INTEGER;
      C_HAS_CLAMP : INTEGER;
      C_ACOEF : INTEGER;
      C_BCOEF : INTEGER;
      C_CCOEF : INTEGER;
      C_DCOEF : INTEGER;
      C_YOFFSET : INTEGER;
      C_CBOFFSET : INTEGER;
      C_CROFFSET : INTEGER;
      C_YMAX : INTEGER;
      C_YMIN : INTEGER;
      C_CBMAX : INTEGER;
      C_CBMIN : INTEGER;
      C_CRMAX : INTEGER;
      C_CRMIN : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_FAMILY : STRING
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aclken : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      irq : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      s_axis_video_tuser_sof : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      m_axis_video_tuser_sof : OUT STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC
    );
  END COMPONENT v_rgb2ycrcb;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser_sof: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_video_tdata: SIGNAL IS "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value xilinx.com:video:Y_U_V_444:1.0} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {}" & 
" maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value rows} size {attribs {resolve_type generated dependency active_rows format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency active_rows_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immed" & 
"iate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cols} size {attribs {resolve_type generated dependency active_cols format long minimum {} maximum {}} value 1} stride {attrib" & 
"s {resolve_type generated dependency active_cols_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 30} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_Y {name {attribs {resolve_type immediate dependency {} format string minim" & 
"um {} maximum {}} value Y} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immedia" & 
"te dependency {} format bool minimum {} maximum {}} value true}}}} field_U {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value U} enabled {attribs {resolve_type generated dependency video_comp1_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maxim" & 
"um {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp1_offset format long minimum {} maximum {}} value 10} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} field_V {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value V} enabled {attribs {resolve_type generated dependency video_comp2_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {r" & 
"esolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency video_data_width format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type generated dependency video_comp2_offset format long minimum {} maximum {}} value 20} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 32}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser_sof: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_video_tdata: SIGNAL IS "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclken: SIGNAL IS "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF aclken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in:video_out, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
BEGIN
  U0 : v_rgb2ycrcb
    GENERIC MAP (
      C_S_AXIS_VIDEO_DATA_WIDTH => 10,
      C_S_AXIS_VIDEO_FORMAT => 2,
      C_S_AXIS_VIDEO_TDATA_WIDTH => 32,
      C_M_AXIS_VIDEO_DATA_WIDTH => 10,
      C_M_AXIS_VIDEO_FORMAT => 1,
      C_M_AXIS_VIDEO_TDATA_WIDTH => 32,
      c_s_axi_addr_width => 9,
      c_s_axi_data_width => 32,
      C_HAS_AXI4_LITE => 0,
      C_HAS_DEBUG => 0,
      C_HAS_INTC_IF => 0,
      C_MAX_COLS => 1280,
      C_ACTIVE_COLS => 1280,
      C_ACTIVE_ROWS => 720,
      C_HAS_CLIP => 1,
      C_HAS_CLAMP => 1,
      C_ACOEF => 19595,
      C_BCOEF => 7471,
      C_CCOEF => 57493,
      C_DCOEF => 32250,
      C_YOFFSET => 64,
      C_CBOFFSET => 512,
      C_CROFFSET => 512,
      C_YMAX => 1023,
      C_YMIN => 0,
      C_CBMAX => 1023,
      C_CBMIN => 0,
      C_CRMAX => 1023,
      C_CRMIN => 0,
      C_S_AXI_CLK_FREQ_HZ => 100000000,
      C_FAMILY => "zynquplus"
    )
    PORT MAP (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      s_axi_aclk => '0',
      s_axi_aclken => '1',
      s_axi_aresetn => '1',
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tlast => s_axis_video_tlast,
      s_axis_video_tuser_sof => s_axis_video_tuser_sof,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tlast => m_axis_video_tlast,
      m_axis_video_tuser_sof => m_axis_video_tuser_sof,
      s_axi_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 9)),
      s_axi_awvalid => '0',
      s_axi_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      s_axi_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_wvalid => '0',
      s_axi_bready => '0',
      s_axi_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 9)),
      s_axi_arvalid => '0',
      s_axi_rready => '0'
    );
END design_1_v_rgb2ycrcb_0_0_arch;
