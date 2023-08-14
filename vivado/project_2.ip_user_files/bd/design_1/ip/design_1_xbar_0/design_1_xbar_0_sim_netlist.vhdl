-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sun May 14 18:56:26 2023
-- Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_xbar_0 -prefix
--               design_1_xbar_0_ design_1_xbar_0_sim_netlist.vhdl
-- Design      : design_1_xbar_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_addr_arbiter is
  port (
    aa_wm_awgrant_enc : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    f_hot2enc_return : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.last_rr_hot_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    match : out STD_LOGIC;
    \gen_arbiter.s_ready_i_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tmp_aa_awmesg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    match_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[3]\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_arbiter.m_valid_i_reg_inv_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \sa_wm_awvalid__1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_valid_i_reg_inv_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.write_cs01_out\ : out STD_LOGIC;
    \s_axi_awvalid[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awvalid[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_arbiter.m_valid_i_reg_inv_2\ : out STD_LOGIC;
    \gen_arbiter.m_mesg_i_reg[62]_0\ : out STD_LOGIC_VECTOR ( 59 downto 0 );
    aclk : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_1\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    valid_qual_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[1]\ : in STD_LOGIC;
    \storage_data1_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_aready__1\ : in STD_LOGIC;
    \m_aready__1_1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : in STD_LOGIC;
    \gen_arbiter.qual_reg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_addr_arbiter;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_addr_arbiter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aa_sa_awready : STD_LOGIC;
  signal \^aa_wm_awgrant_enc\ : STD_LOGIC;
  signal \^f_hot2enc_return\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.any_grant_reg_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.grant_hot_reg_n_0_[1]\ : STD_LOGIC;
  signal \^gen_arbiter.last_rr_hot_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_arbiter.last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_arbiter.m_grant_enc_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \gen_arbiter.m_valid_i_inv_i_1_n_0\ : STD_LOGIC;
  signal \gen_arbiter.s_ready_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_arbiter.s_ready_i_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \^gen_master_slots[0].w_issuing_cnt_reg[3]\ : STD_LOGIC;
  signal grant_hot : STD_LOGIC;
  signal m_mesg_mux : STD_LOGIC_VECTOR ( 62 downto 1 );
  signal m_target_hot_mux : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^match\ : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal \p_18_in__0\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal qual_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^tmp_aa_awmesg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_arbiter.last_rr_hot[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[10]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[11]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[12]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[15]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[16]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[17]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[18]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[19]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[20]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[21]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[22]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[23]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[24]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[25]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[26]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[28]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[29]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[2]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[30]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[31]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[32]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[33]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[34]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[35]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[36]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[37]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[38]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[39]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[40]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[41]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[42]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[43]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[44]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[46]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[47]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[48]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[49]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[4]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[53]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[54]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[55]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[56]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[57]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[58]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[59]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[5]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[60]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[61]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[62]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[6]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[7]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[8]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gen_arbiter.m_mesg_i[9]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \gen_arbiter.m_valid_i_inv_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_awready_i_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[4]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_single_thread.active_region[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_single_thread.active_region[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_single_thread.active_region[1]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_single_thread.active_target_hot[0]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_1__1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_4\ : label is "soft_lutpair1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  SS(0) <= \^ss\(0);
  aa_wm_awgrant_enc <= \^aa_wm_awgrant_enc\;
  f_hot2enc_return <= \^f_hot2enc_return\;
  \gen_arbiter.last_rr_hot_reg[0]_0\(0) <= \^gen_arbiter.last_rr_hot_reg[0]_0\(0);
  \gen_arbiter.s_ready_i_reg[1]_0\(1 downto 0) <= \^gen_arbiter.s_ready_i_reg[1]_0\(1 downto 0);
  \gen_master_slots[0].w_issuing_cnt_reg[3]\ <= \^gen_master_slots[0].w_issuing_cnt_reg[3]\;
  match <= \^match\;
  p_1_in <= \^p_1_in\;
  tmp_aa_awmesg(3 downto 0) <= \^tmp_aa_awmesg\(3 downto 0);
\FSM_onehot_state[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55750000"
    )
        port map (
      I0 => \m_aready__1_1\,
      I1 => \^p_1_in\,
      I2 => \^q\(1),
      I3 => \m_ready_d_reg[1]\(0),
      I4 => \storage_data1_reg[0]_0\(0),
      O => \gen_arbiter.m_valid_i_reg_inv_1\(0)
    );
\FSM_onehot_state[1]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \storage_data1_reg[0]_0\(1),
      I1 => \m_ready_d_reg[1]\(0),
      I2 => \^q\(1),
      I3 => \^p_1_in\,
      O => \FSM_onehot_state_reg[3]_0\
    );
\FSM_onehot_state[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB000000"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(0),
      I2 => \m_ready_d_reg[1]\(0),
      I3 => \storage_data1_reg[0]\(0),
      I4 => \m_aready__1\,
      O => \gen_arbiter.m_valid_i_reg_inv_0\(0)
    );
\FSM_onehot_state[3]_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB000000"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(1),
      I2 => \m_ready_d_reg[1]\(0),
      I3 => \storage_data1_reg[0]_0\(0),
      I4 => \m_aready__1_1\,
      O => \gen_arbiter.m_valid_i_reg_inv_1\(1)
    );
\gen_arbiter.any_grant_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABAB000000000"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => aa_sa_awready,
      I2 => \gen_arbiter.any_grant_reg_n_0\,
      I3 => \gen_arbiter.any_grant_reg_0\,
      I4 => \gen_arbiter.any_grant_reg_1\,
      I5 => aresetn_d,
      O => \gen_arbiter.any_grant_i_1_n_0\
    );
\gen_arbiter.any_grant_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.any_grant_i_1_n_0\,
      Q => \gen_arbiter.any_grant_reg_n_0\,
      R => '0'
    );
\gen_arbiter.grant_hot[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => aa_sa_awready,
      I1 => \^p_1_in\,
      I2 => aresetn_d,
      O => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFAF888F888"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_awready(0),
      I2 => \^q\(1),
      I3 => mi_awready(0),
      I4 => \m_ready_d_reg[1]\(0),
      I5 => \m_ready_d_reg[1]\(1),
      O => aa_sa_awready
    );
\gen_arbiter.grant_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_0\(0),
      Q => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      R => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.grant_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^f_hot2enc_return\,
      Q => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      R => \gen_arbiter.grant_hot[1]_i_1_n_0\
    );
\gen_arbiter.last_rr_hot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F02"
    )
        port map (
      I0 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I1 => p_0_in10_in,
      I2 => \gen_arbiter.m_grant_enc_i[0]_i_5_n_0\,
      I3 => p_2_in,
      O => \^gen_arbiter.last_rr_hot_reg[0]_0\(0)
    );
\gen_arbiter.last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^gen_arbiter.last_rr_hot_reg[0]_0\(0),
      Q => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\gen_arbiter.last_rr_hot_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^f_hot2enc_return\,
      Q => p_2_in,
      S => \^ss\(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222200020002000"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \gen_arbiter.any_grant_reg_n_0\,
      I2 => valid_qual_i(1),
      I3 => \^f_hot2enc_return\,
      I4 => valid_qual_i(0),
      I5 => \^gen_arbiter.last_rr_hot_reg[0]_0\(0),
      O => grant_hot
    );
\gen_arbiter.m_grant_enc_i[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_5_n_0\,
      I1 => p_2_in,
      I2 => \gen_arbiter.last_rr_hot_reg_n_0_[0]\,
      I3 => p_0_in10_in,
      O => \^f_hot2enc_return\
    );
\gen_arbiter.m_grant_enc_i[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => qual_reg(0),
      I2 => \m_ready_d_reg[0]_0\(0),
      I3 => \^gen_arbiter.s_ready_i_reg[1]_0\(0),
      O => \gen_arbiter.m_grant_enc_i[0]_i_5_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => qual_reg(1),
      I1 => s_axi_awvalid(1),
      I2 => \m_ready_d_reg[0]\(0),
      I3 => \^gen_arbiter.s_ready_i_reg[1]_0\(1),
      O => p_0_in10_in
    );
\gen_arbiter.m_grant_enc_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => \^f_hot2enc_return\,
      Q => \^aa_wm_awgrant_enc\,
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^ss\(0)
    );
\gen_arbiter.m_mesg_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(41),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(9),
      O => m_mesg_mux(10)
    );
\gen_arbiter.m_mesg_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(42),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(10),
      O => m_mesg_mux(11)
    );
\gen_arbiter.m_mesg_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(43),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(11),
      O => m_mesg_mux(12)
    );
\gen_arbiter.m_mesg_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(44),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(12),
      O => m_mesg_mux(13)
    );
\gen_arbiter.m_mesg_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(45),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(13),
      O => m_mesg_mux(14)
    );
\gen_arbiter.m_mesg_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(46),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(14),
      O => m_mesg_mux(15)
    );
\gen_arbiter.m_mesg_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(47),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(15),
      O => m_mesg_mux(16)
    );
\gen_arbiter.m_mesg_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(48),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(16),
      O => m_mesg_mux(17)
    );
\gen_arbiter.m_mesg_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(49),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(17),
      O => m_mesg_mux(18)
    );
\gen_arbiter.m_mesg_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(50),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(18),
      O => m_mesg_mux(19)
    );
\gen_arbiter.m_mesg_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(32),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(0),
      O => m_mesg_mux(1)
    );
\gen_arbiter.m_mesg_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(51),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(19),
      O => m_mesg_mux(20)
    );
\gen_arbiter.m_mesg_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(52),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(20),
      O => m_mesg_mux(21)
    );
\gen_arbiter.m_mesg_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(53),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(21),
      O => m_mesg_mux(22)
    );
\gen_arbiter.m_mesg_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(54),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(22),
      O => m_mesg_mux(23)
    );
\gen_arbiter.m_mesg_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(55),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(23),
      O => m_mesg_mux(24)
    );
\gen_arbiter.m_mesg_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(56),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(24),
      O => m_mesg_mux(25)
    );
\gen_arbiter.m_mesg_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(57),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(25),
      O => m_mesg_mux(26)
    );
\gen_arbiter.m_mesg_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(58),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(26),
      O => m_mesg_mux(27)
    );
\gen_arbiter.m_mesg_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(59),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(27),
      O => m_mesg_mux(28)
    );
\gen_arbiter.m_mesg_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(60),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(28),
      O => m_mesg_mux(29)
    );
\gen_arbiter.m_mesg_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(33),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(1),
      O => m_mesg_mux(2)
    );
\gen_arbiter.m_mesg_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(61),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(29),
      O => m_mesg_mux(30)
    );
\gen_arbiter.m_mesg_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(30),
      O => m_mesg_mux(31)
    );
\gen_arbiter.m_mesg_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(63),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(31),
      O => m_mesg_mux(32)
    );
\gen_arbiter.m_mesg_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(8),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(0),
      O => m_mesg_mux(33)
    );
\gen_arbiter.m_mesg_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(9),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(1),
      O => m_mesg_mux(34)
    );
\gen_arbiter.m_mesg_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(10),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(2),
      O => m_mesg_mux(35)
    );
\gen_arbiter.m_mesg_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(11),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(3),
      O => m_mesg_mux(36)
    );
\gen_arbiter.m_mesg_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(12),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(4),
      O => m_mesg_mux(37)
    );
\gen_arbiter.m_mesg_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(13),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(5),
      O => m_mesg_mux(38)
    );
\gen_arbiter.m_mesg_i[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(14),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(6),
      O => m_mesg_mux(39)
    );
\gen_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(34),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(2),
      O => m_mesg_mux(3)
    );
\gen_arbiter.m_mesg_i[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlen(15),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlen(7),
      O => m_mesg_mux(40)
    );
\gen_arbiter.m_mesg_i[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(3),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awsize(0),
      O => m_mesg_mux(41)
    );
\gen_arbiter.m_mesg_i[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(4),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awsize(1),
      O => m_mesg_mux(42)
    );
\gen_arbiter.m_mesg_i[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awsize(5),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awsize(2),
      O => m_mesg_mux(43)
    );
\gen_arbiter.m_mesg_i[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awlock(1),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awlock(0),
      O => m_mesg_mux(44)
    );
\gen_arbiter.m_mesg_i[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(3),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awprot(0),
      O => m_mesg_mux(46)
    );
\gen_arbiter.m_mesg_i[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(4),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awprot(1),
      O => m_mesg_mux(47)
    );
\gen_arbiter.m_mesg_i[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awprot(5),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awprot(2),
      O => m_mesg_mux(48)
    );
\gen_arbiter.m_mesg_i[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2000"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => s_axi_awaddr(61),
      I2 => s_axi_awaddr(63),
      I3 => \^aa_wm_awgrant_enc\,
      I4 => \^tmp_aa_awmesg\(0),
      O => m_mesg_mux(49)
    );
\gen_arbiter.m_mesg_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(35),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(3),
      O => m_mesg_mux(4)
    );
\gen_arbiter.m_mesg_i[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => s_axi_awaddr(60),
      I2 => s_axi_awaddr(61),
      I3 => s_axi_awaddr(63),
      I4 => \^aa_wm_awgrant_enc\,
      I5 => \^tmp_aa_awmesg\(1),
      O => m_mesg_mux(50)
    );
\gen_arbiter.m_mesg_i[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(2),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awburst(0),
      O => m_mesg_mux(53)
    );
\gen_arbiter.m_mesg_i[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awburst(3),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awburst(1),
      O => m_mesg_mux(54)
    );
\gen_arbiter.m_mesg_i[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(4),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awcache(0),
      O => m_mesg_mux(55)
    );
\gen_arbiter.m_mesg_i[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(5),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awcache(1),
      O => m_mesg_mux(56)
    );
\gen_arbiter.m_mesg_i[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(6),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awcache(2),
      O => m_mesg_mux(57)
    );
\gen_arbiter.m_mesg_i[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awcache(7),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awcache(3),
      O => m_mesg_mux(58)
    );
\gen_arbiter.m_mesg_i[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(4),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awqos(0),
      O => m_mesg_mux(59)
    );
\gen_arbiter.m_mesg_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(36),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(4),
      O => m_mesg_mux(5)
    );
\gen_arbiter.m_mesg_i[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(5),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awqos(1),
      O => m_mesg_mux(60)
    );
\gen_arbiter.m_mesg_i[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(6),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awqos(2),
      O => m_mesg_mux(61)
    );
\gen_arbiter.m_mesg_i[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awqos(7),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awqos(3),
      O => m_mesg_mux(62)
    );
\gen_arbiter.m_mesg_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(37),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(5),
      O => m_mesg_mux(6)
    );
\gen_arbiter.m_mesg_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(38),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(6),
      O => m_mesg_mux(7)
    );
\gen_arbiter.m_mesg_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(39),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(7),
      O => m_mesg_mux(8)
    );
\gen_arbiter.m_mesg_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(40),
      I1 => \^aa_wm_awgrant_enc\,
      I2 => s_axi_awaddr(8),
      O => m_mesg_mux(9)
    );
\gen_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => \^aa_wm_awgrant_enc\,
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(0),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(10),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(10),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(11),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(11),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(12),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(12),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(13),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(13),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(14),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(14),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(15),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(15),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(16),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(16),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(17),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(17),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(18),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(18),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(19),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(19),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(1),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(1),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(20),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(20),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(21),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(21),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(22),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(22),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(23),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(23),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(24),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(24),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(25),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(25),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(26),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(26),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(27),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(27),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(28),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(28),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(29),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(29),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(2),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(2),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(30),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(30),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(31),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(31),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(32),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(32),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(33),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(33),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(34),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(34),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(35),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(35),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(36),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(36),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(37),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(37),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(38),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(38),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(39),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(39),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(3),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(3),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(40),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(40),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(41),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(41),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(42),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(42),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(43),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(43),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(44),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(44),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(46),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(45),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(47),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(46),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(48),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(47),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(49),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(48),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(4),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(4),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(50),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(49),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(53),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(50),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(54),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(51),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(55),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(52),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(56),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(53),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(57),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(54),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(58),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(55),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(59),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(56),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(5),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(5),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(60),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(57),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(61),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(58),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(62),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(59),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(6),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(6),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(7),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(7),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(8),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(8),
      R => \^ss\(0)
    );
\gen_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^p_1_in\,
      D => m_mesg_mux(9),
      Q => \gen_arbiter.m_mesg_i_reg[62]_0\(9),
      R => \^ss\(0)
    );
\gen_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2EEEEEEE2E2E2E2E"
    )
        port map (
      I0 => \^match\,
      I1 => \^f_hot2enc_return\,
      I2 => s_axi_awaddr(63),
      I3 => s_axi_awaddr(61),
      I4 => s_axi_awaddr(60),
      I5 => s_axi_awaddr(62),
      O => m_target_hot_mux(0)
    );
\gen_arbiter.m_target_hot_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5000000D500FFFF"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => s_axi_awaddr(60),
      I2 => s_axi_awaddr(61),
      I3 => s_axi_awaddr(63),
      I4 => \^f_hot2enc_return\,
      I5 => \^match\,
      O => m_target_hot_mux(1)
    );
\gen_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(0),
      Q => \^q\(0),
      R => \^ss\(0)
    );
\gen_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => grant_hot,
      D => m_target_hot_mux(1),
      Q => \^q\(1),
      R => \^ss\(0)
    );
\gen_arbiter.m_valid_i_inv_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5C"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => aa_sa_awready,
      I2 => \^p_1_in\,
      O => \gen_arbiter.m_valid_i_inv_i_1_n_0\
    );
\gen_arbiter.m_valid_i_reg_inv\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.m_valid_i_inv_i_1_n_0\,
      Q => \^p_1_in\,
      S => \^ss\(0)
    );
\gen_arbiter.qual_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[1]_0\(0),
      Q => qual_reg(0),
      R => \^ss\(0)
    );
\gen_arbiter.qual_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.qual_reg_reg[1]_0\(1),
      Q => qual_reg(1),
      R => \^ss\(0)
    );
\gen_arbiter.s_ready_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \gen_arbiter.any_grant_reg_n_0\,
      I1 => \^p_1_in\,
      I2 => aresetn_d,
      O => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[0]\,
      Q => \^gen_arbiter.s_ready_i_reg[1]_0\(0),
      R => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_arbiter.s_ready_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_arbiter.grant_hot_reg_n_0_[1]\,
      Q => \^gen_arbiter.s_ready_i_reg[1]_0\(1),
      R => \gen_arbiter.s_ready_i[1]_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \m_ready_d_reg[1]\(1),
      I1 => \^q\(1),
      I2 => mi_awready(0),
      I3 => \^p_1_in\,
      O => \gen_axi.write_cs01_out\
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => w_issuing_cnt(1),
      I2 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(0)
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => w_issuing_cnt(2),
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(0),
      I3 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(1)
    );
\gen_master_slots[0].w_issuing_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => w_issuing_cnt(3),
      I1 => w_issuing_cnt(2),
      I2 => w_issuing_cnt(1),
      I3 => w_issuing_cnt(0),
      I4 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(2)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00E"
    )
        port map (
      I0 => \^gen_master_slots[0].w_issuing_cnt_reg[3]\,
      I1 => w_issuing_cnt(4),
      I2 => \p_18_in__0\,
      I3 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      O => E(0)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => w_issuing_cnt(4),
      I1 => w_issuing_cnt(3),
      I2 => w_issuing_cnt(2),
      I3 => w_issuing_cnt(1),
      I4 => w_issuing_cnt(0),
      I5 => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\,
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\(3)
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => w_issuing_cnt(3),
      I1 => w_issuing_cnt(2),
      I2 => w_issuing_cnt(0),
      I3 => w_issuing_cnt(1),
      O => \^gen_master_slots[0].w_issuing_cnt_reg[3]\
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \m_ready_d_reg[1]\(1),
      I1 => \^q\(0),
      I2 => m_axi_awready(0),
      I3 => \^p_1_in\,
      O => \p_18_in__0\
    );
\gen_master_slots[0].w_issuing_cnt[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt_reg[1]\,
      I1 => \^p_1_in\,
      I2 => m_axi_awready(0),
      I3 => \^q\(0),
      I4 => \m_ready_d_reg[1]\(1),
      O => \gen_master_slots[0].w_issuing_cnt[4]_i_5_n_0\
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555655500001000"
    )
        port map (
      I0 => \gen_master_slots[1].w_issuing_cnt_reg[8]\,
      I1 => \^p_1_in\,
      I2 => mi_awready(0),
      I3 => \^q\(1),
      I4 => \m_ready_d_reg[1]\(1),
      I5 => w_issuing_cnt(5),
      O => \gen_arbiter.m_valid_i_reg_inv_2\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(0),
      I2 => \m_ready_d_reg[1]\(0),
      O => \sa_wm_awvalid__1\(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(1),
      I2 => \m_ready_d_reg[1]\(0),
      O => \sa_wm_awvalid__1\(1)
    );
\gen_single_thread.active_region[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => s_axi_awaddr(61),
      I2 => s_axi_awaddr(63),
      O => \^tmp_aa_awmesg\(2)
    );
\gen_single_thread.active_region[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => s_axi_awaddr(29),
      I2 => s_axi_awaddr(31),
      O => \^tmp_aa_awmesg\(0)
    );
\gen_single_thread.active_region[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_awaddr(62),
      I1 => s_axi_awaddr(60),
      I2 => s_axi_awaddr(61),
      I3 => s_axi_awaddr(63),
      O => \^tmp_aa_awmesg\(3)
    );
\gen_single_thread.active_region[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_awaddr(30),
      I1 => s_axi_awaddr(28),
      I2 => s_axi_awaddr(29),
      I3 => s_axi_awaddr(31),
      O => \^tmp_aa_awmesg\(1)
    );
\gen_single_thread.active_target_hot[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F55"
    )
        port map (
      I0 => s_axi_awaddr(63),
      I1 => s_axi_awaddr(61),
      I2 => s_axi_awaddr(60),
      I3 => s_axi_awaddr(62),
      O => match_0
    );
\gen_single_thread.active_target_hot[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F55"
    )
        port map (
      I0 => s_axi_awaddr(31),
      I1 => s_axi_awaddr(29),
      I2 => s_axi_awaddr(28),
      I3 => s_axi_awaddr(30),
      O => \^match\
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(0),
      I2 => \m_ready_d_reg[1]\(1),
      O => m_axi_awvalid(0)
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF54"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \m_ready_d_reg[1]\(0),
      O => D(0)
    );
\m_ready_d[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^gen_arbiter.s_ready_i_reg[1]_0\(0),
      I2 => \m_ready_d_reg[0]_0\(0),
      O => \s_axi_awvalid[0]\(0)
    );
\m_ready_d[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(1),
      I1 => \^gen_arbiter.s_ready_i_reg[1]_0\(1),
      I2 => \m_ready_d_reg[0]\(0),
      O => \s_axi_awvalid[1]\(0)
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => aa_sa_awready,
      I1 => aresetn_d,
      O => SR(0)
    );
\m_ready_d[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55404040"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^q\(0),
      I2 => m_axi_awready(0),
      I3 => \^q\(1),
      I4 => mi_awready(0),
      I5 => \m_ready_d_reg[1]\(1),
      O => D(1)
    );
\storage_data1[0]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \storage_data1_reg[0]\(1),
      I1 => \m_ready_d_reg[1]\(0),
      I2 => \^q\(0),
      I3 => \^p_1_in\,
      O => \FSM_onehot_state_reg[3]\
    );
\storage_data1[0]_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \storage_data1_reg[0]_0\(0),
      I1 => \m_ready_d_reg[1]\(0),
      I2 => \^q\(1),
      I3 => \^p_1_in\,
      O => \FSM_onehot_state_reg[1]_0\
    );
\storage_data1[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \storage_data1_reg[0]\(0),
      I1 => \m_ready_d_reg[1]\(0),
      I2 => \^q\(0),
      I3 => \^p_1_in\,
      O => \FSM_onehot_state_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_decerr_slave is
  port (
    mi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_8_in : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    p_15_in : out STD_LOGIC;
    \gen_axi.s_axi_bvalid_i_reg_0\ : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    mi_bready_1 : in STD_LOGIC;
    bready_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_select_enc : in STD_LOGIC;
    wm_mr_wvalid_1 : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_gen_axi.write_cs_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.write_cs01_out\ : in STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_decerr_slave;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_decerr_slave is
  signal \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_axi.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \^mi_awready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_15_in\ : STD_LOGIC;
  signal \^p_18_in\ : STD_LOGIC;
  signal \^p_8_in\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.s_axi_bid_i[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_bvalid_i_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_wready_i_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of m_valid_i_i_2 : label is "soft_lutpair44";
begin
  mi_awready(0) <= \^mi_awready\(0);
  p_15_in <= \^p_15_in\;
  p_18_in <= \^p_18_in\;
  p_8_in <= \^p_8_in\;
\FSM_onehot_gen_axi.write_cs[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I1 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I2 => mi_bready_1,
      I3 => \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I1 => p_1_in,
      I2 => \^mi_awready\(0),
      I3 => Q(0),
      I4 => \FSM_onehot_gen_axi.write_cs_reg[0]_0\(0),
      O => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      I1 => s_axi_wlast(1),
      I2 => m_select_enc,
      I3 => s_axi_wlast(0),
      I4 => wm_mr_wvalid_1,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0\
    );
\FSM_onehot_gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      D => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      S => SS(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      D => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      R => SS(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      D => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      R => SS(0)
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => \^p_8_in\,
      I1 => s_axi_wlast(1),
      I2 => m_select_enc,
      I3 => s_axi_wlast(0),
      I4 => wm_mr_wvalid_1,
      O => \m_aready__1\
    );
\gen_axi.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBFFFFFBBBF000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[1]\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => mi_bready_1,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I4 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I5 => \^mi_awready\(0),
      O => \gen_axi.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_awready_i_i_1_n_0\,
      Q => \^mi_awready\(0),
      R => SS(0)
    );
\gen_axi.s_axi_bid_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_axi.s_axi_bid_i_reg[0]_0\(0),
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \^p_18_in\,
      O => \gen_axi.s_axi_bid_i[0]_i_1_n_0\
    );
\gen_axi.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bid_i[0]_i_1_n_0\,
      Q => \^p_18_in\,
      R => SS(0)
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0\,
      I1 => mi_bready_1,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => \^p_15_in\,
      O => \gen_axi.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_i_1_n_0\,
      Q => \^p_15_in\,
      R => SS(0)
    );
\gen_axi.s_axi_wready_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs[2]_i_3_n_0\,
      I1 => \FSM_onehot_gen_axi.write_cs[2]_i_2_n_0\,
      I2 => \^p_8_in\,
      O => \gen_axi.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_wready_i_i_1_n_0\,
      Q => \^p_8_in\,
      R => SS(0)
    );
m_valid_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^p_15_in\,
      I1 => mi_bready_1,
      I2 => bready_carry(0),
      O => \gen_axi.s_axi_bvalid_i_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor is
  port (
    \gen_single_thread.active_target_enc\ : out STD_LOGIC;
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[1]_0\ : out STD_LOGIC;
    valid_qual_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awtarget_enc_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    \gen_arbiter.any_grant_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.accept_cnt_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_0 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor is
  signal \gen_arbiter.m_grant_enc_i[0]_i_12_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.active_region\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_4\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair123";
begin
  \gen_single_thread.active_target_enc\ <= \^gen_single_thread.active_target_enc\;
\gen_arbiter.any_grant_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00A30000000000"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_12_n_0\,
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => \gen_arbiter.any_grant_reg\,
      I4 => p_2_in,
      I5 => \gen_arbiter.any_grant_reg_0\(0),
      O => \gen_single_thread.accept_cnt_reg[1]_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\,
      I1 => match,
      I2 => D(0),
      I3 => \gen_single_thread.active_region\(0),
      I4 => \gen_single_thread.active_region\(1),
      I5 => D(1),
      O => \gen_arbiter.m_grant_enc_i[0]_i_12_n_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CC000C"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_arbiter.any_grant_reg\,
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => \gen_single_thread.accept_cnt\(1),
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_12_n_0\,
      O => valid_qual_i(0)
    );
\gen_single_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFE000"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => s_axi_bvalid(0),
      I3 => s_axi_bready(0),
      I4 => E(0),
      O => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666966699999"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => Q(0),
      I3 => \gen_single_thread.accept_cnt_reg[1]_1\(0),
      I4 => ss_wr_awready_0,
      I5 => Q(1),
      O => \gen_single_thread.accept_cnt[1]_i_2__0_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_single_thread.accept_cnt\(0),
      R => SS(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1__0_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_2__0_n_0\,
      Q => \gen_single_thread.accept_cnt\(1),
      R => SS(0)
    );
\gen_single_thread.active_region_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \gen_single_thread.active_region\(0),
      R => SS(0)
    );
\gen_single_thread.active_region_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \gen_single_thread.active_region\(1),
      R => SS(0)
    );
\gen_single_thread.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => st_aa_awtarget_enc_0,
      Q => \^gen_single_thread.active_target_enc\,
      R => SS(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => match,
      Q => \gen_single_thread.active_target_hot\(0),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor__parameterized0\ is
  port (
    \gen_single_thread.active_target_enc\ : out STD_LOGIC;
    \gen_single_thread.active_target_hot\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.accept_cnt_reg[1]_0\ : out STD_LOGIC;
    valid_qual_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    bready_carry : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_aa_awtarget_enc_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    match : in STD_LOGIC;
    s_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.accept_cnt_reg[1]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_1 : in STD_LOGIC;
    \gen_arbiter.any_grant_reg\ : in STD_LOGIC;
    p_2_in : in STD_LOGIC;
    f_hot2enc_return : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_22_si_transactor";
end \design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor__parameterized0\ is
  signal \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_single_thread.accept_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_single_thread.accept_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_single_thread.active_region\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gen_single_thread.active_target_enc\ : STD_LOGIC;
  signal \^gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_arbiter.m_grant_enc_i[0]_i_3\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \gen_single_thread.accept_cnt[0]_i_1__0\ : label is "soft_lutpair129";
begin
  \gen_single_thread.active_target_enc\ <= \^gen_single_thread.active_target_enc\;
  \gen_single_thread.active_target_hot\(0) <= \^gen_single_thread.active_target_hot\(0);
\gen_arbiter.any_grant_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00A30000000000"
    )
        port map (
      I0 => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\,
      I1 => \gen_single_thread.accept_cnt\(1),
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => \gen_arbiter.any_grant_reg\,
      I4 => p_2_in,
      I5 => f_hot2enc_return,
      O => \gen_single_thread.accept_cnt_reg[1]_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8CC000C"
    )
        port map (
      I0 => p_2_in,
      I1 => \gen_arbiter.any_grant_reg\,
      I2 => \gen_single_thread.accept_cnt\(0),
      I3 => \gen_single_thread.accept_cnt\(1),
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\,
      O => valid_qual_i(0)
    );
\gen_arbiter.m_grant_enc_i[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\,
      I1 => match,
      I2 => D(0),
      I3 => \gen_single_thread.active_region\(0),
      I4 => \gen_single_thread.active_region\(1),
      I5 => D(1),
      O => \gen_arbiter.m_grant_enc_i[0]_i_9_n_0\
    );
\gen_single_thread.accept_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(0),
      O => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFFE000"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => s_axi_bvalid(0),
      I3 => s_axi_bready(1),
      I4 => E(0),
      O => \gen_single_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_single_thread.accept_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6669666966699999"
    )
        port map (
      I0 => \gen_single_thread.accept_cnt\(1),
      I1 => \gen_single_thread.accept_cnt\(0),
      I2 => Q(0),
      I3 => \gen_single_thread.accept_cnt_reg[1]_1\(0),
      I4 => ss_wr_awready_1,
      I5 => Q(1),
      O => \gen_single_thread.accept_cnt[1]_i_2_n_0\
    );
\gen_single_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[0]_i_1__0_n_0\,
      Q => \gen_single_thread.accept_cnt\(0),
      R => SS(0)
    );
\gen_single_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \gen_single_thread.accept_cnt[1]_i_1_n_0\,
      D => \gen_single_thread.accept_cnt[1]_i_2_n_0\,
      Q => \gen_single_thread.accept_cnt\(1),
      R => SS(0)
    );
\gen_single_thread.active_region_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => D(0),
      Q => \gen_single_thread.active_region\(0),
      R => SS(0)
    );
\gen_single_thread.active_region_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => D(1),
      Q => \gen_single_thread.active_region\(1),
      R => SS(0)
    );
\gen_single_thread.active_target_enc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => st_aa_awtarget_enc_1,
      Q => \^gen_single_thread.active_target_enc\,
      R => SS(0)
    );
\gen_single_thread.active_target_hot_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => E(0),
      D => match,
      Q => \^gen_single_thread.active_target_hot\(0),
      R => SS(0)
    );
m_valid_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \^gen_single_thread.active_target_enc\,
      I1 => s_axi_bready(1),
      I2 => st_mr_bid(1),
      I3 => \gen_single_thread.active_target_enc_1\,
      I4 => s_axi_bready(0),
      O => bready_carry(1)
    );
m_valid_i_inv_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
        port map (
      I0 => \^gen_single_thread.active_target_hot\(0),
      I1 => s_axi_bready(1),
      I2 => st_mr_bid(0),
      I3 => \gen_single_thread.active_target_hot_0\(0),
      I4 => s_axi_bready(0),
      O => bready_carry(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_splitter is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awvalid[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC;
    \m_ready_d_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_0 : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_splitter;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_splitter is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[1]_i_1__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair124";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_arbiter.qual_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^q\(0),
      I2 => valid_qual_i(0),
      O => \s_axi_awvalid[0]\(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_0\
    );
\m_ready_d[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE0FFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_ready_d_reg[0]_0\(0),
      I2 => ss_wr_awready_0,
      I3 => \^q\(1),
      I4 => aresetn_d,
      O => \m_ready_d[1]_i_1__1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \m_ready_d[1]_i_1__1_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \m_ready_d[1]_i_1__1_n_0\
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \^q\(1),
      I1 => ss_wr_awready_0,
      I2 => \m_ready_d_reg[0]_0\(0),
      I3 => \^q\(0),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_splitter_0 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awvalid[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]_1\ : out STD_LOGIC;
    \m_ready_d_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awready_1 : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_qual_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_22_splitter_0 : entity is "axi_crossbar_v2_1_22_splitter";
end design_1_xbar_0_axi_crossbar_v2_1_22_splitter_0;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_splitter_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[1]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3__0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \s_axi_awready[1]_INST_0\ : label is "soft_lutpair130";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\gen_arbiter.qual_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^q\(0),
      I2 => valid_qual_i(0),
      O => \s_axi_awvalid[1]\(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_awvalid(0),
      O => \m_ready_d_reg[1]_1\
    );
\m_ready_d[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE0FFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \m_ready_d_reg[0]_0\(0),
      I2 => ss_wr_awready_1,
      I3 => \^q\(1),
      I4 => aresetn_d,
      O => \m_ready_d[1]_i_1__0_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => \m_ready_d[1]_i_1__0_n_0\
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => \m_ready_d[1]_i_1__0_n_0\
    );
\s_axi_awready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \^q\(1),
      I1 => ss_wr_awready_1,
      I2 => \m_ready_d_reg[0]_0\(0),
      I3 => \^q\(0),
      O => \m_ready_d_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_splitter_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_22_splitter_2 : entity is "axi_crossbar_v2_1_22_splitter";
end design_1_xbar_0_axi_crossbar_v2_1_22_splitter_2;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_splitter_2 is
begin
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl is
  port (
    push : out STD_LOGIC;
    st_aa_awtarget_enc_1 : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_2\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__0_0\ : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
end design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl is
  signal \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__0_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \^st_aa_awtarget_enc_1\ : STD_LOGIC;
  signal \storage_data1[0]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[1].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 ";
begin
  push <= \^push\;
  st_aa_awtarget_enc_1 <= \^st_aa_awtarget_enc_1\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \^st_aa_awtarget_enc_1\,
      Q => p_0_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007000700070"
    )
        port map (
      I0 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__0_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => \gen_rep[0].fifoaddr_reg[1]\(1),
      I3 => \gen_rep[0].fifoaddr_reg[1]_1\,
      I4 => \gen_rep[0].fifoaddr_reg[1]_2\,
      I5 => \gen_rep[0].fifoaddr_reg[1]\(0),
      O => \^push\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__0_0\,
      I2 => s_axi_wlast(0),
      O => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__0_n_0\
    );
\gen_single_thread.active_target_enc[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(3),
      O => \^st_aa_awtarget_enc_1\
    );
\storage_data1[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B8B8B88888888"
    )
        port map (
      I0 => p_0_out,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => s_axi_awaddr(2),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(3),
      O => \storage_data1[0]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_4 is
  port (
    push : out STD_LOGIC;
    st_aa_awtarget_enc_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_2\ : in STD_LOGIC;
    \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    m_select_enc : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_4 : entity is "axi_data_fifo_v2_1_20_ndeep_srl";
end design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_4;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_4 is
  signal \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2_n_0\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \^st_aa_awtarget_enc_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 ";
begin
  push <= \^push\;
  st_aa_awtarget_enc_0 <= \^st_aa_awtarget_enc_0\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => \^st_aa_awtarget_enc_0\,
      Q => p_0_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007000700070"
    )
        port map (
      I0 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => \gen_rep[0].fifoaddr_reg[1]\(1),
      I3 => \gen_rep[0].fifoaddr_reg[1]_1\,
      I4 => \gen_rep[0].fifoaddr_reg[1]_2\,
      I5 => \gen_rep[0].fifoaddr_reg[1]\(0),
      O => \^push\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1_0\,
      I1 => s_axi_wvalid(0),
      I2 => s_axi_wlast(0),
      O => \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2_n_0\
    );
\gen_single_thread.active_target_enc[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_awaddr(1),
      I3 => s_axi_awaddr(3),
      O => \^st_aa_awtarget_enc_0\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2__0_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => \storage_data1_reg[0]\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_0\,
      I5 => m_select_enc,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB8B8B8B88888888"
    )
        port map (
      I0 => p_0_out,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => s_axi_awaddr(2),
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(1),
      I5 => s_axi_awaddr(3),
      O => \storage_data1[0]_i_2__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_5 is
  port (
    push : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    wm_mr_wvalid_1 : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_5 : entity is "axi_data_fifo_v2_1_20_ndeep_srl";
end design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_5;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_5 is
  signal p_0_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[0]_i_2__2_n_0\ : STD_LOGIC;
  signal wm_mr_wlast_1 : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[1].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 ";
begin
  push <= \^push\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => Q(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc,
      Q => p_0_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00007F000000"
    )
        port map (
      I0 => p_8_in,
      I1 => wm_mr_wlast_1,
      I2 => wm_mr_wvalid_1,
      I3 => \gen_rep[0].fifoaddr_reg[1]\(1),
      I4 => \sa_wm_awvalid__1\(0),
      I5 => \gen_rep[0].fifoaddr_reg[1]\(0),
      O => \^push\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wlast(1),
      I1 => \storage_data1_reg[0]\,
      I2 => s_axi_wlast(0),
      O => wm_mr_wlast_1
    );
\storage_data1[0]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2__2_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => \storage_data1_reg[0]_0\,
      I3 => \m_aready__1\,
      I4 => \storage_data1_reg[0]_1\,
      I5 => \storage_data1_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_out,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => aa_wm_awgrant_enc,
      O => \storage_data1[0]_i_2__2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl__parameterized0\ is
  port (
    push : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    aa_wm_awgrant_enc : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    \storage_data1_reg[0]_2\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl__parameterized0\ : entity is "axi_data_fifo_v2_1_20_ndeep_srl";
end \design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl__parameterized0\ is
  signal \^m_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_out : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \storage_data1[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg ";
  attribute srl_name : string;
  attribute srl_name of \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\ : label is "inst/\gen_samd.crossbar_samd/gen_master_slots[0].gen_mi_write.wdata_mux_w/gen_wmux.wmux_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32 ";
begin
  m_axi_wlast(0) <= \^m_axi_wlast\(0);
  push <= \^push\;
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4) => '0',
      A(3 downto 0) => Q(3 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => aa_wm_awgrant_enc,
      Q => p_0_out,
      Q31 => \NLW_gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_Q31_UNCONNECTED\
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00007F000000"
    )
        port map (
      I0 => m_axi_wready(0),
      I1 => \^m_axi_wlast\(0),
      I2 => m_axi_wvalid(0),
      I3 => \gen_rep[0].fifoaddr_reg[1]\(1),
      I4 => \sa_wm_awvalid__1\(0),
      I5 => \gen_rep[0].fifoaddr_reg[1]\(0),
      O => \^push\
    );
\m_axi_wlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wlast(1),
      I1 => \storage_data1_reg[0]\,
      I2 => s_axi_wlast(0),
      O => \^m_axi_wlast\(0)
    );
\storage_data1[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFABAFAAA0A8A0"
    )
        port map (
      I0 => \storage_data1[0]_i_2__1_n_0\,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => \storage_data1_reg[0]_0\,
      I3 => \storage_data1_reg[0]_1\,
      I4 => \storage_data1_reg[0]_2\,
      I5 => \storage_data1_reg[0]\,
      O => \FSM_onehot_state_reg[0]\
    );
\storage_data1[0]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_out,
      I1 => \gen_rep[0].fifoaddr_reg[1]\(0),
      I2 => aa_wm_awgrant_enc,
      O => \storage_data1[0]_i_2__1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    mi_bready_1 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    st_mr_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC;
    p_18_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_21_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1\ is
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^st_mr_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  p_0_in <= \^p_0_in\;
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
  st_mr_bid(0) <= \^st_mr_bid\(0);
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_1\,
      Q => \^aresetn_d_reg[1]_0\,
      R => reset
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^st_mr_bid\(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => p_18_in,
      O => \m_payload_i[2]_i_1_n_0\
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_payload_i[2]_i_1_n_0\,
      Q => \^st_mr_bid\(0),
      R => '0'
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^p_0_in\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_reg_1,
      Q => \^m_valid_i_reg_0\,
      R => \^p_0_in\
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFF"
    )
        port map (
      I0 => s_axi_bready_0_sn_1,
      I1 => p_15_in,
      I2 => \^m_valid_i_reg_0\,
      I3 => \^aresetn_d_reg[1]_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F808080800000000"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \gen_single_thread.active_target_enc\,
      I2 => \^st_mr_bid\(0),
      I3 => s_axi_bready(1),
      I4 => \gen_single_thread.active_target_enc_0\,
      I5 => \^m_valid_i_reg_0\,
      O => s_axi_bready_0_sn_1
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => mi_bready_1,
      R => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1_6\ is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[4]_0\ : out STD_LOGIC;
    p_2_in_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_grant_enc_i[0]_i_3\ : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_arbiter.m_grant_enc_i[0]_i_3_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_bvalid[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC;
    bready_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    match_1 : in STD_LOGIC;
    \gen_single_thread.active_target_hot_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_3\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1_6\ : entity is "axi_register_slice_v2_1_21_axic_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1_6\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1_6\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_valid_i_inv_i_1_n_0 : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  signal \^reset\ : STD_LOGIC;
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \s_ready_i_i_2__2_n_0\ : STD_LOGIC;
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \s_axi_bresp[2]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \s_axi_bresp[3]_INST_0\ : label is "soft_lutpair120";
begin
  Q(0) <= \^q\(0);
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  m_axi_bready(0) <= \^m_axi_bready\(0);
  p_1_in <= \^p_1_in\;
  reset <= \^reset\;
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
  s_axi_bvalid(1 downto 0) <= \^s_axi_bvalid\(1 downto 0);
\aresetn_d[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^reset\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => \^aresetn_d_reg[0]_0\,
      R => \^reset\
    );
\gen_arbiter.m_grant_enc_i[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_bvalid\(0),
      I1 => s_axi_bready(0),
      O => p_2_in_0
    );
\gen_arbiter.m_grant_enc_i[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDF00DFFFDFFF"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_3\,
      I2 => s_axi_bready_0_sn_1,
      I3 => match_1,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_3_0\,
      I5 => w_issuing_cnt(1),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]_0\
    );
\gen_arbiter.m_grant_enc_i[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s_axi_bvalid\(1),
      I1 => s_axi_bready(1),
      O => p_2_in
    );
\gen_arbiter.m_grant_enc_i[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFDF00DFFFDFFF"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => \gen_arbiter.m_grant_enc_i[0]_i_3\,
      I2 => s_axi_bready_0_sn_1,
      I3 => match,
      I4 => \gen_arbiter.m_grant_enc_i[0]_i_3_0\,
      I5 => w_issuing_cnt(1),
      O => \gen_master_slots[0].w_issuing_cnt_reg[4]\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => st_mr_bvalid(0),
      D => D(0),
      Q => st_mr_bmesg(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => st_mr_bvalid(0),
      D => D(1),
      Q => st_mr_bmesg(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => st_mr_bvalid(0),
      D => D(2),
      Q => \^q\(0),
      R => '0'
    );
m_valid_i_inv_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => bready_carry(0),
      O => m_valid_i_inv_i_1_n_0
    );
m_valid_i_reg_inv: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_inv_i_1_n_0,
      Q => st_mr_bvalid(0),
      S => p_0_in
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => st_mr_bmesg(0),
      I1 => \gen_single_thread.active_target_enc_3\,
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => st_mr_bmesg(1),
      I1 => \gen_single_thread.active_target_enc_3\,
      O => s_axi_bresp(1)
    );
\s_axi_bresp[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => st_mr_bmesg(0),
      I1 => \gen_single_thread.active_target_enc\,
      O => s_axi_bresp(2)
    );
\s_axi_bresp[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => st_mr_bmesg(1),
      I1 => \gen_single_thread.active_target_enc\,
      O => s_axi_bresp(3)
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF101010101010"
    )
        port map (
      I0 => \^q\(0),
      I1 => st_mr_bvalid(0),
      I2 => \gen_single_thread.active_target_hot_2\(0),
      I3 => st_mr_bid(0),
      I4 => \s_axi_bvalid[0]\(0),
      I5 => \gen_single_thread.active_target_enc_3\,
      O => \^s_axi_bvalid\(0)
    );
\s_axi_bvalid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20202020202020"
    )
        port map (
      I0 => \^q\(0),
      I1 => st_mr_bvalid(0),
      I2 => \gen_single_thread.active_target_hot\(0),
      I3 => st_mr_bid(0),
      I4 => \s_axi_bvalid[0]\(0),
      I5 => \gen_single_thread.active_target_enc\,
      O => \^s_axi_bvalid\(1)
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[0]_0\,
      O => \^p_1_in\
    );
\s_ready_i_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"75FF"
    )
        port map (
      I0 => s_axi_bready_0_sn_1,
      I1 => m_axi_bvalid(0),
      I2 => st_mr_bvalid(0),
      I3 => s_ready_i_reg_0,
      O => \s_ready_i_i_2__2_n_0\
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF07F7F7F7"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \gen_single_thread.active_target_hot_2\(0),
      I2 => \^q\(0),
      I3 => s_axi_bready(1),
      I4 => \gen_single_thread.active_target_hot\(0),
      I5 => st_mr_bvalid(0),
      O => s_axi_bready_0_sn_1
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_2__2_n_0\,
      Q => \^m_axi_bready\(0),
      R => \^p_1_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo is
  port (
    st_aa_awtarget_enc_1 : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    wm_mr_wvalid_1 : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid_0_sp_1 : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_avalid_1 : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC;
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC
  );
end design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \m_axi_wvalid[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal m_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__0_n_0\ : STD_LOGIC;
  signal \s_ready_i_i_2__1_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2__0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2__0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair131";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2__0\ : label is "soft_lutpair134";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3__0\ : label is "soft_lutpair132";
begin
  SS(0) <= \^ss\(0);
  m_axi_wvalid_0_sn_1 <= m_axi_wvalid_0_sp_1;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state[1]_i_2__0_n_0\,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \FSM_onehot_state[1]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF04F40FF4040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I2 => \m_aready__1\,
      I3 => m_valid_i_reg_1,
      I4 => p_9_in,
      I5 => p_0_in8_in,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__1_n_0\
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => s_axi_wvalid(0),
      I3 => \gen_rep[0].fifoaddr_reg[1]_0\,
      O => \m_aready__1\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => p_0_in8_in,
      R => \^ss\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2__0_n_0\,
      Q => p_9_in,
      S => \^ss\(0)
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg_1(0),
      Q => \^ss\(0),
      R => '0'
    );
\gen_rep[0].fifoaddr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAA2A00F00080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_awvalid(0),
      I3 => Q(0),
      I4 => p_0_in8_in,
      I5 => \m_aready__1\,
      O => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      D => \gen_rep[0].fifoaddr[0]_i_1__0_n_0\,
      Q => fifoaddr(0),
      S => s_ready_i_reg_1(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1__0_n_0\,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => s_ready_i_reg_1(0)
    );
\gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880000F0000000"
    )
        port map (
      I0 => \m_axi_wvalid[0]_INST_0_i_1_n_0\,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => m_axi_wvalid_0_sn_1,
      I3 => m_select_enc_0,
      I4 => m_avalid_1,
      I5 => m_select_enc_2,
      O => wm_mr_wvalid_1
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[1]\(1) => p_0_in8_in,
      \gen_rep[0].fifoaddr_reg[1]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]_0\,
      \gen_rep[0].fifoaddr_reg[1]_1\ => m_valid_i_reg_1,
      \gen_rep[0].fifoaddr_reg[1]_2\ => \^s_ready_i_reg_0\,
      \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1__0_0\ => \^m_valid_i_reg_0\,
      \m_aready__1\ => \m_aready__1\,
      push => push,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      st_aa_awtarget_enc_1 => st_aa_awtarget_enc_1,
      \storage_data1_reg[0]\ => \FSM_onehot_state[1]_i_2__0_n_0\,
      \storage_data1_reg[0]_0\ => \storage_data1[0]_i_3__0_n_0\,
      \storage_data1_reg[0]_1\ => \^storage_data1_reg[0]_0\
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222000000F00000"
    )
        port map (
      I0 => \m_axi_wvalid[0]_INST_0_i_1_n_0\,
      I1 => \^storage_data1_reg[0]_0\,
      I2 => m_axi_wvalid_0_sn_1,
      I3 => m_select_enc_0,
      I4 => m_avalid_3,
      I5 => m_select_enc_4,
      O => m_axi_wvalid(0)
    );
\m_axi_wvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => s_axi_wvalid(0),
      O => \m_axi_wvalid[0]_INST_0_i_1_n_0\
    );
\m_ready_d[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => Q(0),
      O => D(0)
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0E0C0EFF0E0C0E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_9_in,
      I2 => m_valid_i_reg_1,
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state[3]_i_3__1_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => \^ss\(0)
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \s_ready_i_i_2__1_n_0\,
      I1 => \^ss\(0),
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__0_n_0\
    );
\s_ready_i_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => s_axi_wvalid(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_wlast(0),
      O => \s_ready_i_i_2__1_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__0_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1(0)
    );
\storage_data1[0]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \storage_data1[0]_i_3__0_n_0\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo_3 is
  port (
    st_aa_awtarget_enc_0 : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    s_axi_wvalid_0_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]_0\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo_3 : entity is "axi_data_fifo_v2_1_20_axic_reg_srl_fifo";
end design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo_3;

architecture STRUCTURE of design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo_3 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \^m_select_enc\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \s_ready_i_i_2__0_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \storage_data1[0]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_2\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_3__2\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair125";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2\ : label is "soft_lutpair128";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \storage_data1[0]_i_3\ : label is "soft_lutpair126";
begin
  m_select_enc <= \^m_select_enc\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_axi_wvalid_0_sp_1 <= s_axi_wvalid_0_sn_1;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7500"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      I3 => p_0_in8_in,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => \m_aready__1\,
      I5 => \FSM_onehot_state[1]_i_2_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_9_in,
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF04F40FF4040"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I2 => \m_aready__1\,
      I3 => m_valid_i_reg_1,
      I4 => p_9_in,
      I5 => p_0_in8_in,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A00"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => Q(0),
      I2 => s_axi_awvalid(0),
      I3 => \m_aready__1\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_3__2_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => s_axi_wvalid(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \gen_rep[0].fifoaddr_reg[1]_0\,
      O => \m_aready__1\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAA2A00F00080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_awvalid(0),
      I3 => Q(0),
      I4 => p_0_in8_in,
      I5 => \m_aready__1\,
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      D => \gen_rep[0].fifoaddr[0]_i_1__1_n_0\,
      Q => fifoaddr(0),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => SS(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_4
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[1]\(1) => p_0_in8_in,
      \gen_rep[0].fifoaddr_reg[1]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]_0\,
      \gen_rep[0].fifoaddr_reg[1]_1\ => m_valid_i_reg_1,
      \gen_rep[0].fifoaddr_reg[1]_2\ => \^s_ready_i_reg_0\,
      \gen_rtl_shifter.gen_inferred_srl.shift_reg_reg[0]_srl32_i_1_0\ => \^m_valid_i_reg_0\,
      \m_aready__1\ => \m_aready__1\,
      m_select_enc => \^m_select_enc\,
      push => push,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      st_aa_awtarget_enc_0 => st_aa_awtarget_enc_0,
      \storage_data1_reg[0]\ => \FSM_onehot_state[1]_i_2_n_0\,
      \storage_data1_reg[0]_0\ => \storage_data1[0]_i_3_n_0\
    );
\m_axi_wvalid[0]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => \^m_valid_i_reg_0\,
      O => s_axi_wvalid_0_sn_1
    );
\m_ready_d[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => Q(0),
      O => D(0)
    );
m_valid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0E0C0EFF0E0C0E"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => p_9_in,
      I2 => m_valid_i_reg_1,
      I3 => \m_aready__1\,
      I4 => \FSM_onehot_state[3]_i_3__2_n_0\,
      I5 => push,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => areset_d1
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFDDDDDDDD"
    )
        port map (
      I0 => \s_ready_i_i_2__0_n_0\,
      I1 => areset_d1,
      I2 => push,
      I3 => fifoaddr(1),
      I4 => fifoaddr(0),
      I5 => \^s_ready_i_reg_0\,
      O => s_ready_i_i_1_n_0
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_rep[0].fifoaddr_reg[1]_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_wvalid(0),
      I4 => s_axi_wlast(0),
      O => \s_ready_i_i_2__0_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => SS(0)
    );
\storage_data1[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => s_axi_awvalid(0),
      I2 => Q(0),
      O => \storage_data1[0]_i_3_n_0\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^m_select_enc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized0\ is
  port (
    m_avalid : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_wready_0_sp_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[3]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    \storage_data1_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_20_axic_reg_srl_fifo";
end \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized0\ is
  signal \FSM_onehot_state[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_2\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal m_axi_wready_0_sn_1 : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__2\ : label is "soft_lutpair47";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[3]_i_2\ : label is "soft_lutpair46";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[2]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[3]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wdata[0]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m_axi_wdata[100]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_axi_wdata[101]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_axi_wdata[102]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_axi_wdata[103]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_axi_wdata[104]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axi_wdata[105]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_axi_wdata[106]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axi_wdata[107]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_axi_wdata[108]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_axi_wdata[109]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_axi_wdata[10]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_axi_wdata[110]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axi_wdata[111]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axi_wdata[112]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axi_wdata[113]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axi_wdata[114]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axi_wdata[115]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axi_wdata[116]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axi_wdata[117]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axi_wdata[118]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axi_wdata[119]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axi_wdata[11]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m_axi_wdata[120]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axi_wdata[121]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axi_wdata[122]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axi_wdata[123]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axi_wdata[124]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axi_wdata[125]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axi_wdata[126]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axi_wdata[127]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axi_wdata[12]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_axi_wdata[13]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m_axi_wdata[14]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_axi_wdata[15]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m_axi_wdata[16]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m_axi_wdata[17]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m_axi_wdata[18]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m_axi_wdata[19]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m_axi_wdata[1]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m_axi_wdata[20]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_axi_wdata[21]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m_axi_wdata[22]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_axi_wdata[23]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m_axi_wdata[24]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_axi_wdata[25]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m_axi_wdata[26]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_axi_wdata[27]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m_axi_wdata[28]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_axi_wdata[29]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m_axi_wdata[2]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m_axi_wdata[30]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_axi_wdata[31]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m_axi_wdata[32]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_axi_wdata[33]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m_axi_wdata[34]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_axi_wdata[35]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m_axi_wdata[36]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_axi_wdata[37]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m_axi_wdata[38]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_axi_wdata[39]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m_axi_wdata[3]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m_axi_wdata[40]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_axi_wdata[41]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m_axi_wdata[42]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_axi_wdata[43]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m_axi_wdata[44]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_axi_wdata[45]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m_axi_wdata[46]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m_axi_wdata[47]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m_axi_wdata[48]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_axi_wdata[49]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m_axi_wdata[4]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m_axi_wdata[50]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_axi_wdata[51]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m_axi_wdata[52]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axi_wdata[53]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axi_wdata[54]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wdata[55]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wdata[56]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axi_wdata[57]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m_axi_wdata[58]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wdata[59]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m_axi_wdata[5]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m_axi_wdata[60]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wdata[61]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m_axi_wdata[62]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wdata[63]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m_axi_wdata[64]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wdata[65]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m_axi_wdata[66]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wdata[67]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m_axi_wdata[68]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wdata[69]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m_axi_wdata[6]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m_axi_wdata[70]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wdata[71]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m_axi_wdata[72]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wdata[73]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m_axi_wdata[74]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wdata[75]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m_axi_wdata[76]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wdata[77]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m_axi_wdata[78]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wdata[79]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m_axi_wdata[7]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m_axi_wdata[80]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_wdata[81]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m_axi_wdata[82]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_wdata[83]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_axi_wdata[84]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axi_wdata[85]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_axi_wdata[86]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_wdata[87]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_axi_wdata[88]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axi_wdata[89]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m_axi_wdata[8]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_axi_wdata[90]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_axi_wdata[91]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_axi_wdata[92]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axi_wdata[93]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_axi_wdata[94]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axi_wdata[95]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_axi_wdata[96]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_axi_wdata[97]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_axi_wdata[98]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axi_wdata[99]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_axi_wdata[9]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m_axi_wstrb[0]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axi_wstrb[10]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axi_wstrb[11]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axi_wstrb[12]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axi_wstrb[13]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axi_wstrb[14]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axi_wstrb[15]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axi_wstrb[1]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axi_wstrb[2]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axi_wstrb[3]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axi_wstrb[4]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axi_wstrb[5]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axi_wstrb[6]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axi_wstrb[7]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axi_wstrb[8]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axi_wstrb[9]_INST_0\ : label is "soft_lutpair51";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_avalid <= \^m_avalid\;
  m_axi_wready_0_sp_1 <= m_axi_wready_0_sn_1;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_state[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55750000"
    )
        port map (
      I0 => m_axi_wready_0_sn_1,
      I1 => p_1_in,
      I2 => \gen_rep[0].fifoaddr_reg[3]_0\(0),
      I3 => \gen_rep[0].fifoaddr_reg[3]_1\(0),
      I4 => \^q\(0),
      O => \FSM_onehot_state[0]_i_1__1_n_0\
    );
\FSM_onehot_state[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA020A0"
    )
        port map (
      I0 => m_axi_wready_0_sn_1,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[3]_i_4__2_n_0\,
      I3 => \sa_wm_awvalid__1\(0),
      I4 => \^q\(1),
      O => \FSM_onehot_state[1]_i_1__2_n_0\
    );
\FSM_onehot_state[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA884E44AA88"
    )
        port map (
      I0 => m_axi_wready_0_sn_1,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[3]_i_4__2_n_0\,
      I4 => \sa_wm_awvalid__1\(0),
      I5 => \^q\(1),
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => m_axi_wready(0),
      I1 => s_axi_wlast(1),
      I2 => \^storage_data1_reg[0]_0\,
      I3 => s_axi_wlast(0),
      I4 => m_axi_wvalid(0),
      O => m_axi_wready_0_sn_1
    );
\FSM_onehot_state[3]_i_4__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr_reg\(0),
      I1 => \gen_rep[0].fifoaddr_reg\(1),
      I2 => \gen_rep[0].fifoaddr_reg\(2),
      I3 => \gen_rep[0].fifoaddr_reg\(3),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_4__2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1__1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__2_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => D(0),
      Q => \^q\(1),
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr_reg\(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => push,
      I1 => \gen_rep[0].fifoaddr_reg\(0),
      I2 => \gen_rep[0].fifoaddr_reg\(1),
      O => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\
    );
\gen_rep[0].fifoaddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr_reg\(2),
      I1 => \gen_rep[0].fifoaddr_reg\(0),
      I2 => push,
      I3 => \gen_rep[0].fifoaddr_reg\(1),
      O => \gen_rep[0].fifoaddr[2]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8A00300020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_rep[0].fifoaddr_reg[3]_1\(0),
      I2 => \gen_rep[0].fifoaddr_reg[3]_0\(0),
      I3 => p_1_in,
      I4 => \^q\(0),
      I5 => m_axi_wready_0_sn_1,
      O => \gen_rep[0].fifoaddr[3]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \gen_rep[0].fifoaddr_reg\(3),
      I1 => \gen_rep[0].fifoaddr_reg\(2),
      I2 => \gen_rep[0].fifoaddr_reg\(0),
      I3 => push,
      I4 => \gen_rep[0].fifoaddr_reg\(1),
      O => \gen_rep[0].fifoaddr[3]_i_2_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[3]_i_1_n_0\,
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => \gen_rep[0].fifoaddr_reg\(0),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[3]_i_1_n_0\,
      D => \gen_rep[0].fifoaddr[1]_i_1__1_n_0\,
      Q => \gen_rep[0].fifoaddr_reg\(1),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[3]_i_1_n_0\,
      D => \gen_rep[0].fifoaddr[2]_i_1_n_0\,
      Q => \gen_rep[0].fifoaddr_reg\(2),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[3]_i_1_n_0\,
      D => \gen_rep[0].fifoaddr[3]_i_2_n_0\,
      Q => \gen_rep[0].fifoaddr_reg\(3),
      S => SS(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.\design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl__parameterized0\
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q(3 downto 0) => \gen_rep[0].fifoaddr_reg\(3 downto 0),
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[1]\(1) => \^q\(0),
      \gen_rep[0].fifoaddr_reg[1]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      push => push,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(0),
      \storage_data1_reg[0]\ => \^storage_data1_reg[0]_0\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]_1\,
      \storage_data1_reg[0]_1\ => m_axi_wready_0_sn_1,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_2\
    );
\m_axi_wdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(128),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(0),
      O => m_axi_wdata(0)
    );
\m_axi_wdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(228),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(100),
      O => m_axi_wdata(100)
    );
\m_axi_wdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(229),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(101),
      O => m_axi_wdata(101)
    );
\m_axi_wdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(230),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(102),
      O => m_axi_wdata(102)
    );
\m_axi_wdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(231),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(103),
      O => m_axi_wdata(103)
    );
\m_axi_wdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(232),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(104),
      O => m_axi_wdata(104)
    );
\m_axi_wdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(233),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(105),
      O => m_axi_wdata(105)
    );
\m_axi_wdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(234),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(106),
      O => m_axi_wdata(106)
    );
\m_axi_wdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(235),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(107),
      O => m_axi_wdata(107)
    );
\m_axi_wdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(236),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(108),
      O => m_axi_wdata(108)
    );
\m_axi_wdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(237),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(109),
      O => m_axi_wdata(109)
    );
\m_axi_wdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(138),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(10),
      O => m_axi_wdata(10)
    );
\m_axi_wdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(238),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(110),
      O => m_axi_wdata(110)
    );
\m_axi_wdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(239),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(111),
      O => m_axi_wdata(111)
    );
\m_axi_wdata[112]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(240),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(112),
      O => m_axi_wdata(112)
    );
\m_axi_wdata[113]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(241),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(113),
      O => m_axi_wdata(113)
    );
\m_axi_wdata[114]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(242),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(114),
      O => m_axi_wdata(114)
    );
\m_axi_wdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(243),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(115),
      O => m_axi_wdata(115)
    );
\m_axi_wdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(244),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(116),
      O => m_axi_wdata(116)
    );
\m_axi_wdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(245),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(117),
      O => m_axi_wdata(117)
    );
\m_axi_wdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(246),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(118),
      O => m_axi_wdata(118)
    );
\m_axi_wdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(247),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(119),
      O => m_axi_wdata(119)
    );
\m_axi_wdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(139),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(11),
      O => m_axi_wdata(11)
    );
\m_axi_wdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(248),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(120),
      O => m_axi_wdata(120)
    );
\m_axi_wdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(249),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(121),
      O => m_axi_wdata(121)
    );
\m_axi_wdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(250),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(122),
      O => m_axi_wdata(122)
    );
\m_axi_wdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(251),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(123),
      O => m_axi_wdata(123)
    );
\m_axi_wdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(252),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(124),
      O => m_axi_wdata(124)
    );
\m_axi_wdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(253),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(125),
      O => m_axi_wdata(125)
    );
\m_axi_wdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(254),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(126),
      O => m_axi_wdata(126)
    );
\m_axi_wdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(255),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(127),
      O => m_axi_wdata(127)
    );
\m_axi_wdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(140),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(12),
      O => m_axi_wdata(12)
    );
\m_axi_wdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(141),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(13),
      O => m_axi_wdata(13)
    );
\m_axi_wdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(142),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(14),
      O => m_axi_wdata(14)
    );
\m_axi_wdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(143),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(15),
      O => m_axi_wdata(15)
    );
\m_axi_wdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(144),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(16),
      O => m_axi_wdata(16)
    );
\m_axi_wdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(145),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(17),
      O => m_axi_wdata(17)
    );
\m_axi_wdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(146),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(18),
      O => m_axi_wdata(18)
    );
\m_axi_wdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(147),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(19),
      O => m_axi_wdata(19)
    );
\m_axi_wdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(129),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(1),
      O => m_axi_wdata(1)
    );
\m_axi_wdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(148),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(20),
      O => m_axi_wdata(20)
    );
\m_axi_wdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(149),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(21),
      O => m_axi_wdata(21)
    );
\m_axi_wdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(150),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(22),
      O => m_axi_wdata(22)
    );
\m_axi_wdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(151),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(23),
      O => m_axi_wdata(23)
    );
\m_axi_wdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(152),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(24),
      O => m_axi_wdata(24)
    );
\m_axi_wdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(153),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(25),
      O => m_axi_wdata(25)
    );
\m_axi_wdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(154),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(26),
      O => m_axi_wdata(26)
    );
\m_axi_wdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(155),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(27),
      O => m_axi_wdata(27)
    );
\m_axi_wdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(156),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(28),
      O => m_axi_wdata(28)
    );
\m_axi_wdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(157),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(29),
      O => m_axi_wdata(29)
    );
\m_axi_wdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(130),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(2),
      O => m_axi_wdata(2)
    );
\m_axi_wdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(158),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(30),
      O => m_axi_wdata(30)
    );
\m_axi_wdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(159),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(31),
      O => m_axi_wdata(31)
    );
\m_axi_wdata[32]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(160),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(32),
      O => m_axi_wdata(32)
    );
\m_axi_wdata[33]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(161),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(33),
      O => m_axi_wdata(33)
    );
\m_axi_wdata[34]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(162),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(34),
      O => m_axi_wdata(34)
    );
\m_axi_wdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(163),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(35),
      O => m_axi_wdata(35)
    );
\m_axi_wdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(164),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(36),
      O => m_axi_wdata(36)
    );
\m_axi_wdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(165),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(37),
      O => m_axi_wdata(37)
    );
\m_axi_wdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(166),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(38),
      O => m_axi_wdata(38)
    );
\m_axi_wdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(167),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(39),
      O => m_axi_wdata(39)
    );
\m_axi_wdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(131),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(3),
      O => m_axi_wdata(3)
    );
\m_axi_wdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(168),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(40),
      O => m_axi_wdata(40)
    );
\m_axi_wdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(169),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(41),
      O => m_axi_wdata(41)
    );
\m_axi_wdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(170),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(42),
      O => m_axi_wdata(42)
    );
\m_axi_wdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(171),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(43),
      O => m_axi_wdata(43)
    );
\m_axi_wdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(172),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(44),
      O => m_axi_wdata(44)
    );
\m_axi_wdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(173),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(45),
      O => m_axi_wdata(45)
    );
\m_axi_wdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(174),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(46),
      O => m_axi_wdata(46)
    );
\m_axi_wdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(175),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(47),
      O => m_axi_wdata(47)
    );
\m_axi_wdata[48]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(176),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(48),
      O => m_axi_wdata(48)
    );
\m_axi_wdata[49]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(177),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(49),
      O => m_axi_wdata(49)
    );
\m_axi_wdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(132),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(4),
      O => m_axi_wdata(4)
    );
\m_axi_wdata[50]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(178),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(50),
      O => m_axi_wdata(50)
    );
\m_axi_wdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(179),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(51),
      O => m_axi_wdata(51)
    );
\m_axi_wdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(180),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(52),
      O => m_axi_wdata(52)
    );
\m_axi_wdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(181),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(53),
      O => m_axi_wdata(53)
    );
\m_axi_wdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(182),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(54),
      O => m_axi_wdata(54)
    );
\m_axi_wdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(183),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(55),
      O => m_axi_wdata(55)
    );
\m_axi_wdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(184),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(56),
      O => m_axi_wdata(56)
    );
\m_axi_wdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(185),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(57),
      O => m_axi_wdata(57)
    );
\m_axi_wdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(186),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(58),
      O => m_axi_wdata(58)
    );
\m_axi_wdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(187),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(59),
      O => m_axi_wdata(59)
    );
\m_axi_wdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(133),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(5),
      O => m_axi_wdata(5)
    );
\m_axi_wdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(188),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(60),
      O => m_axi_wdata(60)
    );
\m_axi_wdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(189),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(61),
      O => m_axi_wdata(61)
    );
\m_axi_wdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(190),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(62),
      O => m_axi_wdata(62)
    );
\m_axi_wdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(191),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(63),
      O => m_axi_wdata(63)
    );
\m_axi_wdata[64]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(192),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(64),
      O => m_axi_wdata(64)
    );
\m_axi_wdata[65]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(193),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(65),
      O => m_axi_wdata(65)
    );
\m_axi_wdata[66]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(194),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(66),
      O => m_axi_wdata(66)
    );
\m_axi_wdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(195),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(67),
      O => m_axi_wdata(67)
    );
\m_axi_wdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(196),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(68),
      O => m_axi_wdata(68)
    );
\m_axi_wdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(197),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(69),
      O => m_axi_wdata(69)
    );
\m_axi_wdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(134),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(6),
      O => m_axi_wdata(6)
    );
\m_axi_wdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(198),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(70),
      O => m_axi_wdata(70)
    );
\m_axi_wdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(199),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(71),
      O => m_axi_wdata(71)
    );
\m_axi_wdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(200),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(72),
      O => m_axi_wdata(72)
    );
\m_axi_wdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(201),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(73),
      O => m_axi_wdata(73)
    );
\m_axi_wdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(202),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(74),
      O => m_axi_wdata(74)
    );
\m_axi_wdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(203),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(75),
      O => m_axi_wdata(75)
    );
\m_axi_wdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(204),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(76),
      O => m_axi_wdata(76)
    );
\m_axi_wdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(205),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(77),
      O => m_axi_wdata(77)
    );
\m_axi_wdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(206),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(78),
      O => m_axi_wdata(78)
    );
\m_axi_wdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(207),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(79),
      O => m_axi_wdata(79)
    );
\m_axi_wdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(135),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(7),
      O => m_axi_wdata(7)
    );
\m_axi_wdata[80]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(208),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(80),
      O => m_axi_wdata(80)
    );
\m_axi_wdata[81]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(209),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(81),
      O => m_axi_wdata(81)
    );
\m_axi_wdata[82]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(210),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(82),
      O => m_axi_wdata(82)
    );
\m_axi_wdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(211),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(83),
      O => m_axi_wdata(83)
    );
\m_axi_wdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(212),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(84),
      O => m_axi_wdata(84)
    );
\m_axi_wdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(213),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(85),
      O => m_axi_wdata(85)
    );
\m_axi_wdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(214),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(86),
      O => m_axi_wdata(86)
    );
\m_axi_wdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(215),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(87),
      O => m_axi_wdata(87)
    );
\m_axi_wdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(216),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(88),
      O => m_axi_wdata(88)
    );
\m_axi_wdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(217),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(89),
      O => m_axi_wdata(89)
    );
\m_axi_wdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(136),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(8),
      O => m_axi_wdata(8)
    );
\m_axi_wdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(218),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(90),
      O => m_axi_wdata(90)
    );
\m_axi_wdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(219),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(91),
      O => m_axi_wdata(91)
    );
\m_axi_wdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(220),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(92),
      O => m_axi_wdata(92)
    );
\m_axi_wdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(221),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(93),
      O => m_axi_wdata(93)
    );
\m_axi_wdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(222),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(94),
      O => m_axi_wdata(94)
    );
\m_axi_wdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(223),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(95),
      O => m_axi_wdata(95)
    );
\m_axi_wdata[96]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(224),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(96),
      O => m_axi_wdata(96)
    );
\m_axi_wdata[97]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(225),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(97),
      O => m_axi_wdata(97)
    );
\m_axi_wdata[98]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(226),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(98),
      O => m_axi_wdata(98)
    );
\m_axi_wdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(227),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(99),
      O => m_axi_wdata(99)
    );
\m_axi_wdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(137),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wdata(9),
      O => m_axi_wdata(9)
    );
\m_axi_wstrb[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(16),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(0),
      O => m_axi_wstrb(0)
    );
\m_axi_wstrb[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(26),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(10),
      O => m_axi_wstrb(10)
    );
\m_axi_wstrb[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(27),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(11),
      O => m_axi_wstrb(11)
    );
\m_axi_wstrb[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(28),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(12),
      O => m_axi_wstrb(12)
    );
\m_axi_wstrb[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(29),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(13),
      O => m_axi_wstrb(13)
    );
\m_axi_wstrb[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(30),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(14),
      O => m_axi_wstrb(14)
    );
\m_axi_wstrb[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(31),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(15),
      O => m_axi_wstrb(15)
    );
\m_axi_wstrb[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(17),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(1),
      O => m_axi_wstrb(1)
    );
\m_axi_wstrb[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(18),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(2),
      O => m_axi_wstrb(2)
    );
\m_axi_wstrb[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(19),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(3),
      O => m_axi_wstrb(3)
    );
\m_axi_wstrb[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(20),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(4),
      O => m_axi_wstrb(4)
    );
\m_axi_wstrb[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(21),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(5),
      O => m_axi_wstrb(5)
    );
\m_axi_wstrb[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(22),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(6),
      O => m_axi_wstrb(6)
    );
\m_axi_wstrb[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(23),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(7),
      O => m_axi_wstrb(7)
    );
\m_axi_wstrb[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(24),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(8),
      O => m_axi_wstrb(8)
    );
\m_axi_wstrb[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wstrb(25),
      I1 => \^storage_data1_reg[0]_0\,
      I2 => s_axi_wstrb(9),
      O => m_axi_wstrb(9)
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8F8B8F8CCCC8888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \sa_wm_awvalid__1\(0),
      I2 => \FSM_onehot_state[3]_i_4__2_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^q\(0),
      I5 => m_axi_wready_0_sn_1,
      O => \m_valid_i_i_1__1_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__1_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\s_axi_wready[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_avalid\,
      I1 => m_axi_wready(0),
      O => m_valid_i_reg_0
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_2\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized1\ is
  port (
    m_avalid : out STD_LOGIC;
    \storage_data1_reg[0]_0\ : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_avalid_0 : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    s_axi_wready_1_sp_1 : in STD_LOGIC;
    m_select_enc_1 : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC;
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]_1\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    wm_mr_wvalid_1 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_2\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized1\ : entity is "axi_data_fifo_v2_1_20_axic_reg_srl_fifo";
end \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized1\;

architecture STRUCTURE of \design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized1\ is
  signal \FSM_onehot_state[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal fifoaddr_i : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_rep[0].fifoaddr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_1\ : STD_LOGIC;
  signal \^m_avalid\ : STD_LOGIC;
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_1\ : STD_LOGIC;
  signal push : STD_LOGIC;
  signal s_axi_wready_1_sn_1 : STD_LOGIC;
  signal \^storage_data1_reg[0]_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__1\ : label is "soft_lutpair122";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute SOFT_HLUTNM of \gen_rep[0].fifoaddr[1]_i_2__1\ : label is "soft_lutpair122";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  m_avalid <= \^m_avalid\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  m_valid_i_reg_1 <= \^m_valid_i_reg_1\;
  s_axi_wready_1_sn_1 <= s_axi_wready_1_sp_1;
  \storage_data1_reg[0]_0\ <= \^storage_data1_reg[0]_0\;
\FSM_onehot_state[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => \m_aready__1\,
      I5 => \storage_data1_reg[0]_1\,
      O => \FSM_onehot_state[1]_i_1__1_n_0\
    );
\FSM_onehot_state[3]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAA884E44AA88"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => \^q\(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state[3]_i_4__1_n_0\,
      I4 => \sa_wm_awvalid__1\(0),
      I5 => \^q\(1),
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => fifoaddr(0),
      O => \FSM_onehot_state[3]_i_4__1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => D(0),
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1__1_n_0\,
      Q => \^q\(0),
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => D(1),
      Q => \^q\(1),
      S => areset_d1
    );
\gen_rep[0].fifoaddr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8AAA8A00300020"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \gen_rep[0].fifoaddr_reg[0]_0\(0),
      I2 => \gen_rep[0].fifoaddr_reg[0]_1\(0),
      I3 => p_1_in,
      I4 => \^q\(0),
      I5 => \m_aready__1\,
      O => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => fifoaddr(1),
      I1 => fifoaddr(0),
      I2 => push,
      O => fifoaddr_i(1)
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\,
      D => \gen_rep[0].fifoaddr[0]_i_1__2_n_0\,
      Q => fifoaddr(0),
      S => SS(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => \gen_rep[0].fifoaddr[1]_i_1__2_n_0\,
      D => fifoaddr_i(1),
      Q => fifoaddr(1),
      S => SS(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.design_1_xbar_0_axi_data_fifo_v2_1_20_ndeep_srl_5
     port map (
      \FSM_onehot_state_reg[0]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      Q(1 downto 0) => fifoaddr(1 downto 0),
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[1]\(1) => \^q\(0),
      \gen_rep[0].fifoaddr_reg[1]\(0) => \FSM_onehot_state_reg_n_0_[0]\,
      \m_aready__1\ => \m_aready__1\,
      p_8_in => p_8_in,
      push => push,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(0),
      \storage_data1_reg[0]\ => \^storage_data1_reg[0]_0\,
      \storage_data1_reg[0]_0\ => \storage_data1_reg[0]_1\,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]_2\,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8F8B8F8CCCC8888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \sa_wm_awvalid__1\(0),
      I2 => \FSM_onehot_state[3]_i_4__1_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^q\(0),
      I5 => \m_aready__1\,
      O => \m_valid_i_i_1__2_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__2_n_0\,
      Q => \^m_avalid\,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => m_avalid_0,
      O => s_axi_wready(0)
    );
\s_axi_wready[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080800000808FF00"
    )
        port map (
      I0 => \^m_avalid\,
      I1 => p_8_in,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => s_axi_wready_1_sn_1,
      I4 => m_select_enc_1,
      I5 => m_select_enc_2,
      O => \^m_valid_i_reg_0\
    );
\s_axi_wready[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_valid_i_reg_1\,
      I1 => m_avalid_3,
      O => s_axi_wready(1)
    );
\s_axi_wready[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080FF000000"
    )
        port map (
      I0 => \^m_avalid\,
      I1 => p_8_in,
      I2 => \^storage_data1_reg[0]_0\,
      I3 => s_axi_wready_1_sn_1,
      I4 => m_select_enc_2,
      I5 => m_select_enc_4,
      O => \^m_valid_i_reg_1\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_srls[0].gen_rep[0].srl_nx1_n_1\,
      Q => \^storage_data1_reg[0]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice is
  port (
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : out STD_LOGIC;
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    reset : out STD_LOGIC;
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[4]\ : out STD_LOGIC;
    p_2_in : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[0].w_issuing_cnt_reg[4]_0\ : out STD_LOGIC;
    p_2_in_0 : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    \s_axi_bvalid[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_arbiter.m_grant_enc_i[0]_i_3\ : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_arbiter.m_grant_enc_i[0]_i_3_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_hot\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    st_mr_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC;
    bready_carry : in STD_LOGIC_VECTOR ( 0 to 0 );
    match_1 : in STD_LOGIC;
    \gen_single_thread.active_target_hot_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_single_thread.active_target_enc_3\ : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice;

architecture STRUCTURE of design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice is
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
begin
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
\b.b_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1_6\
     port map (
      D(2 downto 0) => D(2 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aresetn_d_reg[0]\,
      bready_carry(0) => bready_carry(0),
      \gen_arbiter.m_grant_enc_i[0]_i_3\ => \gen_arbiter.m_grant_enc_i[0]_i_3\,
      \gen_arbiter.m_grant_enc_i[0]_i_3_0\ => \gen_arbiter.m_grant_enc_i[0]_i_3_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\ => \gen_master_slots[0].w_issuing_cnt_reg[4]\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]_0\ => \gen_master_slots[0].w_issuing_cnt_reg[4]_0\,
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_enc_3\ => \gen_single_thread.active_target_enc_3\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      \gen_single_thread.active_target_hot_2\(0) => \gen_single_thread.active_target_hot_2\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      match => match,
      match_1 => match_1,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => p_2_in,
      p_2_in_0 => p_2_in_0,
      reset => reset,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bready_0_sp_1 => s_axi_bready_0_sn_1,
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      \s_axi_bvalid[0]\(0) => \s_axi_bvalid[0]\(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      st_mr_bid(0) => st_mr_bid(0),
      w_issuing_cnt(1 downto 0) => w_issuing_cnt(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ is
  port (
    m_valid_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in : out STD_LOGIC;
    mi_bready_1 : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    st_mr_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready_0_sp_1 : out STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    reset : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC;
    p_15_in : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_single_thread.active_target_enc\ : in STD_LOGIC;
    \gen_single_thread.active_target_enc_0\ : in STD_LOGIC;
    p_18_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ : entity is "axi_register_slice_v2_1_21_axi_register_slice";
end \design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\ is
  signal s_axi_bready_0_sn_1 : STD_LOGIC;
begin
  s_axi_bready_0_sp_1 <= s_axi_bready_0_sn_1;
\b.b_pipe\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_21_axic_register_slice__parameterized1\
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]_0\ => \aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_enc_0\ => \gen_single_thread.active_target_enc_0\,
      m_valid_i_reg_0 => m_valid_i_reg(0),
      m_valid_i_reg_1 => m_valid_i_reg_0,
      mi_bready_1 => mi_bready_1,
      p_0_in => p_0_in,
      p_15_in => p_15_in,
      p_18_in => p_18_in,
      p_1_in => p_1_in,
      reset => reset,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bready_0_sp_1 => s_axi_bready_0_sn_1,
      st_mr_bid(0) => st_mr_bid(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux is
  port (
    m_avalid : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \m_aready__1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux is
begin
\gen_wmux.wmux_aw_fifo\: entity work.\design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized0\
     port map (
      D(0) => D(0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => SS(0),
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[3]_0\(0) => \gen_rep[0].fifoaddr_reg[3]\(0),
      \gen_rep[0].fifoaddr_reg[3]_1\(0) => \gen_rep[0].fifoaddr_reg[3]_0\(0),
      m_avalid => m_avalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wready_0_sp_1 => \m_aready__1\,
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      m_valid_i_reg_0 => m_valid_i_reg,
      p_1_in => p_1_in,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(0),
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux__parameterized0\ is
  port (
    m_avalid : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_wm_awgrant_enc : in STD_LOGIC;
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    m_avalid_0 : in STD_LOGIC;
    p_8_in : in STD_LOGIC;
    s_axi_wready_1_sp_1 : in STD_LOGIC;
    m_select_enc_1 : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC;
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC;
    \m_aready__1\ : in STD_LOGIC;
    \sa_wm_awvalid__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \storage_data1_reg[0]\ : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_1_in : in STD_LOGIC;
    wm_mr_wvalid_1 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \storage_data1_reg[0]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux__parameterized0\ : entity is "axi_crossbar_v2_1_22_wdata_mux";
end \design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux__parameterized0\;

architecture STRUCTURE of \design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux__parameterized0\ is
  signal s_axi_wready_1_sn_1 : STD_LOGIC;
begin
  s_axi_wready_1_sn_1 <= s_axi_wready_1_sp_1;
\gen_wmux.wmux_aw_fifo\: entity work.\design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo__parameterized1\
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SS(0) => SS(0),
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[0]_0\(0) => \gen_rep[0].fifoaddr_reg[0]\(0),
      \gen_rep[0].fifoaddr_reg[0]_1\(0) => \gen_rep[0].fifoaddr_reg[0]_0\(0),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid,
      m_avalid_0 => m_avalid_0,
      m_avalid_3 => m_avalid_3,
      m_select_enc_1 => m_select_enc_1,
      m_select_enc_2 => m_select_enc_2,
      m_select_enc_4 => m_select_enc_4,
      m_valid_i_reg_0 => m_valid_i_reg,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      p_1_in => p_1_in,
      p_8_in => p_8_in,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wready_1_sp_1 => s_axi_wready_1_sn_1,
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(0),
      \storage_data1_reg[0]_0\ => m_select_enc,
      \storage_data1_reg[0]_1\ => \storage_data1_reg[0]\,
      \storage_data1_reg[0]_2\ => \storage_data1_reg[0]_0\,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router is
  port (
    st_aa_awtarget_enc_0 : out STD_LOGIC;
    m_avalid : out STD_LOGIC;
    ss_wr_awready_0 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    s_axi_wvalid_0_sp_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    areset_d1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_valid_i_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router is
  signal s_axi_wvalid_0_sn_1 : STD_LOGIC;
begin
  s_axi_wvalid_0_sp_1 <= s_axi_wvalid_0_sn_1;
wrouter_aw_fifo: entity work.design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo_3
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      SS(0) => SS(0),
      aclk => aclk,
      areset_d1 => areset_d1,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]\,
      m_select_enc => m_select_enc,
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axi_wvalid_0_sp_1 => s_axi_wvalid_0_sn_1,
      s_ready_i_reg_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0 => st_aa_awtarget_enc_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router_1 is
  port (
    st_aa_awtarget_enc_1 : out STD_LOGIC;
    areset_d1 : out STD_LOGIC;
    m_avalid : out STD_LOGIC;
    ss_wr_awready_1 : out STD_LOGIC;
    m_select_enc : out STD_LOGIC;
    wm_mr_wvalid_1 : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC;
    \gen_rep[0].fifoaddr_reg[1]\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid_0_sp_1 : in STD_LOGIC;
    m_select_enc_0 : in STD_LOGIC;
    m_avalid_1 : in STD_LOGIC;
    m_select_enc_2 : in STD_LOGIC;
    m_avalid_3 : in STD_LOGIC;
    m_select_enc_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router_1 : entity is "axi_crossbar_v2_1_22_wdata_router";
end design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router_1;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router_1 is
  signal m_axi_wvalid_0_sn_1 : STD_LOGIC;
begin
  m_axi_wvalid_0_sn_1 <= m_axi_wvalid_0_sp_1;
wrouter_aw_fifo: entity work.design_1_xbar_0_axi_data_fifo_v2_1_20_axic_reg_srl_fifo
     port map (
      D(0) => D(0),
      Q(0) => Q(0),
      SS(0) => areset_d1,
      aclk => aclk,
      \gen_rep[0].fifoaddr_reg[1]_0\ => \gen_rep[0].fifoaddr_reg[1]\,
      m_avalid_1 => m_avalid_1,
      m_avalid_3 => m_avalid_3,
      m_axi_wvalid(0) => m_axi_wvalid(0),
      m_axi_wvalid_0_sp_1 => m_axi_wvalid_0_sn_1,
      m_select_enc_0 => m_select_enc_0,
      m_select_enc_2 => m_select_enc_2,
      m_select_enc_4 => m_select_enc_4,
      m_valid_i_reg_0 => m_avalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg_0 => ss_wr_awready_1,
      s_ready_i_reg_1(0) => SS(0),
      st_aa_awtarget_enc_1 => st_aa_awtarget_enc_1,
      \storage_data1_reg[0]_0\ => m_select_enc,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_crossbar is
  port (
    Q : out STD_LOGIC_VECTOR ( 59 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_ready_d_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aresetn : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
end design_1_xbar_0_axi_crossbar_v2_1_22_crossbar;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_crossbar is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal aa_wm_awgrant_enc : STD_LOGIC;
  signal addr_arbiter_aw_n_18 : STD_LOGIC;
  signal addr_arbiter_aw_n_19 : STD_LOGIC;
  signal addr_arbiter_aw_n_20 : STD_LOGIC;
  signal addr_arbiter_aw_n_21 : STD_LOGIC;
  signal addr_arbiter_aw_n_22 : STD_LOGIC;
  signal addr_arbiter_aw_n_23 : STD_LOGIC;
  signal addr_arbiter_aw_n_24 : STD_LOGIC;
  signal addr_arbiter_aw_n_25 : STD_LOGIC;
  signal addr_arbiter_aw_n_26 : STD_LOGIC;
  signal addr_arbiter_aw_n_29 : STD_LOGIC;
  signal addr_arbiter_aw_n_30 : STD_LOGIC;
  signal addr_arbiter_aw_n_31 : STD_LOGIC;
  signal addr_arbiter_aw_n_32 : STD_LOGIC;
  signal addr_arbiter_aw_n_37 : STD_LOGIC;
  signal addr_arbiter_aw_n_4 : STD_LOGIC;
  signal addr_arbiter_aw_n_9 : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal bready_carry : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal f_hot2enc_return : STD_LOGIC;
  signal \gen_axi.write_cs01_out\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_2\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_10\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_2\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4\ : STD_LOGIC;
  signal \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_3\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_single_thread.active_target_enc\ : STD_LOGIC;
  signal \gen_single_thread.active_target_enc_14\ : STD_LOGIC;
  signal \gen_single_thread.active_target_hot\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_single_thread.active_target_hot_13\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\ : STD_LOGIC;
  signal \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_0_in6_in_7\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in\ : STD_LOGIC;
  signal \gen_wmux.wmux_aw_fifo/p_7_in_8\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal \m_aready__1_4\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_avalid_10 : STD_LOGIC;
  signal m_avalid_12 : STD_LOGIC;
  signal m_avalid_17 : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d0_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_15 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_ready_d_18 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_ready_d_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_select_enc : STD_LOGIC;
  signal m_select_enc_11 : STD_LOGIC;
  signal m_select_enc_16 : STD_LOGIC;
  signal m_select_enc_9 : STD_LOGIC;
  signal match : STD_LOGIC;
  signal match_1 : STD_LOGIC;
  signal mi_awready : STD_LOGIC_VECTOR ( 1 to 1 );
  signal mi_bready_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in_3 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_in_5 : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal reset_6 : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sa_wm_awvalid__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ss_aa_awready : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ss_wr_awready_0 : STD_LOGIC;
  signal ss_wr_awready_1 : STD_LOGIC;
  signal st_aa_awtarget_enc_0 : STD_LOGIC;
  signal st_aa_awtarget_enc_1 : STD_LOGIC;
  signal st_mr_bid : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_mr_bvalid : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tmp_aa_awmesg : STD_LOGIC_VECTOR ( 114 downto 49 );
  signal valid_qual_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wm_mr_wvalid_1 : STD_LOGIC;
  signal \wrouter_aw_fifo/areset_d1\ : STD_LOGIC;
begin
  E(0) <= \^e\(0);
  Q(59 downto 0) <= \^q\(59 downto 0);
  m_axi_wvalid(0) <= \^m_axi_wvalid\(0);
  \m_ready_d_reg[1]\(0) <= \^m_ready_d_reg[1]\(0);
  s_axi_bvalid(1 downto 0) <= \^s_axi_bvalid\(1 downto 0);
addr_arbiter_aw: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_addr_arbiter
     port map (
      D(1 downto 0) => m_ready_d0_2(1 downto 0),
      E(0) => addr_arbiter_aw_n_18,
      \FSM_onehot_state_reg[1]\ => addr_arbiter_aw_n_26,
      \FSM_onehot_state_reg[1]_0\ => addr_arbiter_aw_n_32,
      \FSM_onehot_state_reg[3]\ => addr_arbiter_aw_n_25,
      \FSM_onehot_state_reg[3]_0\ => addr_arbiter_aw_n_31,
      Q(1 downto 0) => aa_mi_awtarget_hot(1 downto 0),
      SR(0) => addr_arbiter_aw_n_4,
      SS(0) => reset,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      aresetn_d => aresetn_d,
      f_hot2enc_return => f_hot2enc_return,
      \gen_arbiter.any_grant_reg_0\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\,
      \gen_arbiter.any_grant_reg_1\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\,
      \gen_arbiter.last_rr_hot_reg[0]_0\(0) => addr_arbiter_aw_n_9,
      \gen_arbiter.m_mesg_i_reg[62]_0\(59 downto 0) => \^q\(59 downto 0),
      \gen_arbiter.m_valid_i_reg_inv_0\(0) => addr_arbiter_aw_n_24,
      \gen_arbiter.m_valid_i_reg_inv_1\(1) => addr_arbiter_aw_n_29,
      \gen_arbiter.m_valid_i_reg_inv_1\(0) => addr_arbiter_aw_n_30,
      \gen_arbiter.m_valid_i_reg_inv_2\ => addr_arbiter_aw_n_37,
      \gen_arbiter.qual_reg_reg[1]_0\(1) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      \gen_arbiter.qual_reg_reg[1]_0\(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      \gen_arbiter.s_ready_i_reg[1]_0\(1 downto 0) => ss_aa_awready(1 downto 0),
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      \gen_master_slots[0].w_issuing_cnt_reg[1]\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_master_slots[0].w_issuing_cnt_reg[3]\ => addr_arbiter_aw_n_19,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(3) => addr_arbiter_aw_n_20,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(2) => addr_arbiter_aw_n_21,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(1) => addr_arbiter_aw_n_22,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\(0) => addr_arbiter_aw_n_23,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => \gen_master_slots[1].reg_slice_mi_n_5\,
      \m_aready__1\ => \m_aready__1_4\,
      \m_aready__1_1\ => \m_aready__1\,
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      \m_ready_d_reg[0]\(0) => m_ready_d_15(0),
      \m_ready_d_reg[0]_0\(0) => m_ready_d(0),
      \m_ready_d_reg[1]\(1 downto 0) => m_ready_d_18(1 downto 0),
      match => match_1,
      match_0 => match,
      mi_awready(0) => mi_awready(1),
      p_1_in => p_1_in_3,
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      \s_axi_awvalid[0]\(0) => m_ready_d0_0(0),
      \s_axi_awvalid[1]\(0) => m_ready_d0(0),
      \sa_wm_awvalid__1\(1 downto 0) => \sa_wm_awvalid__1\(1 downto 0),
      \storage_data1_reg[0]\(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      \storage_data1_reg[0]\(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      \storage_data1_reg[0]_0\(1) => \gen_wmux.wmux_aw_fifo/p_7_in_8\,
      \storage_data1_reg[0]_0\(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in_7\,
      tmp_aa_awmesg(3 downto 2) => tmp_aa_awmesg(114 downto 113),
      tmp_aa_awmesg(1 downto 0) => tmp_aa_awmesg(50 downto 49),
      valid_qual_i(1 downto 0) => valid_qual_i(1 downto 0),
      w_issuing_cnt(5) => w_issuing_cnt(8),
      w_issuing_cnt(4 downto 0) => w_issuing_cnt(4 downto 0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_decerr_slave
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[0]_0\(0) => m_ready_d_18(1),
      Q(0) => aa_mi_awtarget_hot(1),
      SS(0) => reset,
      aclk => aclk,
      bready_carry(0) => bready_carry(3),
      \gen_axi.s_axi_bid_i_reg[0]_0\(0) => \^q\(0),
      \gen_axi.s_axi_bvalid_i_reg_0\ => \gen_decerr_slave.decerr_slave_inst_n_4\,
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      \m_aready__1\ => \m_aready__1\,
      m_select_enc => m_select_enc_9,
      mi_awready(0) => mi_awready(1),
      mi_bready_1 => mi_bready_1,
      p_15_in => p_15_in,
      p_18_in => p_18_in,
      p_1_in => p_1_in_3,
      p_8_in => p_8_in,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\gen_master_slots[0].gen_mi_write.wdata_mux_w\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux
     port map (
      D(0) => addr_arbiter_aw_n_24,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in\,
      SS(0) => reset,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[3]\(0) => aa_mi_awtarget_hot(0),
      \gen_rep[0].fifoaddr_reg[3]_0\(0) => m_ready_d_18(0),
      \m_aready__1\ => \m_aready__1_4\,
      m_avalid => m_avalid,
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid(0) => \^m_axi_wvalid\(0),
      m_select_enc => m_select_enc,
      m_valid_i_reg => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_2\,
      p_1_in => p_1_in_3,
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(0),
      \storage_data1_reg[0]\ => addr_arbiter_aw_n_25,
      \storage_data1_reg[0]_0\ => addr_arbiter_aw_n_26
    );
\gen_master_slots[0].reg_slice_mi\: entity work.design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice
     port map (
      D(2 downto 0) => D(2 downto 0),
      Q(0) => st_mr_bid(0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[0].reg_slice_mi_n_2\,
      bready_carry(0) => bready_carry(2),
      \gen_arbiter.m_grant_enc_i[0]_i_3\ => addr_arbiter_aw_n_19,
      \gen_arbiter.m_grant_enc_i[0]_i_3_0\ => \gen_master_slots[1].reg_slice_mi_n_5\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]\ => \gen_master_slots[0].reg_slice_mi_n_5\,
      \gen_master_slots[0].w_issuing_cnt_reg[4]_0\ => \gen_master_slots[0].reg_slice_mi_n_10\,
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc_14\,
      \gen_single_thread.active_target_enc_3\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_13\(0),
      \gen_single_thread.active_target_hot_2\(0) => \gen_single_thread.active_target_hot\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      match => match,
      match_1 => match_1,
      p_0_in => p_0_in,
      p_1_in => p_1_in,
      p_2_in => p_2_in_5,
      p_2_in_0 => p_2_in,
      reset => reset_6,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bready_0_sp_1 => \gen_master_slots[0].reg_slice_mi_n_4\,
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_bvalid(1 downto 0) => \^s_axi_bvalid\(1 downto 0),
      \s_axi_bvalid[0]\(0) => st_mr_bvalid(1),
      s_ready_i_reg => \gen_master_slots[1].reg_slice_mi_n_3\,
      st_mr_bid(0) => st_mr_bid(1),
      w_issuing_cnt(1) => w_issuing_cnt(8),
      w_issuing_cnt(0) => w_issuing_cnt(4)
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => \gen_master_slots[0].w_issuing_cnt[0]_i_1_n_0\,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_23,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_22,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_21,
      Q => w_issuing_cnt(3),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => addr_arbiter_aw_n_18,
      D => addr_arbiter_aw_n_20,
      Q => w_issuing_cnt(4),
      R => reset
    );
\gen_master_slots[1].gen_mi_write.wdata_mux_w\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_22_wdata_mux__parameterized0\
     port map (
      D(1) => addr_arbiter_aw_n_29,
      D(0) => addr_arbiter_aw_n_30,
      Q(1) => \gen_wmux.wmux_aw_fifo/p_7_in_8\,
      Q(0) => \gen_wmux.wmux_aw_fifo/p_0_in6_in_7\,
      SS(0) => reset,
      aa_wm_awgrant_enc => aa_wm_awgrant_enc,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[0]\(0) => m_ready_d_18(0),
      \gen_rep[0].fifoaddr_reg[0]_0\(0) => aa_mi_awtarget_hot(1),
      \m_aready__1\ => \m_aready__1\,
      m_avalid => m_avalid_10,
      m_avalid_0 => m_avalid_12,
      m_avalid_3 => m_avalid_17,
      m_select_enc => m_select_enc_9,
      m_select_enc_1 => m_select_enc_11,
      m_select_enc_2 => m_select_enc,
      m_select_enc_4 => m_select_enc_16,
      m_valid_i_reg => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4\,
      m_valid_i_reg_0 => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5\,
      p_1_in => p_1_in_3,
      p_8_in => p_8_in,
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wready_1_sp_1 => \gen_master_slots[0].gen_mi_write.wdata_mux_w_n_2\,
      \sa_wm_awvalid__1\(0) => \sa_wm_awvalid__1\(1),
      \storage_data1_reg[0]\ => addr_arbiter_aw_n_31,
      \storage_data1_reg[0]_0\ => addr_arbiter_aw_n_32,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
\gen_master_slots[1].reg_slice_mi\: entity work.\design_1_xbar_0_axi_register_slice_v2_1_21_axi_register_slice__parameterized0\
     port map (
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[1].reg_slice_mi_n_3\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[0].reg_slice_mi_n_2\,
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_enc_0\ => \gen_single_thread.active_target_enc_14\,
      m_valid_i_reg(0) => st_mr_bvalid(1),
      m_valid_i_reg_0 => \gen_decerr_slave.decerr_slave_inst_n_4\,
      mi_bready_1 => mi_bready_1,
      p_0_in => p_0_in,
      p_15_in => p_15_in,
      p_18_in => p_18_in,
      p_1_in => p_1_in,
      reset => reset_6,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bready_0_sp_1 => \gen_master_slots[1].reg_slice_mi_n_5\,
      st_mr_bid(0) => st_mr_bid(1)
    );
\gen_master_slots[1].w_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_37,
      Q => w_issuing_cnt(8),
      R => reset
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor
     port map (
      D(1 downto 0) => tmp_aa_awmesg(50 downto 49),
      E(0) => \^e\(0),
      Q(1 downto 0) => m_ready_d(1 downto 0),
      SS(0) => reset,
      aclk => aclk,
      \gen_arbiter.any_grant_reg\ => \gen_master_slots[0].reg_slice_mi_n_10\,
      \gen_arbiter.any_grant_reg_0\(0) => addr_arbiter_aw_n_9,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.accept_cnt_reg[1]_1\(0) => ss_aa_awready(0),
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot\(0),
      match => match_1,
      p_2_in => p_2_in,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bvalid(0) => \^s_axi_bvalid\(0),
      ss_wr_awready_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0 => st_aa_awtarget_enc_0,
      valid_qual_i(0) => valid_qual_i(0)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_splitter
     port map (
      D(1 downto 0) => m_ready_d0_0(1 downto 0),
      E(0) => \^e\(0),
      Q(1 downto 0) => m_ready_d(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \m_ready_d_reg[0]_0\(0) => ss_aa_awready(0),
      \m_ready_d_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      \s_axi_awvalid[0]\(0) => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_3\,
      ss_wr_awready_0 => ss_wr_awready_0,
      valid_qual_i(0) => valid_qual_i(0)
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router
     port map (
      D(0) => m_ready_d0_0(1),
      Q(0) => m_ready_d(1),
      SS(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_4\,
      m_avalid => m_avalid_12,
      m_select_enc => m_select_enc_11,
      m_valid_i_reg => \gen_slave_slots[0].gen_si_write.splitter_aw_si_n_4\,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(31 downto 28),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axi_wvalid_0_sp_1 => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      ss_wr_awready_0 => ss_wr_awready_0,
      st_aa_awtarget_enc_0 => st_aa_awtarget_enc_0
    );
\gen_slave_slots[1].gen_si_write.si_transactor_aw\: entity work.\design_1_xbar_0_axi_crossbar_v2_1_22_si_transactor__parameterized0\
     port map (
      D(1 downto 0) => tmp_aa_awmesg(114 downto 113),
      E(0) => \^m_ready_d_reg[1]\(0),
      Q(1 downto 0) => m_ready_d_15(1 downto 0),
      SS(0) => reset,
      aclk => aclk,
      bready_carry(1 downto 0) => bready_carry(3 downto 2),
      f_hot2enc_return => f_hot2enc_return,
      \gen_arbiter.any_grant_reg\ => \gen_master_slots[0].reg_slice_mi_n_5\,
      \gen_single_thread.accept_cnt_reg[1]_0\ => \gen_slave_slots[1].gen_si_write.si_transactor_aw_n_2\,
      \gen_single_thread.accept_cnt_reg[1]_1\(0) => ss_aa_awready(1),
      \gen_single_thread.active_target_enc\ => \gen_single_thread.active_target_enc_14\,
      \gen_single_thread.active_target_enc_1\ => \gen_single_thread.active_target_enc\,
      \gen_single_thread.active_target_hot\(0) => \gen_single_thread.active_target_hot_13\(0),
      \gen_single_thread.active_target_hot_0\(0) => \gen_single_thread.active_target_hot\(0),
      match => match,
      p_2_in => p_2_in_5,
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bvalid(0) => \^s_axi_bvalid\(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      st_aa_awtarget_enc_1 => st_aa_awtarget_enc_1,
      st_mr_bid(1 downto 0) => st_mr_bid(1 downto 0),
      valid_qual_i(0) => valid_qual_i(1)
    );
\gen_slave_slots[1].gen_si_write.splitter_aw_si\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_splitter_0
     port map (
      D(1 downto 0) => m_ready_d0(1 downto 0),
      Q(1 downto 0) => m_ready_d_15(1 downto 0),
      aclk => aclk,
      aresetn_d => aresetn_d,
      \m_ready_d_reg[0]_0\(0) => ss_aa_awready(1),
      \m_ready_d_reg[1]_0\(0) => \^m_ready_d_reg[1]\(0),
      \m_ready_d_reg[1]_1\ => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\,
      s_axi_awvalid(0) => s_axi_awvalid(1),
      \s_axi_awvalid[1]\(0) => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_3\,
      ss_wr_awready_1 => ss_wr_awready_1,
      valid_qual_i(0) => valid_qual_i(1)
    );
\gen_slave_slots[1].gen_si_write.wdata_router_w\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_wdata_router_1
     port map (
      D(0) => m_ready_d0(1),
      Q(0) => m_ready_d_15(1),
      SS(0) => reset,
      aclk => aclk,
      areset_d1 => \wrouter_aw_fifo/areset_d1\,
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_master_slots[1].gen_mi_write.wdata_mux_w_n_5\,
      m_avalid => m_avalid_17,
      m_avalid_1 => m_avalid_10,
      m_avalid_3 => m_avalid,
      m_axi_wvalid(0) => \^m_axi_wvalid\(0),
      m_axi_wvalid_0_sp_1 => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_4\,
      m_select_enc => m_select_enc_16,
      m_select_enc_0 => m_select_enc_11,
      m_select_enc_2 => m_select_enc_9,
      m_select_enc_4 => m_select_enc,
      m_valid_i_reg => \gen_slave_slots[1].gen_si_write.splitter_aw_si_n_4\,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(63 downto 60),
      s_axi_awvalid(0) => s_axi_awvalid(1),
      s_axi_wlast(0) => s_axi_wlast(1),
      s_axi_wvalid(0) => s_axi_wvalid(1),
      ss_wr_awready_1 => ss_wr_awready_1,
      st_aa_awtarget_enc_1 => st_aa_awtarget_enc_1,
      wm_mr_wvalid_1 => wm_mr_wvalid_1
    );
splitter_aw_mi: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_splitter_2
     port map (
      D(1 downto 0) => m_ready_d0_2(1 downto 0),
      Q(1 downto 0) => m_ready_d_18(1 downto 0),
      SR(0) => addr_arbiter_aw_n_4,
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 128;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "zynquplus";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "96'b000000000000000000000000000111000000000000000000000000000001110100000000000000000000000000011111";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "192'b000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 16;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 3;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 16;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 3;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "rtl";
  attribute P_INCR : string;
  attribute P_INCR of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "1'b0";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "2'b00";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar : entity is "2'b11";
end design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar;

architecture STRUCTURE of design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_awregion\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1 downto 0) <= \^m_axi_awregion\(1 downto 0);
  m_axi_awuser(0) <= \<const0>\;
  m_axi_rready(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_arready(1) <= \<const0>\;
  s_axi_arready(0) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_buser(1) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_rdata(255) <= \<const0>\;
  s_axi_rdata(254) <= \<const0>\;
  s_axi_rdata(253) <= \<const0>\;
  s_axi_rdata(252) <= \<const0>\;
  s_axi_rdata(251) <= \<const0>\;
  s_axi_rdata(250) <= \<const0>\;
  s_axi_rdata(249) <= \<const0>\;
  s_axi_rdata(248) <= \<const0>\;
  s_axi_rdata(247) <= \<const0>\;
  s_axi_rdata(246) <= \<const0>\;
  s_axi_rdata(245) <= \<const0>\;
  s_axi_rdata(244) <= \<const0>\;
  s_axi_rdata(243) <= \<const0>\;
  s_axi_rdata(242) <= \<const0>\;
  s_axi_rdata(241) <= \<const0>\;
  s_axi_rdata(240) <= \<const0>\;
  s_axi_rdata(239) <= \<const0>\;
  s_axi_rdata(238) <= \<const0>\;
  s_axi_rdata(237) <= \<const0>\;
  s_axi_rdata(236) <= \<const0>\;
  s_axi_rdata(235) <= \<const0>\;
  s_axi_rdata(234) <= \<const0>\;
  s_axi_rdata(233) <= \<const0>\;
  s_axi_rdata(232) <= \<const0>\;
  s_axi_rdata(231) <= \<const0>\;
  s_axi_rdata(230) <= \<const0>\;
  s_axi_rdata(229) <= \<const0>\;
  s_axi_rdata(228) <= \<const0>\;
  s_axi_rdata(227) <= \<const0>\;
  s_axi_rdata(226) <= \<const0>\;
  s_axi_rdata(225) <= \<const0>\;
  s_axi_rdata(224) <= \<const0>\;
  s_axi_rdata(223) <= \<const0>\;
  s_axi_rdata(222) <= \<const0>\;
  s_axi_rdata(221) <= \<const0>\;
  s_axi_rdata(220) <= \<const0>\;
  s_axi_rdata(219) <= \<const0>\;
  s_axi_rdata(218) <= \<const0>\;
  s_axi_rdata(217) <= \<const0>\;
  s_axi_rdata(216) <= \<const0>\;
  s_axi_rdata(215) <= \<const0>\;
  s_axi_rdata(214) <= \<const0>\;
  s_axi_rdata(213) <= \<const0>\;
  s_axi_rdata(212) <= \<const0>\;
  s_axi_rdata(211) <= \<const0>\;
  s_axi_rdata(210) <= \<const0>\;
  s_axi_rdata(209) <= \<const0>\;
  s_axi_rdata(208) <= \<const0>\;
  s_axi_rdata(207) <= \<const0>\;
  s_axi_rdata(206) <= \<const0>\;
  s_axi_rdata(205) <= \<const0>\;
  s_axi_rdata(204) <= \<const0>\;
  s_axi_rdata(203) <= \<const0>\;
  s_axi_rdata(202) <= \<const0>\;
  s_axi_rdata(201) <= \<const0>\;
  s_axi_rdata(200) <= \<const0>\;
  s_axi_rdata(199) <= \<const0>\;
  s_axi_rdata(198) <= \<const0>\;
  s_axi_rdata(197) <= \<const0>\;
  s_axi_rdata(196) <= \<const0>\;
  s_axi_rdata(195) <= \<const0>\;
  s_axi_rdata(194) <= \<const0>\;
  s_axi_rdata(193) <= \<const0>\;
  s_axi_rdata(192) <= \<const0>\;
  s_axi_rdata(191) <= \<const0>\;
  s_axi_rdata(190) <= \<const0>\;
  s_axi_rdata(189) <= \<const0>\;
  s_axi_rdata(188) <= \<const0>\;
  s_axi_rdata(187) <= \<const0>\;
  s_axi_rdata(186) <= \<const0>\;
  s_axi_rdata(185) <= \<const0>\;
  s_axi_rdata(184) <= \<const0>\;
  s_axi_rdata(183) <= \<const0>\;
  s_axi_rdata(182) <= \<const0>\;
  s_axi_rdata(181) <= \<const0>\;
  s_axi_rdata(180) <= \<const0>\;
  s_axi_rdata(179) <= \<const0>\;
  s_axi_rdata(178) <= \<const0>\;
  s_axi_rdata(177) <= \<const0>\;
  s_axi_rdata(176) <= \<const0>\;
  s_axi_rdata(175) <= \<const0>\;
  s_axi_rdata(174) <= \<const0>\;
  s_axi_rdata(173) <= \<const0>\;
  s_axi_rdata(172) <= \<const0>\;
  s_axi_rdata(171) <= \<const0>\;
  s_axi_rdata(170) <= \<const0>\;
  s_axi_rdata(169) <= \<const0>\;
  s_axi_rdata(168) <= \<const0>\;
  s_axi_rdata(167) <= \<const0>\;
  s_axi_rdata(166) <= \<const0>\;
  s_axi_rdata(165) <= \<const0>\;
  s_axi_rdata(164) <= \<const0>\;
  s_axi_rdata(163) <= \<const0>\;
  s_axi_rdata(162) <= \<const0>\;
  s_axi_rdata(161) <= \<const0>\;
  s_axi_rdata(160) <= \<const0>\;
  s_axi_rdata(159) <= \<const0>\;
  s_axi_rdata(158) <= \<const0>\;
  s_axi_rdata(157) <= \<const0>\;
  s_axi_rdata(156) <= \<const0>\;
  s_axi_rdata(155) <= \<const0>\;
  s_axi_rdata(154) <= \<const0>\;
  s_axi_rdata(153) <= \<const0>\;
  s_axi_rdata(152) <= \<const0>\;
  s_axi_rdata(151) <= \<const0>\;
  s_axi_rdata(150) <= \<const0>\;
  s_axi_rdata(149) <= \<const0>\;
  s_axi_rdata(148) <= \<const0>\;
  s_axi_rdata(147) <= \<const0>\;
  s_axi_rdata(146) <= \<const0>\;
  s_axi_rdata(145) <= \<const0>\;
  s_axi_rdata(144) <= \<const0>\;
  s_axi_rdata(143) <= \<const0>\;
  s_axi_rdata(142) <= \<const0>\;
  s_axi_rdata(141) <= \<const0>\;
  s_axi_rdata(140) <= \<const0>\;
  s_axi_rdata(139) <= \<const0>\;
  s_axi_rdata(138) <= \<const0>\;
  s_axi_rdata(137) <= \<const0>\;
  s_axi_rdata(136) <= \<const0>\;
  s_axi_rdata(135) <= \<const0>\;
  s_axi_rdata(134) <= \<const0>\;
  s_axi_rdata(133) <= \<const0>\;
  s_axi_rdata(132) <= \<const0>\;
  s_axi_rdata(131) <= \<const0>\;
  s_axi_rdata(130) <= \<const0>\;
  s_axi_rdata(129) <= \<const0>\;
  s_axi_rdata(128) <= \<const0>\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast(1) <= \<const0>\;
  s_axi_rlast(0) <= \<const0>\;
  s_axi_rresp(3) <= \<const0>\;
  s_axi_rresp(2) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(1) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid(1) <= \<const0>\;
  s_axi_rvalid(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_crossbar
     port map (
      D(2) => m_axi_bid(0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      E(0) => s_axi_awready(0),
      Q(59 downto 56) => m_axi_awqos(3 downto 0),
      Q(55 downto 52) => m_axi_awcache(3 downto 0),
      Q(51 downto 50) => m_axi_awburst(1 downto 0),
      Q(49 downto 48) => \^m_axi_awregion\(1 downto 0),
      Q(47 downto 45) => m_axi_awprot(2 downto 0),
      Q(44) => m_axi_awlock(0),
      Q(43 downto 41) => m_axi_awsize(2 downto 0),
      Q(40 downto 33) => m_axi_awlen(7 downto 0),
      Q(32 downto 1) => m_axi_awaddr(31 downto 0),
      Q(0) => m_axi_awid(0),
      aclk => aclk,
      aresetn => aresetn,
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      \m_ready_d_reg[1]\(0) => s_axi_awready(1),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xbar_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xbar_0 : entity is "design_1_xbar_0,axi_crossbar_v2_1_22_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xbar_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xbar_0 : entity is "axi_crossbar_v2_1_22_axi_crossbar,Vivado 2020.1";
end design_1_xbar_0;

architecture STRUCTURE of design_1_xbar_0 is
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is "96'b000000000000000000000000000111000000000000000000000000000001110100000000000000000000000000011111";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "192'b000000000000000000000000000000001110000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : integer;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is 0;
  attribute C_M_AXI_READ_ISSUING : integer;
  attribute C_M_AXI_READ_ISSUING of inst : label is 16;
  attribute C_M_AXI_SECURE : integer;
  attribute C_M_AXI_SECURE of inst : label is 0;
  attribute C_M_AXI_WRITE_CONNECTIVITY : integer;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is 3;
  attribute C_M_AXI_WRITE_ISSUING : integer;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is 16;
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 3;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 1;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 2;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : string;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_BASE_ID : string;
  attribute C_S_AXI_BASE_ID of inst : label is "64'b0000000000000000000000000000000100000000000000000000000000000000";
  attribute C_S_AXI_READ_ACCEPTANCE : string;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute C_S_AXI_SINGLE_THREAD : string;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_THREAD_ID_WIDTH : string;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute C_S_AXI_WRITE_ACCEPTANCE : string;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is "64'b0000000000000000000000000000001000000000000000000000000000000010";
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "rtl";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 8;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 1;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "32'b00000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "1'b0";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "1'b1";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "128'b00000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "2'b00";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "2'b11";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:M07_AXI:M08_AXI:M09_AXI:M10_AXI:M11_AXI:M12_AXI:M13_AXI:M14_AXI:M15_AXI:S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI:S08_AXI:S09_AXI:S10_AXI:S11_AXI:S12_AXI:S13_AXI:S14_AXI:S15_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 148146667, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 64, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI ARADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI ARBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI ARQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI ARSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI ARVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 S01_AXI AWADDR [31:0] [63:32]";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI AWBURST [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN [7:0] [7:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLEN [7:0] [15:8]";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWPROT [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 S01_AXI AWQOS [3:0] [7:4]";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 S01_AXI AWSIZE [2:0] [5:3]";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI AWVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI BRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI BVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA [127:0] [127:0], xilinx.com:interface:aximm:1.0 S01_AXI RDATA [127:0] [255:128]";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RREADY [0:0] [1:1]";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 148146667, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME S01_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 148146667, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 S01_AXI RRESP [1:0] [3:2]";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI RVALID [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA [127:0] [127:0], xilinx.com:interface:aximm:1.0 S01_AXI WDATA [127:0] [255:128]";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WLAST [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WREADY [0:0] [1:1]";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB [15:0] [15:0], xilinx.com:interface:aximm:1.0 S01_AXI WSTRB [15:0] [31:16]";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 S01_AXI WVALID [0:0] [1:1]";
begin
inst: entity work.design_1_xbar_0_axi_crossbar_v2_1_22_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready(0) => m_axi_arready(0),
      m_axi_arregion(3 downto 0) => m_axi_arregion(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid(0) => m_axi_arvalid(0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready(0) => m_axi_awready(0),
      m_axi_awregion(3 downto 0) => m_axi_awregion(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid(0) => m_axi_awvalid(0),
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(127 downto 0) => m_axi_rdata(127 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rready(0) => m_axi_rready(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid(0) => m_axi_rvalid(0),
      m_axi_wdata(127 downto 0) => m_axi_wdata(127 downto 0),
      m_axi_wid(0) => NLW_inst_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast(0) => m_axi_wlast(0),
      m_axi_wready(0) => m_axi_wready(0),
      m_axi_wstrb(15 downto 0) => m_axi_wstrb(15 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid(0) => m_axi_wvalid(0),
      s_axi_araddr(63 downto 0) => s_axi_araddr(63 downto 0),
      s_axi_arburst(3 downto 0) => s_axi_arburst(3 downto 0),
      s_axi_arcache(7 downto 0) => s_axi_arcache(7 downto 0),
      s_axi_arid(1 downto 0) => s_axi_arid(1 downto 0),
      s_axi_arlen(15 downto 0) => s_axi_arlen(15 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(5 downto 0) => s_axi_arprot(5 downto 0),
      s_axi_arqos(7 downto 0) => s_axi_arqos(7 downto 0),
      s_axi_arready(1 downto 0) => s_axi_arready(1 downto 0),
      s_axi_arsize(5 downto 0) => s_axi_arsize(5 downto 0),
      s_axi_aruser(1 downto 0) => B"00",
      s_axi_arvalid(1 downto 0) => s_axi_arvalid(1 downto 0),
      s_axi_awaddr(63 downto 0) => s_axi_awaddr(63 downto 0),
      s_axi_awburst(3 downto 0) => s_axi_awburst(3 downto 0),
      s_axi_awcache(7 downto 0) => s_axi_awcache(7 downto 0),
      s_axi_awid(1 downto 0) => s_axi_awid(1 downto 0),
      s_axi_awlen(15 downto 0) => s_axi_awlen(15 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(5 downto 0) => s_axi_awprot(5 downto 0),
      s_axi_awqos(7 downto 0) => s_axi_awqos(7 downto 0),
      s_axi_awready(1 downto 0) => s_axi_awready(1 downto 0),
      s_axi_awsize(5 downto 0) => s_axi_awsize(5 downto 0),
      s_axi_awuser(1 downto 0) => B"00",
      s_axi_awvalid(1 downto 0) => s_axi_awvalid(1 downto 0),
      s_axi_bid(1 downto 0) => s_axi_bid(1 downto 0),
      s_axi_bready(1 downto 0) => s_axi_bready(1 downto 0),
      s_axi_bresp(3 downto 0) => s_axi_bresp(3 downto 0),
      s_axi_buser(1 downto 0) => NLW_inst_s_axi_buser_UNCONNECTED(1 downto 0),
      s_axi_bvalid(1 downto 0) => s_axi_bvalid(1 downto 0),
      s_axi_rdata(255 downto 0) => s_axi_rdata(255 downto 0),
      s_axi_rid(1 downto 0) => s_axi_rid(1 downto 0),
      s_axi_rlast(1 downto 0) => s_axi_rlast(1 downto 0),
      s_axi_rready(1 downto 0) => s_axi_rready(1 downto 0),
      s_axi_rresp(3 downto 0) => s_axi_rresp(3 downto 0),
      s_axi_ruser(1 downto 0) => NLW_inst_s_axi_ruser_UNCONNECTED(1 downto 0),
      s_axi_rvalid(1 downto 0) => s_axi_rvalid(1 downto 0),
      s_axi_wdata(255 downto 0) => s_axi_wdata(255 downto 0),
      s_axi_wid(1 downto 0) => B"00",
      s_axi_wlast(1 downto 0) => s_axi_wlast(1 downto 0),
      s_axi_wready(1 downto 0) => s_axi_wready(1 downto 0),
      s_axi_wstrb(31 downto 0) => s_axi_wstrb(31 downto 0),
      s_axi_wuser(1 downto 0) => B"00",
      s_axi_wvalid(1 downto 0) => s_axi_wvalid(1 downto 0)
    );
end STRUCTURE;
