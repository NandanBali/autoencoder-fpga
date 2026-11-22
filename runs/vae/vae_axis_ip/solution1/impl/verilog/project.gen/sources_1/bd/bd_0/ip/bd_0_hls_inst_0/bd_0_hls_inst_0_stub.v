// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Nov 21 20:58:08 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/vae_axis_ip/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vae_axis,Vivado 2023.2" *)
module bd_0_hls_inst_0(ap_clk, ap_rst_n, s_axis_features_TVALID, 
  s_axis_features_TREADY, s_axis_features_TDATA, s_axis_features_TLAST, 
  s_axis_features_TKEEP, s_axis_features_TSTRB, m_axis_score_TVALID, m_axis_score_TREADY, 
  m_axis_score_TDATA, m_axis_score_TLAST, m_axis_score_TKEEP, m_axis_score_TSTRB)
/* synthesis syn_black_box black_box_pad_pin="ap_rst_n,s_axis_features_TVALID,s_axis_features_TREADY,s_axis_features_TDATA[31:0],s_axis_features_TLAST[0:0],s_axis_features_TKEEP[3:0],s_axis_features_TSTRB[3:0],m_axis_score_TVALID,m_axis_score_TREADY,m_axis_score_TDATA[63:0],m_axis_score_TLAST[0:0],m_axis_score_TKEEP[7:0],m_axis_score_TSTRB[7:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  input s_axis_features_TVALID;
  output s_axis_features_TREADY;
  input [31:0]s_axis_features_TDATA;
  input [0:0]s_axis_features_TLAST;
  input [3:0]s_axis_features_TKEEP;
  input [3:0]s_axis_features_TSTRB;
  output m_axis_score_TVALID;
  input m_axis_score_TREADY;
  output [63:0]m_axis_score_TDATA;
  output [0:0]m_axis_score_TLAST;
  output [7:0]m_axis_score_TKEEP;
  output [7:0]m_axis_score_TSTRB;
endmodule
