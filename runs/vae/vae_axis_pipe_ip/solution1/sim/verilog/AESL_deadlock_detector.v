`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input dl_reset,
    input all_finish,
    input dl_clock);

    wire [0:0] proc_0_data_FIFO_blk;
    wire [0:0] proc_0_data_PIPO_blk;
    wire [0:0] proc_0_start_FIFO_blk;
    wire [0:0] proc_0_TLF_FIFO_blk;
    wire [0:0] proc_0_input_sync_blk;
    wire [0:0] proc_0_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_0;
    reg [0:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [38:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [0:0] out_chan_dep_vld_vec_0;
    wire [12:0] out_chan_dep_data_0;
    wire [0:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [12:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [12:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_12_0;
    wire [12:0] dep_chan_data_12_0;
    wire token_12_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [0:0] in_chan_dep_vld_vec_1;
    wire [12:0] in_chan_dep_data_vec_1;
    wire [0:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [12:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_12_1;
    wire [12:0] dep_chan_data_12_1;
    wire token_12_1;
    wire [0:0] proc_2_data_FIFO_blk;
    wire [0:0] proc_2_data_PIPO_blk;
    wire [0:0] proc_2_start_FIFO_blk;
    wire [0:0] proc_2_TLF_FIFO_blk;
    wire [0:0] proc_2_input_sync_blk;
    wire [0:0] proc_2_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_2;
    reg [0:0] proc_dep_vld_vec_2_reg;
    wire [0:0] in_chan_dep_vld_vec_2;
    wire [12:0] in_chan_dep_data_vec_2;
    wire [0:0] token_in_vec_2;
    wire [0:0] out_chan_dep_vld_vec_2;
    wire [12:0] out_chan_dep_data_2;
    wire [0:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_3_2;
    wire [12:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [0:0] proc_3_data_FIFO_blk;
    wire [0:0] proc_3_data_PIPO_blk;
    wire [0:0] proc_3_start_FIFO_blk;
    wire [0:0] proc_3_TLF_FIFO_blk;
    wire [0:0] proc_3_input_sync_blk;
    wire [0:0] proc_3_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_3;
    reg [0:0] proc_dep_vld_vec_3_reg;
    wire [0:0] in_chan_dep_vld_vec_3;
    wire [12:0] in_chan_dep_data_vec_3;
    wire [0:0] token_in_vec_3;
    wire [0:0] out_chan_dep_vld_vec_3;
    wire [12:0] out_chan_dep_data_3;
    wire [0:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_4_3;
    wire [12:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [0:0] proc_4_data_FIFO_blk;
    wire [0:0] proc_4_data_PIPO_blk;
    wire [0:0] proc_4_start_FIFO_blk;
    wire [0:0] proc_4_TLF_FIFO_blk;
    wire [0:0] proc_4_input_sync_blk;
    wire [0:0] proc_4_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_4;
    reg [0:0] proc_dep_vld_vec_4_reg;
    wire [0:0] in_chan_dep_vld_vec_4;
    wire [12:0] in_chan_dep_data_vec_4;
    wire [0:0] token_in_vec_4;
    wire [0:0] out_chan_dep_vld_vec_4;
    wire [12:0] out_chan_dep_data_4;
    wire [0:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_5_4;
    wire [12:0] dep_chan_data_5_4;
    wire token_5_4;
    wire [0:0] proc_5_data_FIFO_blk;
    wire [0:0] proc_5_data_PIPO_blk;
    wire [0:0] proc_5_start_FIFO_blk;
    wire [0:0] proc_5_TLF_FIFO_blk;
    wire [0:0] proc_5_input_sync_blk;
    wire [0:0] proc_5_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_5;
    reg [0:0] proc_dep_vld_vec_5_reg;
    wire [0:0] in_chan_dep_vld_vec_5;
    wire [12:0] in_chan_dep_data_vec_5;
    wire [0:0] token_in_vec_5;
    wire [0:0] out_chan_dep_vld_vec_5;
    wire [12:0] out_chan_dep_data_5;
    wire [0:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_6_5;
    wire [12:0] dep_chan_data_6_5;
    wire token_6_5;
    wire [0:0] proc_6_data_FIFO_blk;
    wire [0:0] proc_6_data_PIPO_blk;
    wire [0:0] proc_6_start_FIFO_blk;
    wire [0:0] proc_6_TLF_FIFO_blk;
    wire [0:0] proc_6_input_sync_blk;
    wire [0:0] proc_6_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_6;
    reg [0:0] proc_dep_vld_vec_6_reg;
    wire [0:0] in_chan_dep_vld_vec_6;
    wire [12:0] in_chan_dep_data_vec_6;
    wire [0:0] token_in_vec_6;
    wire [0:0] out_chan_dep_vld_vec_6;
    wire [12:0] out_chan_dep_data_6;
    wire [0:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_7_6;
    wire [12:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [0:0] proc_7_data_FIFO_blk;
    wire [0:0] proc_7_data_PIPO_blk;
    wire [0:0] proc_7_start_FIFO_blk;
    wire [0:0] proc_7_TLF_FIFO_blk;
    wire [0:0] proc_7_input_sync_blk;
    wire [0:0] proc_7_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_7;
    reg [0:0] proc_dep_vld_vec_7_reg;
    wire [0:0] in_chan_dep_vld_vec_7;
    wire [12:0] in_chan_dep_data_vec_7;
    wire [0:0] token_in_vec_7;
    wire [0:0] out_chan_dep_vld_vec_7;
    wire [12:0] out_chan_dep_data_7;
    wire [0:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_8_7;
    wire [12:0] dep_chan_data_8_7;
    wire token_8_7;
    wire [0:0] proc_8_data_FIFO_blk;
    wire [0:0] proc_8_data_PIPO_blk;
    wire [0:0] proc_8_start_FIFO_blk;
    wire [0:0] proc_8_TLF_FIFO_blk;
    wire [0:0] proc_8_input_sync_blk;
    wire [0:0] proc_8_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_8;
    reg [0:0] proc_dep_vld_vec_8_reg;
    wire [0:0] in_chan_dep_vld_vec_8;
    wire [12:0] in_chan_dep_data_vec_8;
    wire [0:0] token_in_vec_8;
    wire [0:0] out_chan_dep_vld_vec_8;
    wire [12:0] out_chan_dep_data_8;
    wire [0:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_9_8;
    wire [12:0] dep_chan_data_9_8;
    wire token_9_8;
    wire [0:0] proc_9_data_FIFO_blk;
    wire [0:0] proc_9_data_PIPO_blk;
    wire [0:0] proc_9_start_FIFO_blk;
    wire [0:0] proc_9_TLF_FIFO_blk;
    wire [0:0] proc_9_input_sync_blk;
    wire [0:0] proc_9_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_9;
    reg [0:0] proc_dep_vld_vec_9_reg;
    wire [0:0] in_chan_dep_vld_vec_9;
    wire [12:0] in_chan_dep_data_vec_9;
    wire [0:0] token_in_vec_9;
    wire [0:0] out_chan_dep_vld_vec_9;
    wire [12:0] out_chan_dep_data_9;
    wire [0:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_10_9;
    wire [12:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [0:0] proc_10_data_FIFO_blk;
    wire [0:0] proc_10_data_PIPO_blk;
    wire [0:0] proc_10_start_FIFO_blk;
    wire [0:0] proc_10_TLF_FIFO_blk;
    wire [0:0] proc_10_input_sync_blk;
    wire [0:0] proc_10_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_10;
    reg [0:0] proc_dep_vld_vec_10_reg;
    wire [0:0] in_chan_dep_vld_vec_10;
    wire [12:0] in_chan_dep_data_vec_10;
    wire [0:0] token_in_vec_10;
    wire [0:0] out_chan_dep_vld_vec_10;
    wire [12:0] out_chan_dep_data_10;
    wire [0:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_11_10;
    wire [12:0] dep_chan_data_11_10;
    wire token_11_10;
    wire [1:0] proc_11_data_FIFO_blk;
    wire [1:0] proc_11_data_PIPO_blk;
    wire [1:0] proc_11_start_FIFO_blk;
    wire [1:0] proc_11_TLF_FIFO_blk;
    wire [1:0] proc_11_input_sync_blk;
    wire [1:0] proc_11_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_11;
    reg [1:0] proc_dep_vld_vec_11_reg;
    wire [0:0] in_chan_dep_vld_vec_11;
    wire [12:0] in_chan_dep_data_vec_11;
    wire [0:0] token_in_vec_11;
    wire [1:0] out_chan_dep_vld_vec_11;
    wire [12:0] out_chan_dep_data_11;
    wire [1:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_12_11;
    wire [12:0] dep_chan_data_12_11;
    wire token_12_11;
    wire [2:0] proc_12_data_FIFO_blk;
    wire [2:0] proc_12_data_PIPO_blk;
    wire [2:0] proc_12_start_FIFO_blk;
    wire [2:0] proc_12_TLF_FIFO_blk;
    wire [2:0] proc_12_input_sync_blk;
    wire [2:0] proc_12_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_12;
    reg [2:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [38:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [2:0] out_chan_dep_vld_vec_12;
    wire [12:0] out_chan_dep_data_12;
    wire [2:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_0_12;
    wire [12:0] dep_chan_data_0_12;
    wire token_0_12;
    wire dep_chan_vld_1_12;
    wire [12:0] dep_chan_data_1_12;
    wire token_1_12;
    wire dep_chan_vld_11_12;
    wire [12:0] dep_chan_data_11_12;
    wire token_11_12;
    wire [12:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    wire [12:0] origin;

    reg ap_done_reg_0;// for module AESL_inst_vae_axis.vae_core_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_vae_axis.vae_core_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ~AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_continue;
        end
    end

    reg ap_done_reg_11;// for module AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_11 <= 'b0;
        end
        else begin
            ap_done_reg_11 <= AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_done & ~AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_continue;
        end
    end

    // Process: AESL_inst_vae_axis.p_anonymous_namespace_read_frame_U0
    AESL_deadlock_detect_unit #(13, 0, 3, 1) AESL_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.p_anonymous_namespace_read_frame_U0.bypass_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[12 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[25 : 13] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_12_0;
    assign in_chan_dep_data_vec_0[38 : 26] = dep_chan_data_12_0;
    assign token_in_vec_0[2] = token_12_0;
    assign dep_chan_vld_0_12 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_12 = out_chan_dep_data_0;
    assign token_0_12 = token_out_vec_0[0];

    // Process: AESL_inst_vae_axis.vae_core_U0
    AESL_deadlock_detect_unit #(13, 1, 1, 2) AESL_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.x_core_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.ap_idle & ~AESL_inst_vae_axis.x_core_U.if_write);
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0 | (~AESL_inst_vae_axis.recon_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_U.if_read) | (~AESL_inst_vae_axis.recon_1_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_1_U.if_read) | (~AESL_inst_vae_axis.recon_2_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_2_U.if_read) | (~AESL_inst_vae_axis.recon_3_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_3_U.if_read) | (~AESL_inst_vae_axis.recon_4_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_4_U.if_read) | (~AESL_inst_vae_axis.recon_5_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_5_U.if_read) | (~AESL_inst_vae_axis.recon_6_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_6_U.if_read) | (~AESL_inst_vae_axis.recon_7_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.ap_done & ap_done_reg_0 & ~AESL_inst_vae_axis.recon_7_U.if_read);
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_12_1;
    assign in_chan_dep_data_vec_1[12 : 0] = dep_chan_data_12_1;
    assign token_in_vec_1[0] = token_12_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_12 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_12 = out_chan_dep_data_1;
    assign token_1_12 = token_out_vec_1[1];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0
    AESL_deadlock_detect_unit #(13, 2, 1, 1) AESL_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.x_core_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.ap_idle & ~AESL_inst_vae_axis.x_core_U.if_write);
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[12 : 0] = dep_chan_data_3_2;
    assign token_in_vec_2[0] = token_3_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0
    AESL_deadlock_detect_unit #(13, 3, 1, 1) AESL_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_15_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_16_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_16_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_17_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_17_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_18_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_18_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_19_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_19_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_20_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_20_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_21_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_21_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_22_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_22_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_23_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_23_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_24_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_24_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_25_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_25_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_26_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_26_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_27_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_27_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_28_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_28_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_29_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_29_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_30_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_30_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer2_out_31_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer2_out_31_U.if_write);
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[12 : 0] = dep_chan_data_4_3;
    assign token_in_vec_3[0] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0
    AESL_deadlock_detect_unit #(13, 4, 1, 1) AESL_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0;
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_15_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_16_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_16_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_17_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_17_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_18_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_18_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_19_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_19_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_20_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_20_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_21_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_21_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_22_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_22_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_23_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_23_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_24_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_24_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_25_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_25_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_26_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_26_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_27_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_27_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_28_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_28_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_29_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_29_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_30_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_30_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer3_out_31_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer3_out_31_U.if_write);
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[12 : 0] = dep_chan_data_5_4;
    assign token_in_vec_4[0] = token_5_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0
    AESL_deadlock_detect_unit #(13, 5, 1, 1) AESL_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0;
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer4_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer4_out_15_U.if_write);
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[12 : 0] = dep_chan_data_6_5;
    assign token_in_vec_5[0] = token_6_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0
    AESL_deadlock_detect_unit #(13, 6, 1, 1) AESL_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer5_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer5_out_15_U.if_write);
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[12 : 0] = dep_chan_data_7_6;
    assign token_in_vec_6[0] = token_7_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0
    AESL_deadlock_detect_unit #(13, 7, 1, 1) AESL_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0;
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer6_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer6_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer6_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer6_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer6_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer6_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer6_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer6_out_3_U.if_write);
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[12 : 0] = dep_chan_data_8_7;
    assign token_in_vec_7[0] = token_8_7;
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0
    AESL_deadlock_detect_unit #(13, 8, 1, 1) AESL_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0;
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer7_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer7_out_15_U.if_write);
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[12 : 0] = dep_chan_data_9_8;
    assign token_in_vec_8[0] = token_9_8;
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0
    AESL_deadlock_detect_unit #(13, 9, 1, 1) AESL_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0;
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer8_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer8_out_15_U.if_write);
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[12 : 0] = dep_chan_data_10_9;
    assign token_in_vec_9[0] = token_10_9;
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0
    AESL_deadlock_detect_unit #(13, 10, 1, 1) AESL_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_15_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_16_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_16_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_17_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_17_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_18_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_18_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_19_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_19_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_20_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_20_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_21_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_21_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_22_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_22_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_23_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_23_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_24_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_24_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_25_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_25_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_26_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_26_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_27_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_27_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_28_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_28_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_29_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_29_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_30_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_30_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer9_out_31_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer9_out_31_U.if_write);
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[12 : 0] = dep_chan_data_11_10;
    assign token_in_vec_10[0] = token_11_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];

    // Process: AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0
    AESL_deadlock_detect_unit #(13, 11, 1, 2) AESL_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0;
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_1_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_1_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_2_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_2_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_3_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_3_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_4_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_4_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_5_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_5_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_6_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_6_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_7_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_7_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_8_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_8_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_9_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_9_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_10_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_10_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_11_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_11_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_12_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_12_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_13_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_13_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_14_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_14_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_15_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_15_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_16_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_16_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_17_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_17_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_18_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_18_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_19_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_19_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_20_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_20_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_21_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_21_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_22_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_22_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_23_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_23_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_24_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_24_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_25_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_25_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_26_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_26_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_27_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_27_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_28_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_28_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_29_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_29_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_30_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_30_U.if_write) | (~AESL_inst_vae_axis.vae_core_U0.layer10_out_31_U.if_empty_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_idle & ~AESL_inst_vae_axis.vae_core_U0.layer10_out_31_U.if_write);
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0;
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0 | (~AESL_inst_vae_axis.recon_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_U.if_read) | (~AESL_inst_vae_axis.recon_1_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_1_U.if_read) | (~AESL_inst_vae_axis.recon_2_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_2_U.if_read) | (~AESL_inst_vae_axis.recon_3_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_3_U.if_read) | (~AESL_inst_vae_axis.recon_4_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_4_U.if_read) | (~AESL_inst_vae_axis.recon_5_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_5_U.if_read) | (~AESL_inst_vae_axis.recon_6_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_6_U.if_read) | (~AESL_inst_vae_axis.recon_7_U.if_full_n & AESL_inst_vae_axis.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.ap_done & ap_done_reg_10 & ~AESL_inst_vae_axis.recon_7_U.if_read);
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[12 : 0] = dep_chan_data_12_11;
    assign token_in_vec_11[0] = token_12_11;
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[0];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[1];

    // Process: AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0
    AESL_deadlock_detect_unit #(13, 12, 3, 3) AESL_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0;
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0 | (~AESL_inst_vae_axis.recon_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_U.if_write) | (~AESL_inst_vae_axis.recon_1_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_1_U.if_write) | (~AESL_inst_vae_axis.recon_2_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_2_U.if_write) | (~AESL_inst_vae_axis.recon_3_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_3_U.if_write) | (~AESL_inst_vae_axis.recon_4_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_4_U.if_write) | (~AESL_inst_vae_axis.recon_5_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_5_U.if_write) | (~AESL_inst_vae_axis.recon_6_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_6_U.if_write) | (~AESL_inst_vae_axis.recon_7_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_7_U.if_write);
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0;
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0 | (~AESL_inst_vae_axis.recon_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_U.if_write) | (~AESL_inst_vae_axis.recon_1_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_1_U.if_write) | (~AESL_inst_vae_axis.recon_2_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_2_U.if_write) | (~AESL_inst_vae_axis.recon_3_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_3_U.if_write) | (~AESL_inst_vae_axis.recon_4_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_4_U.if_write) | (~AESL_inst_vae_axis.recon_5_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_5_U.if_write) | (~AESL_inst_vae_axis.recon_6_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_6_U.if_write) | (~AESL_inst_vae_axis.recon_7_U.if_empty_n & AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.ap_idle & ~AESL_inst_vae_axis.recon_7_U.if_write);
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~AESL_inst_vae_axis.p_anonymous_namespace_score_and_write_U0.bypass_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_0_12;
    assign in_chan_dep_data_vec_12[12 : 0] = dep_chan_data_0_12;
    assign token_in_vec_12[0] = token_0_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_1_12;
    assign in_chan_dep_data_vec_12[25 : 13] = dep_chan_data_1_12;
    assign token_in_vec_12[1] = token_1_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[38 : 26] = dep_chan_data_11_12;
    assign token_in_vec_12[2] = token_11_12;
    assign dep_chan_vld_12_1 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_1 = out_chan_dep_data_12;
    assign token_12_1 = token_out_vec_12[0];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[1];
    assign dep_chan_vld_12_0 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_0 = out_chan_dep_data_12;
    assign token_12_0 = token_out_vec_12[2];


    wire [12:0] dl_in_vec_comb = dl_in_vec & ~{12{all_finish}};
    AESL_deadlock_report_unit #(13) AESL_deadlock_report_unit_inst (
        .dl_reset(dl_reset),
        .dl_clock(dl_clock),
        .dl_in_vec(dl_in_vec_comb),
        .ap_done_reg_0(ap_done_reg_0),
        .ap_done_reg_1(ap_done_reg_1),
        .ap_done_reg_2(ap_done_reg_2),
        .ap_done_reg_3(ap_done_reg_3),
        .ap_done_reg_4(ap_done_reg_4),
        .ap_done_reg_5(ap_done_reg_5),
        .ap_done_reg_6(ap_done_reg_6),
        .ap_done_reg_7(ap_done_reg_7),
        .ap_done_reg_8(ap_done_reg_8),
        .ap_done_reg_9(ap_done_reg_9),
        .ap_done_reg_10(ap_done_reg_10),
        .ap_done_reg_11(ap_done_reg_11),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
