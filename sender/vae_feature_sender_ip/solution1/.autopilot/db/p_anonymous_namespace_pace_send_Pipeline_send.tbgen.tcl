set moduleName p_anonymous_namespace_pace_send_Pipeline_send
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {(anonymous namespace)pace_send_Pipeline_send}
set C_modelType { void 0 }
set C_modelArgList {
	{ next_r int 64 regular  }
	{ n_flows_load int 32 regular  }
	{ words int 32 regular {fifo 0 volatile }  }
	{ cycle_tx int 64 regular {fifo 0 volatile }  }
	{ m_axis_features_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_features Data } }  }
	{ m_axis_features_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_features Keep } }  }
	{ m_axis_features_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_features Strb } }  }
	{ m_axis_features_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_features Last } }  }
	{ stamps int 64 regular {fifo 1 volatile }  }
	{ zext_ln52 int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "next_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "n_flows_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "words", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cycle_tx", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_features_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stamps", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "zext_ln52", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cycle_tx_dout sc_in sc_lv 64 signal 3 } 
	{ cycle_tx_empty_n sc_in sc_logic 1 signal 3 } 
	{ cycle_tx_read sc_out sc_logic 1 signal 3 } 
	{ stamps_din sc_out sc_lv 64 signal 8 } 
	{ stamps_num_data_valid sc_in sc_lv 7 signal 8 } 
	{ stamps_fifo_cap sc_in sc_lv 7 signal 8 } 
	{ stamps_full_n sc_in sc_logic 1 signal 8 } 
	{ stamps_write sc_out sc_logic 1 signal 8 } 
	{ next_r sc_in sc_lv 64 signal 0 } 
	{ n_flows_load sc_in sc_lv 32 signal 1 } 
	{ words_dout sc_in sc_lv 32 signal 2 } 
	{ words_num_data_valid sc_in sc_lv 9 signal 2 } 
	{ words_fifo_cap sc_in sc_lv 9 signal 2 } 
	{ words_empty_n sc_in sc_logic 1 signal 2 } 
	{ words_read sc_out sc_logic 1 signal 2 } 
	{ m_axis_features_TDATA sc_out sc_lv 32 signal 4 } 
	{ m_axis_features_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_features_TREADY sc_in sc_logic 1 outacc 7 } 
	{ m_axis_features_TKEEP sc_out sc_lv 4 signal 5 } 
	{ m_axis_features_TSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axis_features_TLAST sc_out sc_lv 1 signal 7 } 
	{ zext_ln52 sc_in sc_lv 32 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "cycle_tx_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cycle_tx", "role": "dout" }} , 
 	{ "name": "cycle_tx_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_tx", "role": "empty_n" }} , 
 	{ "name": "cycle_tx_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_tx", "role": "read" }} , 
 	{ "name": "stamps_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stamps", "role": "din" }} , 
 	{ "name": "stamps_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "stamps", "role": "num_data_valid" }} , 
 	{ "name": "stamps_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "stamps", "role": "fifo_cap" }} , 
 	{ "name": "stamps_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stamps", "role": "full_n" }} , 
 	{ "name": "stamps_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stamps", "role": "write" }} , 
 	{ "name": "next_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "next_r", "role": "default" }} , 
 	{ "name": "n_flows_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_flows_load", "role": "default" }} , 
 	{ "name": "words_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "words", "role": "dout" }} , 
 	{ "name": "words_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "words", "role": "num_data_valid" }} , 
 	{ "name": "words_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "words", "role": "fifo_cap" }} , 
 	{ "name": "words_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words", "role": "empty_n" }} , 
 	{ "name": "words_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "words", "role": "read" }} , 
 	{ "name": "m_axis_features_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_features_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_features_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_features_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "zext_ln52", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "zext_ln52", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_anonymous_namespace_pace_send_Pipeline_send",
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
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "next_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_flows_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "words", "Type" : "Fifo", "Direction" : "I"},
			{"Name" : "cycle_tx", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cycle_tx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_features_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features"},
			{"Name" : "m_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features"},
			{"Name" : "m_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features"},
			{"Name" : "m_axis_features_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features"},
			{"Name" : "stamps", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stamps_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln52", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "send", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_pace_send_Pipeline_send {
		next_r {Type I LastRead 0 FirstWrite -1}
		n_flows_load {Type I LastRead 0 FirstWrite -1}
		words {Type I LastRead 1 FirstWrite -1}
		cycle_tx {Type I LastRead 1 FirstWrite -1}
		m_axis_features_V_data_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_keep_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_strb_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_last_V {Type O LastRead 1 FirstWrite -1}
		stamps {Type O LastRead -1 FirstWrite 2}
		zext_ln52 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	next_r { ap_none {  { next_r in_data 0 64 } } }
	n_flows_load { ap_none {  { n_flows_load in_data 0 32 } } }
	words { ap_fifo {  { words_dout fifo_data_in 0 32 }  { words_num_data_valid fifo_status_num_data_valid 0 9 }  { words_fifo_cap fifo_update 0 9 }  { words_empty_n fifo_status 0 1 }  { words_read fifo_port_we 1 1 } } }
	cycle_tx { ap_fifo {  { cycle_tx_dout fifo_data_in 0 64 }  { cycle_tx_empty_n fifo_status 0 1 }  { cycle_tx_read fifo_port_we 1 1 } } }
	m_axis_features_V_data_V { axis {  { m_axis_features_TDATA out_data 1 32 } } }
	m_axis_features_V_keep_V { axis {  { m_axis_features_TKEEP out_data 1 4 } } }
	m_axis_features_V_strb_V { axis {  { m_axis_features_TSTRB out_data 1 4 } } }
	m_axis_features_V_last_V { axis {  { m_axis_features_TVALID out_vld 1 1 }  { m_axis_features_TREADY out_acc 0 1 }  { m_axis_features_TLAST out_data 1 1 } } }
	stamps { ap_fifo {  { stamps_din fifo_data_in 1 64 }  { stamps_num_data_valid fifo_status_num_data_valid 0 7 }  { stamps_fifo_cap fifo_update 0 7 }  { stamps_full_n fifo_status 0 1 }  { stamps_write fifo_port_we 1 1 } } }
	zext_ln52 { ap_none {  { zext_ln52 in_data 0 32 } } }
}
