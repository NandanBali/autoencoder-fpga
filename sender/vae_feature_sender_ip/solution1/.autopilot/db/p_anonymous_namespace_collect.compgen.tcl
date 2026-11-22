# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 46 \
    name s_axis_score_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_score} \
    metadata {  } \
    op interface \
    ports { s_axis_score_TDATA { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_score_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 47 \
    name s_axis_score_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_score} \
    metadata {  } \
    op interface \
    ports { s_axis_score_TKEEP { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_score_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 48 \
    name s_axis_score_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_score} \
    metadata {  } \
    op interface \
    ports { s_axis_score_TSTRB { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_score_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 49 \
    name s_axis_score_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {s_axis_score} \
    metadata {  } \
    op interface \
    ports { s_axis_score_TVALID { I 1 bit } s_axis_score_TREADY { O 1 bit } s_axis_score_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 's_axis_score_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name n_flows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_flows \
    op interface \
    ports { n_flows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name cycle_rx \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cycle_rx \
    op interface \
    ports { cycle_rx_dout { I 64 vector } cycle_rx_empty_n { I 1 bit } cycle_rx_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name gmem_res \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_res \
    op interface \
    ports { m_axi_gmem_res_AWVALID { O 1 bit } m_axi_gmem_res_AWREADY { I 1 bit } m_axi_gmem_res_AWADDR { O 64 vector } m_axi_gmem_res_AWID { O 1 vector } m_axi_gmem_res_AWLEN { O 32 vector } m_axi_gmem_res_AWSIZE { O 3 vector } m_axi_gmem_res_AWBURST { O 2 vector } m_axi_gmem_res_AWLOCK { O 2 vector } m_axi_gmem_res_AWCACHE { O 4 vector } m_axi_gmem_res_AWPROT { O 3 vector } m_axi_gmem_res_AWQOS { O 4 vector } m_axi_gmem_res_AWREGION { O 4 vector } m_axi_gmem_res_AWUSER { O 1 vector } m_axi_gmem_res_WVALID { O 1 bit } m_axi_gmem_res_WREADY { I 1 bit } m_axi_gmem_res_WDATA { O 128 vector } m_axi_gmem_res_WSTRB { O 16 vector } m_axi_gmem_res_WLAST { O 1 bit } m_axi_gmem_res_WID { O 1 vector } m_axi_gmem_res_WUSER { O 1 vector } m_axi_gmem_res_ARVALID { O 1 bit } m_axi_gmem_res_ARREADY { I 1 bit } m_axi_gmem_res_ARADDR { O 64 vector } m_axi_gmem_res_ARID { O 1 vector } m_axi_gmem_res_ARLEN { O 32 vector } m_axi_gmem_res_ARSIZE { O 3 vector } m_axi_gmem_res_ARBURST { O 2 vector } m_axi_gmem_res_ARLOCK { O 2 vector } m_axi_gmem_res_ARCACHE { O 4 vector } m_axi_gmem_res_ARPROT { O 3 vector } m_axi_gmem_res_ARQOS { O 4 vector } m_axi_gmem_res_ARREGION { O 4 vector } m_axi_gmem_res_ARUSER { O 1 vector } m_axi_gmem_res_RVALID { I 1 bit } m_axi_gmem_res_RREADY { O 1 bit } m_axi_gmem_res_RDATA { I 128 vector } m_axi_gmem_res_RLAST { I 1 bit } m_axi_gmem_res_RID { I 1 vector } m_axi_gmem_res_RFIFONUM { I 9 vector } m_axi_gmem_res_RUSER { I 1 vector } m_axi_gmem_res_RRESP { I 2 vector } m_axi_gmem_res_BVALID { I 1 bit } m_axi_gmem_res_BREADY { O 1 bit } m_axi_gmem_res_BRESP { I 2 vector } m_axi_gmem_res_BID { I 1 vector } m_axi_gmem_res_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name results \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_results \
    op interface \
    ports { results { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# RegSlice definition:
set ID 54
set RegSliceName vae_feature_sender_regslice_both
set RegSliceInstName vae_feature_sender_regslice_both_U
set CoreName ap_simcore_vae_feature_sender_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix vae_feature_sender_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 55
set RegSliceName vae_feature_sender_regslice_both
set RegSliceInstName vae_feature_sender_regslice_both_U
set CoreName ap_simcore_vae_feature_sender_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix vae_feature_sender_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 56
set RegSliceName vae_feature_sender_regslice_both
set RegSliceInstName vae_feature_sender_regslice_both_U
set CoreName ap_simcore_vae_feature_sender_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix vae_feature_sender_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 57
set RegSliceName vae_feature_sender_regslice_both
set RegSliceInstName vae_feature_sender_regslice_both_U
set CoreName ap_simcore_vae_feature_sender_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName BINDTYPE interface TYPE interface_regslice INSTNAME $RegSliceInstName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix vae_feature_sender_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# flow_control definition:
set InstName vae_feature_sender_flow_control_loop_pipe_U
set CompName vae_feature_sender_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix vae_feature_sender_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


