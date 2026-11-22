// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Nov 23 00:55:57 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/nandanbali/programming/deep-svdd/autoencoder/overlay/build/vivado/vae_sender.gen/sources_1/bd/vae_sender/ip/vae_sender_sender_0/vae_sender_sender_0_stub.v
// Design      : vae_sender_sender_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vae_feature_sender,Vivado 2023.2" *)
module vae_sender_sender_0(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_gmem_in_AWID, 
  m_axi_gmem_in_AWADDR, m_axi_gmem_in_AWLEN, m_axi_gmem_in_AWSIZE, m_axi_gmem_in_AWBURST, 
  m_axi_gmem_in_AWLOCK, m_axi_gmem_in_AWREGION, m_axi_gmem_in_AWCACHE, 
  m_axi_gmem_in_AWPROT, m_axi_gmem_in_AWQOS, m_axi_gmem_in_AWVALID, 
  m_axi_gmem_in_AWREADY, m_axi_gmem_in_WID, m_axi_gmem_in_WDATA, m_axi_gmem_in_WSTRB, 
  m_axi_gmem_in_WLAST, m_axi_gmem_in_WVALID, m_axi_gmem_in_WREADY, m_axi_gmem_in_BID, 
  m_axi_gmem_in_BRESP, m_axi_gmem_in_BVALID, m_axi_gmem_in_BREADY, m_axi_gmem_in_ARID, 
  m_axi_gmem_in_ARADDR, m_axi_gmem_in_ARLEN, m_axi_gmem_in_ARSIZE, m_axi_gmem_in_ARBURST, 
  m_axi_gmem_in_ARLOCK, m_axi_gmem_in_ARREGION, m_axi_gmem_in_ARCACHE, 
  m_axi_gmem_in_ARPROT, m_axi_gmem_in_ARQOS, m_axi_gmem_in_ARVALID, 
  m_axi_gmem_in_ARREADY, m_axi_gmem_in_RID, m_axi_gmem_in_RDATA, m_axi_gmem_in_RRESP, 
  m_axi_gmem_in_RLAST, m_axi_gmem_in_RVALID, m_axi_gmem_in_RREADY, m_axi_gmem_res_AWID, 
  m_axi_gmem_res_AWADDR, m_axi_gmem_res_AWLEN, m_axi_gmem_res_AWSIZE, 
  m_axi_gmem_res_AWBURST, m_axi_gmem_res_AWLOCK, m_axi_gmem_res_AWREGION, 
  m_axi_gmem_res_AWCACHE, m_axi_gmem_res_AWPROT, m_axi_gmem_res_AWQOS, 
  m_axi_gmem_res_AWVALID, m_axi_gmem_res_AWREADY, m_axi_gmem_res_WID, 
  m_axi_gmem_res_WDATA, m_axi_gmem_res_WSTRB, m_axi_gmem_res_WLAST, 
  m_axi_gmem_res_WVALID, m_axi_gmem_res_WREADY, m_axi_gmem_res_BID, m_axi_gmem_res_BRESP, 
  m_axi_gmem_res_BVALID, m_axi_gmem_res_BREADY, m_axi_gmem_res_ARID, 
  m_axi_gmem_res_ARADDR, m_axi_gmem_res_ARLEN, m_axi_gmem_res_ARSIZE, 
  m_axi_gmem_res_ARBURST, m_axi_gmem_res_ARLOCK, m_axi_gmem_res_ARREGION, 
  m_axi_gmem_res_ARCACHE, m_axi_gmem_res_ARPROT, m_axi_gmem_res_ARQOS, 
  m_axi_gmem_res_ARVALID, m_axi_gmem_res_ARREADY, m_axi_gmem_res_RID, 
  m_axi_gmem_res_RDATA, m_axi_gmem_res_RRESP, m_axi_gmem_res_RLAST, 
  m_axi_gmem_res_RVALID, m_axi_gmem_res_RREADY, m_axi_gmem_ts_AWID, m_axi_gmem_ts_AWADDR, 
  m_axi_gmem_ts_AWLEN, m_axi_gmem_ts_AWSIZE, m_axi_gmem_ts_AWBURST, m_axi_gmem_ts_AWLOCK, 
  m_axi_gmem_ts_AWREGION, m_axi_gmem_ts_AWCACHE, m_axi_gmem_ts_AWPROT, 
  m_axi_gmem_ts_AWQOS, m_axi_gmem_ts_AWVALID, m_axi_gmem_ts_AWREADY, m_axi_gmem_ts_WID, 
  m_axi_gmem_ts_WDATA, m_axi_gmem_ts_WSTRB, m_axi_gmem_ts_WLAST, m_axi_gmem_ts_WVALID, 
  m_axi_gmem_ts_WREADY, m_axi_gmem_ts_BID, m_axi_gmem_ts_BRESP, m_axi_gmem_ts_BVALID, 
  m_axi_gmem_ts_BREADY, m_axi_gmem_ts_ARID, m_axi_gmem_ts_ARADDR, m_axi_gmem_ts_ARLEN, 
  m_axi_gmem_ts_ARSIZE, m_axi_gmem_ts_ARBURST, m_axi_gmem_ts_ARLOCK, 
  m_axi_gmem_ts_ARREGION, m_axi_gmem_ts_ARCACHE, m_axi_gmem_ts_ARPROT, 
  m_axi_gmem_ts_ARQOS, m_axi_gmem_ts_ARVALID, m_axi_gmem_ts_ARREADY, m_axi_gmem_ts_RID, 
  m_axi_gmem_ts_RDATA, m_axi_gmem_ts_RRESP, m_axi_gmem_ts_RLAST, m_axi_gmem_ts_RVALID, 
  m_axi_gmem_ts_RREADY, cycle_tx_dout, cycle_tx_empty_n, cycle_tx_read, cycle_rx_dout, 
  cycle_rx_empty_n, cycle_rx_read, m_axis_features_TVALID, m_axis_features_TREADY, 
  m_axis_features_TDATA, m_axis_features_TKEEP, m_axis_features_TSTRB, 
  m_axis_features_TLAST, s_axis_score_TVALID, s_axis_score_TREADY, s_axis_score_TDATA, 
  s_axis_score_TKEEP, s_axis_score_TSTRB, s_axis_score_TLAST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[6:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[6:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_rst_n,interrupt,m_axi_gmem_in_AWID[0:0],m_axi_gmem_in_AWADDR[63:0],m_axi_gmem_in_AWLEN[7:0],m_axi_gmem_in_AWSIZE[2:0],m_axi_gmem_in_AWBURST[1:0],m_axi_gmem_in_AWLOCK[1:0],m_axi_gmem_in_AWREGION[3:0],m_axi_gmem_in_AWCACHE[3:0],m_axi_gmem_in_AWPROT[2:0],m_axi_gmem_in_AWQOS[3:0],m_axi_gmem_in_AWVALID,m_axi_gmem_in_AWREADY,m_axi_gmem_in_WID[0:0],m_axi_gmem_in_WDATA[31:0],m_axi_gmem_in_WSTRB[3:0],m_axi_gmem_in_WLAST,m_axi_gmem_in_WVALID,m_axi_gmem_in_WREADY,m_axi_gmem_in_BID[0:0],m_axi_gmem_in_BRESP[1:0],m_axi_gmem_in_BVALID,m_axi_gmem_in_BREADY,m_axi_gmem_in_ARID[0:0],m_axi_gmem_in_ARADDR[63:0],m_axi_gmem_in_ARLEN[7:0],m_axi_gmem_in_ARSIZE[2:0],m_axi_gmem_in_ARBURST[1:0],m_axi_gmem_in_ARLOCK[1:0],m_axi_gmem_in_ARREGION[3:0],m_axi_gmem_in_ARCACHE[3:0],m_axi_gmem_in_ARPROT[2:0],m_axi_gmem_in_ARQOS[3:0],m_axi_gmem_in_ARVALID,m_axi_gmem_in_ARREADY,m_axi_gmem_in_RID[0:0],m_axi_gmem_in_RDATA[31:0],m_axi_gmem_in_RRESP[1:0],m_axi_gmem_in_RLAST,m_axi_gmem_in_RVALID,m_axi_gmem_in_RREADY,m_axi_gmem_res_AWID[0:0],m_axi_gmem_res_AWADDR[63:0],m_axi_gmem_res_AWLEN[7:0],m_axi_gmem_res_AWSIZE[2:0],m_axi_gmem_res_AWBURST[1:0],m_axi_gmem_res_AWLOCK[1:0],m_axi_gmem_res_AWREGION[3:0],m_axi_gmem_res_AWCACHE[3:0],m_axi_gmem_res_AWPROT[2:0],m_axi_gmem_res_AWQOS[3:0],m_axi_gmem_res_AWVALID,m_axi_gmem_res_AWREADY,m_axi_gmem_res_WID[0:0],m_axi_gmem_res_WDATA[127:0],m_axi_gmem_res_WSTRB[15:0],m_axi_gmem_res_WLAST,m_axi_gmem_res_WVALID,m_axi_gmem_res_WREADY,m_axi_gmem_res_BID[0:0],m_axi_gmem_res_BRESP[1:0],m_axi_gmem_res_BVALID,m_axi_gmem_res_BREADY,m_axi_gmem_res_ARID[0:0],m_axi_gmem_res_ARADDR[63:0],m_axi_gmem_res_ARLEN[7:0],m_axi_gmem_res_ARSIZE[2:0],m_axi_gmem_res_ARBURST[1:0],m_axi_gmem_res_ARLOCK[1:0],m_axi_gmem_res_ARREGION[3:0],m_axi_gmem_res_ARCACHE[3:0],m_axi_gmem_res_ARPROT[2:0],m_axi_gmem_res_ARQOS[3:0],m_axi_gmem_res_ARVALID,m_axi_gmem_res_ARREADY,m_axi_gmem_res_RID[0:0],m_axi_gmem_res_RDATA[127:0],m_axi_gmem_res_RRESP[1:0],m_axi_gmem_res_RLAST,m_axi_gmem_res_RVALID,m_axi_gmem_res_RREADY,m_axi_gmem_ts_AWID[0:0],m_axi_gmem_ts_AWADDR[63:0],m_axi_gmem_ts_AWLEN[7:0],m_axi_gmem_ts_AWSIZE[2:0],m_axi_gmem_ts_AWBURST[1:0],m_axi_gmem_ts_AWLOCK[1:0],m_axi_gmem_ts_AWREGION[3:0],m_axi_gmem_ts_AWCACHE[3:0],m_axi_gmem_ts_AWPROT[2:0],m_axi_gmem_ts_AWQOS[3:0],m_axi_gmem_ts_AWVALID,m_axi_gmem_ts_AWREADY,m_axi_gmem_ts_WID[0:0],m_axi_gmem_ts_WDATA[63:0],m_axi_gmem_ts_WSTRB[7:0],m_axi_gmem_ts_WLAST,m_axi_gmem_ts_WVALID,m_axi_gmem_ts_WREADY,m_axi_gmem_ts_BID[0:0],m_axi_gmem_ts_BRESP[1:0],m_axi_gmem_ts_BVALID,m_axi_gmem_ts_BREADY,m_axi_gmem_ts_ARID[0:0],m_axi_gmem_ts_ARADDR[63:0],m_axi_gmem_ts_ARLEN[7:0],m_axi_gmem_ts_ARSIZE[2:0],m_axi_gmem_ts_ARBURST[1:0],m_axi_gmem_ts_ARLOCK[1:0],m_axi_gmem_ts_ARREGION[3:0],m_axi_gmem_ts_ARCACHE[3:0],m_axi_gmem_ts_ARPROT[2:0],m_axi_gmem_ts_ARQOS[3:0],m_axi_gmem_ts_ARVALID,m_axi_gmem_ts_ARREADY,m_axi_gmem_ts_RID[0:0],m_axi_gmem_ts_RDATA[63:0],m_axi_gmem_ts_RRESP[1:0],m_axi_gmem_ts_RLAST,m_axi_gmem_ts_RVALID,m_axi_gmem_ts_RREADY,cycle_tx_dout[63:0],cycle_tx_empty_n,cycle_tx_read,cycle_rx_dout[63:0],cycle_rx_empty_n,cycle_rx_read,m_axis_features_TVALID,m_axis_features_TREADY,m_axis_features_TDATA[31:0],m_axis_features_TKEEP[3:0],m_axis_features_TSTRB[3:0],m_axis_features_TLAST[0:0],s_axis_score_TVALID,s_axis_score_TREADY,s_axis_score_TDATA[63:0],s_axis_score_TKEEP[7:0],s_axis_score_TSTRB[7:0],s_axis_score_TLAST[0:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input [6:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [6:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [0:0]m_axi_gmem_in_AWID;
  output [63:0]m_axi_gmem_in_AWADDR;
  output [7:0]m_axi_gmem_in_AWLEN;
  output [2:0]m_axi_gmem_in_AWSIZE;
  output [1:0]m_axi_gmem_in_AWBURST;
  output [1:0]m_axi_gmem_in_AWLOCK;
  output [3:0]m_axi_gmem_in_AWREGION;
  output [3:0]m_axi_gmem_in_AWCACHE;
  output [2:0]m_axi_gmem_in_AWPROT;
  output [3:0]m_axi_gmem_in_AWQOS;
  output m_axi_gmem_in_AWVALID;
  input m_axi_gmem_in_AWREADY;
  output [0:0]m_axi_gmem_in_WID;
  output [31:0]m_axi_gmem_in_WDATA;
  output [3:0]m_axi_gmem_in_WSTRB;
  output m_axi_gmem_in_WLAST;
  output m_axi_gmem_in_WVALID;
  input m_axi_gmem_in_WREADY;
  input [0:0]m_axi_gmem_in_BID;
  input [1:0]m_axi_gmem_in_BRESP;
  input m_axi_gmem_in_BVALID;
  output m_axi_gmem_in_BREADY;
  output [0:0]m_axi_gmem_in_ARID;
  output [63:0]m_axi_gmem_in_ARADDR;
  output [7:0]m_axi_gmem_in_ARLEN;
  output [2:0]m_axi_gmem_in_ARSIZE;
  output [1:0]m_axi_gmem_in_ARBURST;
  output [1:0]m_axi_gmem_in_ARLOCK;
  output [3:0]m_axi_gmem_in_ARREGION;
  output [3:0]m_axi_gmem_in_ARCACHE;
  output [2:0]m_axi_gmem_in_ARPROT;
  output [3:0]m_axi_gmem_in_ARQOS;
  output m_axi_gmem_in_ARVALID;
  input m_axi_gmem_in_ARREADY;
  input [0:0]m_axi_gmem_in_RID;
  input [31:0]m_axi_gmem_in_RDATA;
  input [1:0]m_axi_gmem_in_RRESP;
  input m_axi_gmem_in_RLAST;
  input m_axi_gmem_in_RVALID;
  output m_axi_gmem_in_RREADY;
  output [0:0]m_axi_gmem_res_AWID;
  output [63:0]m_axi_gmem_res_AWADDR;
  output [7:0]m_axi_gmem_res_AWLEN;
  output [2:0]m_axi_gmem_res_AWSIZE;
  output [1:0]m_axi_gmem_res_AWBURST;
  output [1:0]m_axi_gmem_res_AWLOCK;
  output [3:0]m_axi_gmem_res_AWREGION;
  output [3:0]m_axi_gmem_res_AWCACHE;
  output [2:0]m_axi_gmem_res_AWPROT;
  output [3:0]m_axi_gmem_res_AWQOS;
  output m_axi_gmem_res_AWVALID;
  input m_axi_gmem_res_AWREADY;
  output [0:0]m_axi_gmem_res_WID;
  output [127:0]m_axi_gmem_res_WDATA;
  output [15:0]m_axi_gmem_res_WSTRB;
  output m_axi_gmem_res_WLAST;
  output m_axi_gmem_res_WVALID;
  input m_axi_gmem_res_WREADY;
  input [0:0]m_axi_gmem_res_BID;
  input [1:0]m_axi_gmem_res_BRESP;
  input m_axi_gmem_res_BVALID;
  output m_axi_gmem_res_BREADY;
  output [0:0]m_axi_gmem_res_ARID;
  output [63:0]m_axi_gmem_res_ARADDR;
  output [7:0]m_axi_gmem_res_ARLEN;
  output [2:0]m_axi_gmem_res_ARSIZE;
  output [1:0]m_axi_gmem_res_ARBURST;
  output [1:0]m_axi_gmem_res_ARLOCK;
  output [3:0]m_axi_gmem_res_ARREGION;
  output [3:0]m_axi_gmem_res_ARCACHE;
  output [2:0]m_axi_gmem_res_ARPROT;
  output [3:0]m_axi_gmem_res_ARQOS;
  output m_axi_gmem_res_ARVALID;
  input m_axi_gmem_res_ARREADY;
  input [0:0]m_axi_gmem_res_RID;
  input [127:0]m_axi_gmem_res_RDATA;
  input [1:0]m_axi_gmem_res_RRESP;
  input m_axi_gmem_res_RLAST;
  input m_axi_gmem_res_RVALID;
  output m_axi_gmem_res_RREADY;
  output [0:0]m_axi_gmem_ts_AWID;
  output [63:0]m_axi_gmem_ts_AWADDR;
  output [7:0]m_axi_gmem_ts_AWLEN;
  output [2:0]m_axi_gmem_ts_AWSIZE;
  output [1:0]m_axi_gmem_ts_AWBURST;
  output [1:0]m_axi_gmem_ts_AWLOCK;
  output [3:0]m_axi_gmem_ts_AWREGION;
  output [3:0]m_axi_gmem_ts_AWCACHE;
  output [2:0]m_axi_gmem_ts_AWPROT;
  output [3:0]m_axi_gmem_ts_AWQOS;
  output m_axi_gmem_ts_AWVALID;
  input m_axi_gmem_ts_AWREADY;
  output [0:0]m_axi_gmem_ts_WID;
  output [63:0]m_axi_gmem_ts_WDATA;
  output [7:0]m_axi_gmem_ts_WSTRB;
  output m_axi_gmem_ts_WLAST;
  output m_axi_gmem_ts_WVALID;
  input m_axi_gmem_ts_WREADY;
  input [0:0]m_axi_gmem_ts_BID;
  input [1:0]m_axi_gmem_ts_BRESP;
  input m_axi_gmem_ts_BVALID;
  output m_axi_gmem_ts_BREADY;
  output [0:0]m_axi_gmem_ts_ARID;
  output [63:0]m_axi_gmem_ts_ARADDR;
  output [7:0]m_axi_gmem_ts_ARLEN;
  output [2:0]m_axi_gmem_ts_ARSIZE;
  output [1:0]m_axi_gmem_ts_ARBURST;
  output [1:0]m_axi_gmem_ts_ARLOCK;
  output [3:0]m_axi_gmem_ts_ARREGION;
  output [3:0]m_axi_gmem_ts_ARCACHE;
  output [2:0]m_axi_gmem_ts_ARPROT;
  output [3:0]m_axi_gmem_ts_ARQOS;
  output m_axi_gmem_ts_ARVALID;
  input m_axi_gmem_ts_ARREADY;
  input [0:0]m_axi_gmem_ts_RID;
  input [63:0]m_axi_gmem_ts_RDATA;
  input [1:0]m_axi_gmem_ts_RRESP;
  input m_axi_gmem_ts_RLAST;
  input m_axi_gmem_ts_RVALID;
  output m_axi_gmem_ts_RREADY;
  input [63:0]cycle_tx_dout;
  input cycle_tx_empty_n;
  output cycle_tx_read;
  input [63:0]cycle_rx_dout;
  input cycle_rx_empty_n;
  output cycle_rx_read;
  output m_axis_features_TVALID;
  input m_axis_features_TREADY;
  output [31:0]m_axis_features_TDATA;
  output [3:0]m_axis_features_TKEEP;
  output [3:0]m_axis_features_TSTRB;
  output [0:0]m_axis_features_TLAST;
  input s_axis_score_TVALID;
  output s_axis_score_TREADY;
  input [63:0]s_axis_score_TDATA;
  input [7:0]s_axis_score_TKEEP;
  input [7:0]s_axis_score_TSTRB;
  input [0:0]s_axis_score_TLAST;
endmodule
