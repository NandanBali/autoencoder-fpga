set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME vae_feature_sender_entry_proc}
  {SRCNAME {(anonymous namespace)load_Pipeline_read_ddr} MODELNAME p_anonymous_namespace_load_Pipeline_read_ddr RTLNAME vae_feature_sender_p_anonymous_namespace_load_Pipeline_read_ddr
    SUBMODULES {
      {MODELNAME vae_feature_sender_flow_control_loop_pipe_sequential_init RTLNAME vae_feature_sender_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vae_feature_sender_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {(anonymous namespace)load} MODELNAME p_anonymous_namespace_load RTLNAME vae_feature_sender_p_anonymous_namespace_load}
  {SRCNAME {(anonymous namespace)pace_send_Pipeline_send} MODELNAME p_anonymous_namespace_pace_send_Pipeline_send RTLNAME vae_feature_sender_p_anonymous_namespace_pace_send_Pipeline_send}
  {SRCNAME {(anonymous namespace)pace_send} MODELNAME p_anonymous_namespace_pace_send RTLNAME vae_feature_sender_p_anonymous_namespace_pace_send
    SUBMODULES {
      {MODELNAME vae_feature_sender_regslice_both RTLNAME vae_feature_sender_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME vae_feature_sender_regslice_both_U}
    }
  }
  {SRCNAME {(anonymous namespace)store_stamps_Pipeline_write_stamps} MODELNAME p_anonymous_namespace_store_stamps_Pipeline_write_stamps RTLNAME vae_feature_sender_p_anonymous_namespace_store_stamps_Pipeline_write_stamps}
  {SRCNAME {(anonymous namespace)store_stamps} MODELNAME p_anonymous_namespace_store_stamps RTLNAME vae_feature_sender_p_anonymous_namespace_store_stamps}
  {SRCNAME {(anonymous namespace)collect} MODELNAME p_anonymous_namespace_collect RTLNAME vae_feature_sender_p_anonymous_namespace_collect
    SUBMODULES {
      {MODELNAME vae_feature_sender_flow_control_loop_pipe RTLNAME vae_feature_sender_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vae_feature_sender_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME vae_feature_sender MODELNAME vae_feature_sender RTLNAME vae_feature_sender IS_TOP 1
    SUBMODULES {
      {MODELNAME vae_feature_sender_fifo_w64_d4_S RTLNAME vae_feature_sender_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME t_send_c_U}
      {MODELNAME vae_feature_sender_fifo_w32_d3_S RTLNAME vae_feature_sender_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME period_c_U}
      {MODELNAME vae_feature_sender_fifo_w32_d256_A RTLNAME vae_feature_sender_fifo_w32_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME words_U}
      {MODELNAME vae_feature_sender_fifo_w32_d2_S RTLNAME vae_feature_sender_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME n_flows_c19_U}
      {MODELNAME vae_feature_sender_fifo_w64_d64_A RTLNAME vae_feature_sender_fifo_w64_d64_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME stamps_U}
      {MODELNAME vae_feature_sender_fifo_w32_d2_S RTLNAME vae_feature_sender_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME n_flows_c_U}
      {MODELNAME vae_feature_sender_start_for_p_anonymous_namespace_pace_send_U0 RTLNAME vae_feature_sender_start_for_p_anonymous_namespace_pace_send_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_pace_send_U0_U}
      {MODELNAME vae_feature_sender_start_for_p_anonymous_namespace_store_stamps_U0 RTLNAME vae_feature_sender_start_for_p_anonymous_namespace_store_stamps_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_p_anonymous_namespace_store_stamps_U0_U}
      {MODELNAME vae_feature_sender_gmem_in_m_axi RTLNAME vae_feature_sender_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vae_feature_sender_gmem_ts_m_axi RTLNAME vae_feature_sender_gmem_ts_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vae_feature_sender_gmem_res_m_axi RTLNAME vae_feature_sender_gmem_res_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME vae_feature_sender_control_s_axi RTLNAME vae_feature_sender_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
