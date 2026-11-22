// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:hls:vae_feature_sender:1.0
// IP Revision: 2114885558

(* X_CORE_INFO = "vae_feature_sender,Vivado 2023.2" *)
(* CHECK_LICENSE_TYPE = "vae_sender_sender_0,vae_feature_sender,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module vae_sender_sender_0 (
  s_axi_control_AWADDR,
  s_axi_control_AWVALID,
  s_axi_control_AWREADY,
  s_axi_control_WDATA,
  s_axi_control_WSTRB,
  s_axi_control_WVALID,
  s_axi_control_WREADY,
  s_axi_control_BRESP,
  s_axi_control_BVALID,
  s_axi_control_BREADY,
  s_axi_control_ARADDR,
  s_axi_control_ARVALID,
  s_axi_control_ARREADY,
  s_axi_control_RDATA,
  s_axi_control_RRESP,
  s_axi_control_RVALID,
  s_axi_control_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_gmem_in_AWID,
  m_axi_gmem_in_AWADDR,
  m_axi_gmem_in_AWLEN,
  m_axi_gmem_in_AWSIZE,
  m_axi_gmem_in_AWBURST,
  m_axi_gmem_in_AWLOCK,
  m_axi_gmem_in_AWREGION,
  m_axi_gmem_in_AWCACHE,
  m_axi_gmem_in_AWPROT,
  m_axi_gmem_in_AWQOS,
  m_axi_gmem_in_AWVALID,
  m_axi_gmem_in_AWREADY,
  m_axi_gmem_in_WID,
  m_axi_gmem_in_WDATA,
  m_axi_gmem_in_WSTRB,
  m_axi_gmem_in_WLAST,
  m_axi_gmem_in_WVALID,
  m_axi_gmem_in_WREADY,
  m_axi_gmem_in_BID,
  m_axi_gmem_in_BRESP,
  m_axi_gmem_in_BVALID,
  m_axi_gmem_in_BREADY,
  m_axi_gmem_in_ARID,
  m_axi_gmem_in_ARADDR,
  m_axi_gmem_in_ARLEN,
  m_axi_gmem_in_ARSIZE,
  m_axi_gmem_in_ARBURST,
  m_axi_gmem_in_ARLOCK,
  m_axi_gmem_in_ARREGION,
  m_axi_gmem_in_ARCACHE,
  m_axi_gmem_in_ARPROT,
  m_axi_gmem_in_ARQOS,
  m_axi_gmem_in_ARVALID,
  m_axi_gmem_in_ARREADY,
  m_axi_gmem_in_RID,
  m_axi_gmem_in_RDATA,
  m_axi_gmem_in_RRESP,
  m_axi_gmem_in_RLAST,
  m_axi_gmem_in_RVALID,
  m_axi_gmem_in_RREADY,
  m_axi_gmem_res_AWID,
  m_axi_gmem_res_AWADDR,
  m_axi_gmem_res_AWLEN,
  m_axi_gmem_res_AWSIZE,
  m_axi_gmem_res_AWBURST,
  m_axi_gmem_res_AWLOCK,
  m_axi_gmem_res_AWREGION,
  m_axi_gmem_res_AWCACHE,
  m_axi_gmem_res_AWPROT,
  m_axi_gmem_res_AWQOS,
  m_axi_gmem_res_AWVALID,
  m_axi_gmem_res_AWREADY,
  m_axi_gmem_res_WID,
  m_axi_gmem_res_WDATA,
  m_axi_gmem_res_WSTRB,
  m_axi_gmem_res_WLAST,
  m_axi_gmem_res_WVALID,
  m_axi_gmem_res_WREADY,
  m_axi_gmem_res_BID,
  m_axi_gmem_res_BRESP,
  m_axi_gmem_res_BVALID,
  m_axi_gmem_res_BREADY,
  m_axi_gmem_res_ARID,
  m_axi_gmem_res_ARADDR,
  m_axi_gmem_res_ARLEN,
  m_axi_gmem_res_ARSIZE,
  m_axi_gmem_res_ARBURST,
  m_axi_gmem_res_ARLOCK,
  m_axi_gmem_res_ARREGION,
  m_axi_gmem_res_ARCACHE,
  m_axi_gmem_res_ARPROT,
  m_axi_gmem_res_ARQOS,
  m_axi_gmem_res_ARVALID,
  m_axi_gmem_res_ARREADY,
  m_axi_gmem_res_RID,
  m_axi_gmem_res_RDATA,
  m_axi_gmem_res_RRESP,
  m_axi_gmem_res_RLAST,
  m_axi_gmem_res_RVALID,
  m_axi_gmem_res_RREADY,
  m_axi_gmem_ts_AWID,
  m_axi_gmem_ts_AWADDR,
  m_axi_gmem_ts_AWLEN,
  m_axi_gmem_ts_AWSIZE,
  m_axi_gmem_ts_AWBURST,
  m_axi_gmem_ts_AWLOCK,
  m_axi_gmem_ts_AWREGION,
  m_axi_gmem_ts_AWCACHE,
  m_axi_gmem_ts_AWPROT,
  m_axi_gmem_ts_AWQOS,
  m_axi_gmem_ts_AWVALID,
  m_axi_gmem_ts_AWREADY,
  m_axi_gmem_ts_WID,
  m_axi_gmem_ts_WDATA,
  m_axi_gmem_ts_WSTRB,
  m_axi_gmem_ts_WLAST,
  m_axi_gmem_ts_WVALID,
  m_axi_gmem_ts_WREADY,
  m_axi_gmem_ts_BID,
  m_axi_gmem_ts_BRESP,
  m_axi_gmem_ts_BVALID,
  m_axi_gmem_ts_BREADY,
  m_axi_gmem_ts_ARID,
  m_axi_gmem_ts_ARADDR,
  m_axi_gmem_ts_ARLEN,
  m_axi_gmem_ts_ARSIZE,
  m_axi_gmem_ts_ARBURST,
  m_axi_gmem_ts_ARLOCK,
  m_axi_gmem_ts_ARREGION,
  m_axi_gmem_ts_ARCACHE,
  m_axi_gmem_ts_ARPROT,
  m_axi_gmem_ts_ARQOS,
  m_axi_gmem_ts_ARVALID,
  m_axi_gmem_ts_ARREADY,
  m_axi_gmem_ts_RID,
  m_axi_gmem_ts_RDATA,
  m_axi_gmem_ts_RRESP,
  m_axi_gmem_ts_RLAST,
  m_axi_gmem_ts_RVALID,
  m_axi_gmem_ts_RREADY,
  cycle_tx_dout,
  cycle_tx_empty_n,
  cycle_tx_read,
  cycle_rx_dout,
  cycle_rx_empty_n,
  cycle_rx_read,
  m_axis_features_TVALID,
  m_axis_features_TREADY,
  m_axis_features_TDATA,
  m_axis_features_TKEEP,
  m_axis_features_TSTRB,
  m_axis_features_TLAST,
  s_axis_score_TVALID,
  s_axis_score_TREADY,
  s_axis_score_TDATA,
  s_axis_score_TKEEP,
  s_axis_score_TSTRB,
  s_axis_score_TLAST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *)
input wire [6 : 0] s_axi_control_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *)
input wire s_axi_control_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *)
output wire s_axi_control_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *)
input wire [31 : 0] s_axi_control_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *)
input wire [3 : 0] s_axi_control_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *)
input wire s_axi_control_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *)
output wire s_axi_control_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *)
output wire [1 : 0] s_axi_control_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *)
output wire s_axi_control_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *)
input wire s_axi_control_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *)
input wire [6 : 0] s_axi_control_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *)
input wire s_axi_control_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *)
output wire s_axi_control_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *)
output wire [31 : 0] s_axi_control_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *)
output wire [1 : 0] s_axi_control_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *)
output wire s_axi_control_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_W\
RITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *)
input wire s_axi_control_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control:m_axi_gmem_in:m_axi_gmem_res:m_axi_gmem_ts:m_axis_features:s_axis_score, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWID" *)
output wire [0 : 0] m_axi_gmem_in_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWADDR" *)
output wire [63 : 0] m_axi_gmem_in_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWLEN" *)
output wire [7 : 0] m_axi_gmem_in_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWSIZE" *)
output wire [2 : 0] m_axi_gmem_in_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWBURST" *)
output wire [1 : 0] m_axi_gmem_in_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWLOCK" *)
output wire [1 : 0] m_axi_gmem_in_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWREGION" *)
output wire [3 : 0] m_axi_gmem_in_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWCACHE" *)
output wire [3 : 0] m_axi_gmem_in_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWPROT" *)
output wire [2 : 0] m_axi_gmem_in_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWQOS" *)
output wire [3 : 0] m_axi_gmem_in_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWVALID" *)
output wire m_axi_gmem_in_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in AWREADY" *)
input wire m_axi_gmem_in_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WID" *)
output wire [0 : 0] m_axi_gmem_in_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WDATA" *)
output wire [31 : 0] m_axi_gmem_in_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WSTRB" *)
output wire [3 : 0] m_axi_gmem_in_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WLAST" *)
output wire m_axi_gmem_in_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WVALID" *)
output wire m_axi_gmem_in_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in WREADY" *)
input wire m_axi_gmem_in_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BID" *)
input wire [0 : 0] m_axi_gmem_in_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BRESP" *)
input wire [1 : 0] m_axi_gmem_in_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BVALID" *)
input wire m_axi_gmem_in_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in BREADY" *)
output wire m_axi_gmem_in_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARID" *)
output wire [0 : 0] m_axi_gmem_in_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARADDR" *)
output wire [63 : 0] m_axi_gmem_in_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARLEN" *)
output wire [7 : 0] m_axi_gmem_in_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARSIZE" *)
output wire [2 : 0] m_axi_gmem_in_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARBURST" *)
output wire [1 : 0] m_axi_gmem_in_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARLOCK" *)
output wire [1 : 0] m_axi_gmem_in_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARREGION" *)
output wire [3 : 0] m_axi_gmem_in_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARCACHE" *)
output wire [3 : 0] m_axi_gmem_in_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARPROT" *)
output wire [2 : 0] m_axi_gmem_in_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARQOS" *)
output wire [3 : 0] m_axi_gmem_in_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARVALID" *)
output wire m_axi_gmem_in_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in ARREADY" *)
input wire m_axi_gmem_in_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RID" *)
input wire [0 : 0] m_axi_gmem_in_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RDATA" *)
input wire [31 : 0] m_axi_gmem_in_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RRESP" *)
input wire [1 : 0] m_axi_gmem_in_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RLAST" *)
input wire m_axi_gmem_in_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RVALID" *)
input wire m_axi_gmem_in_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_in, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 64, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN v\
ae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in RREADY" *)
output wire m_axi_gmem_in_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWID" *)
output wire [0 : 0] m_axi_gmem_res_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWADDR" *)
output wire [63 : 0] m_axi_gmem_res_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWLEN" *)
output wire [7 : 0] m_axi_gmem_res_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWSIZE" *)
output wire [2 : 0] m_axi_gmem_res_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWBURST" *)
output wire [1 : 0] m_axi_gmem_res_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWLOCK" *)
output wire [1 : 0] m_axi_gmem_res_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWREGION" *)
output wire [3 : 0] m_axi_gmem_res_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWCACHE" *)
output wire [3 : 0] m_axi_gmem_res_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWPROT" *)
output wire [2 : 0] m_axi_gmem_res_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWQOS" *)
output wire [3 : 0] m_axi_gmem_res_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWVALID" *)
output wire m_axi_gmem_res_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res AWREADY" *)
input wire m_axi_gmem_res_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WID" *)
output wire [0 : 0] m_axi_gmem_res_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WDATA" *)
output wire [127 : 0] m_axi_gmem_res_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WSTRB" *)
output wire [15 : 0] m_axi_gmem_res_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WLAST" *)
output wire m_axi_gmem_res_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WVALID" *)
output wire m_axi_gmem_res_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res WREADY" *)
input wire m_axi_gmem_res_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res BID" *)
input wire [0 : 0] m_axi_gmem_res_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res BRESP" *)
input wire [1 : 0] m_axi_gmem_res_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res BVALID" *)
input wire m_axi_gmem_res_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res BREADY" *)
output wire m_axi_gmem_res_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARID" *)
output wire [0 : 0] m_axi_gmem_res_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARADDR" *)
output wire [63 : 0] m_axi_gmem_res_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARLEN" *)
output wire [7 : 0] m_axi_gmem_res_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARSIZE" *)
output wire [2 : 0] m_axi_gmem_res_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARBURST" *)
output wire [1 : 0] m_axi_gmem_res_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARLOCK" *)
output wire [1 : 0] m_axi_gmem_res_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARREGION" *)
output wire [3 : 0] m_axi_gmem_res_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARCACHE" *)
output wire [3 : 0] m_axi_gmem_res_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARPROT" *)
output wire [2 : 0] m_axi_gmem_res_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARQOS" *)
output wire [3 : 0] m_axi_gmem_res_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARVALID" *)
output wire m_axi_gmem_res_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res ARREADY" *)
input wire m_axi_gmem_res_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RID" *)
input wire [0 : 0] m_axi_gmem_res_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RDATA" *)
input wire [127 : 0] m_axi_gmem_res_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RRESP" *)
input wire [1 : 0] m_axi_gmem_res_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RLAST" *)
input wire m_axi_gmem_res_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RVALID" *)
input wire m_axi_gmem_res_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_res, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 8, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 64, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 128, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAI\
N vae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res RREADY" *)
output wire m_axi_gmem_res_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWID" *)
output wire [0 : 0] m_axi_gmem_ts_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWADDR" *)
output wire [63 : 0] m_axi_gmem_ts_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWLEN" *)
output wire [7 : 0] m_axi_gmem_ts_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWSIZE" *)
output wire [2 : 0] m_axi_gmem_ts_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWBURST" *)
output wire [1 : 0] m_axi_gmem_ts_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWLOCK" *)
output wire [1 : 0] m_axi_gmem_ts_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWREGION" *)
output wire [3 : 0] m_axi_gmem_ts_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWCACHE" *)
output wire [3 : 0] m_axi_gmem_ts_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWPROT" *)
output wire [2 : 0] m_axi_gmem_ts_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWQOS" *)
output wire [3 : 0] m_axi_gmem_ts_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWVALID" *)
output wire m_axi_gmem_ts_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts AWREADY" *)
input wire m_axi_gmem_ts_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WID" *)
output wire [0 : 0] m_axi_gmem_ts_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WDATA" *)
output wire [63 : 0] m_axi_gmem_ts_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WSTRB" *)
output wire [7 : 0] m_axi_gmem_ts_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WLAST" *)
output wire m_axi_gmem_ts_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WVALID" *)
output wire m_axi_gmem_ts_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts WREADY" *)
input wire m_axi_gmem_ts_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts BID" *)
input wire [0 : 0] m_axi_gmem_ts_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts BRESP" *)
input wire [1 : 0] m_axi_gmem_ts_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts BVALID" *)
input wire m_axi_gmem_ts_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts BREADY" *)
output wire m_axi_gmem_ts_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARID" *)
output wire [0 : 0] m_axi_gmem_ts_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARADDR" *)
output wire [63 : 0] m_axi_gmem_ts_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARLEN" *)
output wire [7 : 0] m_axi_gmem_ts_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARSIZE" *)
output wire [2 : 0] m_axi_gmem_ts_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARBURST" *)
output wire [1 : 0] m_axi_gmem_ts_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARLOCK" *)
output wire [1 : 0] m_axi_gmem_ts_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARREGION" *)
output wire [3 : 0] m_axi_gmem_ts_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARCACHE" *)
output wire [3 : 0] m_axi_gmem_ts_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARPROT" *)
output wire [2 : 0] m_axi_gmem_ts_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARQOS" *)
output wire [3 : 0] m_axi_gmem_ts_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARVALID" *)
output wire m_axi_gmem_ts_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts ARREADY" *)
input wire m_axi_gmem_ts_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RID" *)
input wire [0 : 0] m_axi_gmem_ts_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RDATA" *)
input wire [63 : 0] m_axi_gmem_ts_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RRESP" *)
input wire [1 : 0] m_axi_gmem_ts_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RLAST" *)
input wire m_axi_gmem_ts_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RVALID" *)
input wire m_axi_gmem_ts_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_ts, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 8, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 64, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.0, CLK_DOMAIN \
vae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts RREADY" *)
output wire m_axi_gmem_ts_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx RD_DATA" *)
input wire [63 : 0] cycle_tx_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx EMPTY_N" *)
input wire cycle_tx_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx RD_EN" *)
output wire cycle_tx_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx RD_DATA" *)
input wire [63 : 0] cycle_rx_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx EMPTY_N" *)
input wire cycle_rx_empty_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx RD_EN" *)
output wire cycle_rx_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TVALID" *)
output wire m_axis_features_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TREADY" *)
input wire m_axis_features_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TDATA" *)
output wire [31 : 0] m_axis_features_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TKEEP" *)
output wire [3 : 0] m_axis_features_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TSTRB" *)
output wire [3 : 0] m_axis_features_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_features, TDATA_NUM_BYTES 4, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features TLAST" *)
output wire [0 : 0] m_axis_features_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TVALID" *)
input wire s_axis_score_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TREADY" *)
output wire s_axis_score_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TDATA" *)
input wire [63 : 0] s_axis_score_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TKEEP" *)
input wire [7 : 0] s_axis_score_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TSTRB" *)
input wire [7 : 0] s_axis_score_TSTRB;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_score, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, TDEST_WIDTH 0, TID_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score TLAST" *)
input wire [0 : 0] s_axis_score_TLAST;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  vae_feature_sender #(
    .C_S_AXI_CONTROL_ADDR_WIDTH(7),
    .C_S_AXI_CONTROL_DATA_WIDTH(32),
    .C_M_AXI_GMEM_IN_ID_WIDTH(1),
    .C_M_AXI_GMEM_IN_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_IN_DATA_WIDTH(32),
    .C_M_AXI_GMEM_IN_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_IN_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_IN_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_IN_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_RES_ID_WIDTH(1),
    .C_M_AXI_GMEM_RES_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_RES_DATA_WIDTH(128),
    .C_M_AXI_GMEM_RES_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_RES_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_RES_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_RES_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_RES_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_RES_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_RES_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_RES_CACHE_VALUE(4'B0011),
    .C_M_AXI_GMEM_TS_ID_WIDTH(1),
    .C_M_AXI_GMEM_TS_ADDR_WIDTH(64),
    .C_M_AXI_GMEM_TS_DATA_WIDTH(64),
    .C_M_AXI_GMEM_TS_AWUSER_WIDTH(1),
    .C_M_AXI_GMEM_TS_ARUSER_WIDTH(1),
    .C_M_AXI_GMEM_TS_WUSER_WIDTH(1),
    .C_M_AXI_GMEM_TS_RUSER_WIDTH(1),
    .C_M_AXI_GMEM_TS_BUSER_WIDTH(1),
    .C_M_AXI_GMEM_TS_USER_VALUE(32'H00000000),
    .C_M_AXI_GMEM_TS_PROT_VALUE(3'B000),
    .C_M_AXI_GMEM_TS_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_control_AWADDR(s_axi_control_AWADDR),
    .s_axi_control_AWVALID(s_axi_control_AWVALID),
    .s_axi_control_AWREADY(s_axi_control_AWREADY),
    .s_axi_control_WDATA(s_axi_control_WDATA),
    .s_axi_control_WSTRB(s_axi_control_WSTRB),
    .s_axi_control_WVALID(s_axi_control_WVALID),
    .s_axi_control_WREADY(s_axi_control_WREADY),
    .s_axi_control_BRESP(s_axi_control_BRESP),
    .s_axi_control_BVALID(s_axi_control_BVALID),
    .s_axi_control_BREADY(s_axi_control_BREADY),
    .s_axi_control_ARADDR(s_axi_control_ARADDR),
    .s_axi_control_ARVALID(s_axi_control_ARVALID),
    .s_axi_control_ARREADY(s_axi_control_ARREADY),
    .s_axi_control_RDATA(s_axi_control_RDATA),
    .s_axi_control_RRESP(s_axi_control_RRESP),
    .s_axi_control_RVALID(s_axi_control_RVALID),
    .s_axi_control_RREADY(s_axi_control_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_gmem_in_AWID(m_axi_gmem_in_AWID),
    .m_axi_gmem_in_AWADDR(m_axi_gmem_in_AWADDR),
    .m_axi_gmem_in_AWLEN(m_axi_gmem_in_AWLEN),
    .m_axi_gmem_in_AWSIZE(m_axi_gmem_in_AWSIZE),
    .m_axi_gmem_in_AWBURST(m_axi_gmem_in_AWBURST),
    .m_axi_gmem_in_AWLOCK(m_axi_gmem_in_AWLOCK),
    .m_axi_gmem_in_AWREGION(m_axi_gmem_in_AWREGION),
    .m_axi_gmem_in_AWCACHE(m_axi_gmem_in_AWCACHE),
    .m_axi_gmem_in_AWPROT(m_axi_gmem_in_AWPROT),
    .m_axi_gmem_in_AWQOS(m_axi_gmem_in_AWQOS),
    .m_axi_gmem_in_AWUSER(),
    .m_axi_gmem_in_AWVALID(m_axi_gmem_in_AWVALID),
    .m_axi_gmem_in_AWREADY(m_axi_gmem_in_AWREADY),
    .m_axi_gmem_in_WID(m_axi_gmem_in_WID),
    .m_axi_gmem_in_WDATA(m_axi_gmem_in_WDATA),
    .m_axi_gmem_in_WSTRB(m_axi_gmem_in_WSTRB),
    .m_axi_gmem_in_WLAST(m_axi_gmem_in_WLAST),
    .m_axi_gmem_in_WUSER(),
    .m_axi_gmem_in_WVALID(m_axi_gmem_in_WVALID),
    .m_axi_gmem_in_WREADY(m_axi_gmem_in_WREADY),
    .m_axi_gmem_in_BID(m_axi_gmem_in_BID),
    .m_axi_gmem_in_BRESP(m_axi_gmem_in_BRESP),
    .m_axi_gmem_in_BUSER(1'B0),
    .m_axi_gmem_in_BVALID(m_axi_gmem_in_BVALID),
    .m_axi_gmem_in_BREADY(m_axi_gmem_in_BREADY),
    .m_axi_gmem_in_ARID(m_axi_gmem_in_ARID),
    .m_axi_gmem_in_ARADDR(m_axi_gmem_in_ARADDR),
    .m_axi_gmem_in_ARLEN(m_axi_gmem_in_ARLEN),
    .m_axi_gmem_in_ARSIZE(m_axi_gmem_in_ARSIZE),
    .m_axi_gmem_in_ARBURST(m_axi_gmem_in_ARBURST),
    .m_axi_gmem_in_ARLOCK(m_axi_gmem_in_ARLOCK),
    .m_axi_gmem_in_ARREGION(m_axi_gmem_in_ARREGION),
    .m_axi_gmem_in_ARCACHE(m_axi_gmem_in_ARCACHE),
    .m_axi_gmem_in_ARPROT(m_axi_gmem_in_ARPROT),
    .m_axi_gmem_in_ARQOS(m_axi_gmem_in_ARQOS),
    .m_axi_gmem_in_ARUSER(),
    .m_axi_gmem_in_ARVALID(m_axi_gmem_in_ARVALID),
    .m_axi_gmem_in_ARREADY(m_axi_gmem_in_ARREADY),
    .m_axi_gmem_in_RID(m_axi_gmem_in_RID),
    .m_axi_gmem_in_RDATA(m_axi_gmem_in_RDATA),
    .m_axi_gmem_in_RRESP(m_axi_gmem_in_RRESP),
    .m_axi_gmem_in_RLAST(m_axi_gmem_in_RLAST),
    .m_axi_gmem_in_RUSER(1'B0),
    .m_axi_gmem_in_RVALID(m_axi_gmem_in_RVALID),
    .m_axi_gmem_in_RREADY(m_axi_gmem_in_RREADY),
    .m_axi_gmem_res_AWID(m_axi_gmem_res_AWID),
    .m_axi_gmem_res_AWADDR(m_axi_gmem_res_AWADDR),
    .m_axi_gmem_res_AWLEN(m_axi_gmem_res_AWLEN),
    .m_axi_gmem_res_AWSIZE(m_axi_gmem_res_AWSIZE),
    .m_axi_gmem_res_AWBURST(m_axi_gmem_res_AWBURST),
    .m_axi_gmem_res_AWLOCK(m_axi_gmem_res_AWLOCK),
    .m_axi_gmem_res_AWREGION(m_axi_gmem_res_AWREGION),
    .m_axi_gmem_res_AWCACHE(m_axi_gmem_res_AWCACHE),
    .m_axi_gmem_res_AWPROT(m_axi_gmem_res_AWPROT),
    .m_axi_gmem_res_AWQOS(m_axi_gmem_res_AWQOS),
    .m_axi_gmem_res_AWUSER(),
    .m_axi_gmem_res_AWVALID(m_axi_gmem_res_AWVALID),
    .m_axi_gmem_res_AWREADY(m_axi_gmem_res_AWREADY),
    .m_axi_gmem_res_WID(m_axi_gmem_res_WID),
    .m_axi_gmem_res_WDATA(m_axi_gmem_res_WDATA),
    .m_axi_gmem_res_WSTRB(m_axi_gmem_res_WSTRB),
    .m_axi_gmem_res_WLAST(m_axi_gmem_res_WLAST),
    .m_axi_gmem_res_WUSER(),
    .m_axi_gmem_res_WVALID(m_axi_gmem_res_WVALID),
    .m_axi_gmem_res_WREADY(m_axi_gmem_res_WREADY),
    .m_axi_gmem_res_BID(m_axi_gmem_res_BID),
    .m_axi_gmem_res_BRESP(m_axi_gmem_res_BRESP),
    .m_axi_gmem_res_BUSER(1'B0),
    .m_axi_gmem_res_BVALID(m_axi_gmem_res_BVALID),
    .m_axi_gmem_res_BREADY(m_axi_gmem_res_BREADY),
    .m_axi_gmem_res_ARID(m_axi_gmem_res_ARID),
    .m_axi_gmem_res_ARADDR(m_axi_gmem_res_ARADDR),
    .m_axi_gmem_res_ARLEN(m_axi_gmem_res_ARLEN),
    .m_axi_gmem_res_ARSIZE(m_axi_gmem_res_ARSIZE),
    .m_axi_gmem_res_ARBURST(m_axi_gmem_res_ARBURST),
    .m_axi_gmem_res_ARLOCK(m_axi_gmem_res_ARLOCK),
    .m_axi_gmem_res_ARREGION(m_axi_gmem_res_ARREGION),
    .m_axi_gmem_res_ARCACHE(m_axi_gmem_res_ARCACHE),
    .m_axi_gmem_res_ARPROT(m_axi_gmem_res_ARPROT),
    .m_axi_gmem_res_ARQOS(m_axi_gmem_res_ARQOS),
    .m_axi_gmem_res_ARUSER(),
    .m_axi_gmem_res_ARVALID(m_axi_gmem_res_ARVALID),
    .m_axi_gmem_res_ARREADY(m_axi_gmem_res_ARREADY),
    .m_axi_gmem_res_RID(m_axi_gmem_res_RID),
    .m_axi_gmem_res_RDATA(m_axi_gmem_res_RDATA),
    .m_axi_gmem_res_RRESP(m_axi_gmem_res_RRESP),
    .m_axi_gmem_res_RLAST(m_axi_gmem_res_RLAST),
    .m_axi_gmem_res_RUSER(1'B0),
    .m_axi_gmem_res_RVALID(m_axi_gmem_res_RVALID),
    .m_axi_gmem_res_RREADY(m_axi_gmem_res_RREADY),
    .m_axi_gmem_ts_AWID(m_axi_gmem_ts_AWID),
    .m_axi_gmem_ts_AWADDR(m_axi_gmem_ts_AWADDR),
    .m_axi_gmem_ts_AWLEN(m_axi_gmem_ts_AWLEN),
    .m_axi_gmem_ts_AWSIZE(m_axi_gmem_ts_AWSIZE),
    .m_axi_gmem_ts_AWBURST(m_axi_gmem_ts_AWBURST),
    .m_axi_gmem_ts_AWLOCK(m_axi_gmem_ts_AWLOCK),
    .m_axi_gmem_ts_AWREGION(m_axi_gmem_ts_AWREGION),
    .m_axi_gmem_ts_AWCACHE(m_axi_gmem_ts_AWCACHE),
    .m_axi_gmem_ts_AWPROT(m_axi_gmem_ts_AWPROT),
    .m_axi_gmem_ts_AWQOS(m_axi_gmem_ts_AWQOS),
    .m_axi_gmem_ts_AWUSER(),
    .m_axi_gmem_ts_AWVALID(m_axi_gmem_ts_AWVALID),
    .m_axi_gmem_ts_AWREADY(m_axi_gmem_ts_AWREADY),
    .m_axi_gmem_ts_WID(m_axi_gmem_ts_WID),
    .m_axi_gmem_ts_WDATA(m_axi_gmem_ts_WDATA),
    .m_axi_gmem_ts_WSTRB(m_axi_gmem_ts_WSTRB),
    .m_axi_gmem_ts_WLAST(m_axi_gmem_ts_WLAST),
    .m_axi_gmem_ts_WUSER(),
    .m_axi_gmem_ts_WVALID(m_axi_gmem_ts_WVALID),
    .m_axi_gmem_ts_WREADY(m_axi_gmem_ts_WREADY),
    .m_axi_gmem_ts_BID(m_axi_gmem_ts_BID),
    .m_axi_gmem_ts_BRESP(m_axi_gmem_ts_BRESP),
    .m_axi_gmem_ts_BUSER(1'B0),
    .m_axi_gmem_ts_BVALID(m_axi_gmem_ts_BVALID),
    .m_axi_gmem_ts_BREADY(m_axi_gmem_ts_BREADY),
    .m_axi_gmem_ts_ARID(m_axi_gmem_ts_ARID),
    .m_axi_gmem_ts_ARADDR(m_axi_gmem_ts_ARADDR),
    .m_axi_gmem_ts_ARLEN(m_axi_gmem_ts_ARLEN),
    .m_axi_gmem_ts_ARSIZE(m_axi_gmem_ts_ARSIZE),
    .m_axi_gmem_ts_ARBURST(m_axi_gmem_ts_ARBURST),
    .m_axi_gmem_ts_ARLOCK(m_axi_gmem_ts_ARLOCK),
    .m_axi_gmem_ts_ARREGION(m_axi_gmem_ts_ARREGION),
    .m_axi_gmem_ts_ARCACHE(m_axi_gmem_ts_ARCACHE),
    .m_axi_gmem_ts_ARPROT(m_axi_gmem_ts_ARPROT),
    .m_axi_gmem_ts_ARQOS(m_axi_gmem_ts_ARQOS),
    .m_axi_gmem_ts_ARUSER(),
    .m_axi_gmem_ts_ARVALID(m_axi_gmem_ts_ARVALID),
    .m_axi_gmem_ts_ARREADY(m_axi_gmem_ts_ARREADY),
    .m_axi_gmem_ts_RID(m_axi_gmem_ts_RID),
    .m_axi_gmem_ts_RDATA(m_axi_gmem_ts_RDATA),
    .m_axi_gmem_ts_RRESP(m_axi_gmem_ts_RRESP),
    .m_axi_gmem_ts_RLAST(m_axi_gmem_ts_RLAST),
    .m_axi_gmem_ts_RUSER(1'B0),
    .m_axi_gmem_ts_RVALID(m_axi_gmem_ts_RVALID),
    .m_axi_gmem_ts_RREADY(m_axi_gmem_ts_RREADY),
    .cycle_tx_dout(cycle_tx_dout),
    .cycle_tx_empty_n(cycle_tx_empty_n),
    .cycle_tx_read(cycle_tx_read),
    .cycle_rx_dout(cycle_rx_dout),
    .cycle_rx_empty_n(cycle_rx_empty_n),
    .cycle_rx_read(cycle_rx_read),
    .m_axis_features_TVALID(m_axis_features_TVALID),
    .m_axis_features_TREADY(m_axis_features_TREADY),
    .m_axis_features_TDATA(m_axis_features_TDATA),
    .m_axis_features_TKEEP(m_axis_features_TKEEP),
    .m_axis_features_TSTRB(m_axis_features_TSTRB),
    .m_axis_features_TLAST(m_axis_features_TLAST),
    .s_axis_score_TVALID(s_axis_score_TVALID),
    .s_axis_score_TREADY(s_axis_score_TREADY),
    .s_axis_score_TDATA(s_axis_score_TDATA),
    .s_axis_score_TKEEP(s_axis_score_TKEEP),
    .s_axis_score_TSTRB(s_axis_score_TSTRB),
    .s_axis_score_TLAST(s_axis_score_TLAST)
  );
endmodule
