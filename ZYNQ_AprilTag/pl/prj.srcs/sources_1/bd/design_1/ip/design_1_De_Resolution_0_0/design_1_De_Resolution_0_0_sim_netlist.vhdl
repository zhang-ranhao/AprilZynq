-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Nov 16 00:39:02 2023
-- Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/zrh463259112/Desktop/AprilZynq/main_system/prj/project_1.srcs/sources_1/bd/design_1/ip/design_1_De_Resolution_0_0/design_1_De_Resolution_0_0_sim_netlist.vhdl
-- Design      : design_1_De_Resolution_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu2cg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_De_Resolution_0_0_De_Resolution is
  port (
    DE_REL_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DE_REL_VALID : out STD_LOGIC;
    O_FSTART : out STD_LOGIC;
    O_TLAST : out STD_LOGIC;
    TVALID : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FSTART : in STD_LOGIC;
    ARESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_De_Resolution_0_0_De_Resolution : entity is "De_Resolution";
end design_1_De_Resolution_0_0_De_Resolution;

architecture STRUCTURE of design_1_De_Resolution_0_0_De_Resolution is
  signal \DE_REL_DATA[7]_i_1_n_0\ : STD_LOGIC;
  signal DE_REL_VALID0 : STD_LOGIC;
  signal O_FSTART0 : STD_LOGIC;
  signal O_FSTART_i_2_n_0 : STD_LOGIC;
  signal O_FSTART_i_3_n_0 : STD_LOGIC;
  signal O_FSTART_i_4_n_0 : STD_LOGIC;
  signal O_FSTART_i_5_n_0 : STD_LOGIC;
  signal O_FSTART_i_6_n_0 : STD_LOGIC;
  signal O_TLAST0 : STD_LOGIC;
  signal O_TLAST_i_2_n_0 : STD_LOGIC;
  signal TDATA_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TVALID_d1 : STD_LOGIC;
  signal col_pointer : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \col_pointer[10]_i_1_n_0\ : STD_LOGIC;
  signal \col_pointer[10]_i_3_n_0\ : STD_LOGIC;
  signal \col_pointer[1]_i_2_n_0\ : STD_LOGIC;
  signal \col_pointer[1]_i_3_n_0\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[10]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[4]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[5]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[6]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[7]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[8]\ : STD_LOGIC;
  signal \col_pointer_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal row_pointer : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \row_pointer[6]_i_2_n_0\ : STD_LOGIC;
  signal \row_pointer[7]_i_2_n_0\ : STD_LOGIC;
  signal \row_pointer[7]_i_3_n_0\ : STD_LOGIC;
  signal \row_pointer[7]_i_4_n_0\ : STD_LOGIC;
  signal \row_pointer[9]_i_1_n_0\ : STD_LOGIC;
  signal \row_pointer[9]_i_3_n_0\ : STD_LOGIC;
  signal \row_pointer[9]_i_4_n_0\ : STD_LOGIC;
  signal \row_pointer[9]_i_5_n_0\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[0]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[1]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[2]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[3]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[4]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[5]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[6]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[7]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[8]\ : STD_LOGIC;
  signal \row_pointer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of O_FSTART_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of O_FSTART_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of O_FSTART_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \col_pointer[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \col_pointer[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \col_pointer[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \col_pointer[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \col_pointer[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_pointer[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \col_pointer[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \col_pointer[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \row_pointer[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_pointer[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \row_pointer[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \row_pointer[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \row_pointer[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \row_pointer[9]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \row_pointer[9]_i_5\ : label is "soft_lutpair5";
begin
\DE_REL_DATA[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[0]\,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => TVALID_d1,
      I3 => ARESET,
      O => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(0),
      Q => DE_REL_DATA(0),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(1),
      Q => DE_REL_DATA(1),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(2),
      Q => DE_REL_DATA(2),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(3),
      Q => DE_REL_DATA(3),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(4),
      Q => DE_REL_DATA(4),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(5),
      Q => DE_REL_DATA(5),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(6),
      Q => DE_REL_DATA(6),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
\DE_REL_DATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA_d1(7),
      Q => DE_REL_DATA(7),
      R => \DE_REL_DATA[7]_i_1_n_0\
    );
DE_REL_VALID_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESET,
      O => p_0_in
    );
DE_REL_VALID_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[0]\,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => TVALID_d1,
      O => DE_REL_VALID0
    );
DE_REL_VALID_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => DE_REL_VALID0,
      Q => DE_REL_VALID,
      R => p_0_in
    );
O_FSTART_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => O_FSTART_i_2_n_0,
      I1 => O_FSTART_i_3_n_0,
      I2 => O_FSTART_i_4_n_0,
      I3 => O_FSTART_i_5_n_0,
      I4 => O_FSTART_i_6_n_0,
      O => O_FSTART0
    );
O_FSTART_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[8]\,
      I1 => \col_pointer_reg_n_0_[9]\,
      I2 => \col_pointer_reg_n_0_[6]\,
      I3 => \col_pointer_reg_n_0_[7]\,
      I4 => \row_pointer_reg_n_0_[1]\,
      I5 => \col_pointer_reg_n_0_[10]\,
      O => O_FSTART_i_2_n_0
    );
O_FSTART_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[5]\,
      I1 => \col_pointer_reg_n_0_[4]\,
      I2 => \row_pointer_reg_n_0_[8]\,
      I3 => \row_pointer_reg_n_0_[5]\,
      O => O_FSTART_i_3_n_0
    );
O_FSTART_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[3]\,
      I1 => \col_pointer_reg_n_0_[2]\,
      I2 => \col_pointer_reg_n_0_[1]\,
      O => O_FSTART_i_4_n_0
    );
O_FSTART_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => TVALID_d1,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => \col_pointer_reg_n_0_[0]\,
      O => O_FSTART_i_5_n_0
    );
O_FSTART_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[4]\,
      I1 => \row_pointer_reg_n_0_[6]\,
      I2 => \row_pointer_reg_n_0_[2]\,
      I3 => \row_pointer_reg_n_0_[3]\,
      I4 => \row_pointer_reg_n_0_[9]\,
      I5 => \row_pointer_reg_n_0_[7]\,
      O => O_FSTART_i_6_n_0
    );
O_FSTART_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => O_FSTART0,
      Q => O_FSTART,
      R => p_0_in
    );
O_TLAST_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => O_FSTART_i_5_n_0,
      I1 => \col_pointer_reg_n_0_[2]\,
      I2 => \col_pointer_reg_n_0_[1]\,
      I3 => \col_pointer_reg_n_0_[10]\,
      I4 => \col_pointer_reg_n_0_[9]\,
      I5 => O_TLAST_i_2_n_0,
      O => O_TLAST0
    );
O_TLAST_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[5]\,
      I1 => \col_pointer_reg_n_0_[6]\,
      I2 => \col_pointer_reg_n_0_[3]\,
      I3 => \col_pointer_reg_n_0_[4]\,
      I4 => \col_pointer_reg_n_0_[8]\,
      I5 => \col_pointer_reg_n_0_[7]\,
      O => O_TLAST_i_2_n_0
    );
O_TLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => O_TLAST0,
      Q => O_TLAST,
      R => p_0_in
    );
\TDATA_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(0),
      Q => TDATA_d1(0),
      R => p_0_in
    );
\TDATA_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(1),
      Q => TDATA_d1(1),
      R => p_0_in
    );
\TDATA_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(2),
      Q => TDATA_d1(2),
      R => p_0_in
    );
\TDATA_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(3),
      Q => TDATA_d1(3),
      R => p_0_in
    );
\TDATA_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(4),
      Q => TDATA_d1(4),
      R => p_0_in
    );
\TDATA_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(5),
      Q => TDATA_d1(5),
      R => p_0_in
    );
\TDATA_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(6),
      Q => TDATA_d1(6),
      R => p_0_in
    );
\TDATA_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TDATA(7),
      Q => TDATA_d1(7),
      R => p_0_in
    );
TVALID_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => TVALID,
      Q => TVALID_d1,
      R => p_0_in
    );
\col_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[0]\,
      O => col_pointer(0)
    );
\col_pointer[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => FSTART,
      I1 => ARESET,
      O => \col_pointer[10]_i_1_n_0\
    );
\col_pointer[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA68AAAAAAAAAA"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[10]\,
      I1 => \col_pointer_reg_n_0_[9]\,
      I2 => \col_pointer_reg_n_0_[8]\,
      I3 => \col_pointer_reg_n_0_[6]\,
      I4 => \col_pointer[10]_i_3_n_0\,
      I5 => \col_pointer_reg_n_0_[7]\,
      O => col_pointer(10)
    );
\col_pointer[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[4]\,
      I1 => \col_pointer_reg_n_0_[2]\,
      I2 => \col_pointer_reg_n_0_[0]\,
      I3 => \col_pointer_reg_n_0_[1]\,
      I4 => \col_pointer_reg_n_0_[3]\,
      I5 => \col_pointer_reg_n_0_[5]\,
      O => \col_pointer[10]_i_3_n_0\
    );
\col_pointer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545555AAAAAAAA"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[0]\,
      I1 => \col_pointer[1]_i_2_n_0\,
      I2 => \col_pointer[1]_i_3_n_0\,
      I3 => \col_pointer_reg_n_0_[8]\,
      I4 => \col_pointer_reg_n_0_[10]\,
      I5 => \col_pointer_reg_n_0_[1]\,
      O => col_pointer(1)
    );
\col_pointer[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[7]\,
      I1 => \col_pointer_reg_n_0_[0]\,
      I2 => \col_pointer_reg_n_0_[6]\,
      I3 => \col_pointer_reg_n_0_[5]\,
      O => \col_pointer[1]_i_2_n_0\
    );
\col_pointer[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[2]\,
      I1 => \col_pointer_reg_n_0_[9]\,
      I2 => \col_pointer_reg_n_0_[4]\,
      I3 => \col_pointer_reg_n_0_[3]\,
      O => \col_pointer[1]_i_3_n_0\
    );
\col_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[1]\,
      I1 => \col_pointer_reg_n_0_[0]\,
      I2 => \col_pointer_reg_n_0_[2]\,
      O => col_pointer(2)
    );
\col_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[2]\,
      I1 => \col_pointer_reg_n_0_[0]\,
      I2 => \col_pointer_reg_n_0_[1]\,
      I3 => \col_pointer_reg_n_0_[3]\,
      O => col_pointer(3)
    );
\col_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[3]\,
      I1 => \col_pointer_reg_n_0_[1]\,
      I2 => \col_pointer_reg_n_0_[0]\,
      I3 => \col_pointer_reg_n_0_[2]\,
      I4 => \col_pointer_reg_n_0_[4]\,
      O => col_pointer(4)
    );
\col_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[4]\,
      I1 => \col_pointer_reg_n_0_[2]\,
      I2 => \col_pointer_reg_n_0_[0]\,
      I3 => \col_pointer_reg_n_0_[1]\,
      I4 => \col_pointer_reg_n_0_[3]\,
      I5 => \col_pointer_reg_n_0_[5]\,
      O => col_pointer(5)
    );
\col_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \col_pointer[10]_i_3_n_0\,
      I1 => \col_pointer_reg_n_0_[6]\,
      O => col_pointer(6)
    );
\col_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[6]\,
      I1 => \col_pointer[10]_i_3_n_0\,
      I2 => \col_pointer_reg_n_0_[7]\,
      O => col_pointer(7)
    );
\col_pointer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFDFDF20200020"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[6]\,
      I1 => \col_pointer[10]_i_3_n_0\,
      I2 => \col_pointer_reg_n_0_[7]\,
      I3 => \col_pointer_reg_n_0_[10]\,
      I4 => \col_pointer_reg_n_0_[9]\,
      I5 => \col_pointer_reg_n_0_[8]\,
      O => col_pointer(8)
    );
\col_pointer[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[8]\,
      I1 => \col_pointer_reg_n_0_[6]\,
      I2 => \col_pointer[10]_i_3_n_0\,
      I3 => \col_pointer_reg_n_0_[7]\,
      I4 => \col_pointer_reg_n_0_[9]\,
      O => col_pointer(9)
    );
\col_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(0),
      Q => \col_pointer_reg_n_0_[0]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(10),
      Q => \col_pointer_reg_n_0_[10]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(1),
      Q => \col_pointer_reg_n_0_[1]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(2),
      Q => \col_pointer_reg_n_0_[2]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(3),
      Q => \col_pointer_reg_n_0_[3]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(4),
      Q => \col_pointer_reg_n_0_[4]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(5),
      Q => \col_pointer_reg_n_0_[5]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(6),
      Q => \col_pointer_reg_n_0_[6]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(7),
      Q => \col_pointer_reg_n_0_[7]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(8),
      Q => \col_pointer_reg_n_0_[8]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\col_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => TVALID_d1,
      D => col_pointer(9),
      Q => \col_pointer_reg_n_0_[9]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[0]\,
      O => row_pointer(0)
    );
\row_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[0]\,
      I1 => \row_pointer_reg_n_0_[1]\,
      O => row_pointer(1)
    );
\row_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[1]\,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => \row_pointer_reg_n_0_[2]\,
      O => row_pointer(2)
    );
\row_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[2]\,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => \row_pointer_reg_n_0_[1]\,
      I3 => \row_pointer_reg_n_0_[3]\,
      O => row_pointer(3)
    );
\row_pointer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55545555"
    )
        port map (
      I0 => \row_pointer[9]_i_5_n_0\,
      I1 => \row_pointer[9]_i_4_n_0\,
      I2 => \row_pointer_reg_n_0_[8]\,
      I3 => \row_pointer_reg_n_0_[5]\,
      I4 => \row_pointer_reg_n_0_[9]\,
      I5 => \row_pointer_reg_n_0_[4]\,
      O => row_pointer(4)
    );
\row_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[4]\,
      I1 => \row_pointer_reg_n_0_[2]\,
      I2 => \row_pointer_reg_n_0_[0]\,
      I3 => \row_pointer_reg_n_0_[1]\,
      I4 => \row_pointer_reg_n_0_[3]\,
      I5 => \row_pointer_reg_n_0_[5]\,
      O => row_pointer(5)
    );
\row_pointer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFF00FFFEFFFF"
    )
        port map (
      I0 => \row_pointer[7]_i_2_n_0\,
      I1 => \row_pointer[9]_i_5_n_0\,
      I2 => \row_pointer[7]_i_3_n_0\,
      I3 => \row_pointer[6]_i_2_n_0\,
      I4 => \row_pointer_reg_n_0_[6]\,
      I5 => \row_pointer[7]_i_4_n_0\,
      O => row_pointer(6)
    );
\row_pointer[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[7]\,
      I1 => \row_pointer_reg_n_0_[4]\,
      I2 => \row_pointer_reg_n_0_[6]\,
      O => \row_pointer[6]_i_2_n_0\
    );
\row_pointer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFF00FF0000"
    )
        port map (
      I0 => \row_pointer[7]_i_2_n_0\,
      I1 => \row_pointer[9]_i_5_n_0\,
      I2 => \row_pointer[7]_i_3_n_0\,
      I3 => \row_pointer[7]_i_4_n_0\,
      I4 => \row_pointer_reg_n_0_[6]\,
      I5 => \row_pointer_reg_n_0_[7]\,
      O => row_pointer(7)
    );
\row_pointer[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"76"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[4]\,
      I1 => \row_pointer_reg_n_0_[5]\,
      I2 => \row_pointer_reg_n_0_[8]\,
      O => \row_pointer[7]_i_2_n_0\
    );
\row_pointer[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[4]\,
      I1 => \row_pointer_reg_n_0_[9]\,
      O => \row_pointer[7]_i_3_n_0\
    );
\row_pointer[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[4]\,
      I1 => \row_pointer_reg_n_0_[2]\,
      I2 => \row_pointer_reg_n_0_[0]\,
      I3 => \row_pointer_reg_n_0_[1]\,
      I4 => \row_pointer_reg_n_0_[3]\,
      I5 => \row_pointer_reg_n_0_[5]\,
      O => \row_pointer[7]_i_4_n_0\
    );
\row_pointer[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[6]\,
      I1 => \row_pointer_reg_n_0_[7]\,
      I2 => \row_pointer_reg_n_0_[4]\,
      I3 => \row_pointer[9]_i_5_n_0\,
      I4 => \row_pointer_reg_n_0_[5]\,
      I5 => \row_pointer_reg_n_0_[8]\,
      O => row_pointer(8)
    );
\row_pointer[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \row_pointer[9]_i_3_n_0\,
      I1 => TVALID_d1,
      I2 => \col_pointer_reg_n_0_[8]\,
      I3 => \col_pointer_reg_n_0_[7]\,
      I4 => \col_pointer[10]_i_3_n_0\,
      I5 => \col_pointer_reg_n_0_[6]\,
      O => \row_pointer[9]_i_1_n_0\
    );
\row_pointer[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA6AAAAAAAAA8"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[9]\,
      I1 => \row_pointer_reg_n_0_[8]\,
      I2 => \row_pointer[9]_i_4_n_0\,
      I3 => \row_pointer_reg_n_0_[4]\,
      I4 => \row_pointer[9]_i_5_n_0\,
      I5 => \row_pointer_reg_n_0_[5]\,
      O => row_pointer(9)
    );
\row_pointer[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col_pointer_reg_n_0_[9]\,
      I1 => \col_pointer_reg_n_0_[10]\,
      O => \row_pointer[9]_i_3_n_0\
    );
\row_pointer[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[6]\,
      I1 => \row_pointer_reg_n_0_[7]\,
      O => \row_pointer[9]_i_4_n_0\
    );
\row_pointer[9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \row_pointer_reg_n_0_[2]\,
      I1 => \row_pointer_reg_n_0_[0]\,
      I2 => \row_pointer_reg_n_0_[1]\,
      I3 => \row_pointer_reg_n_0_[3]\,
      O => \row_pointer[9]_i_5_n_0\
    );
\row_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(0),
      Q => \row_pointer_reg_n_0_[0]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(1),
      Q => \row_pointer_reg_n_0_[1]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(2),
      Q => \row_pointer_reg_n_0_[2]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(3),
      Q => \row_pointer_reg_n_0_[3]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(4),
      Q => \row_pointer_reg_n_0_[4]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(5),
      Q => \row_pointer_reg_n_0_[5]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(6),
      Q => \row_pointer_reg_n_0_[6]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(7),
      Q => \row_pointer_reg_n_0_[7]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(8),
      Q => \row_pointer_reg_n_0_[8]\,
      R => \col_pointer[10]_i_1_n_0\
    );
\row_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \row_pointer[9]_i_1_n_0\,
      D => row_pointer(9),
      Q => \row_pointer_reg_n_0_[9]\,
      R => \col_pointer[10]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_De_Resolution_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESET : in STD_LOGIC;
    TREADY : out STD_LOGIC;
    TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TLAST : in STD_LOGIC;
    TVALID : in STD_LOGIC;
    FSTART : in STD_LOGIC;
    DE_REL_DATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DE_REL_VALID : out STD_LOGIC;
    O_FSTART : out STD_LOGIC;
    O_TLAST : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_De_Resolution_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_De_Resolution_0_0 : entity is "design_1_De_Resolution_0_0,De_Resolution,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_De_Resolution_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_De_Resolution_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_De_Resolution_0_0 : entity is "De_Resolution,Vivado 2020.1";
end design_1_De_Resolution_0_0;

architecture STRUCTURE of design_1_De_Resolution_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ACLK : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ACLK : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF O, FREQ_HZ 148146667, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of O_TLAST : signal is "xilinx.com:interface:axis:1.0 O TLAST";
  attribute X_INTERFACE_PARAMETER of O_TLAST : signal is "XIL_INTERFACENAME O, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 148146667, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of TREADY : signal is "xilinx.com:interface:axis:1.0 O TREADY";
  attribute X_INTERFACE_INFO of TVALID : signal is "xilinx.com:interface:axis:1.0 O TVALID";
  attribute X_INTERFACE_INFO of TDATA : signal is "xilinx.com:interface:axis:1.0 O TDATA";
begin
  TREADY <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_De_Resolution_0_0_De_Resolution
     port map (
      ACLK => ACLK,
      ARESET => ARESET,
      DE_REL_DATA(7 downto 0) => DE_REL_DATA(7 downto 0),
      DE_REL_VALID => DE_REL_VALID,
      FSTART => FSTART,
      O_FSTART => O_FSTART,
      O_TLAST => O_TLAST,
      TDATA(7 downto 0) => TDATA(7 downto 0),
      TVALID => TVALID
    );
end STRUCTURE;
