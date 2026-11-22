-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sat Nov 21 20:58:02 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axis_features_TVALID : in STD_LOGIC;
    s_axis_features_TREADY : out STD_LOGIC;
    s_axis_features_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_features_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_features_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_features_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_score_TVALID : out STD_LOGIC;
    m_axis_score_TREADY : in STD_LOGIC;
    m_axis_score_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_score_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_score_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_score_TSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,s_axis_features_TVALID,s_axis_features_TREADY,s_axis_features_TDATA[31:0],s_axis_features_TLAST[0:0],s_axis_features_TKEEP[3:0],s_axis_features_TSTRB[3:0],m_axis_score_TVALID,m_axis_score_TREADY,m_axis_score_TDATA[63:0],m_axis_score_TLAST[0:0],m_axis_score_TKEEP[7:0],m_axis_score_TSTRB[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vae_axis,Vivado 2023.2";
begin
end;
