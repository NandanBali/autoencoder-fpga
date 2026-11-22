//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sun Nov 22 22:39:14 2026
//Host        : fedora running 64-bit unknown
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_gmem_in:m_axi_gmem_res:m_axi_gmem_ts:m_axis_features:s_axi_control:s_axis_score, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx " *) input cycle_rx_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx " *) input [63:0]cycle_rx_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_rx " *) output cycle_rx_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx " *) input cycle_tx_empty_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx " *) input [63:0]cycle_tx_rd_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_read:1.0 cycle_tx " *) output cycle_tx_rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_in, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_in_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [1:0]m_axi_gmem_in_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [0:0]m_axi_gmem_in_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [7:0]m_axi_gmem_in_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [1:0]m_axi_gmem_in_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [2:0]m_axi_gmem_in_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [2:0]m_axi_gmem_in_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [63:0]m_axi_gmem_in_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [1:0]m_axi_gmem_in_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [0:0]m_axi_gmem_in_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [7:0]m_axi_gmem_in_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [1:0]m_axi_gmem_in_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [2:0]m_axi_gmem_in_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [2:0]m_axi_gmem_in_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input [0:0]m_axi_gmem_in_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input [1:0]m_axi_gmem_in_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input [31:0]m_axi_gmem_in_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input [0:0]m_axi_gmem_in_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input [1:0]m_axi_gmem_in_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [31:0]m_axi_gmem_in_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [0:0]m_axi_gmem_in_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) input m_axi_gmem_in_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output [3:0]m_axi_gmem_in_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_in " *) output m_axi_gmem_in_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_res, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 128, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_res_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [1:0]m_axi_gmem_res_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [0:0]m_axi_gmem_res_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [7:0]m_axi_gmem_res_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [1:0]m_axi_gmem_res_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [2:0]m_axi_gmem_res_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [2:0]m_axi_gmem_res_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [63:0]m_axi_gmem_res_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [1:0]m_axi_gmem_res_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [0:0]m_axi_gmem_res_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [7:0]m_axi_gmem_res_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [1:0]m_axi_gmem_res_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [2:0]m_axi_gmem_res_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [3:0]m_axi_gmem_res_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [2:0]m_axi_gmem_res_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input [0:0]m_axi_gmem_res_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input [1:0]m_axi_gmem_res_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input [127:0]m_axi_gmem_res_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input [0:0]m_axi_gmem_res_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input [1:0]m_axi_gmem_res_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [127:0]m_axi_gmem_res_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [0:0]m_axi_gmem_res_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) input m_axi_gmem_res_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output [15:0]m_axi_gmem_res_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_res " *) output m_axi_gmem_res_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem_ts, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 64, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_ts_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [1:0]m_axi_gmem_ts_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [0:0]m_axi_gmem_ts_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [7:0]m_axi_gmem_ts_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [1:0]m_axi_gmem_ts_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [2:0]m_axi_gmem_ts_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [2:0]m_axi_gmem_ts_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [63:0]m_axi_gmem_ts_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [1:0]m_axi_gmem_ts_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [0:0]m_axi_gmem_ts_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [7:0]m_axi_gmem_ts_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [1:0]m_axi_gmem_ts_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [2:0]m_axi_gmem_ts_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [3:0]m_axi_gmem_ts_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [2:0]m_axi_gmem_ts_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input [0:0]m_axi_gmem_ts_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input [1:0]m_axi_gmem_ts_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input [63:0]m_axi_gmem_ts_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input [0:0]m_axi_gmem_ts_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input [1:0]m_axi_gmem_ts_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [63:0]m_axi_gmem_ts_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [0:0]m_axi_gmem_ts_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) input m_axi_gmem_ts_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output [7:0]m_axi_gmem_ts_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem_ts " *) output m_axi_gmem_ts_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_features, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_features_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) output [3:0]m_axis_features_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) output [0:0]m_axis_features_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) input m_axis_features_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) output [3:0]m_axis_features_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_features " *) output m_axis_features_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 100000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [6:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [6:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control " *) input s_axi_control_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_score, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [63:0]s_axis_score_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) input [7:0]s_axis_score_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) input [0:0]s_axis_score_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) output s_axis_score_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) input [7:0]s_axis_score_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_score " *) input s_axis_score_tvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire hls_inst_cycle_rx_EMPTY_N;
  wire [63:0]hls_inst_cycle_rx_RD_DATA;
  wire hls_inst_cycle_rx_RD_EN;
  wire hls_inst_cycle_tx_EMPTY_N;
  wire [63:0]hls_inst_cycle_tx_RD_DATA;
  wire hls_inst_cycle_tx_RD_EN;
  wire hls_inst_interrupt;
  wire [63:0]hls_inst_m_axi_gmem_in_ARADDR;
  wire [1:0]hls_inst_m_axi_gmem_in_ARBURST;
  wire [3:0]hls_inst_m_axi_gmem_in_ARCACHE;
  wire [0:0]hls_inst_m_axi_gmem_in_ARID;
  wire [7:0]hls_inst_m_axi_gmem_in_ARLEN;
  wire [1:0]hls_inst_m_axi_gmem_in_ARLOCK;
  wire [2:0]hls_inst_m_axi_gmem_in_ARPROT;
  wire [3:0]hls_inst_m_axi_gmem_in_ARQOS;
  wire hls_inst_m_axi_gmem_in_ARREADY;
  wire [3:0]hls_inst_m_axi_gmem_in_ARREGION;
  wire [2:0]hls_inst_m_axi_gmem_in_ARSIZE;
  wire hls_inst_m_axi_gmem_in_ARVALID;
  wire [63:0]hls_inst_m_axi_gmem_in_AWADDR;
  wire [1:0]hls_inst_m_axi_gmem_in_AWBURST;
  wire [3:0]hls_inst_m_axi_gmem_in_AWCACHE;
  wire [0:0]hls_inst_m_axi_gmem_in_AWID;
  wire [7:0]hls_inst_m_axi_gmem_in_AWLEN;
  wire [1:0]hls_inst_m_axi_gmem_in_AWLOCK;
  wire [2:0]hls_inst_m_axi_gmem_in_AWPROT;
  wire [3:0]hls_inst_m_axi_gmem_in_AWQOS;
  wire hls_inst_m_axi_gmem_in_AWREADY;
  wire [3:0]hls_inst_m_axi_gmem_in_AWREGION;
  wire [2:0]hls_inst_m_axi_gmem_in_AWSIZE;
  wire hls_inst_m_axi_gmem_in_AWVALID;
  wire [0:0]hls_inst_m_axi_gmem_in_BID;
  wire hls_inst_m_axi_gmem_in_BREADY;
  wire [1:0]hls_inst_m_axi_gmem_in_BRESP;
  wire hls_inst_m_axi_gmem_in_BVALID;
  wire [31:0]hls_inst_m_axi_gmem_in_RDATA;
  wire [0:0]hls_inst_m_axi_gmem_in_RID;
  wire hls_inst_m_axi_gmem_in_RLAST;
  wire hls_inst_m_axi_gmem_in_RREADY;
  wire [1:0]hls_inst_m_axi_gmem_in_RRESP;
  wire hls_inst_m_axi_gmem_in_RVALID;
  wire [31:0]hls_inst_m_axi_gmem_in_WDATA;
  wire [0:0]hls_inst_m_axi_gmem_in_WID;
  wire hls_inst_m_axi_gmem_in_WLAST;
  wire hls_inst_m_axi_gmem_in_WREADY;
  wire [3:0]hls_inst_m_axi_gmem_in_WSTRB;
  wire hls_inst_m_axi_gmem_in_WVALID;
  wire [63:0]hls_inst_m_axi_gmem_res_ARADDR;
  wire [1:0]hls_inst_m_axi_gmem_res_ARBURST;
  wire [3:0]hls_inst_m_axi_gmem_res_ARCACHE;
  wire [0:0]hls_inst_m_axi_gmem_res_ARID;
  wire [7:0]hls_inst_m_axi_gmem_res_ARLEN;
  wire [1:0]hls_inst_m_axi_gmem_res_ARLOCK;
  wire [2:0]hls_inst_m_axi_gmem_res_ARPROT;
  wire [3:0]hls_inst_m_axi_gmem_res_ARQOS;
  wire hls_inst_m_axi_gmem_res_ARREADY;
  wire [3:0]hls_inst_m_axi_gmem_res_ARREGION;
  wire [2:0]hls_inst_m_axi_gmem_res_ARSIZE;
  wire hls_inst_m_axi_gmem_res_ARVALID;
  wire [63:0]hls_inst_m_axi_gmem_res_AWADDR;
  wire [1:0]hls_inst_m_axi_gmem_res_AWBURST;
  wire [3:0]hls_inst_m_axi_gmem_res_AWCACHE;
  wire [0:0]hls_inst_m_axi_gmem_res_AWID;
  wire [7:0]hls_inst_m_axi_gmem_res_AWLEN;
  wire [1:0]hls_inst_m_axi_gmem_res_AWLOCK;
  wire [2:0]hls_inst_m_axi_gmem_res_AWPROT;
  wire [3:0]hls_inst_m_axi_gmem_res_AWQOS;
  wire hls_inst_m_axi_gmem_res_AWREADY;
  wire [3:0]hls_inst_m_axi_gmem_res_AWREGION;
  wire [2:0]hls_inst_m_axi_gmem_res_AWSIZE;
  wire hls_inst_m_axi_gmem_res_AWVALID;
  wire [0:0]hls_inst_m_axi_gmem_res_BID;
  wire hls_inst_m_axi_gmem_res_BREADY;
  wire [1:0]hls_inst_m_axi_gmem_res_BRESP;
  wire hls_inst_m_axi_gmem_res_BVALID;
  wire [127:0]hls_inst_m_axi_gmem_res_RDATA;
  wire [0:0]hls_inst_m_axi_gmem_res_RID;
  wire hls_inst_m_axi_gmem_res_RLAST;
  wire hls_inst_m_axi_gmem_res_RREADY;
  wire [1:0]hls_inst_m_axi_gmem_res_RRESP;
  wire hls_inst_m_axi_gmem_res_RVALID;
  wire [127:0]hls_inst_m_axi_gmem_res_WDATA;
  wire [0:0]hls_inst_m_axi_gmem_res_WID;
  wire hls_inst_m_axi_gmem_res_WLAST;
  wire hls_inst_m_axi_gmem_res_WREADY;
  wire [15:0]hls_inst_m_axi_gmem_res_WSTRB;
  wire hls_inst_m_axi_gmem_res_WVALID;
  wire [63:0]hls_inst_m_axi_gmem_ts_ARADDR;
  wire [1:0]hls_inst_m_axi_gmem_ts_ARBURST;
  wire [3:0]hls_inst_m_axi_gmem_ts_ARCACHE;
  wire [0:0]hls_inst_m_axi_gmem_ts_ARID;
  wire [7:0]hls_inst_m_axi_gmem_ts_ARLEN;
  wire [1:0]hls_inst_m_axi_gmem_ts_ARLOCK;
  wire [2:0]hls_inst_m_axi_gmem_ts_ARPROT;
  wire [3:0]hls_inst_m_axi_gmem_ts_ARQOS;
  wire hls_inst_m_axi_gmem_ts_ARREADY;
  wire [3:0]hls_inst_m_axi_gmem_ts_ARREGION;
  wire [2:0]hls_inst_m_axi_gmem_ts_ARSIZE;
  wire hls_inst_m_axi_gmem_ts_ARVALID;
  wire [63:0]hls_inst_m_axi_gmem_ts_AWADDR;
  wire [1:0]hls_inst_m_axi_gmem_ts_AWBURST;
  wire [3:0]hls_inst_m_axi_gmem_ts_AWCACHE;
  wire [0:0]hls_inst_m_axi_gmem_ts_AWID;
  wire [7:0]hls_inst_m_axi_gmem_ts_AWLEN;
  wire [1:0]hls_inst_m_axi_gmem_ts_AWLOCK;
  wire [2:0]hls_inst_m_axi_gmem_ts_AWPROT;
  wire [3:0]hls_inst_m_axi_gmem_ts_AWQOS;
  wire hls_inst_m_axi_gmem_ts_AWREADY;
  wire [3:0]hls_inst_m_axi_gmem_ts_AWREGION;
  wire [2:0]hls_inst_m_axi_gmem_ts_AWSIZE;
  wire hls_inst_m_axi_gmem_ts_AWVALID;
  wire [0:0]hls_inst_m_axi_gmem_ts_BID;
  wire hls_inst_m_axi_gmem_ts_BREADY;
  wire [1:0]hls_inst_m_axi_gmem_ts_BRESP;
  wire hls_inst_m_axi_gmem_ts_BVALID;
  wire [63:0]hls_inst_m_axi_gmem_ts_RDATA;
  wire [0:0]hls_inst_m_axi_gmem_ts_RID;
  wire hls_inst_m_axi_gmem_ts_RLAST;
  wire hls_inst_m_axi_gmem_ts_RREADY;
  wire [1:0]hls_inst_m_axi_gmem_ts_RRESP;
  wire hls_inst_m_axi_gmem_ts_RVALID;
  wire [63:0]hls_inst_m_axi_gmem_ts_WDATA;
  wire [0:0]hls_inst_m_axi_gmem_ts_WID;
  wire hls_inst_m_axi_gmem_ts_WLAST;
  wire hls_inst_m_axi_gmem_ts_WREADY;
  wire [7:0]hls_inst_m_axi_gmem_ts_WSTRB;
  wire hls_inst_m_axi_gmem_ts_WVALID;
  wire [31:0]hls_inst_m_axis_features_TDATA;
  wire [3:0]hls_inst_m_axis_features_TKEEP;
  wire [0:0]hls_inst_m_axis_features_TLAST;
  wire hls_inst_m_axis_features_TREADY;
  wire [3:0]hls_inst_m_axis_features_TSTRB;
  wire hls_inst_m_axis_features_TVALID;
  wire [6:0]s_axi_control_0_1_ARADDR;
  wire s_axi_control_0_1_ARREADY;
  wire s_axi_control_0_1_ARVALID;
  wire [6:0]s_axi_control_0_1_AWADDR;
  wire s_axi_control_0_1_AWREADY;
  wire s_axi_control_0_1_AWVALID;
  wire s_axi_control_0_1_BREADY;
  wire [1:0]s_axi_control_0_1_BRESP;
  wire s_axi_control_0_1_BVALID;
  wire [31:0]s_axi_control_0_1_RDATA;
  wire s_axi_control_0_1_RREADY;
  wire [1:0]s_axi_control_0_1_RRESP;
  wire s_axi_control_0_1_RVALID;
  wire [31:0]s_axi_control_0_1_WDATA;
  wire s_axi_control_0_1_WREADY;
  wire [3:0]s_axi_control_0_1_WSTRB;
  wire s_axi_control_0_1_WVALID;
  wire [63:0]s_axis_score_0_1_TDATA;
  wire [7:0]s_axis_score_0_1_TKEEP;
  wire [0:0]s_axis_score_0_1_TLAST;
  wire s_axis_score_0_1_TREADY;
  wire [7:0]s_axis_score_0_1_TSTRB;
  wire s_axis_score_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign cycle_rx_rd_en = hls_inst_cycle_rx_RD_EN;
  assign cycle_tx_rd_en = hls_inst_cycle_tx_RD_EN;
  assign hls_inst_cycle_rx_EMPTY_N = cycle_rx_empty_n;
  assign hls_inst_cycle_rx_RD_DATA = cycle_rx_rd_data[63:0];
  assign hls_inst_cycle_tx_EMPTY_N = cycle_tx_empty_n;
  assign hls_inst_cycle_tx_RD_DATA = cycle_tx_rd_data[63:0];
  assign hls_inst_m_axi_gmem_in_ARREADY = m_axi_gmem_in_arready;
  assign hls_inst_m_axi_gmem_in_AWREADY = m_axi_gmem_in_awready;
  assign hls_inst_m_axi_gmem_in_BID = m_axi_gmem_in_bid[0];
  assign hls_inst_m_axi_gmem_in_BRESP = m_axi_gmem_in_bresp[1:0];
  assign hls_inst_m_axi_gmem_in_BVALID = m_axi_gmem_in_bvalid;
  assign hls_inst_m_axi_gmem_in_RDATA = m_axi_gmem_in_rdata[31:0];
  assign hls_inst_m_axi_gmem_in_RID = m_axi_gmem_in_rid[0];
  assign hls_inst_m_axi_gmem_in_RLAST = m_axi_gmem_in_rlast;
  assign hls_inst_m_axi_gmem_in_RRESP = m_axi_gmem_in_rresp[1:0];
  assign hls_inst_m_axi_gmem_in_RVALID = m_axi_gmem_in_rvalid;
  assign hls_inst_m_axi_gmem_in_WREADY = m_axi_gmem_in_wready;
  assign hls_inst_m_axi_gmem_res_ARREADY = m_axi_gmem_res_arready;
  assign hls_inst_m_axi_gmem_res_AWREADY = m_axi_gmem_res_awready;
  assign hls_inst_m_axi_gmem_res_BID = m_axi_gmem_res_bid[0];
  assign hls_inst_m_axi_gmem_res_BRESP = m_axi_gmem_res_bresp[1:0];
  assign hls_inst_m_axi_gmem_res_BVALID = m_axi_gmem_res_bvalid;
  assign hls_inst_m_axi_gmem_res_RDATA = m_axi_gmem_res_rdata[127:0];
  assign hls_inst_m_axi_gmem_res_RID = m_axi_gmem_res_rid[0];
  assign hls_inst_m_axi_gmem_res_RLAST = m_axi_gmem_res_rlast;
  assign hls_inst_m_axi_gmem_res_RRESP = m_axi_gmem_res_rresp[1:0];
  assign hls_inst_m_axi_gmem_res_RVALID = m_axi_gmem_res_rvalid;
  assign hls_inst_m_axi_gmem_res_WREADY = m_axi_gmem_res_wready;
  assign hls_inst_m_axi_gmem_ts_ARREADY = m_axi_gmem_ts_arready;
  assign hls_inst_m_axi_gmem_ts_AWREADY = m_axi_gmem_ts_awready;
  assign hls_inst_m_axi_gmem_ts_BID = m_axi_gmem_ts_bid[0];
  assign hls_inst_m_axi_gmem_ts_BRESP = m_axi_gmem_ts_bresp[1:0];
  assign hls_inst_m_axi_gmem_ts_BVALID = m_axi_gmem_ts_bvalid;
  assign hls_inst_m_axi_gmem_ts_RDATA = m_axi_gmem_ts_rdata[63:0];
  assign hls_inst_m_axi_gmem_ts_RID = m_axi_gmem_ts_rid[0];
  assign hls_inst_m_axi_gmem_ts_RLAST = m_axi_gmem_ts_rlast;
  assign hls_inst_m_axi_gmem_ts_RRESP = m_axi_gmem_ts_rresp[1:0];
  assign hls_inst_m_axi_gmem_ts_RVALID = m_axi_gmem_ts_rvalid;
  assign hls_inst_m_axi_gmem_ts_WREADY = m_axi_gmem_ts_wready;
  assign hls_inst_m_axis_features_TREADY = m_axis_features_tready;
  assign interrupt = hls_inst_interrupt;
  assign m_axi_gmem_in_araddr[63:0] = hls_inst_m_axi_gmem_in_ARADDR;
  assign m_axi_gmem_in_arburst[1:0] = hls_inst_m_axi_gmem_in_ARBURST;
  assign m_axi_gmem_in_arcache[3:0] = hls_inst_m_axi_gmem_in_ARCACHE;
  assign m_axi_gmem_in_arid[0] = hls_inst_m_axi_gmem_in_ARID;
  assign m_axi_gmem_in_arlen[7:0] = hls_inst_m_axi_gmem_in_ARLEN;
  assign m_axi_gmem_in_arlock[1:0] = hls_inst_m_axi_gmem_in_ARLOCK;
  assign m_axi_gmem_in_arprot[2:0] = hls_inst_m_axi_gmem_in_ARPROT;
  assign m_axi_gmem_in_arqos[3:0] = hls_inst_m_axi_gmem_in_ARQOS;
  assign m_axi_gmem_in_arregion[3:0] = hls_inst_m_axi_gmem_in_ARREGION;
  assign m_axi_gmem_in_arsize[2:0] = hls_inst_m_axi_gmem_in_ARSIZE;
  assign m_axi_gmem_in_arvalid = hls_inst_m_axi_gmem_in_ARVALID;
  assign m_axi_gmem_in_awaddr[63:0] = hls_inst_m_axi_gmem_in_AWADDR;
  assign m_axi_gmem_in_awburst[1:0] = hls_inst_m_axi_gmem_in_AWBURST;
  assign m_axi_gmem_in_awcache[3:0] = hls_inst_m_axi_gmem_in_AWCACHE;
  assign m_axi_gmem_in_awid[0] = hls_inst_m_axi_gmem_in_AWID;
  assign m_axi_gmem_in_awlen[7:0] = hls_inst_m_axi_gmem_in_AWLEN;
  assign m_axi_gmem_in_awlock[1:0] = hls_inst_m_axi_gmem_in_AWLOCK;
  assign m_axi_gmem_in_awprot[2:0] = hls_inst_m_axi_gmem_in_AWPROT;
  assign m_axi_gmem_in_awqos[3:0] = hls_inst_m_axi_gmem_in_AWQOS;
  assign m_axi_gmem_in_awregion[3:0] = hls_inst_m_axi_gmem_in_AWREGION;
  assign m_axi_gmem_in_awsize[2:0] = hls_inst_m_axi_gmem_in_AWSIZE;
  assign m_axi_gmem_in_awvalid = hls_inst_m_axi_gmem_in_AWVALID;
  assign m_axi_gmem_in_bready = hls_inst_m_axi_gmem_in_BREADY;
  assign m_axi_gmem_in_rready = hls_inst_m_axi_gmem_in_RREADY;
  assign m_axi_gmem_in_wdata[31:0] = hls_inst_m_axi_gmem_in_WDATA;
  assign m_axi_gmem_in_wid[0] = hls_inst_m_axi_gmem_in_WID;
  assign m_axi_gmem_in_wlast = hls_inst_m_axi_gmem_in_WLAST;
  assign m_axi_gmem_in_wstrb[3:0] = hls_inst_m_axi_gmem_in_WSTRB;
  assign m_axi_gmem_in_wvalid = hls_inst_m_axi_gmem_in_WVALID;
  assign m_axi_gmem_res_araddr[63:0] = hls_inst_m_axi_gmem_res_ARADDR;
  assign m_axi_gmem_res_arburst[1:0] = hls_inst_m_axi_gmem_res_ARBURST;
  assign m_axi_gmem_res_arcache[3:0] = hls_inst_m_axi_gmem_res_ARCACHE;
  assign m_axi_gmem_res_arid[0] = hls_inst_m_axi_gmem_res_ARID;
  assign m_axi_gmem_res_arlen[7:0] = hls_inst_m_axi_gmem_res_ARLEN;
  assign m_axi_gmem_res_arlock[1:0] = hls_inst_m_axi_gmem_res_ARLOCK;
  assign m_axi_gmem_res_arprot[2:0] = hls_inst_m_axi_gmem_res_ARPROT;
  assign m_axi_gmem_res_arqos[3:0] = hls_inst_m_axi_gmem_res_ARQOS;
  assign m_axi_gmem_res_arregion[3:0] = hls_inst_m_axi_gmem_res_ARREGION;
  assign m_axi_gmem_res_arsize[2:0] = hls_inst_m_axi_gmem_res_ARSIZE;
  assign m_axi_gmem_res_arvalid = hls_inst_m_axi_gmem_res_ARVALID;
  assign m_axi_gmem_res_awaddr[63:0] = hls_inst_m_axi_gmem_res_AWADDR;
  assign m_axi_gmem_res_awburst[1:0] = hls_inst_m_axi_gmem_res_AWBURST;
  assign m_axi_gmem_res_awcache[3:0] = hls_inst_m_axi_gmem_res_AWCACHE;
  assign m_axi_gmem_res_awid[0] = hls_inst_m_axi_gmem_res_AWID;
  assign m_axi_gmem_res_awlen[7:0] = hls_inst_m_axi_gmem_res_AWLEN;
  assign m_axi_gmem_res_awlock[1:0] = hls_inst_m_axi_gmem_res_AWLOCK;
  assign m_axi_gmem_res_awprot[2:0] = hls_inst_m_axi_gmem_res_AWPROT;
  assign m_axi_gmem_res_awqos[3:0] = hls_inst_m_axi_gmem_res_AWQOS;
  assign m_axi_gmem_res_awregion[3:0] = hls_inst_m_axi_gmem_res_AWREGION;
  assign m_axi_gmem_res_awsize[2:0] = hls_inst_m_axi_gmem_res_AWSIZE;
  assign m_axi_gmem_res_awvalid = hls_inst_m_axi_gmem_res_AWVALID;
  assign m_axi_gmem_res_bready = hls_inst_m_axi_gmem_res_BREADY;
  assign m_axi_gmem_res_rready = hls_inst_m_axi_gmem_res_RREADY;
  assign m_axi_gmem_res_wdata[127:0] = hls_inst_m_axi_gmem_res_WDATA;
  assign m_axi_gmem_res_wid[0] = hls_inst_m_axi_gmem_res_WID;
  assign m_axi_gmem_res_wlast = hls_inst_m_axi_gmem_res_WLAST;
  assign m_axi_gmem_res_wstrb[15:0] = hls_inst_m_axi_gmem_res_WSTRB;
  assign m_axi_gmem_res_wvalid = hls_inst_m_axi_gmem_res_WVALID;
  assign m_axi_gmem_ts_araddr[63:0] = hls_inst_m_axi_gmem_ts_ARADDR;
  assign m_axi_gmem_ts_arburst[1:0] = hls_inst_m_axi_gmem_ts_ARBURST;
  assign m_axi_gmem_ts_arcache[3:0] = hls_inst_m_axi_gmem_ts_ARCACHE;
  assign m_axi_gmem_ts_arid[0] = hls_inst_m_axi_gmem_ts_ARID;
  assign m_axi_gmem_ts_arlen[7:0] = hls_inst_m_axi_gmem_ts_ARLEN;
  assign m_axi_gmem_ts_arlock[1:0] = hls_inst_m_axi_gmem_ts_ARLOCK;
  assign m_axi_gmem_ts_arprot[2:0] = hls_inst_m_axi_gmem_ts_ARPROT;
  assign m_axi_gmem_ts_arqos[3:0] = hls_inst_m_axi_gmem_ts_ARQOS;
  assign m_axi_gmem_ts_arregion[3:0] = hls_inst_m_axi_gmem_ts_ARREGION;
  assign m_axi_gmem_ts_arsize[2:0] = hls_inst_m_axi_gmem_ts_ARSIZE;
  assign m_axi_gmem_ts_arvalid = hls_inst_m_axi_gmem_ts_ARVALID;
  assign m_axi_gmem_ts_awaddr[63:0] = hls_inst_m_axi_gmem_ts_AWADDR;
  assign m_axi_gmem_ts_awburst[1:0] = hls_inst_m_axi_gmem_ts_AWBURST;
  assign m_axi_gmem_ts_awcache[3:0] = hls_inst_m_axi_gmem_ts_AWCACHE;
  assign m_axi_gmem_ts_awid[0] = hls_inst_m_axi_gmem_ts_AWID;
  assign m_axi_gmem_ts_awlen[7:0] = hls_inst_m_axi_gmem_ts_AWLEN;
  assign m_axi_gmem_ts_awlock[1:0] = hls_inst_m_axi_gmem_ts_AWLOCK;
  assign m_axi_gmem_ts_awprot[2:0] = hls_inst_m_axi_gmem_ts_AWPROT;
  assign m_axi_gmem_ts_awqos[3:0] = hls_inst_m_axi_gmem_ts_AWQOS;
  assign m_axi_gmem_ts_awregion[3:0] = hls_inst_m_axi_gmem_ts_AWREGION;
  assign m_axi_gmem_ts_awsize[2:0] = hls_inst_m_axi_gmem_ts_AWSIZE;
  assign m_axi_gmem_ts_awvalid = hls_inst_m_axi_gmem_ts_AWVALID;
  assign m_axi_gmem_ts_bready = hls_inst_m_axi_gmem_ts_BREADY;
  assign m_axi_gmem_ts_rready = hls_inst_m_axi_gmem_ts_RREADY;
  assign m_axi_gmem_ts_wdata[63:0] = hls_inst_m_axi_gmem_ts_WDATA;
  assign m_axi_gmem_ts_wid[0] = hls_inst_m_axi_gmem_ts_WID;
  assign m_axi_gmem_ts_wlast = hls_inst_m_axi_gmem_ts_WLAST;
  assign m_axi_gmem_ts_wstrb[7:0] = hls_inst_m_axi_gmem_ts_WSTRB;
  assign m_axi_gmem_ts_wvalid = hls_inst_m_axi_gmem_ts_WVALID;
  assign m_axis_features_tdata[31:0] = hls_inst_m_axis_features_TDATA;
  assign m_axis_features_tkeep[3:0] = hls_inst_m_axis_features_TKEEP;
  assign m_axis_features_tlast[0] = hls_inst_m_axis_features_TLAST;
  assign m_axis_features_tstrb[3:0] = hls_inst_m_axis_features_TSTRB;
  assign m_axis_features_tvalid = hls_inst_m_axis_features_TVALID;
  assign s_axi_control_0_1_ARADDR = s_axi_control_araddr[6:0];
  assign s_axi_control_0_1_ARVALID = s_axi_control_arvalid;
  assign s_axi_control_0_1_AWADDR = s_axi_control_awaddr[6:0];
  assign s_axi_control_0_1_AWVALID = s_axi_control_awvalid;
  assign s_axi_control_0_1_BREADY = s_axi_control_bready;
  assign s_axi_control_0_1_RREADY = s_axi_control_rready;
  assign s_axi_control_0_1_WDATA = s_axi_control_wdata[31:0];
  assign s_axi_control_0_1_WSTRB = s_axi_control_wstrb[3:0];
  assign s_axi_control_0_1_WVALID = s_axi_control_wvalid;
  assign s_axi_control_arready = s_axi_control_0_1_ARREADY;
  assign s_axi_control_awready = s_axi_control_0_1_AWREADY;
  assign s_axi_control_bresp[1:0] = s_axi_control_0_1_BRESP;
  assign s_axi_control_bvalid = s_axi_control_0_1_BVALID;
  assign s_axi_control_rdata[31:0] = s_axi_control_0_1_RDATA;
  assign s_axi_control_rresp[1:0] = s_axi_control_0_1_RRESP;
  assign s_axi_control_rvalid = s_axi_control_0_1_RVALID;
  assign s_axi_control_wready = s_axi_control_0_1_WREADY;
  assign s_axis_score_0_1_TDATA = s_axis_score_tdata[63:0];
  assign s_axis_score_0_1_TKEEP = s_axis_score_tkeep[7:0];
  assign s_axis_score_0_1_TLAST = s_axis_score_tlast[0];
  assign s_axis_score_0_1_TSTRB = s_axis_score_tstrb[7:0];
  assign s_axis_score_0_1_TVALID = s_axis_score_tvalid;
  assign s_axis_score_tready = s_axis_score_0_1_TREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .cycle_rx_dout(hls_inst_cycle_rx_RD_DATA),
        .cycle_rx_empty_n(hls_inst_cycle_rx_EMPTY_N),
        .cycle_rx_read(hls_inst_cycle_rx_RD_EN),
        .cycle_tx_dout(hls_inst_cycle_tx_RD_DATA),
        .cycle_tx_empty_n(hls_inst_cycle_tx_EMPTY_N),
        .cycle_tx_read(hls_inst_cycle_tx_RD_EN),
        .interrupt(hls_inst_interrupt),
        .m_axi_gmem_in_ARADDR(hls_inst_m_axi_gmem_in_ARADDR),
        .m_axi_gmem_in_ARBURST(hls_inst_m_axi_gmem_in_ARBURST),
        .m_axi_gmem_in_ARCACHE(hls_inst_m_axi_gmem_in_ARCACHE),
        .m_axi_gmem_in_ARID(hls_inst_m_axi_gmem_in_ARID),
        .m_axi_gmem_in_ARLEN(hls_inst_m_axi_gmem_in_ARLEN),
        .m_axi_gmem_in_ARLOCK(hls_inst_m_axi_gmem_in_ARLOCK),
        .m_axi_gmem_in_ARPROT(hls_inst_m_axi_gmem_in_ARPROT),
        .m_axi_gmem_in_ARQOS(hls_inst_m_axi_gmem_in_ARQOS),
        .m_axi_gmem_in_ARREADY(hls_inst_m_axi_gmem_in_ARREADY),
        .m_axi_gmem_in_ARREGION(hls_inst_m_axi_gmem_in_ARREGION),
        .m_axi_gmem_in_ARSIZE(hls_inst_m_axi_gmem_in_ARSIZE),
        .m_axi_gmem_in_ARVALID(hls_inst_m_axi_gmem_in_ARVALID),
        .m_axi_gmem_in_AWADDR(hls_inst_m_axi_gmem_in_AWADDR),
        .m_axi_gmem_in_AWBURST(hls_inst_m_axi_gmem_in_AWBURST),
        .m_axi_gmem_in_AWCACHE(hls_inst_m_axi_gmem_in_AWCACHE),
        .m_axi_gmem_in_AWID(hls_inst_m_axi_gmem_in_AWID),
        .m_axi_gmem_in_AWLEN(hls_inst_m_axi_gmem_in_AWLEN),
        .m_axi_gmem_in_AWLOCK(hls_inst_m_axi_gmem_in_AWLOCK),
        .m_axi_gmem_in_AWPROT(hls_inst_m_axi_gmem_in_AWPROT),
        .m_axi_gmem_in_AWQOS(hls_inst_m_axi_gmem_in_AWQOS),
        .m_axi_gmem_in_AWREADY(hls_inst_m_axi_gmem_in_AWREADY),
        .m_axi_gmem_in_AWREGION(hls_inst_m_axi_gmem_in_AWREGION),
        .m_axi_gmem_in_AWSIZE(hls_inst_m_axi_gmem_in_AWSIZE),
        .m_axi_gmem_in_AWVALID(hls_inst_m_axi_gmem_in_AWVALID),
        .m_axi_gmem_in_BID(hls_inst_m_axi_gmem_in_BID),
        .m_axi_gmem_in_BREADY(hls_inst_m_axi_gmem_in_BREADY),
        .m_axi_gmem_in_BRESP(hls_inst_m_axi_gmem_in_BRESP),
        .m_axi_gmem_in_BVALID(hls_inst_m_axi_gmem_in_BVALID),
        .m_axi_gmem_in_RDATA(hls_inst_m_axi_gmem_in_RDATA),
        .m_axi_gmem_in_RID(hls_inst_m_axi_gmem_in_RID),
        .m_axi_gmem_in_RLAST(hls_inst_m_axi_gmem_in_RLAST),
        .m_axi_gmem_in_RREADY(hls_inst_m_axi_gmem_in_RREADY),
        .m_axi_gmem_in_RRESP(hls_inst_m_axi_gmem_in_RRESP),
        .m_axi_gmem_in_RVALID(hls_inst_m_axi_gmem_in_RVALID),
        .m_axi_gmem_in_WDATA(hls_inst_m_axi_gmem_in_WDATA),
        .m_axi_gmem_in_WID(hls_inst_m_axi_gmem_in_WID),
        .m_axi_gmem_in_WLAST(hls_inst_m_axi_gmem_in_WLAST),
        .m_axi_gmem_in_WREADY(hls_inst_m_axi_gmem_in_WREADY),
        .m_axi_gmem_in_WSTRB(hls_inst_m_axi_gmem_in_WSTRB),
        .m_axi_gmem_in_WVALID(hls_inst_m_axi_gmem_in_WVALID),
        .m_axi_gmem_res_ARADDR(hls_inst_m_axi_gmem_res_ARADDR),
        .m_axi_gmem_res_ARBURST(hls_inst_m_axi_gmem_res_ARBURST),
        .m_axi_gmem_res_ARCACHE(hls_inst_m_axi_gmem_res_ARCACHE),
        .m_axi_gmem_res_ARID(hls_inst_m_axi_gmem_res_ARID),
        .m_axi_gmem_res_ARLEN(hls_inst_m_axi_gmem_res_ARLEN),
        .m_axi_gmem_res_ARLOCK(hls_inst_m_axi_gmem_res_ARLOCK),
        .m_axi_gmem_res_ARPROT(hls_inst_m_axi_gmem_res_ARPROT),
        .m_axi_gmem_res_ARQOS(hls_inst_m_axi_gmem_res_ARQOS),
        .m_axi_gmem_res_ARREADY(hls_inst_m_axi_gmem_res_ARREADY),
        .m_axi_gmem_res_ARREGION(hls_inst_m_axi_gmem_res_ARREGION),
        .m_axi_gmem_res_ARSIZE(hls_inst_m_axi_gmem_res_ARSIZE),
        .m_axi_gmem_res_ARVALID(hls_inst_m_axi_gmem_res_ARVALID),
        .m_axi_gmem_res_AWADDR(hls_inst_m_axi_gmem_res_AWADDR),
        .m_axi_gmem_res_AWBURST(hls_inst_m_axi_gmem_res_AWBURST),
        .m_axi_gmem_res_AWCACHE(hls_inst_m_axi_gmem_res_AWCACHE),
        .m_axi_gmem_res_AWID(hls_inst_m_axi_gmem_res_AWID),
        .m_axi_gmem_res_AWLEN(hls_inst_m_axi_gmem_res_AWLEN),
        .m_axi_gmem_res_AWLOCK(hls_inst_m_axi_gmem_res_AWLOCK),
        .m_axi_gmem_res_AWPROT(hls_inst_m_axi_gmem_res_AWPROT),
        .m_axi_gmem_res_AWQOS(hls_inst_m_axi_gmem_res_AWQOS),
        .m_axi_gmem_res_AWREADY(hls_inst_m_axi_gmem_res_AWREADY),
        .m_axi_gmem_res_AWREGION(hls_inst_m_axi_gmem_res_AWREGION),
        .m_axi_gmem_res_AWSIZE(hls_inst_m_axi_gmem_res_AWSIZE),
        .m_axi_gmem_res_AWVALID(hls_inst_m_axi_gmem_res_AWVALID),
        .m_axi_gmem_res_BID(hls_inst_m_axi_gmem_res_BID),
        .m_axi_gmem_res_BREADY(hls_inst_m_axi_gmem_res_BREADY),
        .m_axi_gmem_res_BRESP(hls_inst_m_axi_gmem_res_BRESP),
        .m_axi_gmem_res_BVALID(hls_inst_m_axi_gmem_res_BVALID),
        .m_axi_gmem_res_RDATA(hls_inst_m_axi_gmem_res_RDATA),
        .m_axi_gmem_res_RID(hls_inst_m_axi_gmem_res_RID),
        .m_axi_gmem_res_RLAST(hls_inst_m_axi_gmem_res_RLAST),
        .m_axi_gmem_res_RREADY(hls_inst_m_axi_gmem_res_RREADY),
        .m_axi_gmem_res_RRESP(hls_inst_m_axi_gmem_res_RRESP),
        .m_axi_gmem_res_RVALID(hls_inst_m_axi_gmem_res_RVALID),
        .m_axi_gmem_res_WDATA(hls_inst_m_axi_gmem_res_WDATA),
        .m_axi_gmem_res_WID(hls_inst_m_axi_gmem_res_WID),
        .m_axi_gmem_res_WLAST(hls_inst_m_axi_gmem_res_WLAST),
        .m_axi_gmem_res_WREADY(hls_inst_m_axi_gmem_res_WREADY),
        .m_axi_gmem_res_WSTRB(hls_inst_m_axi_gmem_res_WSTRB),
        .m_axi_gmem_res_WVALID(hls_inst_m_axi_gmem_res_WVALID),
        .m_axi_gmem_ts_ARADDR(hls_inst_m_axi_gmem_ts_ARADDR),
        .m_axi_gmem_ts_ARBURST(hls_inst_m_axi_gmem_ts_ARBURST),
        .m_axi_gmem_ts_ARCACHE(hls_inst_m_axi_gmem_ts_ARCACHE),
        .m_axi_gmem_ts_ARID(hls_inst_m_axi_gmem_ts_ARID),
        .m_axi_gmem_ts_ARLEN(hls_inst_m_axi_gmem_ts_ARLEN),
        .m_axi_gmem_ts_ARLOCK(hls_inst_m_axi_gmem_ts_ARLOCK),
        .m_axi_gmem_ts_ARPROT(hls_inst_m_axi_gmem_ts_ARPROT),
        .m_axi_gmem_ts_ARQOS(hls_inst_m_axi_gmem_ts_ARQOS),
        .m_axi_gmem_ts_ARREADY(hls_inst_m_axi_gmem_ts_ARREADY),
        .m_axi_gmem_ts_ARREGION(hls_inst_m_axi_gmem_ts_ARREGION),
        .m_axi_gmem_ts_ARSIZE(hls_inst_m_axi_gmem_ts_ARSIZE),
        .m_axi_gmem_ts_ARVALID(hls_inst_m_axi_gmem_ts_ARVALID),
        .m_axi_gmem_ts_AWADDR(hls_inst_m_axi_gmem_ts_AWADDR),
        .m_axi_gmem_ts_AWBURST(hls_inst_m_axi_gmem_ts_AWBURST),
        .m_axi_gmem_ts_AWCACHE(hls_inst_m_axi_gmem_ts_AWCACHE),
        .m_axi_gmem_ts_AWID(hls_inst_m_axi_gmem_ts_AWID),
        .m_axi_gmem_ts_AWLEN(hls_inst_m_axi_gmem_ts_AWLEN),
        .m_axi_gmem_ts_AWLOCK(hls_inst_m_axi_gmem_ts_AWLOCK),
        .m_axi_gmem_ts_AWPROT(hls_inst_m_axi_gmem_ts_AWPROT),
        .m_axi_gmem_ts_AWQOS(hls_inst_m_axi_gmem_ts_AWQOS),
        .m_axi_gmem_ts_AWREADY(hls_inst_m_axi_gmem_ts_AWREADY),
        .m_axi_gmem_ts_AWREGION(hls_inst_m_axi_gmem_ts_AWREGION),
        .m_axi_gmem_ts_AWSIZE(hls_inst_m_axi_gmem_ts_AWSIZE),
        .m_axi_gmem_ts_AWVALID(hls_inst_m_axi_gmem_ts_AWVALID),
        .m_axi_gmem_ts_BID(hls_inst_m_axi_gmem_ts_BID),
        .m_axi_gmem_ts_BREADY(hls_inst_m_axi_gmem_ts_BREADY),
        .m_axi_gmem_ts_BRESP(hls_inst_m_axi_gmem_ts_BRESP),
        .m_axi_gmem_ts_BVALID(hls_inst_m_axi_gmem_ts_BVALID),
        .m_axi_gmem_ts_RDATA(hls_inst_m_axi_gmem_ts_RDATA),
        .m_axi_gmem_ts_RID(hls_inst_m_axi_gmem_ts_RID),
        .m_axi_gmem_ts_RLAST(hls_inst_m_axi_gmem_ts_RLAST),
        .m_axi_gmem_ts_RREADY(hls_inst_m_axi_gmem_ts_RREADY),
        .m_axi_gmem_ts_RRESP(hls_inst_m_axi_gmem_ts_RRESP),
        .m_axi_gmem_ts_RVALID(hls_inst_m_axi_gmem_ts_RVALID),
        .m_axi_gmem_ts_WDATA(hls_inst_m_axi_gmem_ts_WDATA),
        .m_axi_gmem_ts_WID(hls_inst_m_axi_gmem_ts_WID),
        .m_axi_gmem_ts_WLAST(hls_inst_m_axi_gmem_ts_WLAST),
        .m_axi_gmem_ts_WREADY(hls_inst_m_axi_gmem_ts_WREADY),
        .m_axi_gmem_ts_WSTRB(hls_inst_m_axi_gmem_ts_WSTRB),
        .m_axi_gmem_ts_WVALID(hls_inst_m_axi_gmem_ts_WVALID),
        .m_axis_features_TDATA(hls_inst_m_axis_features_TDATA),
        .m_axis_features_TKEEP(hls_inst_m_axis_features_TKEEP),
        .m_axis_features_TLAST(hls_inst_m_axis_features_TLAST),
        .m_axis_features_TREADY(hls_inst_m_axis_features_TREADY),
        .m_axis_features_TSTRB(hls_inst_m_axis_features_TSTRB),
        .m_axis_features_TVALID(hls_inst_m_axis_features_TVALID),
        .s_axi_control_ARADDR(s_axi_control_0_1_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_0_1_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_0_1_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_0_1_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_0_1_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_0_1_AWVALID),
        .s_axi_control_BREADY(s_axi_control_0_1_BREADY),
        .s_axi_control_BRESP(s_axi_control_0_1_BRESP),
        .s_axi_control_BVALID(s_axi_control_0_1_BVALID),
        .s_axi_control_RDATA(s_axi_control_0_1_RDATA),
        .s_axi_control_RREADY(s_axi_control_0_1_RREADY),
        .s_axi_control_RRESP(s_axi_control_0_1_RRESP),
        .s_axi_control_RVALID(s_axi_control_0_1_RVALID),
        .s_axi_control_WDATA(s_axi_control_0_1_WDATA),
        .s_axi_control_WREADY(s_axi_control_0_1_WREADY),
        .s_axi_control_WSTRB(s_axi_control_0_1_WSTRB),
        .s_axi_control_WVALID(s_axi_control_0_1_WVALID),
        .s_axis_score_TDATA(s_axis_score_0_1_TDATA),
        .s_axis_score_TKEEP(s_axis_score_0_1_TKEEP),
        .s_axis_score_TLAST(s_axis_score_0_1_TLAST),
        .s_axis_score_TREADY(s_axis_score_0_1_TREADY),
        .s_axis_score_TSTRB(s_axis_score_0_1_TSTRB),
        .s_axis_score_TVALID(s_axis_score_0_1_TVALID));
endmodule
