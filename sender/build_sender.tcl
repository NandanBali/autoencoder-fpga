# Build the vae_feature_sender IP into sender/vae_feature_sender_ip. Run from sender/: vitis_hls -f build_sender.tcl
# Set SENDER_STAGE=synth to stop after C synthesis.
set here [file dirname [file normalize [info script]]]
set root [file normalize [file join $here ..]]
set fw [file join $root runs vae hls4ml_prj firmware]
set cflags "-std=c++14 -I$fw -I[file join $root hls] -I$here -I[file join $root runs vae] -include [file join $root runs vae weights_dir.h]"
cd $here
open_project -reset vae_feature_sender_ip
set_top vae_feature_sender
add_files [file join $here vae_feature_sender.cpp] -cflags "-std=c++14 -I$here"
add_files -tb [file join $here test_vae_feature_sender.cpp] -cflags $cflags
add_files -tb [file join $root hls vae_axis.cpp] -cflags $cflags
add_files -tb [file join $fw vae_core.cpp] -cflags $cflags
open_solution solution1 -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
set_clock_uncertainty 2.0
config_rtl -reset control -reset_level low
csim_design -ldflags {-B/usr/bin/} -clean
csynth_design
if {![info exists ::env(SENDER_STAGE)] || $::env(SENDER_STAGE) ne "synth"} {
    # No cosim: it replays the C model's counter reads, but the RTL reads the free-running
    # counter every cycle and runs out of values. sim/run_sim.sh is the RTL test instead.
    export_design -flow impl -format ip_catalog -vendor user.org -library hls -version 1.0 -display_name "VAE batch feature sender"
}
exit
