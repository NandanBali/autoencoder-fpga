# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name stamps \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stamps \
    op interface \
    ports { stamps_dout { I 64 vector } stamps_num_data_valid { I 7 vector } stamps_fifo_cap { I 7 vector } stamps_empty_n { I 1 bit } stamps_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name n_flows \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n_flows \
    op interface \
    ports { n_flows_dout { I 32 vector } n_flows_num_data_valid { I 3 vector } n_flows_fifo_cap { I 3 vector } n_flows_empty_n { I 1 bit } n_flows_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name gmem_ts \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_ts \
    op interface \
    ports { m_axi_gmem_ts_AWVALID { O 1 bit } m_axi_gmem_ts_AWREADY { I 1 bit } m_axi_gmem_ts_AWADDR { O 64 vector } m_axi_gmem_ts_AWID { O 1 vector } m_axi_gmem_ts_AWLEN { O 32 vector } m_axi_gmem_ts_AWSIZE { O 3 vector } m_axi_gmem_ts_AWBURST { O 2 vector } m_axi_gmem_ts_AWLOCK { O 2 vector } m_axi_gmem_ts_AWCACHE { O 4 vector } m_axi_gmem_ts_AWPROT { O 3 vector } m_axi_gmem_ts_AWQOS { O 4 vector } m_axi_gmem_ts_AWREGION { O 4 vector } m_axi_gmem_ts_AWUSER { O 1 vector } m_axi_gmem_ts_WVALID { O 1 bit } m_axi_gmem_ts_WREADY { I 1 bit } m_axi_gmem_ts_WDATA { O 64 vector } m_axi_gmem_ts_WSTRB { O 8 vector } m_axi_gmem_ts_WLAST { O 1 bit } m_axi_gmem_ts_WID { O 1 vector } m_axi_gmem_ts_WUSER { O 1 vector } m_axi_gmem_ts_ARVALID { O 1 bit } m_axi_gmem_ts_ARREADY { I 1 bit } m_axi_gmem_ts_ARADDR { O 64 vector } m_axi_gmem_ts_ARID { O 1 vector } m_axi_gmem_ts_ARLEN { O 32 vector } m_axi_gmem_ts_ARSIZE { O 3 vector } m_axi_gmem_ts_ARBURST { O 2 vector } m_axi_gmem_ts_ARLOCK { O 2 vector } m_axi_gmem_ts_ARCACHE { O 4 vector } m_axi_gmem_ts_ARPROT { O 3 vector } m_axi_gmem_ts_ARQOS { O 4 vector } m_axi_gmem_ts_ARREGION { O 4 vector } m_axi_gmem_ts_ARUSER { O 1 vector } m_axi_gmem_ts_RVALID { I 1 bit } m_axi_gmem_ts_RREADY { O 1 bit } m_axi_gmem_ts_RDATA { I 64 vector } m_axi_gmem_ts_RLAST { I 1 bit } m_axi_gmem_ts_RID { I 1 vector } m_axi_gmem_ts_RFIFONUM { I 9 vector } m_axi_gmem_ts_RUSER { I 1 vector } m_axi_gmem_ts_RRESP { I 2 vector } m_axi_gmem_ts_BVALID { I 1 bit } m_axi_gmem_ts_BREADY { O 1 bit } m_axi_gmem_ts_BRESP { I 2 vector } m_axi_gmem_ts_BID { I 1 vector } m_axi_gmem_ts_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name t_send \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_send \
    op interface \
    ports { t_send_dout { I 64 vector } t_send_num_data_valid { I 3 vector } t_send_fifo_cap { I 3 vector } t_send_empty_n { I 1 bit } t_send_read { O 1 bit } } \
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


