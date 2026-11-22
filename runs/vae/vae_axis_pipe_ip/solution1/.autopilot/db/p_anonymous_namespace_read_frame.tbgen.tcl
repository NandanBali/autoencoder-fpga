set moduleName p_anonymous_namespace_read_frame
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {(anonymous namespace)read_frame}
set C_modelType { int 200 }
set C_modelArgList {
	{ s_axis_features_V_data_V int 32 regular {axi_s 0 volatile  { s_axis_features Data } }  }
	{ s_axis_features_V_keep_V int 4 regular {axi_s 0 volatile  { s_axis_features Keep } }  }
	{ s_axis_features_V_strb_V int 4 regular {axi_s 0 volatile  { s_axis_features Strb } }  }
	{ s_axis_features_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_features Last } }  }
	{ bypass int 201 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_features_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bypass", "interface" : "fifo", "bitwidth" : 201, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 200} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_features_TDATA sc_in sc_lv 32 signal 0 } 
	{ s_axis_features_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_features_TREADY sc_out sc_logic 1 inacc 3 } 
	{ s_axis_features_TKEEP sc_in sc_lv 4 signal 1 } 
	{ s_axis_features_TSTRB sc_in sc_lv 4 signal 2 } 
	{ s_axis_features_TLAST sc_in sc_lv 1 signal 3 } 
	{ bypass_din sc_out sc_lv 201 signal 4 } 
	{ bypass_num_data_valid sc_in sc_lv 5 signal 4 } 
	{ bypass_fifo_cap sc_in sc_lv 5 signal 4 } 
	{ bypass_full_n sc_in sc_logic 1 signal 4 } 
	{ bypass_write sc_out sc_logic 1 signal 4 } 
	{ ap_return sc_out sc_lv 200 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_features_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_features_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_features_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_features_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "bypass_din", "direction": "out", "datatype": "sc_lv", "bitwidth":201, "type": "signal", "bundle":{"name": "bypass", "role": "din" }} , 
 	{ "name": "bypass_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bypass", "role": "num_data_valid" }} , 
 	{ "name": "bypass_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bypass", "role": "fifo_cap" }} , 
 	{ "name": "bypass_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bypass", "role": "full_n" }} , 
 	{ "name": "bypass_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bypass", "role": "write" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":200, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "7", "8", "9"],
		"CDFG" : "p_anonymous_namespace_read_frame",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_features_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "4", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "4", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "4", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "4", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bypass", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bypass_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.f_x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "p_anonymous_namespace_read_frame_Pipeline_read_beats",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_features_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"BlockSignal" : [
					{"Name" : "s_axis_features_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"},
			{"Name" : "s_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"},
			{"Name" : "s_axis_features_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"},
			{"Name" : "f_x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "valid_bytes_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "valid_bytes_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "read_beats", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "p_anonymous_namespace_read_frame_Pipeline_drain",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "s_axis_features_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"BlockSignal" : [
					{"Name" : "s_axis_features_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"},
			{"Name" : "s_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"},
			{"Name" : "s_axis_features_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features"}],
		"Loop" : [
			{"Name" : "drain", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_features_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_features_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_features_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_features_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_read_frame {
		s_axis_features_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_last_V {Type I LastRead 0 FirstWrite -1}
		bypass {Type O LastRead -1 FirstWrite 13}}
	p_anonymous_namespace_read_frame_Pipeline_read_beats {
		s_axis_features_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_last_V {Type I LastRead 0 FirstWrite -1}
		f_x {Type O LastRead -1 FirstWrite 0}
		i_out {Type O LastRead -1 FirstWrite 0}
		valid_bytes_out {Type O LastRead -1 FirstWrite 0}
		valid_bytes_1_out {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_read_frame_Pipeline_drain {
		s_axis_features_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_last_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_features_V_data_V { axis {  { s_axis_features_TDATA in_data 0 32 } } }
	s_axis_features_V_keep_V { axis {  { s_axis_features_TKEEP in_data 0 4 } } }
	s_axis_features_V_strb_V { axis {  { s_axis_features_TSTRB in_data 0 4 } } }
	s_axis_features_V_last_V { axis {  { s_axis_features_TVALID in_vld 0 1 }  { s_axis_features_TREADY in_acc 1 1 }  { s_axis_features_TLAST in_data 0 1 } } }
	bypass { ap_fifo {  { bypass_din fifo_data_in 1 201 }  { bypass_num_data_valid fifo_status_num_data_valid 0 5 }  { bypass_fifo_cap fifo_update 0 5 }  { bypass_full_n fifo_status 0 1 }  { bypass_write fifo_port_we 1 1 } } }
}
