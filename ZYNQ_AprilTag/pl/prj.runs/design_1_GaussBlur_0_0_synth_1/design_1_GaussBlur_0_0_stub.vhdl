-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Nov 16 00:39:49 2023
-- Host        : LAPTOP-LC3M2DQ5 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_GaussBlur_0_0_stub.vhdl
-- Design      : design_1_GaussBlur_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu2cg-sfvc784-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    i_s_valid : in STD_LOGIC;
    i_s_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_s_fstart : in STD_LOGIC;
    i_s_last : in STD_LOGIC;
    o_s_ready : out STD_LOGIC;
    o_m_valid : out STD_LOGIC;
    o_m_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_m_fstart : out STD_LOGIC;
    o_m_last : out STD_LOGIC;
    i_m_ready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,i_s_valid,i_s_data[7:0],i_s_fstart,i_s_last,o_s_ready,o_m_valid,o_m_data[7:0],o_m_fstart,o_m_last,i_m_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "GaussBlur,Vivado 2020.1";
begin
end;
