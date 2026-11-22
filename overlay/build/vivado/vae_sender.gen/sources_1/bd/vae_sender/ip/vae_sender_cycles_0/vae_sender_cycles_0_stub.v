// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Nov 23 00:54:50 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/nandanbali/programming/deep-svdd/autoencoder/overlay/build/vivado/vae_sender.gen/sources_1/bd/vae_sender/ip/vae_sender_cycles_0/vae_sender_cycles_0_stub.v
// Design      : vae_sender_cycles_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cycle_counter,Vivado 2023.2" *)
module vae_sender_cycles_0(clk, resetn, count, not_empty)
/* synthesis syn_black_box black_box_pad_pin="resetn,count[63:0],not_empty" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output [63:0]count;
  output not_empty;
endmodule
