//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Sat Nov 21 20:54:49 2026
//Host        : fedora running 64-bit unknown
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
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
  input ap_clk;
  input ap_rst_n;
  output [63:0]m_axis_score_tdata;
  output [7:0]m_axis_score_tkeep;
  output [0:0]m_axis_score_tlast;
  input m_axis_score_tready;
  output [7:0]m_axis_score_tstrb;
  output m_axis_score_tvalid;
  input [31:0]s_axis_features_tdata;
  input [3:0]s_axis_features_tkeep;
  input [0:0]s_axis_features_tlast;
  output s_axis_features_tready;
  input [3:0]s_axis_features_tstrb;
  input s_axis_features_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire [63:0]m_axis_score_tdata;
  wire [7:0]m_axis_score_tkeep;
  wire [0:0]m_axis_score_tlast;
  wire m_axis_score_tready;
  wire [7:0]m_axis_score_tstrb;
  wire m_axis_score_tvalid;
  wire [31:0]s_axis_features_tdata;
  wire [3:0]s_axis_features_tkeep;
  wire [0:0]s_axis_features_tlast;
  wire s_axis_features_tready;
  wire [3:0]s_axis_features_tstrb;
  wire s_axis_features_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .m_axis_score_tdata(m_axis_score_tdata),
        .m_axis_score_tkeep(m_axis_score_tkeep),
        .m_axis_score_tlast(m_axis_score_tlast),
        .m_axis_score_tready(m_axis_score_tready),
        .m_axis_score_tstrb(m_axis_score_tstrb),
        .m_axis_score_tvalid(m_axis_score_tvalid),
        .s_axis_features_tdata(s_axis_features_tdata),
        .s_axis_features_tkeep(s_axis_features_tkeep),
        .s_axis_features_tlast(s_axis_features_tlast),
        .s_axis_features_tready(s_axis_features_tready),
        .s_axis_features_tstrb(s_axis_features_tstrb),
        .s_axis_features_tvalid(s_axis_features_tvalid));
endmodule
