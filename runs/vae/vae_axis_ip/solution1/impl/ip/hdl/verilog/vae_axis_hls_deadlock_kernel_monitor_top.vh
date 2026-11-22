
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [2:0] axis_block_sigs;
wire [11:0] inst_idle_sigs;
wire [9:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~s_axis_features_TDATA_blk_n;
assign axis_block_sigs[1] = ~m_axis_score_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_vae_axis_Pipeline_VITIS_LOOP_56_2_fu_267.s_axis_features_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_idle;
assign inst_block_sigs[0] = (grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_continue);
assign inst_idle_sigs[1] = grp_vae_core_fu_279.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle;
assign inst_block_sigs[1] = (grp_vae_core_fu_279.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_done & ~grp_vae_core_fu_279.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_continue);
assign inst_idle_sigs[2] = grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle;
assign inst_block_sigs[2] = (grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_continue);
assign inst_idle_sigs[3] = grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle;
assign inst_block_sigs[3] = (grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_done & ~grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_continue);
assign inst_idle_sigs[4] = grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle;
assign inst_block_sigs[4] = (grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_continue);
assign inst_idle_sigs[5] = grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_idle;
assign inst_block_sigs[5] = (grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_continue);
assign inst_idle_sigs[6] = grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle;
assign inst_block_sigs[6] = (grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_done & ~grp_vae_core_fu_279.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_continue);
assign inst_idle_sigs[7] = grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle;
assign inst_block_sigs[7] = (grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_continue);
assign inst_idle_sigs[8] = grp_vae_core_fu_279.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle;
assign inst_block_sigs[8] = (grp_vae_core_fu_279.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_done & ~grp_vae_core_fu_279.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_continue);
assign inst_idle_sigs[9] = grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle;
assign inst_block_sigs[9] = (grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ~grp_vae_core_fu_279.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_continue);

assign inst_idle_sigs[10] = 1'b0;
assign inst_idle_sigs[11] = grp_vae_axis_Pipeline_VITIS_LOOP_56_2_fu_267.ap_idle;

vae_axis_hls_deadlock_idx0_monitor vae_axis_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
