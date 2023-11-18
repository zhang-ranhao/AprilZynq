// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:De_Resolution:1.0
// IP Revision: 1

(* X_CORE_INFO = "De_Resolution,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "design_1_De_Resolution_0_0,De_Resolution,{}" *)
(* CORE_GENERATION_INFO = "design_1_De_Resolution_0_0,De_Resolution,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=De_Resolution,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,DATA_WIDTH=8,COL_SIZE=1280,ROW_SIZE=720}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_De_Resolution_0_0 (
  ACLK,
  ARESET,
  TREADY,
  TDATA,
  TLAST,
  TVALID,
  FSTART,
  DE_REL_DATA,
  DE_REL_VALID,
  O_FSTART,
  O_TLAST
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF O, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *)
input wire ACLK;
input wire ARESET;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TREADY" *)
output wire TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TDATA" *)
input wire [7 : 0] TDATA;
input wire TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TVALID" *)
input wire TVALID;
input wire FSTART;
output wire [7 : 0] DE_REL_DATA;
output wire DE_REL_VALID;
output wire O_FSTART;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TLAST" *)
output wire O_TLAST;

  De_Resolution #(
    .DATA_WIDTH(8),
    .COL_SIZE(1280),
    .ROW_SIZE(720)
  ) inst (
    .ACLK(ACLK),
    .ARESET(ARESET),
    .TREADY(TREADY),
    .TDATA(TDATA),
    .TLAST(TLAST),
    .TVALID(TVALID),
    .FSTART(FSTART),
    .DE_REL_DATA(DE_REL_DATA),
    .DE_REL_VALID(DE_REL_VALID),
    .O_FSTART(O_FSTART),
    .O_TLAST(O_TLAST)
  );
endmodule
