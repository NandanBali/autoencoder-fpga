# Build the PYNQ-Z2 overlay: PS7 -> vae_feature_sender -> pipelined vae_axis -> sender -> DDR.
#
#   cd autoencoder/overlay && vivado -mode batch -source build_overlay.tcl [-tclargs OUT_DIR [FCLK_MHZ]]
#
# Outputs OUT_DIR/vae_sender.bit and OUT_DIR/vae_sender.hwh (copy both to the board),
# plus utilization and timing reports. Default OUT_DIR is overlay/build, default clock 100 MHz.
set here [file dirname [file normalize [info script]]]
set root [file normalize [file join $here ..]]
set out_dir [file join $here build]
set fclk_mhz 100
if {$argc > 0} { set out_dir [file normalize [lindex $argv 0]] }
if {$argc > 1} { set fclk_mhz [lindex $argv 1] }

set sender_ip [file join $root sender vae_feature_sender_ip solution1 impl ip]
set vae_ip [file join $root runs vae vae_axis_pipe_ip solution1 impl ip]
foreach ip_dir [list $sender_ip $vae_ip] {
    if {![file isfile [file join $ip_dir component.xml]]} {
        error "Missing IP package at $ip_dir. Build it first (see README.md)."
    }
}

set board_repo [file join $root board_files]
if {[info exists ::env(PYNQ_BOARD_REPO)]} { set board_repo [file normalize $::env(PYNQ_BOARD_REPO)] }
set_param board.repoPaths [list $board_repo]
set board [lindex [get_board_parts -quiet -latest_file_version tul.com.tw:pynq-z2:part0:*] 0]
if {$board eq ""} { error "PYNQ-Z2 board files not found under $board_repo" }

set design vae_sender
create_project -force $design [file join $out_dir vivado] -part xc7z020clg400-1
set_property board_part $board [current_project]
set_property ip_repo_paths [list $sender_ip $vae_ip] [current_project]
update_ip_catalog
add_files -norecurse [file join $here cycle_counter.v]
update_compile_order -fileset sources_1

create_bd_design $design
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 ps7
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 \
    -config {apply_board_preset 1 make_external "FIXED_IO, DDR" Master "Disable" Slave "Disable"} \
    [get_bd_cells ps7]
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 1 CONFIG.PCW_USE_S_AXI_HP0 1 CONFIG.PCW_EN_CLK0_PORT 1 \
    CONFIG.PCW_EN_RST0_PORT 1 CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ $fclk_mhz] [get_bd_cells ps7]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 control_axi
set_property -dict [list CONFIG.NUM_SI 1 CONFIG.NUM_MI 1] [get_bd_cells control_axi]
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ddr_axi
set_property -dict [list CONFIG.NUM_SI 3 CONFIG.NUM_MI 1] [get_bd_cells ddr_axi]
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 reset_0
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 locked
set_property CONFIG.CONST_VAL 1 [get_bd_cells locked]
create_bd_cell -type ip -vlnv user.org:hls:vae_feature_sender:1.0 sender
create_bd_cell -type ip -vlnv user.org:hls:vae_axis:1.1 vae
create_bd_cell -type module -reference cycle_counter cycles

foreach {master slave} {
    ps7/M_AXI_GP0 control_axi/S00_AXI
    control_axi/M00_AXI sender/s_axi_control
    sender/m_axi_gmem_in ddr_axi/S00_AXI
    sender/m_axi_gmem_ts ddr_axi/S01_AXI
    sender/m_axi_gmem_res ddr_axi/S02_AXI
    ddr_axi/M00_AXI ps7/S_AXI_HP0
    sender/m_axis_features vae/s_axis_features
    vae/m_axis_score sender/s_axis_score
} {
    connect_bd_intf_net [get_bd_intf_pins $master] [get_bd_intf_pins $slave]
}
connect_bd_net [get_bd_pins cycles/count] [get_bd_pins sender/cycle_tx_dout] [get_bd_pins sender/cycle_rx_dout]
connect_bd_net [get_bd_pins cycles/not_empty] [get_bd_pins sender/cycle_tx_empty_n] [get_bd_pins sender/cycle_rx_empty_n]

connect_bd_net [get_bd_pins {ps7/FCLK_CLK0 ps7/M_AXI_GP0_ACLK ps7/S_AXI_HP0_ACLK
    control_axi/ACLK control_axi/S00_ACLK control_axi/M00_ACLK
    ddr_axi/ACLK ddr_axi/S00_ACLK ddr_axi/S01_ACLK ddr_axi/S02_ACLK ddr_axi/M00_ACLK
    reset_0/slowest_sync_clk sender/ap_clk vae/ap_clk cycles/clk}]
connect_bd_net [get_bd_pins ps7/FCLK_RESET0_N] [get_bd_pins reset_0/ext_reset_in]
connect_bd_net [get_bd_pins locked/dout] [get_bd_pins reset_0/dcm_locked]
connect_bd_net [get_bd_pins {reset_0/interconnect_aresetn control_axi/ARESETN ddr_axi/ARESETN}]
connect_bd_net [get_bd_pins {reset_0/peripheral_aresetn control_axi/S00_ARESETN control_axi/M00_ARESETN
    ddr_axi/S00_ARESETN ddr_axi/S01_ARESETN ddr_axi/S02_ARESETN ddr_axi/M00_ARESETN
    sender/ap_rst_n vae/ap_rst_n cycles/resetn}]

assign_bd_address
validate_bd_design
save_bd_design

set bd_file [get_files $design.bd]
generate_target all $bd_file
add_files -norecurse [make_wrapper -files $bd_file -top]
set_property top ${design}_wrapper [current_fileset]
set_property strategy Performance_Explore [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} {
    error "Vivado did not write the bitstream. Check the implementation log."
}

open_run impl_1
report_utilization -file [file join $out_dir utilization.rpt]
report_timing_summary -file [file join $out_dir timing_summary.rpt]
set wns [get_property SLACK [get_timing_paths -max_paths 1 -setup]]
puts "Worst setup slack at $fclk_mhz MHz: $wns ns"

set bit_file [file join $out_dir vivado $design.runs impl_1 ${design}_wrapper.bit]
set hwh_file [file join $out_dir vivado $design.gen sources_1 bd $design hw_handoff $design.hwh]
file copy -force $bit_file [file join $out_dir $design.bit]
file copy -force $hwh_file [file join $out_dir $design.hwh]
puts "Overlay written to $out_dir/$design.bit and $out_dir/$design.hwh"
if {$wns < 0} { error "Timing NOT met at $fclk_mhz MHz (WNS $wns ns). Rebuild with a lower FCLK_MHZ." }
