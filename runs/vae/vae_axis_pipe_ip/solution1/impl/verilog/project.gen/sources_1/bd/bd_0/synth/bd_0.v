//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sun Nov 22 20:18:25 2026
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
    m_axis_score_tdata,
    m_axis_score_tkeep,
    m_axis_score_tlast,
    m_axis_score_tready,
    m_axis_score_tstrb,
    m_axis_score_tvalid,
    s_axis_features_tdata,
    s_axis_features_tkeep,
    s_axis_features_tlast,
    s_axis_features_tready,
    s_axis_features_tstrb,
    s_axis_features_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axis_score:s_axis_features, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_score, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [63:0]m_axis_score_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) output [7:0]m_axis_score_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) output [0:0]m_axis_score_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) input m_axis_score_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) output [7:0]m_axis_score_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_score " *) output m_axis_score_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_features, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s_axis_features_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) input [3:0]s_axis_features_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) input [0:0]s_axis_features_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) output s_axis_features_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) input [3:0]s_axis_features_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_features " *) input s_axis_features_tvalid;

  wire ap_clk_0_1;
  wire ap_rst_n_0_1;
  wire [63:0]hls_inst_m_axis_score_TDATA;
  wire [7:0]hls_inst_m_axis_score_TKEEP;
  wire [0:0]hls_inst_m_axis_score_TLAST;
  wire hls_inst_m_axis_score_TREADY;
  wire [7:0]hls_inst_m_axis_score_TSTRB;
  wire hls_inst_m_axis_score_TVALID;
  wire [31:0]s_axis_features_0_1_TDATA;
  wire [3:0]s_axis_features_0_1_TKEEP;
  wire [0:0]s_axis_features_0_1_TLAST;
  wire s_axis_features_0_1_TREADY;
  wire [3:0]s_axis_features_0_1_TSTRB;
  wire s_axis_features_0_1_TVALID;

  assign ap_clk_0_1 = ap_clk;
  assign ap_rst_n_0_1 = ap_rst_n;
  assign hls_inst_m_axis_score_TREADY = m_axis_score_tready;
  assign m_axis_score_tdata[63:0] = hls_inst_m_axis_score_TDATA;
  assign m_axis_score_tkeep[7:0] = hls_inst_m_axis_score_TKEEP;
  assign m_axis_score_tlast[0] = hls_inst_m_axis_score_TLAST;
  assign m_axis_score_tstrb[7:0] = hls_inst_m_axis_score_TSTRB;
  assign m_axis_score_tvalid = hls_inst_m_axis_score_TVALID;
  assign s_axis_features_0_1_TDATA = s_axis_features_tdata[31:0];
  assign s_axis_features_0_1_TKEEP = s_axis_features_tkeep[3:0];
  assign s_axis_features_0_1_TLAST = s_axis_features_tlast[0];
  assign s_axis_features_0_1_TSTRB = s_axis_features_tstrb[3:0];
  assign s_axis_features_0_1_TVALID = s_axis_features_tvalid;
  assign s_axis_features_tready = s_axis_features_0_1_TREADY;
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_rst_n(ap_rst_n_0_1),
        .m_axis_score_TDATA(hls_inst_m_axis_score_TDATA),
        .m_axis_score_TKEEP(hls_inst_m_axis_score_TKEEP),
        .m_axis_score_TLAST(hls_inst_m_axis_score_TLAST),
        .m_axis_score_TREADY(hls_inst_m_axis_score_TREADY),
        .m_axis_score_TSTRB(hls_inst_m_axis_score_TSTRB),
        .m_axis_score_TVALID(hls_inst_m_axis_score_TVALID),
        .s_axis_features_TDATA(s_axis_features_0_1_TDATA),
        .s_axis_features_TKEEP(s_axis_features_0_1_TKEEP),
        .s_axis_features_TLAST(s_axis_features_0_1_TLAST),
        .s_axis_features_TREADY(s_axis_features_0_1_TREADY),
        .s_axis_features_TSTRB(s_axis_features_0_1_TSTRB),
        .s_axis_features_TVALID(s_axis_features_0_1_TVALID));
endmodule
