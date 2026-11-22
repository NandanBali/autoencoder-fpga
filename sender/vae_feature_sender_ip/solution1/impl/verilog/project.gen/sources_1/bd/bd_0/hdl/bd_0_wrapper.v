//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sun Nov 22 22:39:14 2026
//Host        : fedora running 64-bit unknown
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    cycle_rx_empty_n,
    cycle_rx_rd_data,
    cycle_rx_rd_en,
    cycle_tx_empty_n,
    cycle_tx_rd_data,
    cycle_tx_rd_en,
    interrupt,
    m_axi_gmem_in_araddr,
    m_axi_gmem_in_arburst,
    m_axi_gmem_in_arcache,
    m_axi_gmem_in_arid,
    m_axi_gmem_in_arlen,
    m_axi_gmem_in_arlock,
    m_axi_gmem_in_arprot,
    m_axi_gmem_in_arqos,
    m_axi_gmem_in_arready,
    m_axi_gmem_in_arregion,
    m_axi_gmem_in_arsize,
    m_axi_gmem_in_arvalid,
    m_axi_gmem_in_awaddr,
    m_axi_gmem_in_awburst,
    m_axi_gmem_in_awcache,
    m_axi_gmem_in_awid,
    m_axi_gmem_in_awlen,
    m_axi_gmem_in_awlock,
    m_axi_gmem_in_awprot,
    m_axi_gmem_in_awqos,
    m_axi_gmem_in_awready,
    m_axi_gmem_in_awregion,
    m_axi_gmem_in_awsize,
    m_axi_gmem_in_awvalid,
    m_axi_gmem_in_bid,
    m_axi_gmem_in_bready,
    m_axi_gmem_in_bresp,
    m_axi_gmem_in_bvalid,
    m_axi_gmem_in_rdata,
    m_axi_gmem_in_rid,
    m_axi_gmem_in_rlast,
    m_axi_gmem_in_rready,
    m_axi_gmem_in_rresp,
    m_axi_gmem_in_rvalid,
    m_axi_gmem_in_wdata,
    m_axi_gmem_in_wid,
    m_axi_gmem_in_wlast,
    m_axi_gmem_in_wready,
    m_axi_gmem_in_wstrb,
    m_axi_gmem_in_wvalid,
    m_axi_gmem_res_araddr,
    m_axi_gmem_res_arburst,
    m_axi_gmem_res_arcache,
    m_axi_gmem_res_arid,
    m_axi_gmem_res_arlen,
    m_axi_gmem_res_arlock,
    m_axi_gmem_res_arprot,
    m_axi_gmem_res_arqos,
    m_axi_gmem_res_arready,
    m_axi_gmem_res_arregion,
    m_axi_gmem_res_arsize,
    m_axi_gmem_res_arvalid,
    m_axi_gmem_res_awaddr,
    m_axi_gmem_res_awburst,
    m_axi_gmem_res_awcache,
    m_axi_gmem_res_awid,
    m_axi_gmem_res_awlen,
    m_axi_gmem_res_awlock,
    m_axi_gmem_res_awprot,
    m_axi_gmem_res_awqos,
    m_axi_gmem_res_awready,
    m_axi_gmem_res_awregion,
    m_axi_gmem_res_awsize,
    m_axi_gmem_res_awvalid,
    m_axi_gmem_res_bid,
    m_axi_gmem_res_bready,
    m_axi_gmem_res_bresp,
    m_axi_gmem_res_bvalid,
    m_axi_gmem_res_rdata,
    m_axi_gmem_res_rid,
    m_axi_gmem_res_rlast,
    m_axi_gmem_res_rready,
    m_axi_gmem_res_rresp,
    m_axi_gmem_res_rvalid,
    m_axi_gmem_res_wdata,
    m_axi_gmem_res_wid,
    m_axi_gmem_res_wlast,
    m_axi_gmem_res_wready,
    m_axi_gmem_res_wstrb,
    m_axi_gmem_res_wvalid,
    m_axi_gmem_ts_araddr,
    m_axi_gmem_ts_arburst,
    m_axi_gmem_ts_arcache,
    m_axi_gmem_ts_arid,
    m_axi_gmem_ts_arlen,
    m_axi_gmem_ts_arlock,
    m_axi_gmem_ts_arprot,
    m_axi_gmem_ts_arqos,
    m_axi_gmem_ts_arready,
    m_axi_gmem_ts_arregion,
    m_axi_gmem_ts_arsize,
    m_axi_gmem_ts_arvalid,
    m_axi_gmem_ts_awaddr,
    m_axi_gmem_ts_awburst,
    m_axi_gmem_ts_awcache,
    m_axi_gmem_ts_awid,
    m_axi_gmem_ts_awlen,
    m_axi_gmem_ts_awlock,
    m_axi_gmem_ts_awprot,
    m_axi_gmem_ts_awqos,
    m_axi_gmem_ts_awready,
    m_axi_gmem_ts_awregion,
    m_axi_gmem_ts_awsize,
    m_axi_gmem_ts_awvalid,
    m_axi_gmem_ts_bid,
    m_axi_gmem_ts_bready,
    m_axi_gmem_ts_bresp,
    m_axi_gmem_ts_bvalid,
    m_axi_gmem_ts_rdata,
    m_axi_gmem_ts_rid,
    m_axi_gmem_ts_rlast,
    m_axi_gmem_ts_rready,
    m_axi_gmem_ts_rresp,
    m_axi_gmem_ts_rvalid,
    m_axi_gmem_ts_wdata,
    m_axi_gmem_ts_wid,
    m_axi_gmem_ts_wlast,
    m_axi_gmem_ts_wready,
    m_axi_gmem_ts_wstrb,
    m_axi_gmem_ts_wvalid,
    m_axis_features_tdata,
    m_axis_features_tkeep,
    m_axis_features_tlast,
    m_axis_features_tready,
    m_axis_features_tstrb,
    m_axis_features_tvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid,
    s_axis_score_tdata,
    s_axis_score_tkeep,
    s_axis_score_tlast,
    s_axis_score_tready,
    s_axis_score_tstrb,
    s_axis_score_tvalid);
  input ap_clk;
  input ap_rst_n;
  input cycle_rx_empty_n;
  input [63:0]cycle_rx_rd_data;
  output cycle_rx_rd_en;
  input cycle_tx_empty_n;
  input [63:0]cycle_tx_rd_data;
  output cycle_tx_rd_en;
  output interrupt;
  output [63:0]m_axi_gmem_in_araddr;
  output [1:0]m_axi_gmem_in_arburst;
  output [3:0]m_axi_gmem_in_arcache;
  output [0:0]m_axi_gmem_in_arid;
  output [7:0]m_axi_gmem_in_arlen;
  output [1:0]m_axi_gmem_in_arlock;
  output [2:0]m_axi_gmem_in_arprot;
  output [3:0]m_axi_gmem_in_arqos;
  input m_axi_gmem_in_arready;
  output [3:0]m_axi_gmem_in_arregion;
  output [2:0]m_axi_gmem_in_arsize;
  output m_axi_gmem_in_arvalid;
  output [63:0]m_axi_gmem_in_awaddr;
  output [1:0]m_axi_gmem_in_awburst;
  output [3:0]m_axi_gmem_in_awcache;
  output [0:0]m_axi_gmem_in_awid;
  output [7:0]m_axi_gmem_in_awlen;
  output [1:0]m_axi_gmem_in_awlock;
  output [2:0]m_axi_gmem_in_awprot;
  output [3:0]m_axi_gmem_in_awqos;
  input m_axi_gmem_in_awready;
  output [3:0]m_axi_gmem_in_awregion;
  output [2:0]m_axi_gmem_in_awsize;
  output m_axi_gmem_in_awvalid;
  input [0:0]m_axi_gmem_in_bid;
  output m_axi_gmem_in_bready;
  input [1:0]m_axi_gmem_in_bresp;
  input m_axi_gmem_in_bvalid;
  input [31:0]m_axi_gmem_in_rdata;
  input [0:0]m_axi_gmem_in_rid;
  input m_axi_gmem_in_rlast;
  output m_axi_gmem_in_rready;
  input [1:0]m_axi_gmem_in_rresp;
  input m_axi_gmem_in_rvalid;
  output [31:0]m_axi_gmem_in_wdata;
  output [0:0]m_axi_gmem_in_wid;
  output m_axi_gmem_in_wlast;
  input m_axi_gmem_in_wready;
  output [3:0]m_axi_gmem_in_wstrb;
  output m_axi_gmem_in_wvalid;
  output [63:0]m_axi_gmem_res_araddr;
  output [1:0]m_axi_gmem_res_arburst;
  output [3:0]m_axi_gmem_res_arcache;
  output [0:0]m_axi_gmem_res_arid;
  output [7:0]m_axi_gmem_res_arlen;
  output [1:0]m_axi_gmem_res_arlock;
  output [2:0]m_axi_gmem_res_arprot;
  output [3:0]m_axi_gmem_res_arqos;
  input m_axi_gmem_res_arready;
  output [3:0]m_axi_gmem_res_arregion;
  output [2:0]m_axi_gmem_res_arsize;
  output m_axi_gmem_res_arvalid;
  output [63:0]m_axi_gmem_res_awaddr;
  output [1:0]m_axi_gmem_res_awburst;
  output [3:0]m_axi_gmem_res_awcache;
  output [0:0]m_axi_gmem_res_awid;
  output [7:0]m_axi_gmem_res_awlen;
  output [1:0]m_axi_gmem_res_awlock;
  output [2:0]m_axi_gmem_res_awprot;
  output [3:0]m_axi_gmem_res_awqos;
  input m_axi_gmem_res_awready;
  output [3:0]m_axi_gmem_res_awregion;
  output [2:0]m_axi_gmem_res_awsize;
  output m_axi_gmem_res_awvalid;
  input [0:0]m_axi_gmem_res_bid;
  output m_axi_gmem_res_bready;
  input [1:0]m_axi_gmem_res_bresp;
  input m_axi_gmem_res_bvalid;
  input [127:0]m_axi_gmem_res_rdata;
  input [0:0]m_axi_gmem_res_rid;
  input m_axi_gmem_res_rlast;
  output m_axi_gmem_res_rready;
  input [1:0]m_axi_gmem_res_rresp;
  input m_axi_gmem_res_rvalid;
  output [127:0]m_axi_gmem_res_wdata;
  output [0:0]m_axi_gmem_res_wid;
  output m_axi_gmem_res_wlast;
  input m_axi_gmem_res_wready;
  output [15:0]m_axi_gmem_res_wstrb;
  output m_axi_gmem_res_wvalid;
  output [63:0]m_axi_gmem_ts_araddr;
  output [1:0]m_axi_gmem_ts_arburst;
  output [3:0]m_axi_gmem_ts_arcache;
  output [0:0]m_axi_gmem_ts_arid;
  output [7:0]m_axi_gmem_ts_arlen;
  output [1:0]m_axi_gmem_ts_arlock;
  output [2:0]m_axi_gmem_ts_arprot;
  output [3:0]m_axi_gmem_ts_arqos;
  input m_axi_gmem_ts_arready;
  output [3:0]m_axi_gmem_ts_arregion;
  output [2:0]m_axi_gmem_ts_arsize;
  output m_axi_gmem_ts_arvalid;
  output [63:0]m_axi_gmem_ts_awaddr;
  output [1:0]m_axi_gmem_ts_awburst;
  output [3:0]m_axi_gmem_ts_awcache;
  output [0:0]m_axi_gmem_ts_awid;
  output [7:0]m_axi_gmem_ts_awlen;
  output [1:0]m_axi_gmem_ts_awlock;
  output [2:0]m_axi_gmem_ts_awprot;
  output [3:0]m_axi_gmem_ts_awqos;
  input m_axi_gmem_ts_awready;
  output [3:0]m_axi_gmem_ts_awregion;
  output [2:0]m_axi_gmem_ts_awsize;
  output m_axi_gmem_ts_awvalid;
  input [0:0]m_axi_gmem_ts_bid;
  output m_axi_gmem_ts_bready;
  input [1:0]m_axi_gmem_ts_bresp;
  input m_axi_gmem_ts_bvalid;
  input [63:0]m_axi_gmem_ts_rdata;
  input [0:0]m_axi_gmem_ts_rid;
  input m_axi_gmem_ts_rlast;
  output m_axi_gmem_ts_rready;
  input [1:0]m_axi_gmem_ts_rresp;
  input m_axi_gmem_ts_rvalid;
  output [63:0]m_axi_gmem_ts_wdata;
  output [0:0]m_axi_gmem_ts_wid;
  output m_axi_gmem_ts_wlast;
  input m_axi_gmem_ts_wready;
  output [7:0]m_axi_gmem_ts_wstrb;
  output m_axi_gmem_ts_wvalid;
  output [31:0]m_axis_features_tdata;
  output [3:0]m_axis_features_tkeep;
  output [0:0]m_axis_features_tlast;
  input m_axis_features_tready;
  output [3:0]m_axis_features_tstrb;
  output m_axis_features_tvalid;
  input [6:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [6:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;
  input [63:0]s_axis_score_tdata;
  input [7:0]s_axis_score_tkeep;
  input [0:0]s_axis_score_tlast;
  output s_axis_score_tready;
  input [7:0]s_axis_score_tstrb;
  input s_axis_score_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire cycle_rx_empty_n;
  wire [63:0]cycle_rx_rd_data;
  wire cycle_rx_rd_en;
  wire cycle_tx_empty_n;
  wire [63:0]cycle_tx_rd_data;
  wire cycle_tx_rd_en;
  wire interrupt;
  wire [63:0]m_axi_gmem_in_araddr;
  wire [1:0]m_axi_gmem_in_arburst;
  wire [3:0]m_axi_gmem_in_arcache;
  wire [0:0]m_axi_gmem_in_arid;
  wire [7:0]m_axi_gmem_in_arlen;
  wire [1:0]m_axi_gmem_in_arlock;
  wire [2:0]m_axi_gmem_in_arprot;
  wire [3:0]m_axi_gmem_in_arqos;
  wire m_axi_gmem_in_arready;
  wire [3:0]m_axi_gmem_in_arregion;
  wire [2:0]m_axi_gmem_in_arsize;
  wire m_axi_gmem_in_arvalid;
  wire [63:0]m_axi_gmem_in_awaddr;
  wire [1:0]m_axi_gmem_in_awburst;
  wire [3:0]m_axi_gmem_in_awcache;
  wire [0:0]m_axi_gmem_in_awid;
  wire [7:0]m_axi_gmem_in_awlen;
  wire [1:0]m_axi_gmem_in_awlock;
  wire [2:0]m_axi_gmem_in_awprot;
  wire [3:0]m_axi_gmem_in_awqos;
  wire m_axi_gmem_in_awready;
  wire [3:0]m_axi_gmem_in_awregion;
  wire [2:0]m_axi_gmem_in_awsize;
  wire m_axi_gmem_in_awvalid;
  wire [0:0]m_axi_gmem_in_bid;
  wire m_axi_gmem_in_bready;
  wire [1:0]m_axi_gmem_in_bresp;
  wire m_axi_gmem_in_bvalid;
  wire [31:0]m_axi_gmem_in_rdata;
  wire [0:0]m_axi_gmem_in_rid;
  wire m_axi_gmem_in_rlast;
  wire m_axi_gmem_in_rready;
  wire [1:0]m_axi_gmem_in_rresp;
  wire m_axi_gmem_in_rvalid;
  wire [31:0]m_axi_gmem_in_wdata;
  wire [0:0]m_axi_gmem_in_wid;
  wire m_axi_gmem_in_wlast;
  wire m_axi_gmem_in_wready;
  wire [3:0]m_axi_gmem_in_wstrb;
  wire m_axi_gmem_in_wvalid;
  wire [63:0]m_axi_gmem_res_araddr;
  wire [1:0]m_axi_gmem_res_arburst;
  wire [3:0]m_axi_gmem_res_arcache;
  wire [0:0]m_axi_gmem_res_arid;
  wire [7:0]m_axi_gmem_res_arlen;
  wire [1:0]m_axi_gmem_res_arlock;
  wire [2:0]m_axi_gmem_res_arprot;
  wire [3:0]m_axi_gmem_res_arqos;
  wire m_axi_gmem_res_arready;
  wire [3:0]m_axi_gmem_res_arregion;
  wire [2:0]m_axi_gmem_res_arsize;
  wire m_axi_gmem_res_arvalid;
  wire [63:0]m_axi_gmem_res_awaddr;
  wire [1:0]m_axi_gmem_res_awburst;
  wire [3:0]m_axi_gmem_res_awcache;
  wire [0:0]m_axi_gmem_res_awid;
  wire [7:0]m_axi_gmem_res_awlen;
  wire [1:0]m_axi_gmem_res_awlock;
  wire [2:0]m_axi_gmem_res_awprot;
  wire [3:0]m_axi_gmem_res_awqos;
  wire m_axi_gmem_res_awready;
  wire [3:0]m_axi_gmem_res_awregion;
  wire [2:0]m_axi_gmem_res_awsize;
  wire m_axi_gmem_res_awvalid;
  wire [0:0]m_axi_gmem_res_bid;
  wire m_axi_gmem_res_bready;
  wire [1:0]m_axi_gmem_res_bresp;
  wire m_axi_gmem_res_bvalid;
  wire [127:0]m_axi_gmem_res_rdata;
  wire [0:0]m_axi_gmem_res_rid;
  wire m_axi_gmem_res_rlast;
  wire m_axi_gmem_res_rready;
  wire [1:0]m_axi_gmem_res_rresp;
  wire m_axi_gmem_res_rvalid;
  wire [127:0]m_axi_gmem_res_wdata;
  wire [0:0]m_axi_gmem_res_wid;
  wire m_axi_gmem_res_wlast;
  wire m_axi_gmem_res_wready;
  wire [15:0]m_axi_gmem_res_wstrb;
  wire m_axi_gmem_res_wvalid;
  wire [63:0]m_axi_gmem_ts_araddr;
  wire [1:0]m_axi_gmem_ts_arburst;
  wire [3:0]m_axi_gmem_ts_arcache;
  wire [0:0]m_axi_gmem_ts_arid;
  wire [7:0]m_axi_gmem_ts_arlen;
  wire [1:0]m_axi_gmem_ts_arlock;
  wire [2:0]m_axi_gmem_ts_arprot;
  wire [3:0]m_axi_gmem_ts_arqos;
  wire m_axi_gmem_ts_arready;
  wire [3:0]m_axi_gmem_ts_arregion;
  wire [2:0]m_axi_gmem_ts_arsize;
  wire m_axi_gmem_ts_arvalid;
  wire [63:0]m_axi_gmem_ts_awaddr;
  wire [1:0]m_axi_gmem_ts_awburst;
  wire [3:0]m_axi_gmem_ts_awcache;
  wire [0:0]m_axi_gmem_ts_awid;
  wire [7:0]m_axi_gmem_ts_awlen;
  wire [1:0]m_axi_gmem_ts_awlock;
  wire [2:0]m_axi_gmem_ts_awprot;
  wire [3:0]m_axi_gmem_ts_awqos;
  wire m_axi_gmem_ts_awready;
  wire [3:0]m_axi_gmem_ts_awregion;
  wire [2:0]m_axi_gmem_ts_awsize;
  wire m_axi_gmem_ts_awvalid;
  wire [0:0]m_axi_gmem_ts_bid;
  wire m_axi_gmem_ts_bready;
  wire [1:0]m_axi_gmem_ts_bresp;
  wire m_axi_gmem_ts_bvalid;
  wire [63:0]m_axi_gmem_ts_rdata;
  wire [0:0]m_axi_gmem_ts_rid;
  wire m_axi_gmem_ts_rlast;
  wire m_axi_gmem_ts_rready;
  wire [1:0]m_axi_gmem_ts_rresp;
  wire m_axi_gmem_ts_rvalid;
  wire [63:0]m_axi_gmem_ts_wdata;
  wire [0:0]m_axi_gmem_ts_wid;
  wire m_axi_gmem_ts_wlast;
  wire m_axi_gmem_ts_wready;
  wire [7:0]m_axi_gmem_ts_wstrb;
  wire m_axi_gmem_ts_wvalid;
  wire [31:0]m_axis_features_tdata;
  wire [3:0]m_axis_features_tkeep;
  wire [0:0]m_axis_features_tlast;
  wire m_axis_features_tready;
  wire [3:0]m_axis_features_tstrb;
  wire m_axis_features_tvalid;
  wire [6:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [6:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;
  wire [63:0]s_axis_score_tdata;
  wire [7:0]s_axis_score_tkeep;
  wire [0:0]s_axis_score_tlast;
  wire s_axis_score_tready;
  wire [7:0]s_axis_score_tstrb;
  wire s_axis_score_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .cycle_rx_empty_n(cycle_rx_empty_n),
        .cycle_rx_rd_data(cycle_rx_rd_data),
        .cycle_rx_rd_en(cycle_rx_rd_en),
        .cycle_tx_empty_n(cycle_tx_empty_n),
        .cycle_tx_rd_data(cycle_tx_rd_data),
        .cycle_tx_rd_en(cycle_tx_rd_en),
        .interrupt(interrupt),
        .m_axi_gmem_in_araddr(m_axi_gmem_in_araddr),
        .m_axi_gmem_in_arburst(m_axi_gmem_in_arburst),
        .m_axi_gmem_in_arcache(m_axi_gmem_in_arcache),
        .m_axi_gmem_in_arid(m_axi_gmem_in_arid),
        .m_axi_gmem_in_arlen(m_axi_gmem_in_arlen),
        .m_axi_gmem_in_arlock(m_axi_gmem_in_arlock),
        .m_axi_gmem_in_arprot(m_axi_gmem_in_arprot),
        .m_axi_gmem_in_arqos(m_axi_gmem_in_arqos),
        .m_axi_gmem_in_arready(m_axi_gmem_in_arready),
        .m_axi_gmem_in_arregion(m_axi_gmem_in_arregion),
        .m_axi_gmem_in_arsize(m_axi_gmem_in_arsize),
        .m_axi_gmem_in_arvalid(m_axi_gmem_in_arvalid),
        .m_axi_gmem_in_awaddr(m_axi_gmem_in_awaddr),
        .m_axi_gmem_in_awburst(m_axi_gmem_in_awburst),
        .m_axi_gmem_in_awcache(m_axi_gmem_in_awcache),
        .m_axi_gmem_in_awid(m_axi_gmem_in_awid),
        .m_axi_gmem_in_awlen(m_axi_gmem_in_awlen),
        .m_axi_gmem_in_awlock(m_axi_gmem_in_awlock),
        .m_axi_gmem_in_awprot(m_axi_gmem_in_awprot),
        .m_axi_gmem_in_awqos(m_axi_gmem_in_awqos),
        .m_axi_gmem_in_awready(m_axi_gmem_in_awready),
        .m_axi_gmem_in_awregion(m_axi_gmem_in_awregion),
        .m_axi_gmem_in_awsize(m_axi_gmem_in_awsize),
        .m_axi_gmem_in_awvalid(m_axi_gmem_in_awvalid),
        .m_axi_gmem_in_bid(m_axi_gmem_in_bid),
        .m_axi_gmem_in_bready(m_axi_gmem_in_bready),
        .m_axi_gmem_in_bresp(m_axi_gmem_in_bresp),
        .m_axi_gmem_in_bvalid(m_axi_gmem_in_bvalid),
        .m_axi_gmem_in_rdata(m_axi_gmem_in_rdata),
        .m_axi_gmem_in_rid(m_axi_gmem_in_rid),
        .m_axi_gmem_in_rlast(m_axi_gmem_in_rlast),
        .m_axi_gmem_in_rready(m_axi_gmem_in_rready),
        .m_axi_gmem_in_rresp(m_axi_gmem_in_rresp),
        .m_axi_gmem_in_rvalid(m_axi_gmem_in_rvalid),
        .m_axi_gmem_in_wdata(m_axi_gmem_in_wdata),
        .m_axi_gmem_in_wid(m_axi_gmem_in_wid),
        .m_axi_gmem_in_wlast(m_axi_gmem_in_wlast),
        .m_axi_gmem_in_wready(m_axi_gmem_in_wready),
        .m_axi_gmem_in_wstrb(m_axi_gmem_in_wstrb),
        .m_axi_gmem_in_wvalid(m_axi_gmem_in_wvalid),
        .m_axi_gmem_res_araddr(m_axi_gmem_res_araddr),
        .m_axi_gmem_res_arburst(m_axi_gmem_res_arburst),
        .m_axi_gmem_res_arcache(m_axi_gmem_res_arcache),
        .m_axi_gmem_res_arid(m_axi_gmem_res_arid),
        .m_axi_gmem_res_arlen(m_axi_gmem_res_arlen),
        .m_axi_gmem_res_arlock(m_axi_gmem_res_arlock),
        .m_axi_gmem_res_arprot(m_axi_gmem_res_arprot),
        .m_axi_gmem_res_arqos(m_axi_gmem_res_arqos),
        .m_axi_gmem_res_arready(m_axi_gmem_res_arready),
        .m_axi_gmem_res_arregion(m_axi_gmem_res_arregion),
        .m_axi_gmem_res_arsize(m_axi_gmem_res_arsize),
        .m_axi_gmem_res_arvalid(m_axi_gmem_res_arvalid),
        .m_axi_gmem_res_awaddr(m_axi_gmem_res_awaddr),
        .m_axi_gmem_res_awburst(m_axi_gmem_res_awburst),
        .m_axi_gmem_res_awcache(m_axi_gmem_res_awcache),
        .m_axi_gmem_res_awid(m_axi_gmem_res_awid),
        .m_axi_gmem_res_awlen(m_axi_gmem_res_awlen),
        .m_axi_gmem_res_awlock(m_axi_gmem_res_awlock),
        .m_axi_gmem_res_awprot(m_axi_gmem_res_awprot),
        .m_axi_gmem_res_awqos(m_axi_gmem_res_awqos),
        .m_axi_gmem_res_awready(m_axi_gmem_res_awready),
        .m_axi_gmem_res_awregion(m_axi_gmem_res_awregion),
        .m_axi_gmem_res_awsize(m_axi_gmem_res_awsize),
        .m_axi_gmem_res_awvalid(m_axi_gmem_res_awvalid),
        .m_axi_gmem_res_bid(m_axi_gmem_res_bid),
        .m_axi_gmem_res_bready(m_axi_gmem_res_bready),
        .m_axi_gmem_res_bresp(m_axi_gmem_res_bresp),
        .m_axi_gmem_res_bvalid(m_axi_gmem_res_bvalid),
        .m_axi_gmem_res_rdata(m_axi_gmem_res_rdata),
        .m_axi_gmem_res_rid(m_axi_gmem_res_rid),
        .m_axi_gmem_res_rlast(m_axi_gmem_res_rlast),
        .m_axi_gmem_res_rready(m_axi_gmem_res_rready),
        .m_axi_gmem_res_rresp(m_axi_gmem_res_rresp),
        .m_axi_gmem_res_rvalid(m_axi_gmem_res_rvalid),
        .m_axi_gmem_res_wdata(m_axi_gmem_res_wdata),
        .m_axi_gmem_res_wid(m_axi_gmem_res_wid),
        .m_axi_gmem_res_wlast(m_axi_gmem_res_wlast),
        .m_axi_gmem_res_wready(m_axi_gmem_res_wready),
        .m_axi_gmem_res_wstrb(m_axi_gmem_res_wstrb),
        .m_axi_gmem_res_wvalid(m_axi_gmem_res_wvalid),
        .m_axi_gmem_ts_araddr(m_axi_gmem_ts_araddr),
        .m_axi_gmem_ts_arburst(m_axi_gmem_ts_arburst),
        .m_axi_gmem_ts_arcache(m_axi_gmem_ts_arcache),
        .m_axi_gmem_ts_arid(m_axi_gmem_ts_arid),
        .m_axi_gmem_ts_arlen(m_axi_gmem_ts_arlen),
        .m_axi_gmem_ts_arlock(m_axi_gmem_ts_arlock),
        .m_axi_gmem_ts_arprot(m_axi_gmem_ts_arprot),
        .m_axi_gmem_ts_arqos(m_axi_gmem_ts_arqos),
        .m_axi_gmem_ts_arready(m_axi_gmem_ts_arready),
        .m_axi_gmem_ts_arregion(m_axi_gmem_ts_arregion),
        .m_axi_gmem_ts_arsize(m_axi_gmem_ts_arsize),
        .m_axi_gmem_ts_arvalid(m_axi_gmem_ts_arvalid),
        .m_axi_gmem_ts_awaddr(m_axi_gmem_ts_awaddr),
        .m_axi_gmem_ts_awburst(m_axi_gmem_ts_awburst),
        .m_axi_gmem_ts_awcache(m_axi_gmem_ts_awcache),
        .m_axi_gmem_ts_awid(m_axi_gmem_ts_awid),
        .m_axi_gmem_ts_awlen(m_axi_gmem_ts_awlen),
        .m_axi_gmem_ts_awlock(m_axi_gmem_ts_awlock),
        .m_axi_gmem_ts_awprot(m_axi_gmem_ts_awprot),
        .m_axi_gmem_ts_awqos(m_axi_gmem_ts_awqos),
        .m_axi_gmem_ts_awready(m_axi_gmem_ts_awready),
        .m_axi_gmem_ts_awregion(m_axi_gmem_ts_awregion),
        .m_axi_gmem_ts_awsize(m_axi_gmem_ts_awsize),
        .m_axi_gmem_ts_awvalid(m_axi_gmem_ts_awvalid),
        .m_axi_gmem_ts_bid(m_axi_gmem_ts_bid),
        .m_axi_gmem_ts_bready(m_axi_gmem_ts_bready),
        .m_axi_gmem_ts_bresp(m_axi_gmem_ts_bresp),
        .m_axi_gmem_ts_bvalid(m_axi_gmem_ts_bvalid),
        .m_axi_gmem_ts_rdata(m_axi_gmem_ts_rdata),
        .m_axi_gmem_ts_rid(m_axi_gmem_ts_rid),
        .m_axi_gmem_ts_rlast(m_axi_gmem_ts_rlast),
        .m_axi_gmem_ts_rready(m_axi_gmem_ts_rready),
        .m_axi_gmem_ts_rresp(m_axi_gmem_ts_rresp),
        .m_axi_gmem_ts_rvalid(m_axi_gmem_ts_rvalid),
        .m_axi_gmem_ts_wdata(m_axi_gmem_ts_wdata),
        .m_axi_gmem_ts_wid(m_axi_gmem_ts_wid),
        .m_axi_gmem_ts_wlast(m_axi_gmem_ts_wlast),
        .m_axi_gmem_ts_wready(m_axi_gmem_ts_wready),
        .m_axi_gmem_ts_wstrb(m_axi_gmem_ts_wstrb),
        .m_axi_gmem_ts_wvalid(m_axi_gmem_ts_wvalid),
        .m_axis_features_tdata(m_axis_features_tdata),
        .m_axis_features_tkeep(m_axis_features_tkeep),
        .m_axis_features_tlast(m_axis_features_tlast),
        .m_axis_features_tready(m_axis_features_tready),
        .m_axis_features_tstrb(m_axis_features_tstrb),
        .m_axis_features_tvalid(m_axis_features_tvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid),
        .s_axis_score_tdata(s_axis_score_tdata),
        .s_axis_score_tkeep(s_axis_score_tkeep),
        .s_axis_score_tlast(s_axis_score_tlast),
        .s_axis_score_tready(s_axis_score_tready),
        .s_axis_score_tstrb(s_axis_score_tstrb),
        .s_axis_score_tvalid(s_axis_score_tvalid));
endmodule
