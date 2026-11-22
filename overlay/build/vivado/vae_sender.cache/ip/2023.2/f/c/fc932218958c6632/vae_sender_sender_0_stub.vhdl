-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Nov 23 00:55:55 2026
-- Host        : fedora running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vae_sender_sender_0_stub.vhdl
-- Design      : vae_sender_sender_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem_in_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_in_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_in_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_in_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_in_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_in_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_AWVALID : out STD_LOGIC;
    m_axi_gmem_in_AWREADY : in STD_LOGIC;
    m_axi_gmem_in_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_in_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_in_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_WLAST : out STD_LOGIC;
    m_axi_gmem_in_WVALID : out STD_LOGIC;
    m_axi_gmem_in_WREADY : in STD_LOGIC;
    m_axi_gmem_in_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_in_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_BVALID : in STD_LOGIC;
    m_axi_gmem_in_BREADY : out STD_LOGIC;
    m_axi_gmem_in_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_in_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_in_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_in_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_in_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_in_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_in_ARVALID : out STD_LOGIC;
    m_axi_gmem_in_ARREADY : in STD_LOGIC;
    m_axi_gmem_in_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_in_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem_in_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_in_RLAST : in STD_LOGIC;
    m_axi_gmem_in_RVALID : in STD_LOGIC;
    m_axi_gmem_in_RREADY : out STD_LOGIC;
    m_axi_gmem_res_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_res_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_res_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_res_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_res_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_res_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_AWVALID : out STD_LOGIC;
    m_axi_gmem_res_AWREADY : in STD_LOGIC;
    m_axi_gmem_res_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_res_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_gmem_res_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_gmem_res_WLAST : out STD_LOGIC;
    m_axi_gmem_res_WVALID : out STD_LOGIC;
    m_axi_gmem_res_WREADY : in STD_LOGIC;
    m_axi_gmem_res_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_res_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_BVALID : in STD_LOGIC;
    m_axi_gmem_res_BREADY : out STD_LOGIC;
    m_axi_gmem_res_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_res_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_res_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_res_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_res_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_res_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_res_ARVALID : out STD_LOGIC;
    m_axi_gmem_res_ARREADY : in STD_LOGIC;
    m_axi_gmem_res_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_res_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_gmem_res_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_res_RLAST : in STD_LOGIC;
    m_axi_gmem_res_RVALID : in STD_LOGIC;
    m_axi_gmem_res_RREADY : out STD_LOGIC;
    m_axi_gmem_ts_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ts_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ts_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ts_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ts_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ts_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_AWVALID : out STD_LOGIC;
    m_axi_gmem_ts_AWREADY : in STD_LOGIC;
    m_axi_gmem_ts_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ts_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ts_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ts_WLAST : out STD_LOGIC;
    m_axi_gmem_ts_WVALID : out STD_LOGIC;
    m_axi_gmem_ts_WREADY : in STD_LOGIC;
    m_axi_gmem_ts_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ts_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_BVALID : in STD_LOGIC;
    m_axi_gmem_ts_BREADY : out STD_LOGIC;
    m_axi_gmem_ts_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ts_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ts_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem_ts_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ts_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem_ts_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem_ts_ARVALID : out STD_LOGIC;
    m_axi_gmem_ts_ARREADY : in STD_LOGIC;
    m_axi_gmem_ts_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_gmem_ts_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem_ts_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem_ts_RLAST : in STD_LOGIC;
    m_axi_gmem_ts_RVALID : in STD_LOGIC;
    m_axi_gmem_ts_RREADY : out STD_LOGIC;
    cycle_tx_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cycle_tx_empty_n : in STD_LOGIC;
    cycle_tx_read : out STD_LOGIC;
    cycle_rx_dout : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cycle_rx_empty_n : in STD_LOGIC;
    cycle_rx_read : out STD_LOGIC;
    m_axis_features_TVALID : out STD_LOGIC;
    m_axis_features_TREADY : in STD_LOGIC;
    m_axis_features_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_features_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_features_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_features_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_score_TVALID : in STD_LOGIC;
    s_axis_score_TREADY : out STD_LOGIC;
    s_axis_score_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_score_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_score_TSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_score_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_in_AWID[0:0],m_axi_gmem_in_AWADDR[63:0],m_axi_gmem_in_AWLEN[7:0],m_axi_gmem_in_AWSIZE[2:0],m_axi_gmem_in_AWBURST[1:0],m_axi_gmem_in_AWLOCK[1:0],m_axi_gmem_in_AWREGION[3:0],m_axi_gmem_in_AWCACHE[3:0],m_axi_gmem_in_AWPROT[2:0],m_axi_gmem_in_AWQOS[3:0],m_axi_gmem_in_AWVALID,m_axi_gmem_in_AWREADY,m_axi_gmem_in_WID[0:0],m_axi_gmem_in_WDATA[31:0],m_axi_gmem_in_WSTRB[3:0],m_axi_gmem_in_WLAST,m_axi_gmem_in_WVALID,m_axi_gmem_in_WREADY,m_axi_gmem_in_BID[0:0],m_axi_gmem_in_BRESP[1:0],m_axi_gmem_in_BVALID,m_axi_gmem_in_BREADY,m_axi_gmem_in_ARID[0:0],m_axi_gmem_in_ARADDR[63:0],m_axi_gmem_in_ARLEN[7:0],m_axi_gmem_in_ARSIZE[2:0],m_axi_gmem_in_ARBURST[1:0],m_axi_gmem_in_ARLOCK[1:0],m_axi_gmem_in_ARREGION[3:0],m_axi_gmem_in_ARCACHE[3:0],m_axi_gmem_in_ARPROT[2:0],m_axi_gmem_in_ARQOS[3:0],m_axi_gmem_in_ARVALID,m_axi_gmem_in_ARREADY,m_axi_gmem_in_RID[0:0],m_axi_gmem_in_RDATA[31:0],m_axi_gmem_in_RRESP[1:0],m_axi_gmem_in_RLAST,m_axi_gmem_in_RVALID,m_axi_gmem_in_RREADY,m_axi_gmem_res_AWID[0:0],m_axi_gmem_res_AWADDR[63:0],m_axi_gmem_res_AWLEN[7:0],m_axi_gmem_res_AWSIZE[2:0],m_axi_gmem_res_AWBURST[1:0],m_axi_gmem_res_AWLOCK[1:0],m_axi_gmem_res_AWREGION[3:0],m_axi_gmem_res_AWCACHE[3:0],m_axi_gmem_res_AWPROT[2:0],m_axi_gmem_res_AWQOS[3:0],m_axi_gmem_res_AWVALID,m_axi_gmem_res_AWREADY,m_axi_gmem_res_WID[0:0],m_axi_gmem_res_WDATA[127:0],m_axi_gmem_res_WSTRB[15:0],m_axi_gmem_res_WLAST,m_axi_gmem_res_WVALID,m_axi_gmem_res_WREADY,m_axi_gmem_res_BID[0:0],m_axi_gmem_res_BRESP[1:0],m_axi_gmem_res_BVALID,m_axi_gmem_res_BREADY,m_axi_gmem_res_ARID[0:0],m_axi_gmem_res_ARADDR[63:0],m_axi_gmem_res_ARLEN[7:0],m_axi_gmem_res_ARSIZE[2:0],m_axi_gmem_res_ARBURST[1:0],m_axi_gmem_res_ARLOCK[1:0],m_axi_gmem_res_ARREGION[3:0],m_axi_gmem_res_ARCACHE[3:0],m_axi_gmem_res_ARPROT[2:0],m_axi_gmem_res_ARQOS[3:0],m_axi_gmem_res_ARVALID,m_axi_gmem_res_ARREADY,m_axi_gmem_res_RID[0:0],m_axi_gmem_res_RDATA[127:0],m_axi_gmem_res_RRESP[1:0],m_axi_gmem_res_RLAST,m_axi_gmem_res_RVALID,m_axi_gmem_res_RREADY,m_axi_gmem_ts_AWID[0:0],m_axi_gmem_ts_AWADDR[63:0],m_axi_gmem_ts_AWLEN[7:0],m_axi_gmem_ts_AWSIZE[2:0],m_axi_gmem_ts_AWBURST[1:0],m_axi_gmem_ts_AWLOCK[1:0],m_axi_gmem_ts_AWREGION[3:0],m_axi_gmem_ts_AWCACHE[3:0],m_axi_gmem_ts_AWPROT[2:0],m_axi_gmem_ts_AWQOS[3:0],m_axi_gmem_ts_AWVALID,m_axi_gmem_ts_AWREADY,m_axi_gmem_ts_WID[0:0],m_axi_gmem_ts_WDATA[63:0],m_axi_gmem_ts_WSTRB[7:0],m_axi_gmem_ts_WLAST,m_axi_gmem_ts_WVALID,m_axi_gmem_ts_WREADY,m_axi_gmem_ts_BID[0:0],m_axi_gmem_ts_BRESP[1:0],m_axi_gmem_ts_BVALID,m_axi_gmem_ts_BREADY,m_axi_gmem_ts_ARID[0:0],m_axi_gmem_ts_ARADDR[63:0],m_axi_gmem_ts_ARLEN[7:0],m_axi_gmem_ts_ARSIZE[2:0],m_axi_gmem_ts_ARBURST[1:0],m_axi_gmem_ts_ARLOCK[1:0],m_axi_gmem_ts_ARREGION[3:0],m_axi_gmem_ts_ARCACHE[3:0],m_axi_gmem_ts_ARPROT[2:0],m_axi_gmem_ts_ARQOS[3:0],m_axi_gmem_ts_ARVALID,m_axi_gmem_ts_ARREADY,m_axi_gmem_ts_RID[0:0],m_axi_gmem_ts_RDATA[63:0],m_axi_gmem_ts_RRESP[1:0],m_axi_gmem_ts_RLAST,m_axi_gmem_ts_RVALID,m_axi_gmem_ts_RREADY,cycle_tx_dout[63:0],cycle_tx_empty_n,cycle_tx_read,cycle_rx_dout[63:0],cycle_rx_empty_n,cycle_rx_read,m_axis_features_TVALID,m_axis_features_TREADY,m_axis_features_TDATA[31:0],m_axis_features_TKEEP[3:0],m_axis_features_TSTRB[3:0],m_axis_features_TLAST[0:0],s_axis_score_TVALID,s_axis_score_TREADY,s_axis_score_TDATA[63:0],s_axis_score_TKEEP[7:0],s_axis_score_TSTRB[7:0],s_axis_score_TLAST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vae_feature_sender,Vivado 2023.2";
begin
end;
