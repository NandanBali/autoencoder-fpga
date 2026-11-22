set SynModuleInfo {
  {SRCNAME {(anonymous namespace)read_frame_Pipeline_read_beats} MODELNAME p_anonymous_namespace_read_frame_Pipeline_read_beats RTLNAME vae_axis_p_anonymous_namespace_read_frame_Pipeline_read_beats
    SUBMODULES {
      {MODELNAME vae_axis_flow_control_loop_pipe_sequential_init RTLNAME vae_axis_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vae_axis_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {(anonymous namespace)read_frame_Pipeline_drain} MODELNAME p_anonymous_namespace_read_frame_Pipeline_drain RTLNAME vae_axis_p_anonymous_namespace_read_frame_Pipeline_drain}
  {SRCNAME {(anonymous namespace)read_frame} MODELNAME p_anonymous_namespace_read_frame RTLNAME vae_axis_p_anonymous_namespace_read_frame
    SUBMODULES {
      {MODELNAME vae_axis_p_anonymous_namespace_read_frame_f_x_RAM_AUTO_1R1W RTLNAME vae_axis_p_anonymous_namespace_read_frame_f_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_regslice_both RTLNAME vae_axis_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME vae_axis_regslice_both_U}
    }
  }
  {SRCNAME {cast<ap_fixed<25, 9, 5, 3, 0>, ap_fixed<18, 4, 4, 0, 0>, config2>} MODELNAME cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s RTLNAME vae_axis_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<18,4,4,0,0>,config2> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s
    SUBMODULES {
      {MODELNAME vae_axis_mul_8s_6ns_8_1_1 RTLNAME vae_axis_mul_8s_6ns_8_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_mul_25s_18s_39_3_1 RTLNAME vae_axis_mul_25s_18s_39_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_mul_25s_16s_39_3_1 RTLNAME vae_axis_mul_25s_16s_39_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s_outidx_4bkb RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s_outidx_4bkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s_w2_ROM_Ncud RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s_w2_ROM_Ncud BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_frp_fifoout RTLNAME vae_axis_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME vae_axis_frp_pipeline_valid RTLNAME vae_axis_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME vae_axis_frp_pipeline_valid_U}
      {MODELNAME vae_axis_flow_control_loop_pipe RTLNAME vae_axis_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vae_axis_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {relu<ap_fixed<18, 4, 4, 0, 0>, ap_ufixed<18, 3, 4, 0, 0>, relu_config3>} MODELNAME relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_s RTLNAME vae_axis_relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_s}
  {SRCNAME {cast<ap_ufixed<18, 3, 4, 0, 0>, ap_fixed<18, 5, 4, 0, 0>, config4>} MODELNAME cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s RTLNAME vae_axis_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<18,5,4,0,0>,config4> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s
    SUBMODULES {
      {MODELNAME vae_axis_sparsemux_33_4_18_1_1 RTLNAME vae_axis_sparsemux_33_4_18_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME vae_axis_mul_18s_18ns_36_1_1 RTLNAME vae_axis_mul_18s_18ns_36_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_mul_18ns_15s_33_1_1 RTLNAME vae_axis_mul_18ns_15s_33_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s_w4_ROM_NP_BdEe RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s_w4_ROM_NP_BdEe BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<18, 5, 4, 0, 0>, ap_ufixed<18, 4, 4, 0, 0>, relu_config5>} MODELNAME relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_s RTLNAME vae_axis_relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_s}
  {SRCNAME {cast<ap_ufixed<18, 4, 4, 0, 0>, ap_fixed<18, 5, 4, 0, 0>, config6>} MODELNAME cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s RTLNAME vae_axis_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<18,5,4,0,0>,config6> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s
    SUBMODULES {
      {MODELNAME vae_axis_mul_18ns_14s_32_1_1 RTLNAME vae_axis_mul_18ns_14s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s_w6_ROM_NP_BeOg RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s_w6_ROM_NP_BeOg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {cast<ap_fixed<18, 5, 4, 0, 0>, ap_fixed<18, 5, 4, 0, 0>, config7>} MODELNAME cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s RTLNAME vae_axis_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<18,5,4,0,0>,config7> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s
    SUBMODULES {
      {MODELNAME vae_axis_sparsemux_9_2_18_1_1 RTLNAME vae_axis_sparsemux_9_2_18_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME vae_axis_mul_18s_18s_36_1_1 RTLNAME vae_axis_mul_18s_18s_36_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_mul_18s_17s_35_1_1 RTLNAME vae_axis_mul_18s_17s_35_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_sparsemux_9_2_30_1_1 RTLNAME vae_axis_sparsemux_9_2_30_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s_outidx_RfYi RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s_outidx_RfYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s_w7_ROM_Ng8j RTLNAME vae_axis_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s_w7_ROM_Ng8j BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<18, 5, 4, 0, 0>, ap_ufixed<18, 4, 4, 0, 0>, relu_config8>} MODELNAME relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_s RTLNAME vae_axis_relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_s}
  {SRCNAME {cast<ap_ufixed<18, 4, 4, 0, 0>, ap_fixed<18, 6, 4, 0, 0>, config9>} MODELNAME cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s RTLNAME vae_axis_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<18,6,4,0,0>,config9> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s
    SUBMODULES {
      {MODELNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s_w9_ROM_NP_Bhbi RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s_w9_ROM_NP_Bhbi BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<18, 6, 4, 0, 0>, ap_ufixed<18, 5, 4, 0, 0>, relu_config10>} MODELNAME relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_s RTLNAME vae_axis_relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_s}
  {SRCNAME {cast<ap_ufixed<18, 5, 4, 0, 0>, ap_fixed<18, 4, 4, 0, 0>, config11>} MODELNAME cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s RTLNAME vae_axis_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s}
  {SRCNAME dense_resource_rf_leq_nin<ap_ufixed,ap_fixed<18,4,4,0,0>,config11> MODELNAME dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s
    SUBMODULES {
      {MODELNAME vae_axis_mul_18ns_17s_35_1_1 RTLNAME vae_axis_mul_18ns_17s_35_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s_w11_ROM_NPibs RTLNAME vae_axis_dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s_w11_ROM_NPibs BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vae_core MODELNAME vae_core RTLNAME vae_axis_vae_core
    SUBMODULES {
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_16_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_17_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_18_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_19_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_20_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_21_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_22_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_23_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_24_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_25_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_26_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_27_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_28_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_29_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_30_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer2_out_31_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_16_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_17_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_18_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_19_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_20_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_21_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_22_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_23_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_24_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_25_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_26_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_27_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_28_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_29_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_30_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer3_out_31_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer4_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer5_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer6_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer7_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer8_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_16_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_17_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_18_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_19_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_20_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_21_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_22_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_23_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_24_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_25_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_26_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_27_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_28_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_29_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_30_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer9_out_31_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_7_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_8_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_9_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_10_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_11_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_12_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_13_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_14_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_15_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_16_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_17_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_18_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_19_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_20_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_21_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_22_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_23_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_24_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_25_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_26_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_27_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_28_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_29_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_30_U}
      {MODELNAME vae_axis_fifo_w18_d2_S RTLNAME vae_axis_fifo_w18_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer10_out_31_U}
    }
  }
  {SRCNAME {(anonymous namespace)score_and_write} MODELNAME p_anonymous_namespace_score_and_write RTLNAME vae_axis_p_anonymous_namespace_score_and_write
    SUBMODULES {
      {MODELNAME vae_axis_mul_26s_26s_50_4_1 RTLNAME vae_axis_mul_26s_26s_50_4_1 BINDTYPE op TYPE mul IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME vae_axis MODELNAME vae_axis RTLNAME vae_axis IS_TOP 1
    SUBMODULES {
      {MODELNAME vae_axis_fifo_w201_d16_A RTLNAME vae_axis_fifo_w201_d16_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bypass_U}
      {MODELNAME vae_axis_fifo_w200_d2_S RTLNAME vae_axis_fifo_w200_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME x_core_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_1_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_2_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_3_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_4_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_5_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_6_U}
      {MODELNAME vae_axis_fifo_w18_d2_S_x RTLNAME vae_axis_fifo_w18_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME recon_7_U}
    }
  }
}
