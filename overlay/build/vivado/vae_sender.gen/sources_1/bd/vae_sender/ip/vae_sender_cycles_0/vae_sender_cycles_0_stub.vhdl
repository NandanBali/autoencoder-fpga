-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Nov 23 00:54:50 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/nandanbali/programming/deep-svdd/autoencoder/overlay/build/vivado/vae_sender.gen/sources_1/bd/vae_sender/ip/vae_sender_cycles_0/vae_sender_cycles_0_stub.vhdl
-- Design      : vae_sender_cycles_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vae_sender_cycles_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 63 downto 0 );
    not_empty : out STD_LOGIC
  );

end vae_sender_cycles_0;

architecture stub of vae_sender_cycles_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,count[63:0],not_empty";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cycle_counter,Vivado 2023.2";
begin
end;
