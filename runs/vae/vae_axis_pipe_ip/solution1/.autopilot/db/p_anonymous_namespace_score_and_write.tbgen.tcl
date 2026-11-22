set moduleName p_anonymous_namespace_score_and_write
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {(anonymous namespace)score_and_write}
set C_modelType { void 0 }
set C_modelArgList {
	{ recon_0 int 18 regular {pointer 0}  }
	{ recon_1 int 18 regular {pointer 0}  }
	{ recon_2 int 18 regular {pointer 0}  }
	{ recon_3 int 18 regular {pointer 0}  }
	{ recon_4 int 18 regular {pointer 0}  }
	{ recon_5 int 18 regular {pointer 0}  }
	{ recon_6 int 18 regular {pointer 0}  }
	{ recon_7 int 18 regular {pointer 0}  }
	{ bypass int 201 regular {fifo 0 volatile }  }
	{ m_axis_score_V_data_V int 64 regular {axi_s 1 volatile  { m_axis_score Data } }  }
	{ m_axis_score_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis_score Keep } }  }
	{ m_axis_score_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis_score Strb } }  }
	{ m_axis_score_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_score Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "recon_0", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_1", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_2", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_3", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_4", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_5", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_6", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "recon_7", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "bypass", "interface" : "fifo", "bitwidth" : 201, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_score_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bypass_dout sc_in sc_lv 201 signal 8 } 
	{ bypass_num_data_valid sc_in sc_lv 5 signal 8 } 
	{ bypass_fifo_cap sc_in sc_lv 5 signal 8 } 
	{ bypass_empty_n sc_in sc_logic 1 signal 8 } 
	{ bypass_read sc_out sc_logic 1 signal 8 } 
	{ m_axis_score_TREADY sc_in sc_logic 1 outacc 12 } 
	{ recon_0 sc_in sc_lv 18 signal 0 } 
	{ recon_1 sc_in sc_lv 18 signal 1 } 
	{ recon_2 sc_in sc_lv 18 signal 2 } 
	{ recon_3 sc_in sc_lv 18 signal 3 } 
	{ recon_4 sc_in sc_lv 18 signal 4 } 
	{ recon_5 sc_in sc_lv 18 signal 5 } 
	{ recon_6 sc_in sc_lv 18 signal 6 } 
	{ recon_7 sc_in sc_lv 18 signal 7 } 
	{ m_axis_score_TDATA sc_out sc_lv 64 signal 9 } 
	{ m_axis_score_TVALID sc_out sc_logic 1 outvld 12 } 
	{ m_axis_score_TKEEP sc_out sc_lv 8 signal 10 } 
	{ m_axis_score_TSTRB sc_out sc_lv 8 signal 11 } 
	{ m_axis_score_TLAST sc_out sc_lv 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bypass_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":201, "type": "signal", "bundle":{"name": "bypass", "role": "dout" }} , 
 	{ "name": "bypass_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bypass", "role": "num_data_valid" }} , 
 	{ "name": "bypass_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bypass", "role": "fifo_cap" }} , 
 	{ "name": "bypass_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bypass", "role": "empty_n" }} , 
 	{ "name": "bypass_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bypass", "role": "read" }} , 
 	{ "name": "m_axis_score_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "recon_0", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_0", "role": "default" }} , 
 	{ "name": "recon_1", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_1", "role": "default" }} , 
 	{ "name": "recon_2", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_2", "role": "default" }} , 
 	{ "name": "recon_3", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_3", "role": "default" }} , 
 	{ "name": "recon_4", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_4", "role": "default" }} , 
 	{ "name": "recon_5", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_5", "role": "default" }} , 
 	{ "name": "recon_6", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_6", "role": "default" }} , 
 	{ "name": "recon_7", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "recon_7", "role": "default" }} , 
 	{ "name": "m_axis_score_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_score_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_score_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_score_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "p_anonymous_namespace_score_and_write",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "recon_0", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_1", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_2", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_3", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_4", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_5", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_6", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_7", "Type" : "None", "Direction" : "I", "DependentProc" : ["0","-1"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "bypass", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bypass_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_score_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"BlockSignal" : [
					{"Name" : "m_axis_score_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_score_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"},
			{"Name" : "m_axis_score_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"},
			{"Name" : "m_axis_score_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U578", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U579", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U580", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U581", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U582", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U583", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U584", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_26s_26s_50_4_1_U585", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_score_V_data_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_score_V_keep_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_score_V_strb_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_m_axis_score_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_score_and_write {
		recon_0 {Type I LastRead 0 FirstWrite -1}
		recon_1 {Type I LastRead 0 FirstWrite -1}
		recon_2 {Type I LastRead 0 FirstWrite -1}
		recon_3 {Type I LastRead 0 FirstWrite -1}
		recon_4 {Type I LastRead 0 FirstWrite -1}
		recon_5 {Type I LastRead 0 FirstWrite -1}
		recon_6 {Type I LastRead 0 FirstWrite -1}
		recon_7 {Type I LastRead 0 FirstWrite -1}
		bypass {Type I LastRead 0 FirstWrite -1}
		m_axis_score_V_data_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_keep_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_strb_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_last_V {Type O LastRead -1 FirstWrite 7}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	recon_0 { ap_none {  { recon_0 in_data 0 18 } } }
	recon_1 { ap_none {  { recon_1 in_data 0 18 } } }
	recon_2 { ap_none {  { recon_2 in_data 0 18 } } }
	recon_3 { ap_none {  { recon_3 in_data 0 18 } } }
	recon_4 { ap_none {  { recon_4 in_data 0 18 } } }
	recon_5 { ap_none {  { recon_5 in_data 0 18 } } }
	recon_6 { ap_none {  { recon_6 in_data 0 18 } } }
	recon_7 { ap_none {  { recon_7 in_data 0 18 } } }
	bypass { ap_fifo {  { bypass_dout fifo_data_in 0 201 }  { bypass_num_data_valid fifo_status_num_data_valid 0 5 }  { bypass_fifo_cap fifo_update 0 5 }  { bypass_empty_n fifo_status 0 1 }  { bypass_read fifo_port_we 1 1 } } }
	m_axis_score_V_data_V { axis {  { m_axis_score_TDATA out_data 1 64 } } }
	m_axis_score_V_keep_V { axis {  { m_axis_score_TKEEP out_data 1 8 } } }
	m_axis_score_V_strb_V { axis {  { m_axis_score_TSTRB out_data 1 8 } } }
	m_axis_score_V_last_V { axis {  { m_axis_score_TREADY out_acc 0 1 }  { m_axis_score_TVALID out_vld 1 1 }  { m_axis_score_TLAST out_data 1 1 } } }
}
