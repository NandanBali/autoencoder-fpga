// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Nov 23 00:55:02 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/nandanbali/programming/deep-svdd/autoencoder/overlay/build/vivado/vae_sender.gen/sources_1/bd/vae_sender/ip/vae_sender_auto_pc_1/vae_sender_auto_pc_1_sim_netlist.v
// Design      : vae_sender_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "vae_sender_auto_pc_1,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module vae_sender_auto_pc_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [3:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [1:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [3:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [1:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arlen;
  wire [0:0]\^m_axi_arlock ;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [1:1]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = \^m_axi_arlock [0];
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  GND GND
       (.G(\<const0> ));
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_IGNORE_ID = "1" *) 
  (* C_M_AXI_PROTOCOL = "1" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "0" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b011" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock({NLW_inst_m_axi_arlock_UNCONNECTED[1],\^m_axi_arlock }),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock({NLW_inst_m_axi_awlock_UNCONNECTED[1],\^m_axi_awlock }),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,s_axi_arlen[3:0]}),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_28_axic_fifo" *) 
module vae_sender_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  vae_sender_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_AREADY_I_reg(S_AXI_AREADY_I_reg),
        .aclk(aclk),
        .\areset_d_reg[1] (\areset_d_reg[1] ),
        .aresetn(aresetn),
        .aresetn_0(aresetn_0),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_data_fifo_v2_1_28_fifo_gen" *) 
module vae_sender_auto_pc_1_axi_data_fifo_v2_1_28_fifo_gen
   (dout,
    empty,
    SR,
    aresetn_0,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    S_AXI_AREADY_I_reg,
    \areset_d_reg[1] ,
    aclk,
    m_axi_awlen,
    rd_en,
    aresetn,
    m_axi_awvalid_0,
    command_ongoing,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    E,
    s_axi_awvalid,
    Q);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output aresetn_0;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output S_AXI_AREADY_I_reg;
  output \areset_d_reg[1] ;
  input aclk;
  input [3:0]m_axi_awlen;
  input rd_en;
  input aresetn;
  input m_axi_awvalid_0;
  input command_ongoing;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input [0:0]E;
  input s_axi_awvalid;
  input [1:0]Q;

  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire S_AXI_AREADY_I_i_3_n_0;
  wire S_AXI_AREADY_I_reg;
  wire aclk;
  wire \areset_d_reg[1] ;
  wire aresetn;
  wire aresetn_0;
  wire cmd_push;
  wire command_ongoing;
  wire command_ongoing_i_2_n_0;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire full;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [3:0]m_axi_awlen;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire NLW_fifo_gen_inst_almost_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_almost_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_axis_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_dbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_overflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_empty_UNCONNECTED;
  wire NLW_fifo_gen_inst_prog_full_UNCONNECTED;
  wire NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED;
  wire NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED;
  wire NLW_fifo_gen_inst_sbiterr_UNCONNECTED;
  wire NLW_fifo_gen_inst_underflow_UNCONNECTED;
  wire NLW_fifo_gen_inst_valid_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_ack_UNCONNECTED;
  wire NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_data_count_UNCONNECTED;
  wire [4:4]NLW_fifo_gen_inst_dout_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED;
  wire [7:0]NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_rd_data_count_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_fifo_gen_inst_wr_data_count_UNCONNECTED;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_AREADY_I_i_1
       (.I0(aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'h22722272FFFF2272)) 
    S_AXI_AREADY_I_i_2
       (.I0(E),
        .I1(s_axi_awvalid),
        .I2(m_axi_awready),
        .I3(S_AXI_AREADY_I_i_3_n_0),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(S_AXI_AREADY_I_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    S_AXI_AREADY_I_i_3
       (.I0(m_axi_awvalid_0),
        .I1(full),
        .I2(command_ongoing),
        .O(S_AXI_AREADY_I_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00888A88)) 
    cmd_push_block_i_1
       (.I0(aresetn),
        .I1(m_axi_awvalid_0),
        .I2(full),
        .I3(command_ongoing),
        .I4(m_axi_awready),
        .O(aresetn_0));
  LUT6 #(
    .INIT(64'hF222FFFFD000D000)) 
    command_ongoing_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(E),
        .I3(s_axi_awvalid),
        .I4(command_ongoing_i_2_n_0),
        .I5(command_ongoing),
        .O(\areset_d_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8808)) 
    command_ongoing_i_2
       (.I0(m_axi_awready),
        .I1(command_ongoing),
        .I2(full),
        .I3(m_axi_awvalid_0),
        .O(command_ongoing_i_2_n_0));
  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "64" *) 
  (* C_AXIS_TDEST_WIDTH = "4" *) 
  (* C_AXIS_TID_WIDTH = "8" *) 
  (* C_AXIS_TKEEP_WIDTH = "4" *) 
  (* C_AXIS_TSTRB_WIDTH = "4" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "5" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "32" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "0" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "0" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "0" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "0" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "31" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "30" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "3" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "1" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  vae_sender_auto_pc_1_fifo_generator_v13_2_9 fifo_gen_inst
       (.almost_empty(NLW_fifo_gen_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_gen_inst_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_fifo_gen_inst_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_fifo_gen_inst_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_fifo_gen_inst_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(aclk),
        .data_count(NLW_fifo_gen_inst_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_fifo_gen_inst_dbiterr_UNCONNECTED),
        .din({1'b0,m_axi_awlen}),
        .dout({NLW_fifo_gen_inst_dout_UNCONNECTED[4],dout}),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED[3:0]),
        .m_axi_arlen(NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED[1:0]),
        .m_axi_arprot(NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED[3:0]),
        .m_axi_awlen(NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED[1:0]),
        .m_axi_awprot(NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tdest(NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED[3:0]),
        .m_axis_tid(NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED[7:0]),
        .m_axis_tkeep(NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_fifo_gen_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_gen_inst_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_fifo_gen_inst_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_fifo_gen_inst_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED),
        .rst(SR),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock({1'b0,1'b0}),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock({1'b0,1'b0}),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_fifo_gen_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_fifo_gen_inst_underflow_UNCONNECTED),
        .valid(NLW_fifo_gen_inst_valid_UNCONNECTED),
        .wr_ack(NLW_fifo_gen_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_fifo_gen_inst_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(cmd_push),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    fifo_gen_inst_i_1
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(cmd_push));
  LUT6 #(
    .INIT(64'hE4E4CC664E4ECC66)) 
    \length_counter_1[1]_i_1 
       (.I0(empty_fwft_i_reg),
        .I1(length_counter_1_reg[1]),
        .I2(dout[1]),
        .I3(length_counter_1_reg[0]),
        .I4(first_mi_word),
        .I5(dout[0]),
        .O(length_counter_1_reg_1_sn_1));
  LUT3 #(
    .INIT(8'hA2)) 
    m_axi_awvalid_INST_0
       (.I0(command_ongoing),
        .I1(full),
        .I2(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axi_wvalid_INST_0
       (.I0(s_axi_wvalid),
        .I1(empty),
        .O(m_axi_wvalid));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    s_axi_wready_INST_0
       (.I0(empty),
        .I1(s_axi_wvalid),
        .I2(m_axi_wready),
        .O(empty_fwft_i_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_a_axi3_conv" *) 
module vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv
   (dout,
    empty,
    SR,
    m_axi_awlen,
    m_axi_awlock,
    E,
    m_axi_awvalid,
    length_counter_1_reg_1_sp_1,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_awaddr,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    aclk,
    rd_en,
    s_axi_awlock,
    aresetn,
    m_axi_awready,
    length_counter_1_reg,
    first_mi_word,
    s_axi_wvalid,
    m_axi_wready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos);
  output [3:0]dout;
  output empty;
  output [0:0]SR;
  output [3:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [0:0]E;
  output m_axi_awvalid;
  output length_counter_1_reg_1_sp_1;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  input aclk;
  input rd_en;
  input [0:0]s_axi_awlock;
  input aresetn;
  input m_axi_awready;
  input [1:0]length_counter_1_reg;
  input first_mi_word;
  input s_axi_wvalid;
  input m_axi_wready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;

  wire [0:0]E;
  wire [0:0]SR;
  wire \USE_BURSTS.cmd_queue_n_11 ;
  wire \USE_BURSTS.cmd_queue_n_12 ;
  wire \USE_BURSTS.cmd_queue_n_6 ;
  wire aclk;
  wire [1:0]areset_d;
  wire aresetn;
  wire cmd_push_block_reg_n_0;
  wire command_ongoing;
  wire [3:0]dout;
  wire empty;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire length_counter_1_reg_1_sn_1;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire rd_en;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  assign length_counter_1_reg_1_sp_1 = length_counter_1_reg_1_sn_1;
  FDRE \S_AXI_AADDR_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[0]),
        .Q(m_axi_awaddr[0]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[10]),
        .Q(m_axi_awaddr[10]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[11]),
        .Q(m_axi_awaddr[11]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[12]),
        .Q(m_axi_awaddr[12]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[13]),
        .Q(m_axi_awaddr[13]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[14]),
        .Q(m_axi_awaddr[14]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[15]),
        .Q(m_axi_awaddr[15]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[16]),
        .Q(m_axi_awaddr[16]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[17] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[17]),
        .Q(m_axi_awaddr[17]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[18]),
        .Q(m_axi_awaddr[18]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[19]),
        .Q(m_axi_awaddr[19]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[1]),
        .Q(m_axi_awaddr[1]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[20] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[20]),
        .Q(m_axi_awaddr[20]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[21] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[21]),
        .Q(m_axi_awaddr[21]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[22] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[22]),
        .Q(m_axi_awaddr[22]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[23] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[23]),
        .Q(m_axi_awaddr[23]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[24]),
        .Q(m_axi_awaddr[24]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[25]),
        .Q(m_axi_awaddr[25]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[26]),
        .Q(m_axi_awaddr[26]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[27]),
        .Q(m_axi_awaddr[27]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[28]),
        .Q(m_axi_awaddr[28]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[29]),
        .Q(m_axi_awaddr[29]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[2]),
        .Q(m_axi_awaddr[2]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[30]),
        .Q(m_axi_awaddr[30]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[31]),
        .Q(m_axi_awaddr[31]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[3]),
        .Q(m_axi_awaddr[3]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[4]),
        .Q(m_axi_awaddr[4]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[5]),
        .Q(m_axi_awaddr[5]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[6]),
        .Q(m_axi_awaddr[6]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[7]),
        .Q(m_axi_awaddr[7]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[8]),
        .Q(m_axi_awaddr[8]),
        .R(SR));
  FDRE \S_AXI_AADDR_Q_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awaddr[9]),
        .Q(m_axi_awaddr[9]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[0]),
        .Q(m_axi_awburst[0]),
        .R(SR));
  FDRE \S_AXI_ABURST_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awburst[1]),
        .Q(m_axi_awburst[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[0]),
        .Q(m_axi_awcache[0]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[1]),
        .Q(m_axi_awcache[1]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[2]),
        .Q(m_axi_awcache[2]),
        .R(SR));
  FDRE \S_AXI_ACACHE_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awcache[3]),
        .Q(m_axi_awcache[3]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[0]),
        .Q(m_axi_awlen[0]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[1]),
        .Q(m_axi_awlen[1]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[2]),
        .Q(m_axi_awlen[2]),
        .R(SR));
  FDRE \S_AXI_ALEN_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlen[3]),
        .Q(m_axi_awlen[3]),
        .R(SR));
  FDRE \S_AXI_ALOCK_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awlock),
        .Q(m_axi_awlock),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[0]),
        .Q(m_axi_awprot[0]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[1]),
        .Q(m_axi_awprot[1]),
        .R(SR));
  FDRE \S_AXI_APROT_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awprot[2]),
        .Q(m_axi_awprot[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[0]),
        .Q(m_axi_awqos[0]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[1]),
        .Q(m_axi_awqos[1]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[2]),
        .Q(m_axi_awqos[2]),
        .R(SR));
  FDRE \S_AXI_AQOS_Q_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awqos[3]),
        .Q(m_axi_awqos[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    S_AXI_AREADY_I_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_11 ),
        .Q(E),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[0]),
        .Q(m_axi_awsize[0]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[1]),
        .Q(m_axi_awsize[1]),
        .R(SR));
  FDRE \S_AXI_ASIZE_Q_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(s_axi_awsize[2]),
        .Q(m_axi_awsize[2]),
        .R(SR));
  vae_sender_auto_pc_1_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
       (.E(E),
        .Q(areset_d),
        .SR(SR),
        .S_AXI_AREADY_I_reg(\USE_BURSTS.cmd_queue_n_11 ),
        .aclk(aclk),
        .\areset_d_reg[1] (\USE_BURSTS.cmd_queue_n_12 ),
        .aresetn(aresetn),
        .aresetn_0(\USE_BURSTS.cmd_queue_n_6 ),
        .command_ongoing(command_ongoing),
        .dout(dout),
        .empty(empty),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(length_counter_1_reg_1_sn_1),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(cmd_push_block_reg_n_0),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(rd_en),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \areset_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cmd_push_block_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_6 ),
        .Q(cmd_push_block_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    command_ongoing_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\USE_BURSTS.cmd_queue_n_12 ),
        .Q(command_ongoing),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_axi3_conv" *) 
module vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv
   (m_axi_awlen,
    m_axi_awaddr,
    E,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    empty_fwft_i_reg,
    m_axi_wvalid,
    m_axi_wlast,
    aresetn,
    m_axi_awready,
    aclk,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    m_axi_wready,
    s_axi_wvalid,
    s_axi_awvalid);
  output [3:0]m_axi_awlen;
  output [31:0]m_axi_awaddr;
  output [0:0]E;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  output empty_fwft_i_reg;
  output m_axi_wvalid;
  output m_axi_wlast;
  input aresetn;
  input m_axi_awready;
  input aclk;
  input [31:0]s_axi_awaddr;
  input [3:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input m_axi_wready;
  input s_axi_wvalid;
  input s_axi_awvalid;

  wire [0:0]E;
  wire \USE_BURSTS.cmd_queue/inst/empty ;
  wire [3:0]\USE_WRITE.wr_cmd_length ;
  wire \USE_WRITE.wr_cmd_ready ;
  wire \USE_WRITE.write_addr_inst_n_13 ;
  wire \USE_WRITE.write_addr_inst_n_5 ;
  wire aclk;
  wire aresetn;
  wire empty_fwft_i_reg;
  wire first_mi_word;
  wire [1:0]length_counter_1_reg;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;

  vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
       (.E(E),
        .SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .empty_fwft_i_reg(empty_fwft_i_reg),
        .first_mi_word(first_mi_word),
        .length_counter_1_reg(length_counter_1_reg),
        .length_counter_1_reg_1_sp_1(\USE_WRITE.write_addr_inst_n_13 ),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
  vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
       (.SR(\USE_WRITE.write_addr_inst_n_5 ),
        .aclk(aclk),
        .dout(\USE_WRITE.wr_cmd_length ),
        .empty(\USE_BURSTS.cmd_queue/inst/empty ),
        .first_mi_word(first_mi_word),
        .\length_counter_1_reg[1]_0 (length_counter_1_reg),
        .\length_counter_1_reg[1]_1 (\USE_WRITE.write_addr_inst_n_13 ),
        .\length_counter_1_reg[2]_0 (empty_fwft_i_reg),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .rd_en(\USE_WRITE.wr_cmd_ready ),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) 
(* C_IGNORE_ID = "1" *) (* C_M_AXI_PROTOCOL = "1" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_axi_protocol_converter" *) 
(* P_AXI3 = "1" *) (* P_AXI4 = "0" *) (* P_AXILITE = "2" *) 
(* P_AXILITE_SIZE = "3'b011" *) (* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) 
(* P_INCR = "2'b01" *) (* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [3:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [3:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axi_arready;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awlen;
  wire [0:0]\^m_axi_awlock ;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_araddr[31:0] = s_axi_araddr;
  assign m_axi_arburst[1:0] = s_axi_arburst;
  assign m_axi_arcache[3:0] = s_axi_arcache;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[3:0] = s_axi_arlen[3:0];
  assign m_axi_arlock[1] = \<const0> ;
  assign m_axi_arlock[0] = s_axi_arlock;
  assign m_axi_arprot[2:0] = s_axi_arprot;
  assign m_axi_arqos[3:0] = s_axi_arqos;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2:0] = s_axi_arsize;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = s_axi_arvalid;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlock[1] = \<const0> ;
  assign m_axi_awlock[0] = \^m_axi_awlock [0];
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = m_axi_arready;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = m_axi_bresp;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = m_axi_bvalid;
  assign s_axi_rdata[63:0] = m_axi_rdata;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = m_axi_rlast;
  assign s_axi_rresp[1:0] = m_axi_rresp;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = m_axi_rvalid;
  GND GND
       (.G(\<const0> ));
  vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
       (.E(s_axi_awready),
        .aclk(aclk),
        .aresetn(aresetn),
        .empty_fwft_i_reg(s_axi_wready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(\^m_axi_awlock ),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_w_axi3_conv" *) 
module vae_sender_auto_pc_1_axi_protocol_converter_v2_1_29_w_axi3_conv
   (\length_counter_1_reg[1]_0 ,
    first_mi_word,
    rd_en,
    m_axi_wlast,
    SR,
    aclk,
    \length_counter_1_reg[1]_1 ,
    \length_counter_1_reg[2]_0 ,
    m_axi_wready,
    s_axi_wvalid,
    empty,
    dout);
  output [1:0]\length_counter_1_reg[1]_0 ;
  output first_mi_word;
  output rd_en;
  output m_axi_wlast;
  input [0:0]SR;
  input aclk;
  input \length_counter_1_reg[1]_1 ;
  input \length_counter_1_reg[2]_0 ;
  input m_axi_wready;
  input s_axi_wvalid;
  input empty;
  input [3:0]dout;

  wire [0:0]SR;
  wire aclk;
  wire [3:0]dout;
  wire empty;
  wire first_mi_word;
  wire first_mi_word_i_1_n_0;
  wire \length_counter_1[0]_i_1_n_0 ;
  wire \length_counter_1[2]_i_1_n_0 ;
  wire \length_counter_1[3]_i_1_n_0 ;
  wire \length_counter_1[4]_i_1_n_0 ;
  wire \length_counter_1[4]_i_2_n_0 ;
  wire \length_counter_1[5]_i_1_n_0 ;
  wire \length_counter_1[6]_i_1_n_0 ;
  wire \length_counter_1[7]_i_1_n_0 ;
  wire [7:2]length_counter_1_reg;
  wire [1:0]\length_counter_1_reg[1]_0 ;
  wire \length_counter_1_reg[1]_1 ;
  wire \length_counter_1_reg[2]_0 ;
  wire m_axi_wlast;
  wire m_axi_wlast_INST_0_i_1_n_0;
  wire m_axi_wlast_INST_0_i_2_n_0;
  wire m_axi_wlast_INST_0_i_3_n_0;
  wire m_axi_wready;
  wire rd_en;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'h0000CC000000CC04)) 
    fifo_gen_inst_i_2
       (.I0(length_counter_1_reg[7]),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[5]),
        .I3(first_mi_word),
        .I4(m_axi_wlast_INST_0_i_1_n_0),
        .I5(length_counter_1_reg[6]),
        .O(rd_en));
  LUT6 #(
    .INIT(64'h0F0FFFFF00010000)) 
    first_mi_word_i_1
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(length_counter_1_reg[6]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(first_mi_word),
        .O(first_mi_word_i_1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    first_mi_word_reg
       (.C(aclk),
        .CE(1'b1),
        .D(first_mi_word_i_1_n_0),
        .Q(first_mi_word),
        .S(SR));
  LUT6 #(
    .INIT(64'hF2FFFFFF07000000)) 
    \length_counter_1[0]_i_1 
       (.I0(first_mi_word),
        .I1(dout[0]),
        .I2(empty),
        .I3(s_axi_wvalid),
        .I4(m_axi_wready),
        .I5(\length_counter_1_reg[1]_0 [0]),
        .O(\length_counter_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD8D272D2)) 
    \length_counter_1[2]_i_1 
       (.I0(\length_counter_1_reg[2]_0 ),
        .I1(m_axi_wlast_INST_0_i_3_n_0),
        .I2(length_counter_1_reg[2]),
        .I3(first_mi_word),
        .I4(dout[2]),
        .O(\length_counter_1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8B474B4)) 
    \length_counter_1[3]_i_1 
       (.I0(\length_counter_1[4]_i_2_n_0 ),
        .I1(\length_counter_1_reg[2]_0 ),
        .I2(length_counter_1_reg[3]),
        .I3(first_mi_word),
        .I4(dout[3]),
        .O(\length_counter_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A3A35AAAAAAAA)) 
    \length_counter_1[4]_i_1 
       (.I0(length_counter_1_reg[4]),
        .I1(dout[3]),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[3]),
        .I4(\length_counter_1[4]_i_2_n_0 ),
        .I5(\length_counter_1_reg[2]_0 ),
        .O(\length_counter_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \length_counter_1[4]_i_2 
       (.I0(m_axi_wlast_INST_0_i_3_n_0),
        .I1(length_counter_1_reg[2]),
        .I2(first_mi_word),
        .I3(dout[2]),
        .O(\length_counter_1[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF0000FFF70808)) 
    \length_counter_1[5]_i_1 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(empty),
        .I3(first_mi_word),
        .I4(length_counter_1_reg[5]),
        .I5(m_axi_wlast_INST_0_i_1_n_0),
        .O(\length_counter_1[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3EFF0D00)) 
    \length_counter_1[6]_i_1 
       (.I0(length_counter_1_reg[5]),
        .I1(first_mi_word),
        .I2(m_axi_wlast_INST_0_i_1_n_0),
        .I3(\length_counter_1_reg[2]_0 ),
        .I4(length_counter_1_reg[6]),
        .O(\length_counter_1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F3EFFFF30310000)) 
    \length_counter_1[7]_i_1 
       (.I0(length_counter_1_reg[6]),
        .I1(m_axi_wlast_INST_0_i_1_n_0),
        .I2(first_mi_word),
        .I3(length_counter_1_reg[5]),
        .I4(\length_counter_1_reg[2]_0 ),
        .I5(length_counter_1_reg[7]),
        .O(\length_counter_1[7]_i_1_n_0 ));
  FDRE \length_counter_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[0]_i_1_n_0 ),
        .Q(\length_counter_1_reg[1]_0 [0]),
        .R(SR));
  FDRE \length_counter_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1_reg[1]_1 ),
        .Q(\length_counter_1_reg[1]_0 [1]),
        .R(SR));
  FDRE \length_counter_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[2]_i_1_n_0 ),
        .Q(length_counter_1_reg[2]),
        .R(SR));
  FDRE \length_counter_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[3]_i_1_n_0 ),
        .Q(length_counter_1_reg[3]),
        .R(SR));
  FDRE \length_counter_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[4]_i_1_n_0 ),
        .Q(length_counter_1_reg[4]),
        .R(SR));
  FDRE \length_counter_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[5]_i_1_n_0 ),
        .Q(length_counter_1_reg[5]),
        .R(SR));
  FDRE \length_counter_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[6]_i_1_n_0 ),
        .Q(length_counter_1_reg[6]),
        .R(SR));
  FDRE \length_counter_1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\length_counter_1[7]_i_1_n_0 ),
        .Q(length_counter_1_reg[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00F000F1)) 
    m_axi_wlast_INST_0
       (.I0(length_counter_1_reg[7]),
        .I1(length_counter_1_reg[5]),
        .I2(first_mi_word),
        .I3(m_axi_wlast_INST_0_i_1_n_0),
        .I4(length_counter_1_reg[6]),
        .O(m_axi_wlast));
  LUT6 #(
    .INIT(64'hFFFFFFFEFCFCFFFE)) 
    m_axi_wlast_INST_0_i_1
       (.I0(length_counter_1_reg[4]),
        .I1(m_axi_wlast_INST_0_i_2_n_0),
        .I2(m_axi_wlast_INST_0_i_3_n_0),
        .I3(length_counter_1_reg[2]),
        .I4(first_mi_word),
        .I5(dout[2]),
        .O(m_axi_wlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axi_wlast_INST_0_i_2
       (.I0(dout[3]),
        .I1(first_mi_word),
        .I2(length_counter_1_reg[3]),
        .O(m_axi_wlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    m_axi_wlast_INST_0_i_3
       (.I0(\length_counter_1_reg[1]_0 [1]),
        .I1(dout[1]),
        .I2(\length_counter_1_reg[1]_0 [0]),
        .I3(first_mi_word),
        .I4(dout[0]),
        .O(m_axi_wlast_INST_0_i_3_n_0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module vae_sender_auto_pc_1_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gcDjvJ18gZEH8C+LHMq/N7AaYWSyHgvjIQn585rdUOTVX2orO9n8j6LNiga3BYkS91+lbHAjAieW
oD/8serz9uvKt9uVuyMIE6oOFFScZR6q2wQk1d1Qzq717+8yPCwgBT9HIhfJIHLujHt+cA2l2L5t
tux9aNBdVKkk1MHv7yY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
exhH3ieiewq538XhQByQWj7PMh1Y+pzdDw+4bALHgOXUMTZleYL0Pvhip/E5VwYBOb3/5i/ElWf3
Vm6OeE9b1Jj8xb7x10akeyRaNdCJYAtTqgb7gFS/crjXeoaYKJgLqCiyaB7LdWR9BiZOWqxEPSxe
/lr/8F8psti0kra2jACCbz94iU3qDIdZWH5kqd21Pp2/YczWpJBQzh+bBz9V+EuMAeZIzY3x2GZy
jOMZPemqiqFhSEcDf09mKK3xKEUxE+TPz82hd9ZrF5OjFst6mWMVye10lkzmY5Hmmx5Y/PVgPx3R
fN0tTAZfIDGH/YUu758U8UWOIcMzBHF6rytqmg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Umfm0FNxPKfdryB9QccnkcrzqkPtalTpE+R0M3D9kxaXOa1YOGT+9jGc1TRZMLcN5NyGN3UIZcH4
LWFVfGg80k9RmFHBDZaHzOXaomQhoPSO++ArXvmvO5zgttfCHEl7jypYkuPgwfQMfjK7YII9Deex
KOC8JtqORVWmhq47cpQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cm7WeJnXtFlUdJuJH7wHYfinJTaBhpglyFWD2YwmOuS4fmVA4nXbX0IMaU1F1WGO1VK25KlFf8Nm
w8L6BJ6ZpH12xPIl3J17rMT4/3KHv9tpBWqeC080GeV5nISo8JrhOpIKa4+HBHZ6lYLce8LBAu/Z
EiBmDqw22aLsAuPAzAMh9yuHT5rpX9ykD9u0uZ5UplK05S0TsvYMUqcHNQ2hijt/lbxvUxXHTa+W
GJ5RRQAdw98wG1mc65u16hfZPsLimnw4BHwpyNGOPadShqb78rQihc+YiBTn4lgN1HhquWRGqCYZ
ZEjBmtWOJm8WJSTWtcpFEkmPlOTDmNX82e9mnw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a1mMNsEVIHwFCxw3sHygQ6eU3z5whgDQI+YHUmPAwU6q4vqfu2NVxu0z42QL1rV1rCsm39SqZ078
EGEqt7XUt6bdvI3yu4dU8gF+jou5njJ2UU34VmbOw/MQt48Hmi+hxtH1/zSlbNe2iOksDFEFTHmW
WGHgPS2bACG/KtAZMYK3gBtbnb9dtu+p5hxiQtwMOFnv9kQGBxcMaciN0yqy2TE5fygwKcNEua29
jiGUF0qgPS1k6qN+zLrYWkaVT0amR1MFXpv0WcwL+xVkxj6bBQhe5D7t5xCIsfLR4xqa5WVpa0dN
FkxGlIoufL17G/cGRr4nV4QP0sqcDCCHYpRoIA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPFWI49JcHqYFxRrTG2uFixmE4jeIWIero9KijBFo7+FOCC7hJeSlCuNlwb8mBsI0Up57fm7C8t9
tb1l2QCfvy82JqTvEuH49UmS+8/GEnbK1QbVHsDIiv3/8cFn+0zw/VSuVeaN8L0yzeNIo8m59iAq
AQ9wOyqKFEhKKkbn+nVg+hQW3L/P25hisjV06sqmfsA0Rx4bYhFoxEvIw3A4x9LsBIIfDpgDsPzS
NICAEhfA7fWXKK6UsOmuq1NZLTDmFe2zEHijVMovzm/qqvHfu7fCt5POlGtLOPZhXGCDZi0v1yiq
VyT7JTUW5P/rcLgzkfyKToozq36lEkXd6VSaLg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T4EV2kKcg5a7rlvEGr4AG3uvv0JzSoc0NQb9aIeE2gsKGq0oLel4q0oZ7eO6He8noW5KEowgkY0O
xDnerk/R4qxdSePYeRRmUg3KZ7hAHVEQrHpQ2RbYwK5mUIpQLjxCWRWzBjeWOce2bh0dAMR/4OH6
t95V8b9VWpgepcUXynGvLDv31tVgr+8LtXlgWTNBiJj2mTZ3gEVxpgGRwMGsampw9yKqBKoR+/hg
++FP8JJkrOSdB2bhnNaD4fZotMLkhYDrWvQm9z6rW7fwxA2oEI+oUqi+K+82oiLzeVWy7FhVyzgS
Y273uSE53DWk35UE9A6ebcI/xUl1iGqwdeZihA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gZRrJLrBkbil4BLf1tia07NzGL28f+Pk9zyPElbTDf8NEXCsuwTum6RjR5lvY/odzAYHlcKxpG+6
gwjafT2OV5gHqqtPXrRHcVU4p5LEzOOl5p3puqvK+1z2+YpHqxOZIIZPIH9kjtzNgcBmcU7S2sFN
zTxyAYuLL9sAN+AIQ9UrW4MXDWxUtdkwPaSyFIvuKoxOKUD5IXEY9NtBpz1zsABMKNHneOO8pAix
qg8S/uQ/XJ8Qggr+vE7HDUUMCsijNXvqbkLM3xf6dXFpOqanKxd6/GfTcob4sezm/hMOZ2xiXcfS
hsYUMRdO9H6fmhECfszoK2XMsMt6xM+vlLywWJ0I6u468qVFxROkf9vL+ZDq/tMiJOm7E1p+HDif
98f5v1OybtzlZJP9bDMwWYcsCqcDejCMQyYOgPCgg+2jTR1JezxuK7PpjyliT0rnu7FfI/0tRzbL
d5YqO79RN0byWVTTdIlTWzL/qBD8BLVqXzWs3M+up46dGPxbkzv44od4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
A79lFm/8JnoMxv1MOWkY+AtU24uc6/CeGf6bjoYWLJXkzzHQooKleg9l+jH7oajoC3oVQh/sMXdi
3QmwZ5SKMt6sb03SC5BW7xPky8zyP6w8FRMCI2Tz1/GhozqjIbgSstUfCaemxIgj3rG7GkRYZ/2k
ualG2mpYDNyaxz1lMYaHfm7stH/IQlkCh6HHMbi7ImYJ6pILa828Ls3VREjo7dtXPS2ZDFxreSIH
2SZ3NpLJO0/umchZaUkt1xN0bsxgtGdOzSqGDpTJrU/ltmclBX199pmrXQa5p/q0FSLj2WkB043l
l3x1Rdipn49DvChkvbVzJP9aej4kwSPhvxHnHQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFpXmWYmUY46GvuVucUW1VOu3+gGtLxYW4Ho/p4wggZ+jWrpUVhz2RSAxu+ufiLHtM9oYgKPaSYT
DOeuIJGTnxGr20Vh6Nn3cc41TyKAf0vxN2fGISEQQWrjh9OOgNcBmJfaHsSq7+5dhCaIWlGrInVr
GD5TqclLzw6cHAuPGxMi2wD4rq16RkDJnQbPf8ptaskWz81NxZfyWAL4T2E24soybpln8+vuF+72
IQYfLQh/dDDsNHKNKwTKAtGjpFS8eVSbYnS+k3Am4loN8JRflh0+c4yGUo4EkuRzUFiIBrJOKylp
qicgwQw7vdbe+yPl6moUlvA1U2CjJ87bsXk5CA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hzklq501x4qEym07A6+Vh+O6T5Q1srpTjckVi/KQ8/P6I6xpFqHBBikoKASz9mkWuvFaf6aly934
etGfnzZuPuKCoMPixevIcq9cgFblu43p0H0FR4BSbqN+A/K2utwAblPur01qwtH9nc1azxOtPedI
3KLsEBUN2ObidzkZIUbiQlQ72wru0lGZ5uN6iiNcLRnEhqjdjWiOHf5qGo+df2QyP6S5zRR7hGOd
N5h9/9towH2UQ++6hnOd4pjtl7PKHWlU92421M+LhruDkz4Bw6c7d7EVdbIcZ3ub+l/OnCyNwQsr
WUo2E+j4vd3zIVA0gzTA1oLX73BJ1oxwQdO3JA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71760)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
