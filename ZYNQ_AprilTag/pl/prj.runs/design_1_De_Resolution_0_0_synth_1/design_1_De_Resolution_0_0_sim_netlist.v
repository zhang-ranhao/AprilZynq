// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Nov 16 00:39:02 2023
// Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_De_Resolution_0_0_sim_netlist.v
// Design      : design_1_De_Resolution_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu2cg-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_De_Resolution
   (DE_REL_DATA,
    DE_REL_VALID,
    O_FSTART,
    O_TLAST,
    TVALID,
    ACLK,
    TDATA,
    FSTART,
    ARESET);
  output [7:0]DE_REL_DATA;
  output DE_REL_VALID;
  output O_FSTART;
  output O_TLAST;
  input TVALID;
  input ACLK;
  input [7:0]TDATA;
  input FSTART;
  input ARESET;

  wire ACLK;
  wire ARESET;
  wire [7:0]DE_REL_DATA;
  wire \DE_REL_DATA[7]_i_1_n_0 ;
  wire DE_REL_VALID;
  wire DE_REL_VALID0;
  wire FSTART;
  wire O_FSTART;
  wire O_FSTART0;
  wire O_FSTART_i_2_n_0;
  wire O_FSTART_i_3_n_0;
  wire O_FSTART_i_4_n_0;
  wire O_FSTART_i_5_n_0;
  wire O_FSTART_i_6_n_0;
  wire O_TLAST;
  wire O_TLAST0;
  wire O_TLAST_i_2_n_0;
  wire [7:0]TDATA;
  wire [7:0]TDATA_d1;
  wire TVALID;
  wire TVALID_d1;
  wire [10:0]col_pointer;
  wire \col_pointer[10]_i_1_n_0 ;
  wire \col_pointer[10]_i_3_n_0 ;
  wire \col_pointer[1]_i_2_n_0 ;
  wire \col_pointer[1]_i_3_n_0 ;
  wire \col_pointer_reg_n_0_[0] ;
  wire \col_pointer_reg_n_0_[10] ;
  wire \col_pointer_reg_n_0_[1] ;
  wire \col_pointer_reg_n_0_[2] ;
  wire \col_pointer_reg_n_0_[3] ;
  wire \col_pointer_reg_n_0_[4] ;
  wire \col_pointer_reg_n_0_[5] ;
  wire \col_pointer_reg_n_0_[6] ;
  wire \col_pointer_reg_n_0_[7] ;
  wire \col_pointer_reg_n_0_[8] ;
  wire \col_pointer_reg_n_0_[9] ;
  wire p_0_in;
  wire [9:0]row_pointer;
  wire \row_pointer[6]_i_2_n_0 ;
  wire \row_pointer[7]_i_2_n_0 ;
  wire \row_pointer[7]_i_3_n_0 ;
  wire \row_pointer[7]_i_4_n_0 ;
  wire \row_pointer[9]_i_1_n_0 ;
  wire \row_pointer[9]_i_3_n_0 ;
  wire \row_pointer[9]_i_4_n_0 ;
  wire \row_pointer[9]_i_5_n_0 ;
  wire \row_pointer_reg_n_0_[0] ;
  wire \row_pointer_reg_n_0_[1] ;
  wire \row_pointer_reg_n_0_[2] ;
  wire \row_pointer_reg_n_0_[3] ;
  wire \row_pointer_reg_n_0_[4] ;
  wire \row_pointer_reg_n_0_[5] ;
  wire \row_pointer_reg_n_0_[6] ;
  wire \row_pointer_reg_n_0_[7] ;
  wire \row_pointer_reg_n_0_[8] ;
  wire \row_pointer_reg_n_0_[9] ;

  LUT4 #(
    .INIT(16'hEFFF)) 
    \DE_REL_DATA[7]_i_1 
       (.I0(\col_pointer_reg_n_0_[0] ),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(TVALID_d1),
        .I3(ARESET),
        .O(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[0]),
        .Q(DE_REL_DATA[0]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[1]),
        .Q(DE_REL_DATA[1]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[2]),
        .Q(DE_REL_DATA[2]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[3]),
        .Q(DE_REL_DATA[3]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[4]),
        .Q(DE_REL_DATA[4]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[5]),
        .Q(DE_REL_DATA[5]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[6]),
        .Q(DE_REL_DATA[6]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  FDRE \DE_REL_DATA_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA_d1[7]),
        .Q(DE_REL_DATA[7]),
        .R(\DE_REL_DATA[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    DE_REL_VALID_i_1
       (.I0(ARESET),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h10)) 
    DE_REL_VALID_i_2
       (.I0(\col_pointer_reg_n_0_[0] ),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(TVALID_d1),
        .O(DE_REL_VALID0));
  FDRE DE_REL_VALID_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(DE_REL_VALID0),
        .Q(DE_REL_VALID),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00800000)) 
    O_FSTART_i_1
       (.I0(O_FSTART_i_2_n_0),
        .I1(O_FSTART_i_3_n_0),
        .I2(O_FSTART_i_4_n_0),
        .I3(O_FSTART_i_5_n_0),
        .I4(O_FSTART_i_6_n_0),
        .O(O_FSTART0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    O_FSTART_i_2
       (.I0(\col_pointer_reg_n_0_[8] ),
        .I1(\col_pointer_reg_n_0_[9] ),
        .I2(\col_pointer_reg_n_0_[6] ),
        .I3(\col_pointer_reg_n_0_[7] ),
        .I4(\row_pointer_reg_n_0_[1] ),
        .I5(\col_pointer_reg_n_0_[10] ),
        .O(O_FSTART_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    O_FSTART_i_3
       (.I0(\col_pointer_reg_n_0_[5] ),
        .I1(\col_pointer_reg_n_0_[4] ),
        .I2(\row_pointer_reg_n_0_[8] ),
        .I3(\row_pointer_reg_n_0_[5] ),
        .O(O_FSTART_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    O_FSTART_i_4
       (.I0(\col_pointer_reg_n_0_[3] ),
        .I1(\col_pointer_reg_n_0_[2] ),
        .I2(\col_pointer_reg_n_0_[1] ),
        .O(O_FSTART_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    O_FSTART_i_5
       (.I0(TVALID_d1),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(\col_pointer_reg_n_0_[0] ),
        .O(O_FSTART_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    O_FSTART_i_6
       (.I0(\row_pointer_reg_n_0_[4] ),
        .I1(\row_pointer_reg_n_0_[6] ),
        .I2(\row_pointer_reg_n_0_[2] ),
        .I3(\row_pointer_reg_n_0_[3] ),
        .I4(\row_pointer_reg_n_0_[9] ),
        .I5(\row_pointer_reg_n_0_[7] ),
        .O(O_FSTART_i_6_n_0));
  FDRE O_FSTART_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(O_FSTART0),
        .Q(O_FSTART),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    O_TLAST_i_1
       (.I0(O_FSTART_i_5_n_0),
        .I1(\col_pointer_reg_n_0_[2] ),
        .I2(\col_pointer_reg_n_0_[1] ),
        .I3(\col_pointer_reg_n_0_[10] ),
        .I4(\col_pointer_reg_n_0_[9] ),
        .I5(O_TLAST_i_2_n_0),
        .O(O_TLAST0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    O_TLAST_i_2
       (.I0(\col_pointer_reg_n_0_[5] ),
        .I1(\col_pointer_reg_n_0_[6] ),
        .I2(\col_pointer_reg_n_0_[3] ),
        .I3(\col_pointer_reg_n_0_[4] ),
        .I4(\col_pointer_reg_n_0_[8] ),
        .I5(\col_pointer_reg_n_0_[7] ),
        .O(O_TLAST_i_2_n_0));
  FDRE O_TLAST_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(O_TLAST0),
        .Q(O_TLAST),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[0]),
        .Q(TDATA_d1[0]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[1]),
        .Q(TDATA_d1[1]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[2]),
        .Q(TDATA_d1[2]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[3]),
        .Q(TDATA_d1[3]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[4]),
        .Q(TDATA_d1[4]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[5]),
        .Q(TDATA_d1[5]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[6]),
        .Q(TDATA_d1[6]),
        .R(p_0_in));
  FDRE \TDATA_d1_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(TDATA[7]),
        .Q(TDATA_d1[7]),
        .R(p_0_in));
  FDRE TVALID_d1_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(TVALID),
        .Q(TVALID_d1),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \col_pointer[0]_i_1 
       (.I0(\col_pointer_reg_n_0_[0] ),
        .O(col_pointer[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \col_pointer[10]_i_1 
       (.I0(FSTART),
        .I1(ARESET),
        .O(\col_pointer[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA68AAAAAAAAAA)) 
    \col_pointer[10]_i_2 
       (.I0(\col_pointer_reg_n_0_[10] ),
        .I1(\col_pointer_reg_n_0_[9] ),
        .I2(\col_pointer_reg_n_0_[8] ),
        .I3(\col_pointer_reg_n_0_[6] ),
        .I4(\col_pointer[10]_i_3_n_0 ),
        .I5(\col_pointer_reg_n_0_[7] ),
        .O(col_pointer[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \col_pointer[10]_i_3 
       (.I0(\col_pointer_reg_n_0_[4] ),
        .I1(\col_pointer_reg_n_0_[2] ),
        .I2(\col_pointer_reg_n_0_[0] ),
        .I3(\col_pointer_reg_n_0_[1] ),
        .I4(\col_pointer_reg_n_0_[3] ),
        .I5(\col_pointer_reg_n_0_[5] ),
        .O(\col_pointer[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55545555AAAAAAAA)) 
    \col_pointer[1]_i_1 
       (.I0(\col_pointer_reg_n_0_[0] ),
        .I1(\col_pointer[1]_i_2_n_0 ),
        .I2(\col_pointer[1]_i_3_n_0 ),
        .I3(\col_pointer_reg_n_0_[8] ),
        .I4(\col_pointer_reg_n_0_[10] ),
        .I5(\col_pointer_reg_n_0_[1] ),
        .O(col_pointer[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \col_pointer[1]_i_2 
       (.I0(\col_pointer_reg_n_0_[7] ),
        .I1(\col_pointer_reg_n_0_[0] ),
        .I2(\col_pointer_reg_n_0_[6] ),
        .I3(\col_pointer_reg_n_0_[5] ),
        .O(\col_pointer[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \col_pointer[1]_i_3 
       (.I0(\col_pointer_reg_n_0_[2] ),
        .I1(\col_pointer_reg_n_0_[9] ),
        .I2(\col_pointer_reg_n_0_[4] ),
        .I3(\col_pointer_reg_n_0_[3] ),
        .O(\col_pointer[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \col_pointer[2]_i_1 
       (.I0(\col_pointer_reg_n_0_[1] ),
        .I1(\col_pointer_reg_n_0_[0] ),
        .I2(\col_pointer_reg_n_0_[2] ),
        .O(col_pointer[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \col_pointer[3]_i_1 
       (.I0(\col_pointer_reg_n_0_[2] ),
        .I1(\col_pointer_reg_n_0_[0] ),
        .I2(\col_pointer_reg_n_0_[1] ),
        .I3(\col_pointer_reg_n_0_[3] ),
        .O(col_pointer[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \col_pointer[4]_i_1 
       (.I0(\col_pointer_reg_n_0_[3] ),
        .I1(\col_pointer_reg_n_0_[1] ),
        .I2(\col_pointer_reg_n_0_[0] ),
        .I3(\col_pointer_reg_n_0_[2] ),
        .I4(\col_pointer_reg_n_0_[4] ),
        .O(col_pointer[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \col_pointer[5]_i_1 
       (.I0(\col_pointer_reg_n_0_[4] ),
        .I1(\col_pointer_reg_n_0_[2] ),
        .I2(\col_pointer_reg_n_0_[0] ),
        .I3(\col_pointer_reg_n_0_[1] ),
        .I4(\col_pointer_reg_n_0_[3] ),
        .I5(\col_pointer_reg_n_0_[5] ),
        .O(col_pointer[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \col_pointer[6]_i_1 
       (.I0(\col_pointer[10]_i_3_n_0 ),
        .I1(\col_pointer_reg_n_0_[6] ),
        .O(col_pointer[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \col_pointer[7]_i_1 
       (.I0(\col_pointer_reg_n_0_[6] ),
        .I1(\col_pointer[10]_i_3_n_0 ),
        .I2(\col_pointer_reg_n_0_[7] ),
        .O(col_pointer[7]));
  LUT6 #(
    .INIT(64'hDFDFDFDF20200020)) 
    \col_pointer[8]_i_1 
       (.I0(\col_pointer_reg_n_0_[6] ),
        .I1(\col_pointer[10]_i_3_n_0 ),
        .I2(\col_pointer_reg_n_0_[7] ),
        .I3(\col_pointer_reg_n_0_[10] ),
        .I4(\col_pointer_reg_n_0_[9] ),
        .I5(\col_pointer_reg_n_0_[8] ),
        .O(col_pointer[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \col_pointer[9]_i_1 
       (.I0(\col_pointer_reg_n_0_[8] ),
        .I1(\col_pointer_reg_n_0_[6] ),
        .I2(\col_pointer[10]_i_3_n_0 ),
        .I3(\col_pointer_reg_n_0_[7] ),
        .I4(\col_pointer_reg_n_0_[9] ),
        .O(col_pointer[9]));
  FDRE \col_pointer_reg[0] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[0]),
        .Q(\col_pointer_reg_n_0_[0] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[10] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[10]),
        .Q(\col_pointer_reg_n_0_[10] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[1] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[1]),
        .Q(\col_pointer_reg_n_0_[1] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[2] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[2]),
        .Q(\col_pointer_reg_n_0_[2] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[3] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[3]),
        .Q(\col_pointer_reg_n_0_[3] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[4] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[4]),
        .Q(\col_pointer_reg_n_0_[4] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[5] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[5]),
        .Q(\col_pointer_reg_n_0_[5] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[6] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[6]),
        .Q(\col_pointer_reg_n_0_[6] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[7] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[7]),
        .Q(\col_pointer_reg_n_0_[7] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[8] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[8]),
        .Q(\col_pointer_reg_n_0_[8] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \col_pointer_reg[9] 
       (.C(ACLK),
        .CE(TVALID_d1),
        .D(col_pointer[9]),
        .Q(\col_pointer_reg_n_0_[9] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \row_pointer[0]_i_1 
       (.I0(\row_pointer_reg_n_0_[0] ),
        .O(row_pointer[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_pointer[1]_i_1 
       (.I0(\row_pointer_reg_n_0_[0] ),
        .I1(\row_pointer_reg_n_0_[1] ),
        .O(row_pointer[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row_pointer[2]_i_1 
       (.I0(\row_pointer_reg_n_0_[1] ),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(\row_pointer_reg_n_0_[2] ),
        .O(row_pointer[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_pointer[3]_i_1 
       (.I0(\row_pointer_reg_n_0_[2] ),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(\row_pointer_reg_n_0_[1] ),
        .I3(\row_pointer_reg_n_0_[3] ),
        .O(row_pointer[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAA55545555)) 
    \row_pointer[4]_i_1 
       (.I0(\row_pointer[9]_i_5_n_0 ),
        .I1(\row_pointer[9]_i_4_n_0 ),
        .I2(\row_pointer_reg_n_0_[8] ),
        .I3(\row_pointer_reg_n_0_[5] ),
        .I4(\row_pointer_reg_n_0_[9] ),
        .I5(\row_pointer_reg_n_0_[4] ),
        .O(row_pointer[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \row_pointer[5]_i_1 
       (.I0(\row_pointer_reg_n_0_[4] ),
        .I1(\row_pointer_reg_n_0_[2] ),
        .I2(\row_pointer_reg_n_0_[0] ),
        .I3(\row_pointer_reg_n_0_[1] ),
        .I4(\row_pointer_reg_n_0_[3] ),
        .I5(\row_pointer_reg_n_0_[5] ),
        .O(row_pointer[5]));
  LUT6 #(
    .INIT(64'hFFFEFF00FFFEFFFF)) 
    \row_pointer[6]_i_1 
       (.I0(\row_pointer[7]_i_2_n_0 ),
        .I1(\row_pointer[9]_i_5_n_0 ),
        .I2(\row_pointer[7]_i_3_n_0 ),
        .I3(\row_pointer[6]_i_2_n_0 ),
        .I4(\row_pointer_reg_n_0_[6] ),
        .I5(\row_pointer[7]_i_4_n_0 ),
        .O(row_pointer[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \row_pointer[6]_i_2 
       (.I0(\row_pointer_reg_n_0_[7] ),
        .I1(\row_pointer_reg_n_0_[4] ),
        .I2(\row_pointer_reg_n_0_[6] ),
        .O(\row_pointer[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFF00FF0000)) 
    \row_pointer[7]_i_1 
       (.I0(\row_pointer[7]_i_2_n_0 ),
        .I1(\row_pointer[9]_i_5_n_0 ),
        .I2(\row_pointer[7]_i_3_n_0 ),
        .I3(\row_pointer[7]_i_4_n_0 ),
        .I4(\row_pointer_reg_n_0_[6] ),
        .I5(\row_pointer_reg_n_0_[7] ),
        .O(row_pointer[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h76)) 
    \row_pointer[7]_i_2 
       (.I0(\row_pointer_reg_n_0_[4] ),
        .I1(\row_pointer_reg_n_0_[5] ),
        .I2(\row_pointer_reg_n_0_[8] ),
        .O(\row_pointer[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \row_pointer[7]_i_3 
       (.I0(\row_pointer_reg_n_0_[4] ),
        .I1(\row_pointer_reg_n_0_[9] ),
        .O(\row_pointer[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \row_pointer[7]_i_4 
       (.I0(\row_pointer_reg_n_0_[4] ),
        .I1(\row_pointer_reg_n_0_[2] ),
        .I2(\row_pointer_reg_n_0_[0] ),
        .I3(\row_pointer_reg_n_0_[1] ),
        .I4(\row_pointer_reg_n_0_[3] ),
        .I5(\row_pointer_reg_n_0_[5] ),
        .O(\row_pointer[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \row_pointer[8]_i_1 
       (.I0(\row_pointer_reg_n_0_[6] ),
        .I1(\row_pointer_reg_n_0_[7] ),
        .I2(\row_pointer_reg_n_0_[4] ),
        .I3(\row_pointer[9]_i_5_n_0 ),
        .I4(\row_pointer_reg_n_0_[5] ),
        .I5(\row_pointer_reg_n_0_[8] ),
        .O(row_pointer[8]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \row_pointer[9]_i_1 
       (.I0(\row_pointer[9]_i_3_n_0 ),
        .I1(TVALID_d1),
        .I2(\col_pointer_reg_n_0_[8] ),
        .I3(\col_pointer_reg_n_0_[7] ),
        .I4(\col_pointer[10]_i_3_n_0 ),
        .I5(\col_pointer_reg_n_0_[6] ),
        .O(\row_pointer[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA6AAAAAAAAA8)) 
    \row_pointer[9]_i_2 
       (.I0(\row_pointer_reg_n_0_[9] ),
        .I1(\row_pointer_reg_n_0_[8] ),
        .I2(\row_pointer[9]_i_4_n_0 ),
        .I3(\row_pointer_reg_n_0_[4] ),
        .I4(\row_pointer[9]_i_5_n_0 ),
        .I5(\row_pointer_reg_n_0_[5] ),
        .O(row_pointer[9]));
  LUT2 #(
    .INIT(4'hB)) 
    \row_pointer[9]_i_3 
       (.I0(\col_pointer_reg_n_0_[9] ),
        .I1(\col_pointer_reg_n_0_[10] ),
        .O(\row_pointer[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \row_pointer[9]_i_4 
       (.I0(\row_pointer_reg_n_0_[6] ),
        .I1(\row_pointer_reg_n_0_[7] ),
        .O(\row_pointer[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_pointer[9]_i_5 
       (.I0(\row_pointer_reg_n_0_[2] ),
        .I1(\row_pointer_reg_n_0_[0] ),
        .I2(\row_pointer_reg_n_0_[1] ),
        .I3(\row_pointer_reg_n_0_[3] ),
        .O(\row_pointer[9]_i_5_n_0 ));
  FDRE \row_pointer_reg[0] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[0]),
        .Q(\row_pointer_reg_n_0_[0] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[1] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[1]),
        .Q(\row_pointer_reg_n_0_[1] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[2] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[2]),
        .Q(\row_pointer_reg_n_0_[2] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[3] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[3]),
        .Q(\row_pointer_reg_n_0_[3] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[4] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[4]),
        .Q(\row_pointer_reg_n_0_[4] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[5] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[5]),
        .Q(\row_pointer_reg_n_0_[5] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[6] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[6]),
        .Q(\row_pointer_reg_n_0_[6] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[7] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[7]),
        .Q(\row_pointer_reg_n_0_[7] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[8] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[8]),
        .Q(\row_pointer_reg_n_0_[8] ),
        .R(\col_pointer[10]_i_1_n_0 ));
  FDRE \row_pointer_reg[9] 
       (.C(ACLK),
        .CE(\row_pointer[9]_i_1_n_0 ),
        .D(row_pointer[9]),
        .Q(\row_pointer_reg_n_0_[9] ),
        .R(\col_pointer[10]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_De_Resolution_0_0,De_Resolution,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "De_Resolution,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ACLK,
    ARESET,
    TREADY,
    TDATA,
    TLAST,
    TVALID,
    FSTART,
    DE_REL_DATA,
    DE_REL_VALID,
    O_FSTART,
    O_TLAST);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF O, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ACLK;
  input ARESET;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TREADY" *) output TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TDATA" *) input [7:0]TDATA;
  input TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TVALID" *) input TVALID;
  input FSTART;
  output [7:0]DE_REL_DATA;
  output DE_REL_VALID;
  output O_FSTART;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 O TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output O_TLAST;

  wire \<const0> ;
  wire ACLK;
  wire ARESET;
  wire [7:0]DE_REL_DATA;
  wire DE_REL_VALID;
  wire FSTART;
  wire O_FSTART;
  wire O_TLAST;
  wire [7:0]TDATA;
  wire TVALID;

  assign TREADY = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_De_Resolution inst
       (.ACLK(ACLK),
        .ARESET(ARESET),
        .DE_REL_DATA(DE_REL_DATA),
        .DE_REL_VALID(DE_REL_VALID),
        .FSTART(FSTART),
        .O_FSTART(O_FSTART),
        .O_TLAST(O_TLAST),
        .TDATA(TDATA),
        .TVALID(TVALID));
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
