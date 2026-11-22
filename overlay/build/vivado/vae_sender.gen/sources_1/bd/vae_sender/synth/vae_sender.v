//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Nov 23 00:53:34 2026
//Host        : fedora running 64-bit unknown
//Command     : generate_target vae_sender.bd
//Design      : vae_sender
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1N22XFU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [31:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [63:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [63:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [7:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [63:0]m00_couplers_to_auto_ds_ARADDR;
  wire [1:0]m00_couplers_to_auto_ds_ARBURST;
  wire [3:0]m00_couplers_to_auto_ds_ARCACHE;
  wire [2:0]m00_couplers_to_auto_ds_ARID;
  wire [7:0]m00_couplers_to_auto_ds_ARLEN;
  wire [0:0]m00_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m00_couplers_to_auto_ds_ARPROT;
  wire [3:0]m00_couplers_to_auto_ds_ARQOS;
  wire m00_couplers_to_auto_ds_ARREADY;
  wire [3:0]m00_couplers_to_auto_ds_ARREGION;
  wire [2:0]m00_couplers_to_auto_ds_ARSIZE;
  wire m00_couplers_to_auto_ds_ARVALID;
  wire [63:0]m00_couplers_to_auto_ds_AWADDR;
  wire [1:0]m00_couplers_to_auto_ds_AWBURST;
  wire [3:0]m00_couplers_to_auto_ds_AWCACHE;
  wire [2:0]m00_couplers_to_auto_ds_AWID;
  wire [7:0]m00_couplers_to_auto_ds_AWLEN;
  wire [0:0]m00_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m00_couplers_to_auto_ds_AWPROT;
  wire [3:0]m00_couplers_to_auto_ds_AWQOS;
  wire m00_couplers_to_auto_ds_AWREADY;
  wire [3:0]m00_couplers_to_auto_ds_AWREGION;
  wire [2:0]m00_couplers_to_auto_ds_AWSIZE;
  wire m00_couplers_to_auto_ds_AWVALID;
  wire [2:0]m00_couplers_to_auto_ds_BID;
  wire m00_couplers_to_auto_ds_BREADY;
  wire [1:0]m00_couplers_to_auto_ds_BRESP;
  wire m00_couplers_to_auto_ds_BVALID;
  wire [127:0]m00_couplers_to_auto_ds_RDATA;
  wire [2:0]m00_couplers_to_auto_ds_RID;
  wire m00_couplers_to_auto_ds_RLAST;
  wire m00_couplers_to_auto_ds_RREADY;
  wire [1:0]m00_couplers_to_auto_ds_RRESP;
  wire m00_couplers_to_auto_ds_RVALID;
  wire [127:0]m00_couplers_to_auto_ds_WDATA;
  wire m00_couplers_to_auto_ds_WLAST;
  wire m00_couplers_to_auto_ds_WREADY;
  wire [15:0]m00_couplers_to_auto_ds_WSTRB;
  wire m00_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bid[2:0] = m00_couplers_to_auto_ds_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[127:0] = m00_couplers_to_auto_ds_RDATA;
  assign S_AXI_rid[2:0] = m00_couplers_to_auto_ds_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_ds_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_ds_ARID = S_AXI_arid[2:0];
  assign m00_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_ds_AWID = S_AXI_awid[2:0];
  assign m00_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_ds_WDATA = S_AXI_wdata[127:0];
  assign m00_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[15:0];
  assign m00_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  vae_sender_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_ds_ARADDR[31:0]),
        .s_axi_arburst(m00_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(m00_couplers_to_auto_ds_ARID),
        .s_axi_arlen(m00_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_ds_AWADDR[31:0]),
        .s_axi_awburst(m00_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_ds_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_ds_AWID),
        .s_axi_awlen(m00_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_ds_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_ds_BID),
        .s_axi_bready(m00_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_ds_RDATA),
        .s_axi_rid(m00_couplers_to_auto_ds_RID),
        .s_axi_rlast(m00_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m00_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m00_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_ds_WVALID));
  vae_sender_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module s00_couplers_imp_1EO1CEJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [127:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [127:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [0:0]s00_couplers_to_auto_us_ARID;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [1:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [3:0]s00_couplers_to_auto_us_ARREGION;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire [0:0]s00_couplers_to_auto_us_RID;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;

  assign M_AXI_araddr[63:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rid[0] = s00_couplers_to_auto_us_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[127:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARID = S_AXI_arid[0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  vae_sender_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_couplers_to_auto_us_ARID),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK[0]),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_us_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rid(s00_couplers_to_auto_us_RID),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID));
endmodule

module s00_couplers_imp_1REB5YD
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  vae_sender_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_1MTF5FX
   (M_ACLK,
    M_ARESETN,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]auto_us_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_to_s01_couplers_AWQOS;
  wire auto_us_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_to_s01_couplers_AWSIZE;
  wire auto_us_to_s01_couplers_AWVALID;
  wire auto_us_to_s01_couplers_BREADY;
  wire [1:0]auto_us_to_s01_couplers_BRESP;
  wire auto_us_to_s01_couplers_BVALID;
  wire [127:0]auto_us_to_s01_couplers_WDATA;
  wire auto_us_to_s01_couplers_WLAST;
  wire auto_us_to_s01_couplers_WREADY;
  wire [15:0]auto_us_to_s01_couplers_WSTRB;
  wire auto_us_to_s01_couplers_WVALID;
  wire [63:0]s01_couplers_to_auto_us_AWADDR;
  wire [1:0]s01_couplers_to_auto_us_AWBURST;
  wire [3:0]s01_couplers_to_auto_us_AWCACHE;
  wire [0:0]s01_couplers_to_auto_us_AWID;
  wire [7:0]s01_couplers_to_auto_us_AWLEN;
  wire [1:0]s01_couplers_to_auto_us_AWLOCK;
  wire [2:0]s01_couplers_to_auto_us_AWPROT;
  wire [3:0]s01_couplers_to_auto_us_AWQOS;
  wire s01_couplers_to_auto_us_AWREADY;
  wire [3:0]s01_couplers_to_auto_us_AWREGION;
  wire [2:0]s01_couplers_to_auto_us_AWSIZE;
  wire s01_couplers_to_auto_us_AWVALID;
  wire [0:0]s01_couplers_to_auto_us_BID;
  wire s01_couplers_to_auto_us_BREADY;
  wire [1:0]s01_couplers_to_auto_us_BRESP;
  wire s01_couplers_to_auto_us_BVALID;
  wire [63:0]s01_couplers_to_auto_us_WDATA;
  wire s01_couplers_to_auto_us_WLAST;
  wire s01_couplers_to_auto_us_WREADY;
  wire [7:0]s01_couplers_to_auto_us_WSTRB;
  wire s01_couplers_to_auto_us_WVALID;

  assign M_AXI_awaddr[63:0] = auto_us_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s01_couplers_BREADY;
  assign M_AXI_wdata[127:0] = auto_us_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = auto_us_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_awready = s01_couplers_to_auto_us_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_auto_us_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_us_BVALID;
  assign S_AXI_wready = s01_couplers_to_auto_us_WREADY;
  assign auto_us_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_us_AWADDR = S_AXI_awaddr[63:0];
  assign s01_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_us_AWID = S_AXI_awid[0];
  assign s01_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_us_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_us_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_us_WDATA = S_AXI_wdata[63:0];
  assign s01_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_us_WSTRB = S_AXI_wstrb[7:0];
  assign s01_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  vae_sender_auto_us_1 auto_us
       (.m_axi_awaddr(auto_us_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s01_couplers_BVALID),
        .m_axi_wdata(auto_us_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_awaddr(s01_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_us_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_us_AWID),
        .s_axi_awlen(s01_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_us_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_us_AWREADY),
        .s_axi_awregion(s01_couplers_to_auto_us_AWREGION),
        .s_axi_awsize(s01_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_us_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_us_BID),
        .s_axi_bready(s01_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_us_BVALID),
        .s_axi_wdata(s01_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_us_WLAST),
        .s_axi_wready(s01_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_us_WVALID));
endmodule

module s02_couplers_imp_YHTDON
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [2:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [127:0]M_AXI_rdata;
  input [2:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [127:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [15:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [2:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [2:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]s02_couplers_to_s02_couplers_ARADDR;
  wire [1:0]s02_couplers_to_s02_couplers_ARBURST;
  wire [3:0]s02_couplers_to_s02_couplers_ARCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_ARID;
  wire [7:0]s02_couplers_to_s02_couplers_ARLEN;
  wire [1:0]s02_couplers_to_s02_couplers_ARLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_ARPROT;
  wire [3:0]s02_couplers_to_s02_couplers_ARQOS;
  wire s02_couplers_to_s02_couplers_ARREADY;
  wire [2:0]s02_couplers_to_s02_couplers_ARSIZE;
  wire s02_couplers_to_s02_couplers_ARVALID;
  wire [63:0]s02_couplers_to_s02_couplers_AWADDR;
  wire [1:0]s02_couplers_to_s02_couplers_AWBURST;
  wire [3:0]s02_couplers_to_s02_couplers_AWCACHE;
  wire [0:0]s02_couplers_to_s02_couplers_AWID;
  wire [7:0]s02_couplers_to_s02_couplers_AWLEN;
  wire [1:0]s02_couplers_to_s02_couplers_AWLOCK;
  wire [2:0]s02_couplers_to_s02_couplers_AWPROT;
  wire [3:0]s02_couplers_to_s02_couplers_AWQOS;
  wire s02_couplers_to_s02_couplers_AWREADY;
  wire [2:0]s02_couplers_to_s02_couplers_AWSIZE;
  wire s02_couplers_to_s02_couplers_AWVALID;
  wire [2:0]s02_couplers_to_s02_couplers_BID;
  wire s02_couplers_to_s02_couplers_BREADY;
  wire [1:0]s02_couplers_to_s02_couplers_BRESP;
  wire s02_couplers_to_s02_couplers_BVALID;
  wire [127:0]s02_couplers_to_s02_couplers_RDATA;
  wire [2:0]s02_couplers_to_s02_couplers_RID;
  wire s02_couplers_to_s02_couplers_RLAST;
  wire s02_couplers_to_s02_couplers_RREADY;
  wire [1:0]s02_couplers_to_s02_couplers_RRESP;
  wire s02_couplers_to_s02_couplers_RVALID;
  wire [127:0]s02_couplers_to_s02_couplers_WDATA;
  wire s02_couplers_to_s02_couplers_WLAST;
  wire s02_couplers_to_s02_couplers_WREADY;
  wire [15:0]s02_couplers_to_s02_couplers_WSTRB;
  wire s02_couplers_to_s02_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s02_couplers_to_s02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = s02_couplers_to_s02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = s02_couplers_to_s02_couplers_ARCACHE;
  assign M_AXI_arid[0] = s02_couplers_to_s02_couplers_ARID;
  assign M_AXI_arlen[7:0] = s02_couplers_to_s02_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = s02_couplers_to_s02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = s02_couplers_to_s02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = s02_couplers_to_s02_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = s02_couplers_to_s02_couplers_ARSIZE;
  assign M_AXI_arvalid = s02_couplers_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s02_couplers_to_s02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = s02_couplers_to_s02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = s02_couplers_to_s02_couplers_AWCACHE;
  assign M_AXI_awid[0] = s02_couplers_to_s02_couplers_AWID;
  assign M_AXI_awlen[7:0] = s02_couplers_to_s02_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = s02_couplers_to_s02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = s02_couplers_to_s02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = s02_couplers_to_s02_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = s02_couplers_to_s02_couplers_AWSIZE;
  assign M_AXI_awvalid = s02_couplers_to_s02_couplers_AWVALID;
  assign M_AXI_bready = s02_couplers_to_s02_couplers_BREADY;
  assign M_AXI_rready = s02_couplers_to_s02_couplers_RREADY;
  assign M_AXI_wdata[127:0] = s02_couplers_to_s02_couplers_WDATA;
  assign M_AXI_wlast = s02_couplers_to_s02_couplers_WLAST;
  assign M_AXI_wstrb[15:0] = s02_couplers_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = s02_couplers_to_s02_couplers_WVALID;
  assign S_AXI_arready = s02_couplers_to_s02_couplers_ARREADY;
  assign S_AXI_awready = s02_couplers_to_s02_couplers_AWREADY;
  assign S_AXI_bid[2:0] = s02_couplers_to_s02_couplers_BID;
  assign S_AXI_bresp[1:0] = s02_couplers_to_s02_couplers_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_s02_couplers_BVALID;
  assign S_AXI_rdata[127:0] = s02_couplers_to_s02_couplers_RDATA;
  assign S_AXI_rid[2:0] = s02_couplers_to_s02_couplers_RID;
  assign S_AXI_rlast = s02_couplers_to_s02_couplers_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_s02_couplers_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_s02_couplers_RVALID;
  assign S_AXI_wready = s02_couplers_to_s02_couplers_WREADY;
  assign s02_couplers_to_s02_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s02_couplers_to_s02_couplers_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_s02_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_s02_couplers_ARID = S_AXI_arid[0];
  assign s02_couplers_to_s02_couplers_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_s02_couplers_ARLOCK = S_AXI_arlock[1:0];
  assign s02_couplers_to_s02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_s02_couplers_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_s02_couplers_ARREADY = M_AXI_arready;
  assign s02_couplers_to_s02_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_s02_couplers_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_s02_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s02_couplers_to_s02_couplers_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_s02_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_s02_couplers_AWID = S_AXI_awid[0];
  assign s02_couplers_to_s02_couplers_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_s02_couplers_AWLOCK = S_AXI_awlock[1:0];
  assign s02_couplers_to_s02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_s02_couplers_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_s02_couplers_AWREADY = M_AXI_awready;
  assign s02_couplers_to_s02_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_s02_couplers_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_s02_couplers_BID = M_AXI_bid[2:0];
  assign s02_couplers_to_s02_couplers_BREADY = S_AXI_bready;
  assign s02_couplers_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign s02_couplers_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign s02_couplers_to_s02_couplers_RDATA = M_AXI_rdata[127:0];
  assign s02_couplers_to_s02_couplers_RID = M_AXI_rid[2:0];
  assign s02_couplers_to_s02_couplers_RLAST = M_AXI_rlast;
  assign s02_couplers_to_s02_couplers_RREADY = S_AXI_rready;
  assign s02_couplers_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign s02_couplers_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign s02_couplers_to_s02_couplers_WDATA = S_AXI_wdata[127:0];
  assign s02_couplers_to_s02_couplers_WLAST = S_AXI_wlast;
  assign s02_couplers_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_s02_couplers_WSTRB = S_AXI_wstrb[15:0];
  assign s02_couplers_to_s02_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "vae_sender,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vae_sender,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=12,numNonXlnxBlks=2,numHierBlks=7,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "vae_sender.hwdef" *) 
module vae_sender
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire [31:0]control_axi_M00_AXI_ARADDR;
  wire control_axi_M00_AXI_ARREADY;
  wire control_axi_M00_AXI_ARVALID;
  wire [31:0]control_axi_M00_AXI_AWADDR;
  wire control_axi_M00_AXI_AWREADY;
  wire control_axi_M00_AXI_AWVALID;
  wire control_axi_M00_AXI_BREADY;
  wire [1:0]control_axi_M00_AXI_BRESP;
  wire control_axi_M00_AXI_BVALID;
  wire [31:0]control_axi_M00_AXI_RDATA;
  wire control_axi_M00_AXI_RREADY;
  wire [1:0]control_axi_M00_AXI_RRESP;
  wire control_axi_M00_AXI_RVALID;
  wire [31:0]control_axi_M00_AXI_WDATA;
  wire control_axi_M00_AXI_WREADY;
  wire [3:0]control_axi_M00_AXI_WSTRB;
  wire control_axi_M00_AXI_WVALID;
  wire [63:0]cycles_count;
  wire cycles_not_empty;
  wire [31:0]ddr_axi_M00_AXI_ARADDR;
  wire [1:0]ddr_axi_M00_AXI_ARBURST;
  wire [3:0]ddr_axi_M00_AXI_ARCACHE;
  wire [3:0]ddr_axi_M00_AXI_ARLEN;
  wire [1:0]ddr_axi_M00_AXI_ARLOCK;
  wire [2:0]ddr_axi_M00_AXI_ARPROT;
  wire [3:0]ddr_axi_M00_AXI_ARQOS;
  wire ddr_axi_M00_AXI_ARREADY;
  wire [2:0]ddr_axi_M00_AXI_ARSIZE;
  wire ddr_axi_M00_AXI_ARVALID;
  wire [31:0]ddr_axi_M00_AXI_AWADDR;
  wire [1:0]ddr_axi_M00_AXI_AWBURST;
  wire [3:0]ddr_axi_M00_AXI_AWCACHE;
  wire [3:0]ddr_axi_M00_AXI_AWLEN;
  wire [1:0]ddr_axi_M00_AXI_AWLOCK;
  wire [2:0]ddr_axi_M00_AXI_AWPROT;
  wire [3:0]ddr_axi_M00_AXI_AWQOS;
  wire ddr_axi_M00_AXI_AWREADY;
  wire [2:0]ddr_axi_M00_AXI_AWSIZE;
  wire ddr_axi_M00_AXI_AWVALID;
  wire ddr_axi_M00_AXI_BREADY;
  wire [1:0]ddr_axi_M00_AXI_BRESP;
  wire ddr_axi_M00_AXI_BVALID;
  wire [63:0]ddr_axi_M00_AXI_RDATA;
  wire ddr_axi_M00_AXI_RLAST;
  wire ddr_axi_M00_AXI_RREADY;
  wire [1:0]ddr_axi_M00_AXI_RRESP;
  wire ddr_axi_M00_AXI_RVALID;
  wire [63:0]ddr_axi_M00_AXI_WDATA;
  wire ddr_axi_M00_AXI_WLAST;
  wire ddr_axi_M00_AXI_WREADY;
  wire [7:0]ddr_axi_M00_AXI_WSTRB;
  wire ddr_axi_M00_AXI_WVALID;
  wire [0:0]locked_dout;
  wire [14:0]ps7_DDR_ADDR;
  wire [2:0]ps7_DDR_BA;
  wire ps7_DDR_CAS_N;
  wire ps7_DDR_CKE;
  wire ps7_DDR_CK_N;
  wire ps7_DDR_CK_P;
  wire ps7_DDR_CS_N;
  wire [3:0]ps7_DDR_DM;
  wire [31:0]ps7_DDR_DQ;
  wire [3:0]ps7_DDR_DQS_N;
  wire [3:0]ps7_DDR_DQS_P;
  wire ps7_DDR_ODT;
  wire ps7_DDR_RAS_N;
  wire ps7_DDR_RESET_N;
  wire ps7_DDR_WE_N;
  wire ps7_FCLK_CLK0;
  wire ps7_FCLK_RESET0_N;
  wire ps7_FIXED_IO_DDR_VRN;
  wire ps7_FIXED_IO_DDR_VRP;
  wire [53:0]ps7_FIXED_IO_MIO;
  wire ps7_FIXED_IO_PS_CLK;
  wire ps7_FIXED_IO_PS_PORB;
  wire ps7_FIXED_IO_PS_SRSTB;
  wire [31:0]ps7_M_AXI_GP0_ARADDR;
  wire [1:0]ps7_M_AXI_GP0_ARBURST;
  wire [3:0]ps7_M_AXI_GP0_ARCACHE;
  wire [11:0]ps7_M_AXI_GP0_ARID;
  wire [3:0]ps7_M_AXI_GP0_ARLEN;
  wire [1:0]ps7_M_AXI_GP0_ARLOCK;
  wire [2:0]ps7_M_AXI_GP0_ARPROT;
  wire [3:0]ps7_M_AXI_GP0_ARQOS;
  wire ps7_M_AXI_GP0_ARREADY;
  wire [2:0]ps7_M_AXI_GP0_ARSIZE;
  wire ps7_M_AXI_GP0_ARVALID;
  wire [31:0]ps7_M_AXI_GP0_AWADDR;
  wire [1:0]ps7_M_AXI_GP0_AWBURST;
  wire [3:0]ps7_M_AXI_GP0_AWCACHE;
  wire [11:0]ps7_M_AXI_GP0_AWID;
  wire [3:0]ps7_M_AXI_GP0_AWLEN;
  wire [1:0]ps7_M_AXI_GP0_AWLOCK;
  wire [2:0]ps7_M_AXI_GP0_AWPROT;
  wire [3:0]ps7_M_AXI_GP0_AWQOS;
  wire ps7_M_AXI_GP0_AWREADY;
  wire [2:0]ps7_M_AXI_GP0_AWSIZE;
  wire ps7_M_AXI_GP0_AWVALID;
  wire [11:0]ps7_M_AXI_GP0_BID;
  wire ps7_M_AXI_GP0_BREADY;
  wire [1:0]ps7_M_AXI_GP0_BRESP;
  wire ps7_M_AXI_GP0_BVALID;
  wire [31:0]ps7_M_AXI_GP0_RDATA;
  wire [11:0]ps7_M_AXI_GP0_RID;
  wire ps7_M_AXI_GP0_RLAST;
  wire ps7_M_AXI_GP0_RREADY;
  wire [1:0]ps7_M_AXI_GP0_RRESP;
  wire ps7_M_AXI_GP0_RVALID;
  wire [31:0]ps7_M_AXI_GP0_WDATA;
  wire [11:0]ps7_M_AXI_GP0_WID;
  wire ps7_M_AXI_GP0_WLAST;
  wire ps7_M_AXI_GP0_WREADY;
  wire [3:0]ps7_M_AXI_GP0_WSTRB;
  wire ps7_M_AXI_GP0_WVALID;
  wire [0:0]reset_0_interconnect_aresetn;
  wire [0:0]reset_0_peripheral_aresetn;
  wire [63:0]sender_m_axi_gmem_in_ARADDR;
  wire [1:0]sender_m_axi_gmem_in_ARBURST;
  wire [3:0]sender_m_axi_gmem_in_ARCACHE;
  wire [0:0]sender_m_axi_gmem_in_ARID;
  wire [7:0]sender_m_axi_gmem_in_ARLEN;
  wire [1:0]sender_m_axi_gmem_in_ARLOCK;
  wire [2:0]sender_m_axi_gmem_in_ARPROT;
  wire [3:0]sender_m_axi_gmem_in_ARQOS;
  wire sender_m_axi_gmem_in_ARREADY;
  wire [3:0]sender_m_axi_gmem_in_ARREGION;
  wire [2:0]sender_m_axi_gmem_in_ARSIZE;
  wire sender_m_axi_gmem_in_ARVALID;
  wire [31:0]sender_m_axi_gmem_in_RDATA;
  wire [0:0]sender_m_axi_gmem_in_RID;
  wire sender_m_axi_gmem_in_RLAST;
  wire sender_m_axi_gmem_in_RREADY;
  wire [1:0]sender_m_axi_gmem_in_RRESP;
  wire sender_m_axi_gmem_in_RVALID;
  wire [63:0]sender_m_axi_gmem_res_ARADDR;
  wire [1:0]sender_m_axi_gmem_res_ARBURST;
  wire [3:0]sender_m_axi_gmem_res_ARCACHE;
  wire [0:0]sender_m_axi_gmem_res_ARID;
  wire [7:0]sender_m_axi_gmem_res_ARLEN;
  wire [1:0]sender_m_axi_gmem_res_ARLOCK;
  wire [2:0]sender_m_axi_gmem_res_ARPROT;
  wire [3:0]sender_m_axi_gmem_res_ARQOS;
  wire sender_m_axi_gmem_res_ARREADY;
  wire [2:0]sender_m_axi_gmem_res_ARSIZE;
  wire sender_m_axi_gmem_res_ARVALID;
  wire [63:0]sender_m_axi_gmem_res_AWADDR;
  wire [1:0]sender_m_axi_gmem_res_AWBURST;
  wire [3:0]sender_m_axi_gmem_res_AWCACHE;
  wire [0:0]sender_m_axi_gmem_res_AWID;
  wire [7:0]sender_m_axi_gmem_res_AWLEN;
  wire [1:0]sender_m_axi_gmem_res_AWLOCK;
  wire [2:0]sender_m_axi_gmem_res_AWPROT;
  wire [3:0]sender_m_axi_gmem_res_AWQOS;
  wire sender_m_axi_gmem_res_AWREADY;
  wire [2:0]sender_m_axi_gmem_res_AWSIZE;
  wire sender_m_axi_gmem_res_AWVALID;
  wire [2:0]sender_m_axi_gmem_res_BID;
  wire sender_m_axi_gmem_res_BREADY;
  wire [1:0]sender_m_axi_gmem_res_BRESP;
  wire sender_m_axi_gmem_res_BVALID;
  wire [127:0]sender_m_axi_gmem_res_RDATA;
  wire [2:0]sender_m_axi_gmem_res_RID;
  wire sender_m_axi_gmem_res_RLAST;
  wire sender_m_axi_gmem_res_RREADY;
  wire [1:0]sender_m_axi_gmem_res_RRESP;
  wire sender_m_axi_gmem_res_RVALID;
  wire [127:0]sender_m_axi_gmem_res_WDATA;
  wire sender_m_axi_gmem_res_WLAST;
  wire sender_m_axi_gmem_res_WREADY;
  wire [15:0]sender_m_axi_gmem_res_WSTRB;
  wire sender_m_axi_gmem_res_WVALID;
  wire [63:0]sender_m_axi_gmem_ts_AWADDR;
  wire [1:0]sender_m_axi_gmem_ts_AWBURST;
  wire [3:0]sender_m_axi_gmem_ts_AWCACHE;
  wire [0:0]sender_m_axi_gmem_ts_AWID;
  wire [7:0]sender_m_axi_gmem_ts_AWLEN;
  wire [1:0]sender_m_axi_gmem_ts_AWLOCK;
  wire [2:0]sender_m_axi_gmem_ts_AWPROT;
  wire [3:0]sender_m_axi_gmem_ts_AWQOS;
  wire sender_m_axi_gmem_ts_AWREADY;
  wire [3:0]sender_m_axi_gmem_ts_AWREGION;
  wire [2:0]sender_m_axi_gmem_ts_AWSIZE;
  wire sender_m_axi_gmem_ts_AWVALID;
  wire [0:0]sender_m_axi_gmem_ts_BID;
  wire sender_m_axi_gmem_ts_BREADY;
  wire [1:0]sender_m_axi_gmem_ts_BRESP;
  wire sender_m_axi_gmem_ts_BVALID;
  wire [63:0]sender_m_axi_gmem_ts_WDATA;
  wire sender_m_axi_gmem_ts_WLAST;
  wire sender_m_axi_gmem_ts_WREADY;
  wire [7:0]sender_m_axi_gmem_ts_WSTRB;
  wire sender_m_axi_gmem_ts_WVALID;
  wire [31:0]sender_m_axis_features_TDATA;
  wire [3:0]sender_m_axis_features_TKEEP;
  wire [0:0]sender_m_axis_features_TLAST;
  wire sender_m_axis_features_TREADY;
  wire [3:0]sender_m_axis_features_TSTRB;
  wire sender_m_axis_features_TVALID;
  wire [63:0]vae_m_axis_score_TDATA;
  wire [7:0]vae_m_axis_score_TKEEP;
  wire [0:0]vae_m_axis_score_TLAST;
  wire vae_m_axis_score_TREADY;
  wire [7:0]vae_m_axis_score_TSTRB;
  wire vae_m_axis_score_TVALID;

  vae_sender_control_axi_0 control_axi
       (.ACLK(ps7_FCLK_CLK0),
        .ARESETN(reset_0_interconnect_aresetn),
        .M00_ACLK(ps7_FCLK_CLK0),
        .M00_ARESETN(reset_0_peripheral_aresetn),
        .M00_AXI_araddr(control_axi_M00_AXI_ARADDR),
        .M00_AXI_arready(control_axi_M00_AXI_ARREADY),
        .M00_AXI_arvalid(control_axi_M00_AXI_ARVALID),
        .M00_AXI_awaddr(control_axi_M00_AXI_AWADDR),
        .M00_AXI_awready(control_axi_M00_AXI_AWREADY),
        .M00_AXI_awvalid(control_axi_M00_AXI_AWVALID),
        .M00_AXI_bready(control_axi_M00_AXI_BREADY),
        .M00_AXI_bresp(control_axi_M00_AXI_BRESP),
        .M00_AXI_bvalid(control_axi_M00_AXI_BVALID),
        .M00_AXI_rdata(control_axi_M00_AXI_RDATA),
        .M00_AXI_rready(control_axi_M00_AXI_RREADY),
        .M00_AXI_rresp(control_axi_M00_AXI_RRESP),
        .M00_AXI_rvalid(control_axi_M00_AXI_RVALID),
        .M00_AXI_wdata(control_axi_M00_AXI_WDATA),
        .M00_AXI_wready(control_axi_M00_AXI_WREADY),
        .M00_AXI_wstrb(control_axi_M00_AXI_WSTRB),
        .M00_AXI_wvalid(control_axi_M00_AXI_WVALID),
        .S00_ACLK(ps7_FCLK_CLK0),
        .S00_ARESETN(reset_0_peripheral_aresetn),
        .S00_AXI_araddr(ps7_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps7_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps7_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps7_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps7_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps7_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps7_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps7_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps7_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps7_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps7_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps7_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps7_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps7_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps7_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps7_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps7_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps7_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps7_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps7_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps7_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps7_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps7_M_AXI_GP0_BID),
        .S00_AXI_bready(ps7_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps7_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps7_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps7_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps7_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps7_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps7_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps7_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps7_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps7_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps7_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps7_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps7_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps7_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps7_M_AXI_GP0_WVALID));
  vae_sender_cycles_0 cycles
       (.clk(ps7_FCLK_CLK0),
        .count(cycles_count),
        .not_empty(cycles_not_empty),
        .resetn(reset_0_peripheral_aresetn));
  vae_sender_ddr_axi_0 ddr_axi
       (.ACLK(ps7_FCLK_CLK0),
        .ARESETN(reset_0_interconnect_aresetn),
        .M00_ACLK(ps7_FCLK_CLK0),
        .M00_ARESETN(reset_0_peripheral_aresetn),
        .M00_AXI_araddr(ddr_axi_M00_AXI_ARADDR),
        .M00_AXI_arburst(ddr_axi_M00_AXI_ARBURST),
        .M00_AXI_arcache(ddr_axi_M00_AXI_ARCACHE),
        .M00_AXI_arlen(ddr_axi_M00_AXI_ARLEN),
        .M00_AXI_arlock(ddr_axi_M00_AXI_ARLOCK),
        .M00_AXI_arprot(ddr_axi_M00_AXI_ARPROT),
        .M00_AXI_arqos(ddr_axi_M00_AXI_ARQOS),
        .M00_AXI_arready(ddr_axi_M00_AXI_ARREADY),
        .M00_AXI_arsize(ddr_axi_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(ddr_axi_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ddr_axi_M00_AXI_AWADDR),
        .M00_AXI_awburst(ddr_axi_M00_AXI_AWBURST),
        .M00_AXI_awcache(ddr_axi_M00_AXI_AWCACHE),
        .M00_AXI_awlen(ddr_axi_M00_AXI_AWLEN),
        .M00_AXI_awlock(ddr_axi_M00_AXI_AWLOCK),
        .M00_AXI_awprot(ddr_axi_M00_AXI_AWPROT),
        .M00_AXI_awqos(ddr_axi_M00_AXI_AWQOS),
        .M00_AXI_awready(ddr_axi_M00_AXI_AWREADY),
        .M00_AXI_awsize(ddr_axi_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(ddr_axi_M00_AXI_AWVALID),
        .M00_AXI_bready(ddr_axi_M00_AXI_BREADY),
        .M00_AXI_bresp(ddr_axi_M00_AXI_BRESP),
        .M00_AXI_bvalid(ddr_axi_M00_AXI_BVALID),
        .M00_AXI_rdata(ddr_axi_M00_AXI_RDATA),
        .M00_AXI_rlast(ddr_axi_M00_AXI_RLAST),
        .M00_AXI_rready(ddr_axi_M00_AXI_RREADY),
        .M00_AXI_rresp(ddr_axi_M00_AXI_RRESP),
        .M00_AXI_rvalid(ddr_axi_M00_AXI_RVALID),
        .M00_AXI_wdata(ddr_axi_M00_AXI_WDATA),
        .M00_AXI_wlast(ddr_axi_M00_AXI_WLAST),
        .M00_AXI_wready(ddr_axi_M00_AXI_WREADY),
        .M00_AXI_wstrb(ddr_axi_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ddr_axi_M00_AXI_WVALID),
        .S00_ACLK(ps7_FCLK_CLK0),
        .S00_ARESETN(reset_0_peripheral_aresetn),
        .S00_AXI_araddr(sender_m_axi_gmem_in_ARADDR),
        .S00_AXI_arburst(sender_m_axi_gmem_in_ARBURST),
        .S00_AXI_arcache(sender_m_axi_gmem_in_ARCACHE),
        .S00_AXI_arid(sender_m_axi_gmem_in_ARID),
        .S00_AXI_arlen(sender_m_axi_gmem_in_ARLEN),
        .S00_AXI_arlock(sender_m_axi_gmem_in_ARLOCK),
        .S00_AXI_arprot(sender_m_axi_gmem_in_ARPROT),
        .S00_AXI_arqos(sender_m_axi_gmem_in_ARQOS),
        .S00_AXI_arready(sender_m_axi_gmem_in_ARREADY),
        .S00_AXI_arregion(sender_m_axi_gmem_in_ARREGION),
        .S00_AXI_arsize(sender_m_axi_gmem_in_ARSIZE),
        .S00_AXI_arvalid(sender_m_axi_gmem_in_ARVALID),
        .S00_AXI_rdata(sender_m_axi_gmem_in_RDATA),
        .S00_AXI_rid(sender_m_axi_gmem_in_RID),
        .S00_AXI_rlast(sender_m_axi_gmem_in_RLAST),
        .S00_AXI_rready(sender_m_axi_gmem_in_RREADY),
        .S00_AXI_rresp(sender_m_axi_gmem_in_RRESP),
        .S00_AXI_rvalid(sender_m_axi_gmem_in_RVALID),
        .S01_ACLK(ps7_FCLK_CLK0),
        .S01_ARESETN(reset_0_peripheral_aresetn),
        .S01_AXI_awaddr(sender_m_axi_gmem_ts_AWADDR),
        .S01_AXI_awburst(sender_m_axi_gmem_ts_AWBURST),
        .S01_AXI_awcache(sender_m_axi_gmem_ts_AWCACHE),
        .S01_AXI_awid(sender_m_axi_gmem_ts_AWID),
        .S01_AXI_awlen(sender_m_axi_gmem_ts_AWLEN),
        .S01_AXI_awlock(sender_m_axi_gmem_ts_AWLOCK),
        .S01_AXI_awprot(sender_m_axi_gmem_ts_AWPROT),
        .S01_AXI_awqos(sender_m_axi_gmem_ts_AWQOS),
        .S01_AXI_awready(sender_m_axi_gmem_ts_AWREADY),
        .S01_AXI_awregion(sender_m_axi_gmem_ts_AWREGION),
        .S01_AXI_awsize(sender_m_axi_gmem_ts_AWSIZE),
        .S01_AXI_awvalid(sender_m_axi_gmem_ts_AWVALID),
        .S01_AXI_bid(sender_m_axi_gmem_ts_BID),
        .S01_AXI_bready(sender_m_axi_gmem_ts_BREADY),
        .S01_AXI_bresp(sender_m_axi_gmem_ts_BRESP),
        .S01_AXI_bvalid(sender_m_axi_gmem_ts_BVALID),
        .S01_AXI_wdata(sender_m_axi_gmem_ts_WDATA),
        .S01_AXI_wlast(sender_m_axi_gmem_ts_WLAST),
        .S01_AXI_wready(sender_m_axi_gmem_ts_WREADY),
        .S01_AXI_wstrb(sender_m_axi_gmem_ts_WSTRB),
        .S01_AXI_wvalid(sender_m_axi_gmem_ts_WVALID),
        .S02_ACLK(ps7_FCLK_CLK0),
        .S02_ARESETN(reset_0_peripheral_aresetn),
        .S02_AXI_araddr(sender_m_axi_gmem_res_ARADDR),
        .S02_AXI_arburst(sender_m_axi_gmem_res_ARBURST),
        .S02_AXI_arcache(sender_m_axi_gmem_res_ARCACHE),
        .S02_AXI_arid(sender_m_axi_gmem_res_ARID),
        .S02_AXI_arlen(sender_m_axi_gmem_res_ARLEN),
        .S02_AXI_arlock(sender_m_axi_gmem_res_ARLOCK),
        .S02_AXI_arprot(sender_m_axi_gmem_res_ARPROT),
        .S02_AXI_arqos(sender_m_axi_gmem_res_ARQOS),
        .S02_AXI_arready(sender_m_axi_gmem_res_ARREADY),
        .S02_AXI_arsize(sender_m_axi_gmem_res_ARSIZE),
        .S02_AXI_arvalid(sender_m_axi_gmem_res_ARVALID),
        .S02_AXI_awaddr(sender_m_axi_gmem_res_AWADDR),
        .S02_AXI_awburst(sender_m_axi_gmem_res_AWBURST),
        .S02_AXI_awcache(sender_m_axi_gmem_res_AWCACHE),
        .S02_AXI_awid(sender_m_axi_gmem_res_AWID),
        .S02_AXI_awlen(sender_m_axi_gmem_res_AWLEN),
        .S02_AXI_awlock(sender_m_axi_gmem_res_AWLOCK),
        .S02_AXI_awprot(sender_m_axi_gmem_res_AWPROT),
        .S02_AXI_awqos(sender_m_axi_gmem_res_AWQOS),
        .S02_AXI_awready(sender_m_axi_gmem_res_AWREADY),
        .S02_AXI_awsize(sender_m_axi_gmem_res_AWSIZE),
        .S02_AXI_awvalid(sender_m_axi_gmem_res_AWVALID),
        .S02_AXI_bid(sender_m_axi_gmem_res_BID),
        .S02_AXI_bready(sender_m_axi_gmem_res_BREADY),
        .S02_AXI_bresp(sender_m_axi_gmem_res_BRESP),
        .S02_AXI_bvalid(sender_m_axi_gmem_res_BVALID),
        .S02_AXI_rdata(sender_m_axi_gmem_res_RDATA),
        .S02_AXI_rid(sender_m_axi_gmem_res_RID),
        .S02_AXI_rlast(sender_m_axi_gmem_res_RLAST),
        .S02_AXI_rready(sender_m_axi_gmem_res_RREADY),
        .S02_AXI_rresp(sender_m_axi_gmem_res_RRESP),
        .S02_AXI_rvalid(sender_m_axi_gmem_res_RVALID),
        .S02_AXI_wdata(sender_m_axi_gmem_res_WDATA),
        .S02_AXI_wlast(sender_m_axi_gmem_res_WLAST),
        .S02_AXI_wready(sender_m_axi_gmem_res_WREADY),
        .S02_AXI_wstrb(sender_m_axi_gmem_res_WSTRB),
        .S02_AXI_wvalid(sender_m_axi_gmem_res_WVALID));
  vae_sender_locked_0 locked
       (.dout(locked_dout));
  vae_sender_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(ps7_FCLK_CLK0),
        .FCLK_RESET0_N(ps7_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(ps7_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(ps7_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps7_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps7_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps7_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps7_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps7_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps7_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps7_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps7_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps7_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps7_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps7_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps7_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps7_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps7_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps7_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps7_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps7_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps7_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps7_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps7_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps7_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps7_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps7_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps7_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps7_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps7_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps7_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps7_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps7_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps7_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps7_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps7_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps7_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps7_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps7_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps7_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps7_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(ps7_FCLK_CLK0),
        .S_AXI_HP0_ARADDR(ddr_axi_M00_AXI_ARADDR),
        .S_AXI_HP0_ARBURST(ddr_axi_M00_AXI_ARBURST),
        .S_AXI_HP0_ARCACHE(ddr_axi_M00_AXI_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_ARLEN(ddr_axi_M00_AXI_ARLEN),
        .S_AXI_HP0_ARLOCK(ddr_axi_M00_AXI_ARLOCK),
        .S_AXI_HP0_ARPROT(ddr_axi_M00_AXI_ARPROT),
        .S_AXI_HP0_ARQOS(ddr_axi_M00_AXI_ARQOS),
        .S_AXI_HP0_ARREADY(ddr_axi_M00_AXI_ARREADY),
        .S_AXI_HP0_ARSIZE(ddr_axi_M00_AXI_ARSIZE),
        .S_AXI_HP0_ARVALID(ddr_axi_M00_AXI_ARVALID),
        .S_AXI_HP0_AWADDR(ddr_axi_M00_AXI_AWADDR),
        .S_AXI_HP0_AWBURST(ddr_axi_M00_AXI_AWBURST),
        .S_AXI_HP0_AWCACHE(ddr_axi_M00_AXI_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_AWLEN(ddr_axi_M00_AXI_AWLEN),
        .S_AXI_HP0_AWLOCK(ddr_axi_M00_AXI_AWLOCK),
        .S_AXI_HP0_AWPROT(ddr_axi_M00_AXI_AWPROT),
        .S_AXI_HP0_AWQOS(ddr_axi_M00_AXI_AWQOS),
        .S_AXI_HP0_AWREADY(ddr_axi_M00_AXI_AWREADY),
        .S_AXI_HP0_AWSIZE(ddr_axi_M00_AXI_AWSIZE),
        .S_AXI_HP0_AWVALID(ddr_axi_M00_AXI_AWVALID),
        .S_AXI_HP0_BREADY(ddr_axi_M00_AXI_BREADY),
        .S_AXI_HP0_BRESP(ddr_axi_M00_AXI_BRESP),
        .S_AXI_HP0_BVALID(ddr_axi_M00_AXI_BVALID),
        .S_AXI_HP0_RDATA(ddr_axi_M00_AXI_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RLAST(ddr_axi_M00_AXI_RLAST),
        .S_AXI_HP0_RREADY(ddr_axi_M00_AXI_RREADY),
        .S_AXI_HP0_RRESP(ddr_axi_M00_AXI_RRESP),
        .S_AXI_HP0_RVALID(ddr_axi_M00_AXI_RVALID),
        .S_AXI_HP0_WDATA(ddr_axi_M00_AXI_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP0_WLAST(ddr_axi_M00_AXI_WLAST),
        .S_AXI_HP0_WREADY(ddr_axi_M00_AXI_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(ddr_axi_M00_AXI_WSTRB),
        .S_AXI_HP0_WVALID(ddr_axi_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  vae_sender_reset_0_0 reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(locked_dout),
        .ext_reset_in(ps7_FCLK_RESET0_N),
        .interconnect_aresetn(reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_0_peripheral_aresetn),
        .slowest_sync_clk(ps7_FCLK_CLK0));
  vae_sender_sender_0 sender
       (.ap_clk(ps7_FCLK_CLK0),
        .ap_rst_n(reset_0_peripheral_aresetn),
        .cycle_rx_dout(cycles_count),
        .cycle_rx_empty_n(cycles_not_empty),
        .cycle_tx_dout(cycles_count),
        .cycle_tx_empty_n(cycles_not_empty),
        .m_axi_gmem_in_ARADDR(sender_m_axi_gmem_in_ARADDR),
        .m_axi_gmem_in_ARBURST(sender_m_axi_gmem_in_ARBURST),
        .m_axi_gmem_in_ARCACHE(sender_m_axi_gmem_in_ARCACHE),
        .m_axi_gmem_in_ARID(sender_m_axi_gmem_in_ARID),
        .m_axi_gmem_in_ARLEN(sender_m_axi_gmem_in_ARLEN),
        .m_axi_gmem_in_ARLOCK(sender_m_axi_gmem_in_ARLOCK),
        .m_axi_gmem_in_ARPROT(sender_m_axi_gmem_in_ARPROT),
        .m_axi_gmem_in_ARQOS(sender_m_axi_gmem_in_ARQOS),
        .m_axi_gmem_in_ARREADY(sender_m_axi_gmem_in_ARREADY),
        .m_axi_gmem_in_ARREGION(sender_m_axi_gmem_in_ARREGION),
        .m_axi_gmem_in_ARSIZE(sender_m_axi_gmem_in_ARSIZE),
        .m_axi_gmem_in_ARVALID(sender_m_axi_gmem_in_ARVALID),
        .m_axi_gmem_in_AWREADY(1'b0),
        .m_axi_gmem_in_BID(1'b0),
        .m_axi_gmem_in_BRESP({1'b0,1'b0}),
        .m_axi_gmem_in_BVALID(1'b0),
        .m_axi_gmem_in_RDATA(sender_m_axi_gmem_in_RDATA),
        .m_axi_gmem_in_RID(sender_m_axi_gmem_in_RID),
        .m_axi_gmem_in_RLAST(sender_m_axi_gmem_in_RLAST),
        .m_axi_gmem_in_RREADY(sender_m_axi_gmem_in_RREADY),
        .m_axi_gmem_in_RRESP(sender_m_axi_gmem_in_RRESP),
        .m_axi_gmem_in_RVALID(sender_m_axi_gmem_in_RVALID),
        .m_axi_gmem_in_WREADY(1'b0),
        .m_axi_gmem_res_ARADDR(sender_m_axi_gmem_res_ARADDR),
        .m_axi_gmem_res_ARBURST(sender_m_axi_gmem_res_ARBURST),
        .m_axi_gmem_res_ARCACHE(sender_m_axi_gmem_res_ARCACHE),
        .m_axi_gmem_res_ARID(sender_m_axi_gmem_res_ARID),
        .m_axi_gmem_res_ARLEN(sender_m_axi_gmem_res_ARLEN),
        .m_axi_gmem_res_ARLOCK(sender_m_axi_gmem_res_ARLOCK),
        .m_axi_gmem_res_ARPROT(sender_m_axi_gmem_res_ARPROT),
        .m_axi_gmem_res_ARQOS(sender_m_axi_gmem_res_ARQOS),
        .m_axi_gmem_res_ARREADY(sender_m_axi_gmem_res_ARREADY),
        .m_axi_gmem_res_ARSIZE(sender_m_axi_gmem_res_ARSIZE),
        .m_axi_gmem_res_ARVALID(sender_m_axi_gmem_res_ARVALID),
        .m_axi_gmem_res_AWADDR(sender_m_axi_gmem_res_AWADDR),
        .m_axi_gmem_res_AWBURST(sender_m_axi_gmem_res_AWBURST),
        .m_axi_gmem_res_AWCACHE(sender_m_axi_gmem_res_AWCACHE),
        .m_axi_gmem_res_AWID(sender_m_axi_gmem_res_AWID),
        .m_axi_gmem_res_AWLEN(sender_m_axi_gmem_res_AWLEN),
        .m_axi_gmem_res_AWLOCK(sender_m_axi_gmem_res_AWLOCK),
        .m_axi_gmem_res_AWPROT(sender_m_axi_gmem_res_AWPROT),
        .m_axi_gmem_res_AWQOS(sender_m_axi_gmem_res_AWQOS),
        .m_axi_gmem_res_AWREADY(sender_m_axi_gmem_res_AWREADY),
        .m_axi_gmem_res_AWSIZE(sender_m_axi_gmem_res_AWSIZE),
        .m_axi_gmem_res_AWVALID(sender_m_axi_gmem_res_AWVALID),
        .m_axi_gmem_res_BID(sender_m_axi_gmem_res_BID[0]),
        .m_axi_gmem_res_BREADY(sender_m_axi_gmem_res_BREADY),
        .m_axi_gmem_res_BRESP(sender_m_axi_gmem_res_BRESP),
        .m_axi_gmem_res_BVALID(sender_m_axi_gmem_res_BVALID),
        .m_axi_gmem_res_RDATA(sender_m_axi_gmem_res_RDATA),
        .m_axi_gmem_res_RID(sender_m_axi_gmem_res_RID[0]),
        .m_axi_gmem_res_RLAST(sender_m_axi_gmem_res_RLAST),
        .m_axi_gmem_res_RREADY(sender_m_axi_gmem_res_RREADY),
        .m_axi_gmem_res_RRESP(sender_m_axi_gmem_res_RRESP),
        .m_axi_gmem_res_RVALID(sender_m_axi_gmem_res_RVALID),
        .m_axi_gmem_res_WDATA(sender_m_axi_gmem_res_WDATA),
        .m_axi_gmem_res_WLAST(sender_m_axi_gmem_res_WLAST),
        .m_axi_gmem_res_WREADY(sender_m_axi_gmem_res_WREADY),
        .m_axi_gmem_res_WSTRB(sender_m_axi_gmem_res_WSTRB),
        .m_axi_gmem_res_WVALID(sender_m_axi_gmem_res_WVALID),
        .m_axi_gmem_ts_ARREADY(1'b0),
        .m_axi_gmem_ts_AWADDR(sender_m_axi_gmem_ts_AWADDR),
        .m_axi_gmem_ts_AWBURST(sender_m_axi_gmem_ts_AWBURST),
        .m_axi_gmem_ts_AWCACHE(sender_m_axi_gmem_ts_AWCACHE),
        .m_axi_gmem_ts_AWID(sender_m_axi_gmem_ts_AWID),
        .m_axi_gmem_ts_AWLEN(sender_m_axi_gmem_ts_AWLEN),
        .m_axi_gmem_ts_AWLOCK(sender_m_axi_gmem_ts_AWLOCK),
        .m_axi_gmem_ts_AWPROT(sender_m_axi_gmem_ts_AWPROT),
        .m_axi_gmem_ts_AWQOS(sender_m_axi_gmem_ts_AWQOS),
        .m_axi_gmem_ts_AWREADY(sender_m_axi_gmem_ts_AWREADY),
        .m_axi_gmem_ts_AWREGION(sender_m_axi_gmem_ts_AWREGION),
        .m_axi_gmem_ts_AWSIZE(sender_m_axi_gmem_ts_AWSIZE),
        .m_axi_gmem_ts_AWVALID(sender_m_axi_gmem_ts_AWVALID),
        .m_axi_gmem_ts_BID(sender_m_axi_gmem_ts_BID),
        .m_axi_gmem_ts_BREADY(sender_m_axi_gmem_ts_BREADY),
        .m_axi_gmem_ts_BRESP(sender_m_axi_gmem_ts_BRESP),
        .m_axi_gmem_ts_BVALID(sender_m_axi_gmem_ts_BVALID),
        .m_axi_gmem_ts_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_gmem_ts_RID(1'b0),
        .m_axi_gmem_ts_RLAST(1'b0),
        .m_axi_gmem_ts_RRESP({1'b0,1'b0}),
        .m_axi_gmem_ts_RVALID(1'b0),
        .m_axi_gmem_ts_WDATA(sender_m_axi_gmem_ts_WDATA),
        .m_axi_gmem_ts_WLAST(sender_m_axi_gmem_ts_WLAST),
        .m_axi_gmem_ts_WREADY(sender_m_axi_gmem_ts_WREADY),
        .m_axi_gmem_ts_WSTRB(sender_m_axi_gmem_ts_WSTRB),
        .m_axi_gmem_ts_WVALID(sender_m_axi_gmem_ts_WVALID),
        .m_axis_features_TDATA(sender_m_axis_features_TDATA),
        .m_axis_features_TKEEP(sender_m_axis_features_TKEEP),
        .m_axis_features_TLAST(sender_m_axis_features_TLAST),
        .m_axis_features_TREADY(sender_m_axis_features_TREADY),
        .m_axis_features_TSTRB(sender_m_axis_features_TSTRB),
        .m_axis_features_TVALID(sender_m_axis_features_TVALID),
        .s_axi_control_ARADDR(control_axi_M00_AXI_ARADDR[6:0]),
        .s_axi_control_ARREADY(control_axi_M00_AXI_ARREADY),
        .s_axi_control_ARVALID(control_axi_M00_AXI_ARVALID),
        .s_axi_control_AWADDR(control_axi_M00_AXI_AWADDR[6:0]),
        .s_axi_control_AWREADY(control_axi_M00_AXI_AWREADY),
        .s_axi_control_AWVALID(control_axi_M00_AXI_AWVALID),
        .s_axi_control_BREADY(control_axi_M00_AXI_BREADY),
        .s_axi_control_BRESP(control_axi_M00_AXI_BRESP),
        .s_axi_control_BVALID(control_axi_M00_AXI_BVALID),
        .s_axi_control_RDATA(control_axi_M00_AXI_RDATA),
        .s_axi_control_RREADY(control_axi_M00_AXI_RREADY),
        .s_axi_control_RRESP(control_axi_M00_AXI_RRESP),
        .s_axi_control_RVALID(control_axi_M00_AXI_RVALID),
        .s_axi_control_WDATA(control_axi_M00_AXI_WDATA),
        .s_axi_control_WREADY(control_axi_M00_AXI_WREADY),
        .s_axi_control_WSTRB(control_axi_M00_AXI_WSTRB),
        .s_axi_control_WVALID(control_axi_M00_AXI_WVALID),
        .s_axis_score_TDATA(vae_m_axis_score_TDATA),
        .s_axis_score_TKEEP(vae_m_axis_score_TKEEP),
        .s_axis_score_TLAST(vae_m_axis_score_TLAST),
        .s_axis_score_TREADY(vae_m_axis_score_TREADY),
        .s_axis_score_TSTRB(vae_m_axis_score_TSTRB),
        .s_axis_score_TVALID(vae_m_axis_score_TVALID));
  vae_sender_vae_0 vae
       (.ap_clk(ps7_FCLK_CLK0),
        .ap_rst_n(reset_0_peripheral_aresetn),
        .m_axis_score_TDATA(vae_m_axis_score_TDATA),
        .m_axis_score_TKEEP(vae_m_axis_score_TKEEP),
        .m_axis_score_TLAST(vae_m_axis_score_TLAST),
        .m_axis_score_TREADY(vae_m_axis_score_TREADY),
        .m_axis_score_TSTRB(vae_m_axis_score_TSTRB),
        .m_axis_score_TVALID(vae_m_axis_score_TVALID),
        .s_axis_features_TDATA(sender_m_axis_features_TDATA),
        .s_axis_features_TKEEP(sender_m_axis_features_TKEEP),
        .s_axis_features_TLAST(sender_m_axis_features_TLAST),
        .s_axis_features_TREADY(sender_m_axis_features_TREADY),
        .s_axis_features_TSTRB(sender_m_axis_features_TSTRB),
        .s_axis_features_TVALID(sender_m_axis_features_TVALID));
endmodule

module vae_sender_control_axi_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire control_axi_ACLK_net;
  wire control_axi_ARESETN_net;
  wire [31:0]control_axi_to_s00_couplers_ARADDR;
  wire [1:0]control_axi_to_s00_couplers_ARBURST;
  wire [3:0]control_axi_to_s00_couplers_ARCACHE;
  wire [11:0]control_axi_to_s00_couplers_ARID;
  wire [3:0]control_axi_to_s00_couplers_ARLEN;
  wire [1:0]control_axi_to_s00_couplers_ARLOCK;
  wire [2:0]control_axi_to_s00_couplers_ARPROT;
  wire [3:0]control_axi_to_s00_couplers_ARQOS;
  wire control_axi_to_s00_couplers_ARREADY;
  wire [2:0]control_axi_to_s00_couplers_ARSIZE;
  wire control_axi_to_s00_couplers_ARVALID;
  wire [31:0]control_axi_to_s00_couplers_AWADDR;
  wire [1:0]control_axi_to_s00_couplers_AWBURST;
  wire [3:0]control_axi_to_s00_couplers_AWCACHE;
  wire [11:0]control_axi_to_s00_couplers_AWID;
  wire [3:0]control_axi_to_s00_couplers_AWLEN;
  wire [1:0]control_axi_to_s00_couplers_AWLOCK;
  wire [2:0]control_axi_to_s00_couplers_AWPROT;
  wire [3:0]control_axi_to_s00_couplers_AWQOS;
  wire control_axi_to_s00_couplers_AWREADY;
  wire [2:0]control_axi_to_s00_couplers_AWSIZE;
  wire control_axi_to_s00_couplers_AWVALID;
  wire [11:0]control_axi_to_s00_couplers_BID;
  wire control_axi_to_s00_couplers_BREADY;
  wire [1:0]control_axi_to_s00_couplers_BRESP;
  wire control_axi_to_s00_couplers_BVALID;
  wire [31:0]control_axi_to_s00_couplers_RDATA;
  wire [11:0]control_axi_to_s00_couplers_RID;
  wire control_axi_to_s00_couplers_RLAST;
  wire control_axi_to_s00_couplers_RREADY;
  wire [1:0]control_axi_to_s00_couplers_RRESP;
  wire control_axi_to_s00_couplers_RVALID;
  wire [31:0]control_axi_to_s00_couplers_WDATA;
  wire [11:0]control_axi_to_s00_couplers_WID;
  wire control_axi_to_s00_couplers_WLAST;
  wire control_axi_to_s00_couplers_WREADY;
  wire [3:0]control_axi_to_s00_couplers_WSTRB;
  wire control_axi_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_control_axi_ARADDR;
  wire s00_couplers_to_control_axi_ARREADY;
  wire s00_couplers_to_control_axi_ARVALID;
  wire [31:0]s00_couplers_to_control_axi_AWADDR;
  wire s00_couplers_to_control_axi_AWREADY;
  wire s00_couplers_to_control_axi_AWVALID;
  wire s00_couplers_to_control_axi_BREADY;
  wire [1:0]s00_couplers_to_control_axi_BRESP;
  wire s00_couplers_to_control_axi_BVALID;
  wire [31:0]s00_couplers_to_control_axi_RDATA;
  wire s00_couplers_to_control_axi_RREADY;
  wire [1:0]s00_couplers_to_control_axi_RRESP;
  wire s00_couplers_to_control_axi_RVALID;
  wire [31:0]s00_couplers_to_control_axi_WDATA;
  wire s00_couplers_to_control_axi_WREADY;
  wire [3:0]s00_couplers_to_control_axi_WSTRB;
  wire s00_couplers_to_control_axi_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_control_axi_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_control_axi_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_control_axi_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_control_axi_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_control_axi_BREADY;
  assign M00_AXI_rready = s00_couplers_to_control_axi_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_control_axi_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_control_axi_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_control_axi_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = control_axi_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = control_axi_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = control_axi_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = control_axi_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = control_axi_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = control_axi_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = control_axi_to_s00_couplers_RID;
  assign S00_AXI_rlast = control_axi_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = control_axi_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = control_axi_to_s00_couplers_RVALID;
  assign S00_AXI_wready = control_axi_to_s00_couplers_WREADY;
  assign control_axi_ACLK_net = M00_ACLK;
  assign control_axi_ARESETN_net = M00_ARESETN;
  assign control_axi_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign control_axi_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign control_axi_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign control_axi_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign control_axi_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign control_axi_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign control_axi_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign control_axi_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign control_axi_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign control_axi_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign control_axi_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign control_axi_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign control_axi_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign control_axi_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign control_axi_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign control_axi_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign control_axi_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign control_axi_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign control_axi_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign control_axi_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign control_axi_to_s00_couplers_BREADY = S00_AXI_bready;
  assign control_axi_to_s00_couplers_RREADY = S00_AXI_rready;
  assign control_axi_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign control_axi_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign control_axi_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign control_axi_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign control_axi_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_control_axi_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_control_axi_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_control_axi_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_control_axi_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_control_axi_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_control_axi_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_control_axi_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_control_axi_WREADY = M00_AXI_wready;
  s00_couplers_imp_1REB5YD s00_couplers
       (.M_ACLK(control_axi_ACLK_net),
        .M_ARESETN(control_axi_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_control_axi_ARADDR),
        .M_AXI_arready(s00_couplers_to_control_axi_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_control_axi_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_control_axi_AWADDR),
        .M_AXI_awready(s00_couplers_to_control_axi_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_control_axi_AWVALID),
        .M_AXI_bready(s00_couplers_to_control_axi_BREADY),
        .M_AXI_bresp(s00_couplers_to_control_axi_BRESP),
        .M_AXI_bvalid(s00_couplers_to_control_axi_BVALID),
        .M_AXI_rdata(s00_couplers_to_control_axi_RDATA),
        .M_AXI_rready(s00_couplers_to_control_axi_RREADY),
        .M_AXI_rresp(s00_couplers_to_control_axi_RRESP),
        .M_AXI_rvalid(s00_couplers_to_control_axi_RVALID),
        .M_AXI_wdata(s00_couplers_to_control_axi_WDATA),
        .M_AXI_wready(s00_couplers_to_control_axi_WREADY),
        .M_AXI_wstrb(s00_couplers_to_control_axi_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_control_axi_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(control_axi_to_s00_couplers_ARADDR),
        .S_AXI_arburst(control_axi_to_s00_couplers_ARBURST),
        .S_AXI_arcache(control_axi_to_s00_couplers_ARCACHE),
        .S_AXI_arid(control_axi_to_s00_couplers_ARID),
        .S_AXI_arlen(control_axi_to_s00_couplers_ARLEN),
        .S_AXI_arlock(control_axi_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(control_axi_to_s00_couplers_ARPROT),
        .S_AXI_arqos(control_axi_to_s00_couplers_ARQOS),
        .S_AXI_arready(control_axi_to_s00_couplers_ARREADY),
        .S_AXI_arsize(control_axi_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(control_axi_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(control_axi_to_s00_couplers_AWADDR),
        .S_AXI_awburst(control_axi_to_s00_couplers_AWBURST),
        .S_AXI_awcache(control_axi_to_s00_couplers_AWCACHE),
        .S_AXI_awid(control_axi_to_s00_couplers_AWID),
        .S_AXI_awlen(control_axi_to_s00_couplers_AWLEN),
        .S_AXI_awlock(control_axi_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(control_axi_to_s00_couplers_AWPROT),
        .S_AXI_awqos(control_axi_to_s00_couplers_AWQOS),
        .S_AXI_awready(control_axi_to_s00_couplers_AWREADY),
        .S_AXI_awsize(control_axi_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(control_axi_to_s00_couplers_AWVALID),
        .S_AXI_bid(control_axi_to_s00_couplers_BID),
        .S_AXI_bready(control_axi_to_s00_couplers_BREADY),
        .S_AXI_bresp(control_axi_to_s00_couplers_BRESP),
        .S_AXI_bvalid(control_axi_to_s00_couplers_BVALID),
        .S_AXI_rdata(control_axi_to_s00_couplers_RDATA),
        .S_AXI_rid(control_axi_to_s00_couplers_RID),
        .S_AXI_rlast(control_axi_to_s00_couplers_RLAST),
        .S_AXI_rready(control_axi_to_s00_couplers_RREADY),
        .S_AXI_rresp(control_axi_to_s00_couplers_RRESP),
        .S_AXI_rvalid(control_axi_to_s00_couplers_RVALID),
        .S_AXI_wdata(control_axi_to_s00_couplers_WDATA),
        .S_AXI_wid(control_axi_to_s00_couplers_WID),
        .S_AXI_wlast(control_axi_to_s00_couplers_WLAST),
        .S_AXI_wready(control_axi_to_s00_couplers_WREADY),
        .S_AXI_wstrb(control_axi_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(control_axi_to_s00_couplers_WVALID));
endmodule

module vae_sender_ddr_axi_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [63:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input [63:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [63:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [0:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [63:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [0:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  output [2:0]S02_AXI_bid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [127:0]S02_AXI_rdata;
  output [2:0]S02_AXI_rid;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [127:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [15:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire S01_ACLK_1;
  wire S01_ARESETN_1;
  wire S02_ACLK_1;
  wire S02_ARESETN_1;
  wire ddr_axi_ACLK_net;
  wire ddr_axi_ARESETN_net;
  wire [63:0]ddr_axi_to_s00_couplers_ARADDR;
  wire [1:0]ddr_axi_to_s00_couplers_ARBURST;
  wire [3:0]ddr_axi_to_s00_couplers_ARCACHE;
  wire [0:0]ddr_axi_to_s00_couplers_ARID;
  wire [7:0]ddr_axi_to_s00_couplers_ARLEN;
  wire [1:0]ddr_axi_to_s00_couplers_ARLOCK;
  wire [2:0]ddr_axi_to_s00_couplers_ARPROT;
  wire [3:0]ddr_axi_to_s00_couplers_ARQOS;
  wire ddr_axi_to_s00_couplers_ARREADY;
  wire [3:0]ddr_axi_to_s00_couplers_ARREGION;
  wire [2:0]ddr_axi_to_s00_couplers_ARSIZE;
  wire ddr_axi_to_s00_couplers_ARVALID;
  wire [31:0]ddr_axi_to_s00_couplers_RDATA;
  wire [0:0]ddr_axi_to_s00_couplers_RID;
  wire ddr_axi_to_s00_couplers_RLAST;
  wire ddr_axi_to_s00_couplers_RREADY;
  wire [1:0]ddr_axi_to_s00_couplers_RRESP;
  wire ddr_axi_to_s00_couplers_RVALID;
  wire [63:0]ddr_axi_to_s01_couplers_AWADDR;
  wire [1:0]ddr_axi_to_s01_couplers_AWBURST;
  wire [3:0]ddr_axi_to_s01_couplers_AWCACHE;
  wire [0:0]ddr_axi_to_s01_couplers_AWID;
  wire [7:0]ddr_axi_to_s01_couplers_AWLEN;
  wire [1:0]ddr_axi_to_s01_couplers_AWLOCK;
  wire [2:0]ddr_axi_to_s01_couplers_AWPROT;
  wire [3:0]ddr_axi_to_s01_couplers_AWQOS;
  wire ddr_axi_to_s01_couplers_AWREADY;
  wire [3:0]ddr_axi_to_s01_couplers_AWREGION;
  wire [2:0]ddr_axi_to_s01_couplers_AWSIZE;
  wire ddr_axi_to_s01_couplers_AWVALID;
  wire [0:0]ddr_axi_to_s01_couplers_BID;
  wire ddr_axi_to_s01_couplers_BREADY;
  wire [1:0]ddr_axi_to_s01_couplers_BRESP;
  wire ddr_axi_to_s01_couplers_BVALID;
  wire [63:0]ddr_axi_to_s01_couplers_WDATA;
  wire ddr_axi_to_s01_couplers_WLAST;
  wire ddr_axi_to_s01_couplers_WREADY;
  wire [7:0]ddr_axi_to_s01_couplers_WSTRB;
  wire ddr_axi_to_s01_couplers_WVALID;
  wire [63:0]ddr_axi_to_s02_couplers_ARADDR;
  wire [1:0]ddr_axi_to_s02_couplers_ARBURST;
  wire [3:0]ddr_axi_to_s02_couplers_ARCACHE;
  wire [0:0]ddr_axi_to_s02_couplers_ARID;
  wire [7:0]ddr_axi_to_s02_couplers_ARLEN;
  wire [1:0]ddr_axi_to_s02_couplers_ARLOCK;
  wire [2:0]ddr_axi_to_s02_couplers_ARPROT;
  wire [3:0]ddr_axi_to_s02_couplers_ARQOS;
  wire ddr_axi_to_s02_couplers_ARREADY;
  wire [2:0]ddr_axi_to_s02_couplers_ARSIZE;
  wire ddr_axi_to_s02_couplers_ARVALID;
  wire [63:0]ddr_axi_to_s02_couplers_AWADDR;
  wire [1:0]ddr_axi_to_s02_couplers_AWBURST;
  wire [3:0]ddr_axi_to_s02_couplers_AWCACHE;
  wire [0:0]ddr_axi_to_s02_couplers_AWID;
  wire [7:0]ddr_axi_to_s02_couplers_AWLEN;
  wire [1:0]ddr_axi_to_s02_couplers_AWLOCK;
  wire [2:0]ddr_axi_to_s02_couplers_AWPROT;
  wire [3:0]ddr_axi_to_s02_couplers_AWQOS;
  wire ddr_axi_to_s02_couplers_AWREADY;
  wire [2:0]ddr_axi_to_s02_couplers_AWSIZE;
  wire ddr_axi_to_s02_couplers_AWVALID;
  wire [2:0]ddr_axi_to_s02_couplers_BID;
  wire ddr_axi_to_s02_couplers_BREADY;
  wire [1:0]ddr_axi_to_s02_couplers_BRESP;
  wire ddr_axi_to_s02_couplers_BVALID;
  wire [127:0]ddr_axi_to_s02_couplers_RDATA;
  wire [2:0]ddr_axi_to_s02_couplers_RID;
  wire ddr_axi_to_s02_couplers_RLAST;
  wire ddr_axi_to_s02_couplers_RREADY;
  wire [1:0]ddr_axi_to_s02_couplers_RRESP;
  wire ddr_axi_to_s02_couplers_RVALID;
  wire [127:0]ddr_axi_to_s02_couplers_WDATA;
  wire ddr_axi_to_s02_couplers_WLAST;
  wire ddr_axi_to_s02_couplers_WREADY;
  wire [15:0]ddr_axi_to_s02_couplers_WSTRB;
  wire ddr_axi_to_s02_couplers_WVALID;
  wire [31:0]m00_couplers_to_ddr_axi_ARADDR;
  wire [1:0]m00_couplers_to_ddr_axi_ARBURST;
  wire [3:0]m00_couplers_to_ddr_axi_ARCACHE;
  wire [3:0]m00_couplers_to_ddr_axi_ARLEN;
  wire [1:0]m00_couplers_to_ddr_axi_ARLOCK;
  wire [2:0]m00_couplers_to_ddr_axi_ARPROT;
  wire [3:0]m00_couplers_to_ddr_axi_ARQOS;
  wire m00_couplers_to_ddr_axi_ARREADY;
  wire [2:0]m00_couplers_to_ddr_axi_ARSIZE;
  wire m00_couplers_to_ddr_axi_ARVALID;
  wire [31:0]m00_couplers_to_ddr_axi_AWADDR;
  wire [1:0]m00_couplers_to_ddr_axi_AWBURST;
  wire [3:0]m00_couplers_to_ddr_axi_AWCACHE;
  wire [3:0]m00_couplers_to_ddr_axi_AWLEN;
  wire [1:0]m00_couplers_to_ddr_axi_AWLOCK;
  wire [2:0]m00_couplers_to_ddr_axi_AWPROT;
  wire [3:0]m00_couplers_to_ddr_axi_AWQOS;
  wire m00_couplers_to_ddr_axi_AWREADY;
  wire [2:0]m00_couplers_to_ddr_axi_AWSIZE;
  wire m00_couplers_to_ddr_axi_AWVALID;
  wire m00_couplers_to_ddr_axi_BREADY;
  wire [1:0]m00_couplers_to_ddr_axi_BRESP;
  wire m00_couplers_to_ddr_axi_BVALID;
  wire [63:0]m00_couplers_to_ddr_axi_RDATA;
  wire m00_couplers_to_ddr_axi_RLAST;
  wire m00_couplers_to_ddr_axi_RREADY;
  wire [1:0]m00_couplers_to_ddr_axi_RRESP;
  wire m00_couplers_to_ddr_axi_RVALID;
  wire [63:0]m00_couplers_to_ddr_axi_WDATA;
  wire m00_couplers_to_ddr_axi_WLAST;
  wire m00_couplers_to_ddr_axi_WREADY;
  wire [7:0]m00_couplers_to_ddr_axi_WSTRB;
  wire m00_couplers_to_ddr_axi_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [127:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [15:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [63:0]s02_couplers_to_xbar_ARADDR;
  wire [1:0]s02_couplers_to_xbar_ARBURST;
  wire [3:0]s02_couplers_to_xbar_ARCACHE;
  wire [0:0]s02_couplers_to_xbar_ARID;
  wire [7:0]s02_couplers_to_xbar_ARLEN;
  wire [1:0]s02_couplers_to_xbar_ARLOCK;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [3:0]s02_couplers_to_xbar_ARQOS;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire [2:0]s02_couplers_to_xbar_ARSIZE;
  wire s02_couplers_to_xbar_ARVALID;
  wire [63:0]s02_couplers_to_xbar_AWADDR;
  wire [1:0]s02_couplers_to_xbar_AWBURST;
  wire [3:0]s02_couplers_to_xbar_AWCACHE;
  wire [0:0]s02_couplers_to_xbar_AWID;
  wire [7:0]s02_couplers_to_xbar_AWLEN;
  wire [1:0]s02_couplers_to_xbar_AWLOCK;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [3:0]s02_couplers_to_xbar_AWQOS;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire [2:0]s02_couplers_to_xbar_AWSIZE;
  wire s02_couplers_to_xbar_AWVALID;
  wire [8:6]s02_couplers_to_xbar_BID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [383:256]s02_couplers_to_xbar_RDATA;
  wire [8:6]s02_couplers_to_xbar_RID;
  wire [2:2]s02_couplers_to_xbar_RLAST;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [127:0]s02_couplers_to_xbar_WDATA;
  wire s02_couplers_to_xbar_WLAST;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [15:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [2:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [2:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [2:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [127:0]xbar_to_m00_couplers_RDATA;
  wire [2:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [127:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [15:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [2:0]NLW_xbar_s_axi_arready_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_awready_UNCONNECTED;
  wire [8:0]NLW_xbar_s_axi_bid_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_bvalid_UNCONNECTED;
  wire [383:0]NLW_xbar_s_axi_rdata_UNCONNECTED;
  wire [8:0]NLW_xbar_s_axi_rid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rlast_UNCONNECTED;
  wire [5:0]NLW_xbar_s_axi_rresp_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_rvalid_UNCONNECTED;
  wire [2:0]NLW_xbar_s_axi_wready_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_ddr_axi_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_ddr_axi_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_ddr_axi_ARCACHE;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_ddr_axi_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_ddr_axi_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_ddr_axi_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_ddr_axi_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_ddr_axi_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_ddr_axi_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ddr_axi_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_ddr_axi_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_ddr_axi_AWCACHE;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_ddr_axi_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_ddr_axi_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_ddr_axi_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_ddr_axi_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_ddr_axi_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_ddr_axi_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ddr_axi_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ddr_axi_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_ddr_axi_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_ddr_axi_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_ddr_axi_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_ddr_axi_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ddr_axi_to_s00_couplers_ARREADY;
  assign S00_AXI_rdata[31:0] = ddr_axi_to_s00_couplers_RDATA;
  assign S00_AXI_rid[0] = ddr_axi_to_s00_couplers_RID;
  assign S00_AXI_rlast = ddr_axi_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ddr_axi_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ddr_axi_to_s00_couplers_RVALID;
  assign S01_ACLK_1 = S01_ACLK;
  assign S01_ARESETN_1 = S01_ARESETN;
  assign S01_AXI_awready = ddr_axi_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = ddr_axi_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = ddr_axi_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = ddr_axi_to_s01_couplers_BVALID;
  assign S01_AXI_wready = ddr_axi_to_s01_couplers_WREADY;
  assign S02_ACLK_1 = S02_ACLK;
  assign S02_ARESETN_1 = S02_ARESETN;
  assign S02_AXI_arready = ddr_axi_to_s02_couplers_ARREADY;
  assign S02_AXI_awready = ddr_axi_to_s02_couplers_AWREADY;
  assign S02_AXI_bid[2:0] = ddr_axi_to_s02_couplers_BID;
  assign S02_AXI_bresp[1:0] = ddr_axi_to_s02_couplers_BRESP;
  assign S02_AXI_bvalid = ddr_axi_to_s02_couplers_BVALID;
  assign S02_AXI_rdata[127:0] = ddr_axi_to_s02_couplers_RDATA;
  assign S02_AXI_rid[2:0] = ddr_axi_to_s02_couplers_RID;
  assign S02_AXI_rlast = ddr_axi_to_s02_couplers_RLAST;
  assign S02_AXI_rresp[1:0] = ddr_axi_to_s02_couplers_RRESP;
  assign S02_AXI_rvalid = ddr_axi_to_s02_couplers_RVALID;
  assign S02_AXI_wready = ddr_axi_to_s02_couplers_WREADY;
  assign ddr_axi_ACLK_net = ACLK;
  assign ddr_axi_ARESETN_net = ARESETN;
  assign ddr_axi_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign ddr_axi_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ddr_axi_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ddr_axi_to_s00_couplers_ARID = S00_AXI_arid[0];
  assign ddr_axi_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ddr_axi_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ddr_axi_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ddr_axi_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ddr_axi_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign ddr_axi_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ddr_axi_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ddr_axi_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ddr_axi_to_s01_couplers_AWADDR = S01_AXI_awaddr[63:0];
  assign ddr_axi_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign ddr_axi_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign ddr_axi_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign ddr_axi_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign ddr_axi_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign ddr_axi_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign ddr_axi_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign ddr_axi_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign ddr_axi_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign ddr_axi_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign ddr_axi_to_s01_couplers_BREADY = S01_AXI_bready;
  assign ddr_axi_to_s01_couplers_WDATA = S01_AXI_wdata[63:0];
  assign ddr_axi_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign ddr_axi_to_s01_couplers_WSTRB = S01_AXI_wstrb[7:0];
  assign ddr_axi_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign ddr_axi_to_s02_couplers_ARADDR = S02_AXI_araddr[63:0];
  assign ddr_axi_to_s02_couplers_ARBURST = S02_AXI_arburst[1:0];
  assign ddr_axi_to_s02_couplers_ARCACHE = S02_AXI_arcache[3:0];
  assign ddr_axi_to_s02_couplers_ARID = S02_AXI_arid[0];
  assign ddr_axi_to_s02_couplers_ARLEN = S02_AXI_arlen[7:0];
  assign ddr_axi_to_s02_couplers_ARLOCK = S02_AXI_arlock[1:0];
  assign ddr_axi_to_s02_couplers_ARPROT = S02_AXI_arprot[2:0];
  assign ddr_axi_to_s02_couplers_ARQOS = S02_AXI_arqos[3:0];
  assign ddr_axi_to_s02_couplers_ARSIZE = S02_AXI_arsize[2:0];
  assign ddr_axi_to_s02_couplers_ARVALID = S02_AXI_arvalid;
  assign ddr_axi_to_s02_couplers_AWADDR = S02_AXI_awaddr[63:0];
  assign ddr_axi_to_s02_couplers_AWBURST = S02_AXI_awburst[1:0];
  assign ddr_axi_to_s02_couplers_AWCACHE = S02_AXI_awcache[3:0];
  assign ddr_axi_to_s02_couplers_AWID = S02_AXI_awid[0];
  assign ddr_axi_to_s02_couplers_AWLEN = S02_AXI_awlen[7:0];
  assign ddr_axi_to_s02_couplers_AWLOCK = S02_AXI_awlock[1:0];
  assign ddr_axi_to_s02_couplers_AWPROT = S02_AXI_awprot[2:0];
  assign ddr_axi_to_s02_couplers_AWQOS = S02_AXI_awqos[3:0];
  assign ddr_axi_to_s02_couplers_AWSIZE = S02_AXI_awsize[2:0];
  assign ddr_axi_to_s02_couplers_AWVALID = S02_AXI_awvalid;
  assign ddr_axi_to_s02_couplers_BREADY = S02_AXI_bready;
  assign ddr_axi_to_s02_couplers_RREADY = S02_AXI_rready;
  assign ddr_axi_to_s02_couplers_WDATA = S02_AXI_wdata[127:0];
  assign ddr_axi_to_s02_couplers_WLAST = S02_AXI_wlast;
  assign ddr_axi_to_s02_couplers_WSTRB = S02_AXI_wstrb[15:0];
  assign ddr_axi_to_s02_couplers_WVALID = S02_AXI_wvalid;
  assign m00_couplers_to_ddr_axi_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ddr_axi_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ddr_axi_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ddr_axi_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ddr_axi_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_ddr_axi_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_ddr_axi_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ddr_axi_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ddr_axi_WREADY = M00_AXI_wready;
  m00_couplers_imp_1N22XFU m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_ddr_axi_ARADDR),
        .M_AXI_arburst(m00_couplers_to_ddr_axi_ARBURST),
        .M_AXI_arcache(m00_couplers_to_ddr_axi_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_ddr_axi_ARLEN),
        .M_AXI_arlock(m00_couplers_to_ddr_axi_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_ddr_axi_ARPROT),
        .M_AXI_arqos(m00_couplers_to_ddr_axi_ARQOS),
        .M_AXI_arready(m00_couplers_to_ddr_axi_ARREADY),
        .M_AXI_arsize(m00_couplers_to_ddr_axi_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_ddr_axi_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ddr_axi_AWADDR),
        .M_AXI_awburst(m00_couplers_to_ddr_axi_AWBURST),
        .M_AXI_awcache(m00_couplers_to_ddr_axi_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_ddr_axi_AWLEN),
        .M_AXI_awlock(m00_couplers_to_ddr_axi_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_ddr_axi_AWPROT),
        .M_AXI_awqos(m00_couplers_to_ddr_axi_AWQOS),
        .M_AXI_awready(m00_couplers_to_ddr_axi_AWREADY),
        .M_AXI_awsize(m00_couplers_to_ddr_axi_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_ddr_axi_AWVALID),
        .M_AXI_bready(m00_couplers_to_ddr_axi_BREADY),
        .M_AXI_bresp(m00_couplers_to_ddr_axi_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ddr_axi_BVALID),
        .M_AXI_rdata(m00_couplers_to_ddr_axi_RDATA),
        .M_AXI_rlast(m00_couplers_to_ddr_axi_RLAST),
        .M_AXI_rready(m00_couplers_to_ddr_axi_RREADY),
        .M_AXI_rresp(m00_couplers_to_ddr_axi_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ddr_axi_RVALID),
        .M_AXI_wdata(m00_couplers_to_ddr_axi_WDATA),
        .M_AXI_wlast(m00_couplers_to_ddr_axi_WLAST),
        .M_AXI_wready(m00_couplers_to_ddr_axi_WREADY),
        .M_AXI_wstrb(m00_couplers_to_ddr_axi_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_ddr_axi_WVALID),
        .S_ACLK(ddr_axi_ACLK_net),
        .S_ARESETN(ddr_axi_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1EO1CEJ s00_couplers
       (.M_ACLK(ddr_axi_ACLK_net),
        .M_ARESETN(ddr_axi_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ddr_axi_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ddr_axi_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ddr_axi_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ddr_axi_to_s00_couplers_ARID),
        .S_AXI_arlen(ddr_axi_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ddr_axi_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ddr_axi_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ddr_axi_to_s00_couplers_ARQOS),
        .S_AXI_arready(ddr_axi_to_s00_couplers_ARREADY),
        .S_AXI_arregion(ddr_axi_to_s00_couplers_ARREGION),
        .S_AXI_arsize(ddr_axi_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ddr_axi_to_s00_couplers_ARVALID),
        .S_AXI_rdata(ddr_axi_to_s00_couplers_RDATA),
        .S_AXI_rid(ddr_axi_to_s00_couplers_RID),
        .S_AXI_rlast(ddr_axi_to_s00_couplers_RLAST),
        .S_AXI_rready(ddr_axi_to_s00_couplers_RREADY),
        .S_AXI_rresp(ddr_axi_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ddr_axi_to_s00_couplers_RVALID));
  s01_couplers_imp_1MTF5FX s01_couplers
       (.M_ACLK(ddr_axi_ACLK_net),
        .M_ARESETN(ddr_axi_ARESETN_net),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(S01_ACLK_1),
        .S_ARESETN(S01_ARESETN_1),
        .S_AXI_awaddr(ddr_axi_to_s01_couplers_AWADDR),
        .S_AXI_awburst(ddr_axi_to_s01_couplers_AWBURST),
        .S_AXI_awcache(ddr_axi_to_s01_couplers_AWCACHE),
        .S_AXI_awid(ddr_axi_to_s01_couplers_AWID),
        .S_AXI_awlen(ddr_axi_to_s01_couplers_AWLEN),
        .S_AXI_awlock(ddr_axi_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(ddr_axi_to_s01_couplers_AWPROT),
        .S_AXI_awqos(ddr_axi_to_s01_couplers_AWQOS),
        .S_AXI_awready(ddr_axi_to_s01_couplers_AWREADY),
        .S_AXI_awregion(ddr_axi_to_s01_couplers_AWREGION),
        .S_AXI_awsize(ddr_axi_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(ddr_axi_to_s01_couplers_AWVALID),
        .S_AXI_bid(ddr_axi_to_s01_couplers_BID),
        .S_AXI_bready(ddr_axi_to_s01_couplers_BREADY),
        .S_AXI_bresp(ddr_axi_to_s01_couplers_BRESP),
        .S_AXI_bvalid(ddr_axi_to_s01_couplers_BVALID),
        .S_AXI_wdata(ddr_axi_to_s01_couplers_WDATA),
        .S_AXI_wlast(ddr_axi_to_s01_couplers_WLAST),
        .S_AXI_wready(ddr_axi_to_s01_couplers_WREADY),
        .S_AXI_wstrb(ddr_axi_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(ddr_axi_to_s01_couplers_WVALID));
  s02_couplers_imp_YHTDON s02_couplers
       (.M_ACLK(ddr_axi_ACLK_net),
        .M_ARESETN(ddr_axi_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s02_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s02_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s02_couplers_to_xbar_ARID),
        .M_AXI_arlen(s02_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s02_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s02_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s02_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s02_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s02_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s02_couplers_to_xbar_AWID),
        .M_AXI_awlen(s02_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s02_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s02_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s02_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s02_couplers_to_xbar_BID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rid(s02_couplers_to_xbar_RID),
        .M_AXI_rlast(s02_couplers_to_xbar_RLAST),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s02_couplers_to_xbar_WLAST),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(S02_ACLK_1),
        .S_ARESETN(S02_ARESETN_1),
        .S_AXI_araddr(ddr_axi_to_s02_couplers_ARADDR),
        .S_AXI_arburst(ddr_axi_to_s02_couplers_ARBURST),
        .S_AXI_arcache(ddr_axi_to_s02_couplers_ARCACHE),
        .S_AXI_arid(ddr_axi_to_s02_couplers_ARID),
        .S_AXI_arlen(ddr_axi_to_s02_couplers_ARLEN),
        .S_AXI_arlock(ddr_axi_to_s02_couplers_ARLOCK),
        .S_AXI_arprot(ddr_axi_to_s02_couplers_ARPROT),
        .S_AXI_arqos(ddr_axi_to_s02_couplers_ARQOS),
        .S_AXI_arready(ddr_axi_to_s02_couplers_ARREADY),
        .S_AXI_arsize(ddr_axi_to_s02_couplers_ARSIZE),
        .S_AXI_arvalid(ddr_axi_to_s02_couplers_ARVALID),
        .S_AXI_awaddr(ddr_axi_to_s02_couplers_AWADDR),
        .S_AXI_awburst(ddr_axi_to_s02_couplers_AWBURST),
        .S_AXI_awcache(ddr_axi_to_s02_couplers_AWCACHE),
        .S_AXI_awid(ddr_axi_to_s02_couplers_AWID),
        .S_AXI_awlen(ddr_axi_to_s02_couplers_AWLEN),
        .S_AXI_awlock(ddr_axi_to_s02_couplers_AWLOCK),
        .S_AXI_awprot(ddr_axi_to_s02_couplers_AWPROT),
        .S_AXI_awqos(ddr_axi_to_s02_couplers_AWQOS),
        .S_AXI_awready(ddr_axi_to_s02_couplers_AWREADY),
        .S_AXI_awsize(ddr_axi_to_s02_couplers_AWSIZE),
        .S_AXI_awvalid(ddr_axi_to_s02_couplers_AWVALID),
        .S_AXI_bid(ddr_axi_to_s02_couplers_BID),
        .S_AXI_bready(ddr_axi_to_s02_couplers_BREADY),
        .S_AXI_bresp(ddr_axi_to_s02_couplers_BRESP),
        .S_AXI_bvalid(ddr_axi_to_s02_couplers_BVALID),
        .S_AXI_rdata(ddr_axi_to_s02_couplers_RDATA),
        .S_AXI_rid(ddr_axi_to_s02_couplers_RID),
        .S_AXI_rlast(ddr_axi_to_s02_couplers_RLAST),
        .S_AXI_rready(ddr_axi_to_s02_couplers_RREADY),
        .S_AXI_rresp(ddr_axi_to_s02_couplers_RRESP),
        .S_AXI_rvalid(ddr_axi_to_s02_couplers_RVALID),
        .S_AXI_wdata(ddr_axi_to_s02_couplers_WDATA),
        .S_AXI_wlast(ddr_axi_to_s02_couplers_WLAST),
        .S_AXI_wready(ddr_axi_to_s02_couplers_WREADY),
        .S_AXI_wstrb(ddr_axi_to_s02_couplers_WSTRB),
        .S_AXI_wvalid(ddr_axi_to_s02_couplers_WVALID));
  vae_sender_xbar_0 xbar
       (.aclk(ddr_axi_ACLK_net),
        .aresetn(ddr_axi_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s02_couplers_to_xbar_ARBURST,1'b0,1'b0,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s02_couplers_to_xbar_ARCACHE,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0,s02_couplers_to_xbar_ARID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({s02_couplers_to_xbar_ARLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s02_couplers_to_xbar_ARLOCK[0],1'b0,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s02_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s02_couplers_to_xbar_ARQOS,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s02_couplers_to_xbar_ARREADY,NLW_xbar_s_axi_arready_UNCONNECTED[1],s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s02_couplers_to_xbar_ARSIZE,1'b1,1'b0,1'b0,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s02_couplers_to_xbar_ARVALID,1'b0,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s02_couplers_to_xbar_AWADDR,s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({s02_couplers_to_xbar_AWBURST,s01_couplers_to_xbar_AWBURST,1'b0,1'b1}),
        .s_axi_awcache({s02_couplers_to_xbar_AWCACHE,s01_couplers_to_xbar_AWCACHE,1'b0,1'b0,1'b1,1'b1}),
        .s_axi_awid({1'b0,1'b0,s02_couplers_to_xbar_AWID,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({s02_couplers_to_xbar_AWLEN,s01_couplers_to_xbar_AWLEN,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({s02_couplers_to_xbar_AWLOCK[0],s01_couplers_to_xbar_AWLOCK,1'b0}),
        .s_axi_awprot({s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awqos({s02_couplers_to_xbar_AWQOS,s01_couplers_to_xbar_AWQOS,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready({s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,NLW_xbar_s_axi_awready_UNCONNECTED[0]}),
        .s_axi_awsize({s02_couplers_to_xbar_AWSIZE,s01_couplers_to_xbar_AWSIZE,1'b1,1'b0,1'b0}),
        .s_axi_awvalid({s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,1'b0}),
        .s_axi_bid({s02_couplers_to_xbar_BID,NLW_xbar_s_axi_bid_UNCONNECTED[5:0]}),
        .s_axi_bready({s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,1'b0}),
        .s_axi_bresp({s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,NLW_xbar_s_axi_bresp_UNCONNECTED[1:0]}),
        .s_axi_bvalid({s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,NLW_xbar_s_axi_bvalid_UNCONNECTED[0]}),
        .s_axi_rdata({s02_couplers_to_xbar_RDATA,NLW_xbar_s_axi_rdata_UNCONNECTED[255:128],s00_couplers_to_xbar_RDATA}),
        .s_axi_rid({s02_couplers_to_xbar_RID,NLW_xbar_s_axi_rid_UNCONNECTED[5:0]}),
        .s_axi_rlast({s02_couplers_to_xbar_RLAST,NLW_xbar_s_axi_rlast_UNCONNECTED[1],s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s02_couplers_to_xbar_RREADY,1'b0,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s02_couplers_to_xbar_RRESP,NLW_xbar_s_axi_rresp_UNCONNECTED[3:2],s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s02_couplers_to_xbar_RVALID,NLW_xbar_s_axi_rvalid_UNCONNECTED[1],s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast({s02_couplers_to_xbar_WLAST,s01_couplers_to_xbar_WLAST,1'b0}),
        .s_axi_wready({s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,NLW_xbar_s_axi_wready_UNCONNECTED[0]}),
        .s_axi_wstrb({s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,1'b0}));
endmodule
