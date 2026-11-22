
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [0:0] axis_block_sigs;
wire [6:0] inst_idle_sigs;
wire [4:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~p_anonymous_namespace_collect_U0.s_axis_score_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.t_send_c_blk_n | ~entry_proc_U0.period_c_blk_n;
assign inst_idle_sigs[1] = p_anonymous_namespace_load_U0.ap_idle;
assign inst_block_sigs[1] = (p_anonymous_namespace_load_U0.ap_done & ~p_anonymous_namespace_load_U0.ap_continue) | ~p_anonymous_namespace_load_U0.grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90.words_blk_n | ~p_anonymous_namespace_load_U0.n_flows_c19_blk_n;
assign inst_idle_sigs[2] = p_anonymous_namespace_pace_send_U0.ap_idle;
assign inst_block_sigs[2] = (p_anonymous_namespace_pace_send_U0.ap_done & ~p_anonymous_namespace_pace_send_U0.ap_continue) | ~p_anonymous_namespace_pace_send_U0.n_flows_blk_n | ~p_anonymous_namespace_pace_send_U0.period_blk_n | ~p_anonymous_namespace_pace_send_U0.cycle_tx_blk_n | ~p_anonymous_namespace_pace_send_U0.grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88.cycle_tx_blk_n | ~p_anonymous_namespace_pace_send_U0.grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88.stamps_blk_n | ~p_anonymous_namespace_pace_send_U0.n_flows_c_blk_n;
assign inst_idle_sigs[3] = p_anonymous_namespace_store_stamps_U0.ap_idle;
assign inst_block_sigs[3] = (p_anonymous_namespace_store_stamps_U0.ap_done & ~p_anonymous_namespace_store_stamps_U0.ap_continue) | ~p_anonymous_namespace_store_stamps_U0.grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77.stamps_blk_n | ~p_anonymous_namespace_store_stamps_U0.n_flows_blk_n | ~p_anonymous_namespace_store_stamps_U0.t_send_blk_n;
assign inst_idle_sigs[4] = p_anonymous_namespace_collect_U0.ap_idle;
assign inst_block_sigs[4] = (p_anonymous_namespace_collect_U0.ap_done & ~p_anonymous_namespace_collect_U0.ap_continue) | ~p_anonymous_namespace_collect_U0.cycle_rx_blk_n;

assign inst_idle_sigs[5] = 1'b0;
assign inst_idle_sigs[6] = p_anonymous_namespace_collect_U0.ap_idle;

vae_feature_sender_hls_deadlock_idx0_monitor vae_feature_sender_hls_deadlock_idx0_monitor_U (
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
