// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Nov 23 00:55:01 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vae_sender_auto_pc_1_sim_netlist.v
// Design      : vae_sender_auto_pc_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_fifo_gen
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 fifo_gen_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_data_fifo_v2_1_28_axic_fifo \USE_BURSTS.cmd_queue 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_a_axi3_conv \USE_WRITE.write_addr_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv \USE_WRITE.write_data_inst 
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
(* C_TRANSLATION_MODE = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b011" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi3_conv \gen_axi4_axi3.axi3_conv_inst 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_w_axi3_conv
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

(* CHECK_LICENSE_TYPE = "vae_sender_auto_pc_1,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
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

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* RST_ACTIVE_HIGH = "1" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "ASYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_async_rst
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 71792)
`pragma protect data_block
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
2fM0R1DTNqUXWwUN+OUhtEoevWOqi0M/VaHbnyw=
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
