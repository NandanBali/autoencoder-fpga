set moduleName vae_axis
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {vae_axis}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_features_V_data_V int 32 regular {axi_s 0 volatile  { s_axis_features Data } }  }
	{ s_axis_features_V_keep_V int 4 regular {axi_s 0 volatile  { s_axis_features Keep } }  }
	{ s_axis_features_V_strb_V int 4 regular {axi_s 0 volatile  { s_axis_features Strb } }  }
	{ s_axis_features_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_features Last } }  }
	{ m_axis_score_V_data_V int 64 regular {axi_s 1 volatile  { m_axis_score Data } }  }
	{ m_axis_score_V_keep_V int 8 regular {axi_s 1 volatile  { m_axis_score Keep } }  }
	{ m_axis_score_V_strb_V int 8 regular {axi_s 1 volatile  { m_axis_score Strb } }  }
	{ m_axis_score_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_score Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_features_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_features_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_score_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_score_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ s_axis_features_TDATA sc_in sc_lv 32 signal 0 } 
	{ s_axis_features_TKEEP sc_in sc_lv 4 signal 1 } 
	{ s_axis_features_TSTRB sc_in sc_lv 4 signal 2 } 
	{ s_axis_features_TLAST sc_in sc_lv 1 signal 3 } 
	{ m_axis_score_TDATA sc_out sc_lv 64 signal 4 } 
	{ m_axis_score_TKEEP sc_out sc_lv 8 signal 5 } 
	{ m_axis_score_TSTRB sc_out sc_lv 8 signal 6 } 
	{ m_axis_score_TLAST sc_out sc_lv 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axis_features_TVALID sc_in sc_logic 1 invld 3 } 
	{ s_axis_features_TREADY sc_out sc_logic 1 inacc 3 } 
	{ m_axis_score_TVALID sc_out sc_logic 1 outvld 7 } 
	{ m_axis_score_TREADY sc_in sc_logic 1 outacc 7 } 
}
set NewPortList {[ 
	{ "name": "s_axis_features_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_axis_features_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_features_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "s_axis_features_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "m_axis_score_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_score_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m_axis_score_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "s_axis_features_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_features_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_score_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_score_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "11", "538", "551", "552", "553", "554", "555", "556", "557", "558", "559", "560"],
		"CDFG" : "vae_axis",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "p_anonymous_namespace_read_frame_U0"}],
		"OutputProcess" : [
			{"ID" : "538", "Name" : "p_anonymous_namespace_score_and_write_U0"}],
		"Port" : [
			{"Name" : "s_axis_features_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "p_anonymous_namespace_read_frame_U0", "Port" : "s_axis_features_V_data_V"}]},
			{"Name" : "s_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "p_anonymous_namespace_read_frame_U0", "Port" : "s_axis_features_V_keep_V"}]},
			{"Name" : "s_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "p_anonymous_namespace_read_frame_U0", "Port" : "s_axis_features_V_strb_V"}]},
			{"Name" : "s_axis_features_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "p_anonymous_namespace_read_frame_U0", "Port" : "s_axis_features_V_last_V"}]},
			{"Name" : "m_axis_score_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "p_anonymous_namespace_score_and_write_U0", "Port" : "m_axis_score_V_data_V"}]},
			{"Name" : "m_axis_score_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "p_anonymous_namespace_score_and_write_U0", "Port" : "m_axis_score_V_keep_V"}]},
			{"Name" : "m_axis_score_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "p_anonymous_namespace_score_and_write_U0", "Port" : "m_axis_score_V_strb_V"}]},
			{"Name" : "m_axis_score_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"SubConnect" : [
					{"ID" : "538", "SubInstance" : "p_anonymous_namespace_score_and_write_U0", "Port" : "m_axis_score_V_last_V"}]},
			{"Name" : "outidx_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "outidx_42"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w2"}]},
			{"Name" : "w4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w4"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w6"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "outidx"}]},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w7"}]},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w9"}]},
			{"Name" : "w11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "vae_core_U0", "Port" : "w11"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0", "Parent" : "0", "Child" : ["2", "3", "5", "7", "8", "9", "10"],
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
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "5", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_data_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "5", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_keep_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "5", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_strb_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "s_axis_features_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_features",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Port" : "s_axis_features_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "5", "SubInstance" : "grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Port" : "s_axis_features_V_last_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "bypass", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "551", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bypass_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.f_x_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217", "Parent" : "1", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.grp_p_anonymous_namespace_read_frame_Pipeline_read_beats_fu_217.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233", "Parent" : "1", "Child" : ["6"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.grp_p_anonymous_namespace_read_frame_Pipeline_drain_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.regslice_both_s_axis_features_V_data_V_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.regslice_both_s_axis_features_V_keep_V_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.regslice_both_s_axis_features_V_strb_V_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_read_frame_U0.regslice_both_s_axis_features_V_last_V_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vae_core_U0", "Parent" : "0", "Child" : ["12", "98", "99", "169", "170", "182", "211", "212", "313", "314", "342", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385", "386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "406", "407", "408", "409", "410", "411", "412", "413", "414", "415", "416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448", "449", "450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "470", "471", "472", "473", "474", "475", "476", "477", "478", "479", "480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512", "513", "514", "515", "516", "517", "518", "519", "520", "521", "522", "523", "524", "525", "526", "527", "528", "529", "530", "531", "532", "533", "534", "535", "536", "537"],
		"CDFG" : "vae_core",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "133", "EstimateLatencyMax" : "139",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "12", "Name" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0"}],
		"OutputProcess" : [
			{"ID" : "314", "Name" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0"}],
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "layer11_out_0", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_0"}]},
			{"Name" : "layer11_out_1", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_1"}]},
			{"Name" : "layer11_out_2", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_2"}]},
			{"Name" : "layer11_out_3", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_3"}]},
			{"Name" : "layer11_out_4", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_4"}]},
			{"Name" : "layer11_out_5", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_5"}]},
			{"Name" : "layer11_out_6", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_6"}]},
			{"Name" : "layer11_out_7", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "1",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "res_7"}]},
			{"Name" : "outidx_42", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0", "Port" : "outidx_42"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0", "Port" : "w2"}]},
			{"Name" : "w4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "99", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0", "Port" : "w4"}]},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0", "Port" : "w6"}]},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0", "Port" : "outidx"}]},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0", "Port" : "w7"}]},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "212", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0", "Port" : "w9"}]},
			{"Name" : "w11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Port" : "w11"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0", "Parent" : "11", "Child" : ["13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "552", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "outidx_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.outidx_42_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.w2_U", "Parent" : "12"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_777", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_782", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_787", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_792", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_797", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_802", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_807", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_812", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_817", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_822", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_827", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_832", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_837", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_842", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_847", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_852", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_857", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_862", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_867", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_872", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_877", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_882", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_887", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_892", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_897", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_902", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_907", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_912", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_917", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_922", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_927", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.grp_cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s_fu_932", "Parent" : "12",
		"CDFG" : "cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_8s_6ns_8_1_1_U24", "Parent" : "12"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U25", "Parent" : "12"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U26", "Parent" : "12"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U27", "Parent" : "12"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U28", "Parent" : "12"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U29", "Parent" : "12"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U30", "Parent" : "12"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U31", "Parent" : "12"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U32", "Parent" : "12"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U33", "Parent" : "12"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U34", "Parent" : "12"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U35", "Parent" : "12"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U36", "Parent" : "12"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U37", "Parent" : "12"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U38", "Parent" : "12"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_18s_39_3_1_U39", "Parent" : "12"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.mul_25s_16s_39_3_1_U40", "Parent" : "12"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.flow_control_loop_pipe_U", "Parent" : "12"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.frp_pipeline_valid_U", "Parent" : "12"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_0_U", "Parent" : "12"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_1_U", "Parent" : "12"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_2_U", "Parent" : "12"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_3_U", "Parent" : "12"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_4_U", "Parent" : "12"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_5_U", "Parent" : "12"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_6_U", "Parent" : "12"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_7_U", "Parent" : "12"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_8_U", "Parent" : "12"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_9_U", "Parent" : "12"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_10_U", "Parent" : "12"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_11_U", "Parent" : "12"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_12_U", "Parent" : "12"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_13_U", "Parent" : "12"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_14_U", "Parent" : "12"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_15_U", "Parent" : "12"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_16_U", "Parent" : "12"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_17_U", "Parent" : "12"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_18_U", "Parent" : "12"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_19_U", "Parent" : "12"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_20_U", "Parent" : "12"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_21_U", "Parent" : "12"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_22_U", "Parent" : "12"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_23_U", "Parent" : "12"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_24_U", "Parent" : "12"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_25_U", "Parent" : "12"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_26_U", "Parent" : "12"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_27_U", "Parent" : "12"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_28_U", "Parent" : "12"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_29_U", "Parent" : "12"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_30_U", "Parent" : "12"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_U0.pf_ap_return_31_U", "Parent" : "12"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_U0", "Parent" : "11",
		"CDFG" : "relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "342", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "343", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "344", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "345", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "346", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "347", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "348", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "349", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "350", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "351", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "352", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "353", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "354", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "355", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "356", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "357", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "358", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "359", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "360", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "361", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "362", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "363", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "364", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "365", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "366", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "367", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "368", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "369", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "370", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "371", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "372", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["12"], "DependentChan" : "373", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0", "Parent" : "11", "Child" : ["100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "374", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "375", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "376", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "377", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "378", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "379", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "380", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "381", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "382", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "383", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "385", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "386", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "387", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "388", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "389", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "390", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "391", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "392", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "393", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "394", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "395", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "396", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "397", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "398", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "399", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "400", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "401", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "402", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "403", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "404", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["98"], "DependentChan" : "405", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.w4_U", "Parent" : "99"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1596", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1601", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1606", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1611", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1616", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1621", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1626", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1631", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1636", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1641", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1646", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1651", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1656", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1661", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1666", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.grp_cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s_fu_1671", "Parent" : "99",
		"CDFG" : "cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.sparsemux_33_4_18_1_1_U81", "Parent" : "99"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.sparsemux_33_4_18_1_1_U82", "Parent" : "99"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U83", "Parent" : "99"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U84", "Parent" : "99"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U85", "Parent" : "99"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U86", "Parent" : "99"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U87", "Parent" : "99"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U88", "Parent" : "99"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U89", "Parent" : "99"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U90", "Parent" : "99"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U91", "Parent" : "99"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U92", "Parent" : "99"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U93", "Parent" : "99"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U94", "Parent" : "99"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U95", "Parent" : "99"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U96", "Parent" : "99"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U97", "Parent" : "99"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U98", "Parent" : "99"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U99", "Parent" : "99"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U100", "Parent" : "99"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U101", "Parent" : "99"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U102", "Parent" : "99"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U103", "Parent" : "99"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U104", "Parent" : "99"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U105", "Parent" : "99"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U106", "Parent" : "99"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U107", "Parent" : "99"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U108", "Parent" : "99"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U109", "Parent" : "99"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U110", "Parent" : "99"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U111", "Parent" : "99"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U112", "Parent" : "99"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18s_18ns_36_1_1_U113", "Parent" : "99"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.mul_18ns_15s_33_1_1_U114", "Parent" : "99"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.flow_control_loop_pipe_U", "Parent" : "99"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.frp_pipeline_valid_U", "Parent" : "99"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_0_U", "Parent" : "99"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_1_U", "Parent" : "99"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_2_U", "Parent" : "99"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_3_U", "Parent" : "99"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_4_U", "Parent" : "99"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_5_U", "Parent" : "99"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_6_U", "Parent" : "99"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_7_U", "Parent" : "99"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_8_U", "Parent" : "99"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_9_U", "Parent" : "99"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_10_U", "Parent" : "99"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_11_U", "Parent" : "99"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_12_U", "Parent" : "99"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_13_U", "Parent" : "99"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_14_U", "Parent" : "99"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_U0.pf_ap_return_15_U", "Parent" : "99"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_U0", "Parent" : "11",
		"CDFG" : "relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "406", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "407", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "408", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "409", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "410", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "411", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "412", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "413", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "414", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "415", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "416", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "417", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "418", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "419", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "420", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["99"], "DependentChan" : "421", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0", "Parent" : "11", "Child" : ["171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "422", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "423", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "424", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "425", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "426", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "427", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "428", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "429", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "430", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "431", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "432", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "433", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "434", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "435", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "436", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["169"], "DependentChan" : "437", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.w6_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s_fu_748", "Parent" : "170",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s_fu_753", "Parent" : "170",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s_fu_758", "Parent" : "170",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s_fu_763", "Parent" : "170",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.sparsemux_33_4_18_1_1_U169", "Parent" : "170"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.mul_18s_18ns_36_1_1_U170", "Parent" : "170"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.mul_18s_18ns_36_1_1_U171", "Parent" : "170"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.mul_18s_18ns_36_1_1_U172", "Parent" : "170"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.mul_18ns_14s_32_1_1_U173", "Parent" : "170"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_U0.flow_control_loop_pipe_U", "Parent" : "170"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0", "Parent" : "11", "Child" : ["183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210"],
		"CDFG" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["170"], "DependentChan" : "438", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["170"], "DependentChan" : "439", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["170"], "DependentChan" : "440", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["170"], "DependentChan" : "441", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "outidx", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.outidx_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.w7_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_560", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_565", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_570", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_575", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_580", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_585", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_590", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_595", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_600", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_605", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_610", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_615", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_620", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_625", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_630", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.grp_cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s_fu_635", "Parent" : "182",
		"CDFG" : "cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.sparsemux_9_2_18_1_1_U193", "Parent" : "182"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.mul_18s_18s_36_1_1_U194", "Parent" : "182"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.mul_18s_18s_36_1_1_U195", "Parent" : "182"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.mul_18s_18s_36_1_1_U196", "Parent" : "182"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.mul_18s_17s_35_1_1_U197", "Parent" : "182"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.sparsemux_9_2_30_1_1_U198", "Parent" : "182"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.sparsemux_9_2_30_1_1_U199", "Parent" : "182"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.sparsemux_9_2_30_1_1_U200", "Parent" : "182"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.sparsemux_9_2_30_1_1_U201", "Parent" : "182"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_U0.flow_control_loop_pipe_U", "Parent" : "182"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_U0", "Parent" : "11",
		"CDFG" : "relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "442", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "443", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "444", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "445", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "446", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "447", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "448", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "449", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "450", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "451", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "452", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "453", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "454", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "455", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "456", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["182"], "DependentChan" : "457", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0", "Parent" : "11", "Child" : ["213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "458", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "459", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "460", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "461", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "462", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "463", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "464", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "465", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "466", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "467", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "468", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "469", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "470", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "471", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "472", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["211"], "DependentChan" : "473", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w9", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "NotSupport"}]},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.w9_U", "Parent" : "212"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1302", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1307", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1312", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1317", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1322", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1327", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1332", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1337", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1342", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1347", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1352", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1357", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1362", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1367", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1372", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1377", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1382", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1387", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1392", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1397", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1402", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1407", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1412", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1417", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1422", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1427", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1432", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1437", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1442", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1447", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1452", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.grp_cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s_fu_1457", "Parent" : "212",
		"CDFG" : "cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.sparsemux_33_4_18_1_1_U229", "Parent" : "212"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U230", "Parent" : "212"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U231", "Parent" : "212"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U232", "Parent" : "212"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U233", "Parent" : "212"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U234", "Parent" : "212"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U235", "Parent" : "212"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U236", "Parent" : "212"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U237", "Parent" : "212"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U238", "Parent" : "212"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U239", "Parent" : "212"},
	{"ID" : "257", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U240", "Parent" : "212"},
	{"ID" : "258", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U241", "Parent" : "212"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U242", "Parent" : "212"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U243", "Parent" : "212"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U244", "Parent" : "212"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U245", "Parent" : "212"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U246", "Parent" : "212"},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U247", "Parent" : "212"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U248", "Parent" : "212"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U249", "Parent" : "212"},
	{"ID" : "267", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U250", "Parent" : "212"},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U251", "Parent" : "212"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U252", "Parent" : "212"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U253", "Parent" : "212"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U254", "Parent" : "212"},
	{"ID" : "272", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U255", "Parent" : "212"},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U256", "Parent" : "212"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U257", "Parent" : "212"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U258", "Parent" : "212"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U259", "Parent" : "212"},
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U260", "Parent" : "212"},
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.mul_18s_18ns_36_1_1_U261", "Parent" : "212"},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.flow_control_loop_pipe_U", "Parent" : "212"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.frp_pipeline_valid_U", "Parent" : "212"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_0_U", "Parent" : "212"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_1_U", "Parent" : "212"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_2_U", "Parent" : "212"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_3_U", "Parent" : "212"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_4_U", "Parent" : "212"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_5_U", "Parent" : "212"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_6_U", "Parent" : "212"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_7_U", "Parent" : "212"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_8_U", "Parent" : "212"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_9_U", "Parent" : "212"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_10_U", "Parent" : "212"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_11_U", "Parent" : "212"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_12_U", "Parent" : "212"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_13_U", "Parent" : "212"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_14_U", "Parent" : "212"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_15_U", "Parent" : "212"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_16_U", "Parent" : "212"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_17_U", "Parent" : "212"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_18_U", "Parent" : "212"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_19_U", "Parent" : "212"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_20_U", "Parent" : "212"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_21_U", "Parent" : "212"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_22_U", "Parent" : "212"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_23_U", "Parent" : "212"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_24_U", "Parent" : "212"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_25_U", "Parent" : "212"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_26_U", "Parent" : "212"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_27_U", "Parent" : "212"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_28_U", "Parent" : "212"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_29_U", "Parent" : "212"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_30_U", "Parent" : "212"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_U0.pf_ap_return_31_U", "Parent" : "212"},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_U0", "Parent" : "11",
		"CDFG" : "relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "474", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "475", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "476", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "477", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "478", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "479", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "480", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "481", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "482", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "483", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "484", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "485", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "486", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "487", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "488", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "489", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "490", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "491", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "492", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "493", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "494", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "495", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "496", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "497", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "498", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "499", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "500", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "501", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "502", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "503", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "504", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["212"], "DependentChan" : "505", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "314", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0", "Parent" : "11", "Child" : ["315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341"],
		"CDFG" : "dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Rewind", "UnalignedPipeline" : "0", "RewindPipeline" : "1", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "506", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "507", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "508", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "509", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "510", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "511", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "512", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "513", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "514", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "515", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "516", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "517", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "518", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "519", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "520", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "521", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "522", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "523", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "524", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "525", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "526", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "527", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "528", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "529", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "530", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "531", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "532", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "533", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "534", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "535", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "536", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I", "DependentProc" : ["313"], "DependentChan" : "537", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_0", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_1", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_2", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_3", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_4", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_5", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_6", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "res_7", "Type" : "None", "Direction" : "O", "DependentProc" : ["538"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "w11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ReuseLoop", "PipelineType" : "rewind",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "has_continue" : "1"}}]},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.w11_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1478", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1483", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1488", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1493", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1498", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1503", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1508", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.grp_cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s_fu_1513", "Parent" : "314",
		"CDFG" : "cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.sparsemux_33_4_18_1_1_U313", "Parent" : "314"},
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.sparsemux_33_4_18_1_1_U314", "Parent" : "314"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U315", "Parent" : "314"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U316", "Parent" : "314"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U317", "Parent" : "314"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U318", "Parent" : "314"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U319", "Parent" : "314"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U320", "Parent" : "314"},
	{"ID" : "332", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U321", "Parent" : "314"},
	{"ID" : "333", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U322", "Parent" : "314"},
	{"ID" : "334", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U323", "Parent" : "314"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U324", "Parent" : "314"},
	{"ID" : "336", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U325", "Parent" : "314"},
	{"ID" : "337", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U326", "Parent" : "314"},
	{"ID" : "338", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U327", "Parent" : "314"},
	{"ID" : "339", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U328", "Parent" : "314"},
	{"ID" : "340", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18s_18ns_36_1_1_U329", "Parent" : "314"},
	{"ID" : "341", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_U0.mul_18ns_17s_35_1_1_U330", "Parent" : "314"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_U", "Parent" : "11"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_1_U", "Parent" : "11"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_2_U", "Parent" : "11"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_3_U", "Parent" : "11"},
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_4_U", "Parent" : "11"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_5_U", "Parent" : "11"},
	{"ID" : "348", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_6_U", "Parent" : "11"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_7_U", "Parent" : "11"},
	{"ID" : "350", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_8_U", "Parent" : "11"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_9_U", "Parent" : "11"},
	{"ID" : "352", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_10_U", "Parent" : "11"},
	{"ID" : "353", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_11_U", "Parent" : "11"},
	{"ID" : "354", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_12_U", "Parent" : "11"},
	{"ID" : "355", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_13_U", "Parent" : "11"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_14_U", "Parent" : "11"},
	{"ID" : "357", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_15_U", "Parent" : "11"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_16_U", "Parent" : "11"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_17_U", "Parent" : "11"},
	{"ID" : "360", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_18_U", "Parent" : "11"},
	{"ID" : "361", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_19_U", "Parent" : "11"},
	{"ID" : "362", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_20_U", "Parent" : "11"},
	{"ID" : "363", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_21_U", "Parent" : "11"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_22_U", "Parent" : "11"},
	{"ID" : "365", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_23_U", "Parent" : "11"},
	{"ID" : "366", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_24_U", "Parent" : "11"},
	{"ID" : "367", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_25_U", "Parent" : "11"},
	{"ID" : "368", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_26_U", "Parent" : "11"},
	{"ID" : "369", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_27_U", "Parent" : "11"},
	{"ID" : "370", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_28_U", "Parent" : "11"},
	{"ID" : "371", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_29_U", "Parent" : "11"},
	{"ID" : "372", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_30_U", "Parent" : "11"},
	{"ID" : "373", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer2_out_31_U", "Parent" : "11"},
	{"ID" : "374", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_U", "Parent" : "11"},
	{"ID" : "375", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_1_U", "Parent" : "11"},
	{"ID" : "376", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_2_U", "Parent" : "11"},
	{"ID" : "377", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_3_U", "Parent" : "11"},
	{"ID" : "378", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_4_U", "Parent" : "11"},
	{"ID" : "379", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_5_U", "Parent" : "11"},
	{"ID" : "380", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_6_U", "Parent" : "11"},
	{"ID" : "381", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_7_U", "Parent" : "11"},
	{"ID" : "382", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_8_U", "Parent" : "11"},
	{"ID" : "383", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_9_U", "Parent" : "11"},
	{"ID" : "384", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_10_U", "Parent" : "11"},
	{"ID" : "385", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_11_U", "Parent" : "11"},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_12_U", "Parent" : "11"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_13_U", "Parent" : "11"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_14_U", "Parent" : "11"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_15_U", "Parent" : "11"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_16_U", "Parent" : "11"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_17_U", "Parent" : "11"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_18_U", "Parent" : "11"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_19_U", "Parent" : "11"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_20_U", "Parent" : "11"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_21_U", "Parent" : "11"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_22_U", "Parent" : "11"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_23_U", "Parent" : "11"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_24_U", "Parent" : "11"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_25_U", "Parent" : "11"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_26_U", "Parent" : "11"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_27_U", "Parent" : "11"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_28_U", "Parent" : "11"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_29_U", "Parent" : "11"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_30_U", "Parent" : "11"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer3_out_31_U", "Parent" : "11"},
	{"ID" : "406", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_U", "Parent" : "11"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_1_U", "Parent" : "11"},
	{"ID" : "408", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_2_U", "Parent" : "11"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_3_U", "Parent" : "11"},
	{"ID" : "410", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_4_U", "Parent" : "11"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_5_U", "Parent" : "11"},
	{"ID" : "412", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_6_U", "Parent" : "11"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_7_U", "Parent" : "11"},
	{"ID" : "414", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_8_U", "Parent" : "11"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_9_U", "Parent" : "11"},
	{"ID" : "416", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_10_U", "Parent" : "11"},
	{"ID" : "417", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_11_U", "Parent" : "11"},
	{"ID" : "418", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_12_U", "Parent" : "11"},
	{"ID" : "419", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_13_U", "Parent" : "11"},
	{"ID" : "420", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_14_U", "Parent" : "11"},
	{"ID" : "421", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer4_out_15_U", "Parent" : "11"},
	{"ID" : "422", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_U", "Parent" : "11"},
	{"ID" : "423", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_1_U", "Parent" : "11"},
	{"ID" : "424", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_2_U", "Parent" : "11"},
	{"ID" : "425", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_3_U", "Parent" : "11"},
	{"ID" : "426", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_4_U", "Parent" : "11"},
	{"ID" : "427", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_5_U", "Parent" : "11"},
	{"ID" : "428", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_6_U", "Parent" : "11"},
	{"ID" : "429", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_7_U", "Parent" : "11"},
	{"ID" : "430", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_8_U", "Parent" : "11"},
	{"ID" : "431", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_9_U", "Parent" : "11"},
	{"ID" : "432", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_10_U", "Parent" : "11"},
	{"ID" : "433", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_11_U", "Parent" : "11"},
	{"ID" : "434", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_12_U", "Parent" : "11"},
	{"ID" : "435", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_13_U", "Parent" : "11"},
	{"ID" : "436", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_14_U", "Parent" : "11"},
	{"ID" : "437", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer5_out_15_U", "Parent" : "11"},
	{"ID" : "438", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer6_out_U", "Parent" : "11"},
	{"ID" : "439", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer6_out_1_U", "Parent" : "11"},
	{"ID" : "440", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer6_out_2_U", "Parent" : "11"},
	{"ID" : "441", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer6_out_3_U", "Parent" : "11"},
	{"ID" : "442", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_U", "Parent" : "11"},
	{"ID" : "443", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_1_U", "Parent" : "11"},
	{"ID" : "444", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_2_U", "Parent" : "11"},
	{"ID" : "445", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_3_U", "Parent" : "11"},
	{"ID" : "446", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_4_U", "Parent" : "11"},
	{"ID" : "447", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_5_U", "Parent" : "11"},
	{"ID" : "448", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_6_U", "Parent" : "11"},
	{"ID" : "449", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_7_U", "Parent" : "11"},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_8_U", "Parent" : "11"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_9_U", "Parent" : "11"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_10_U", "Parent" : "11"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_11_U", "Parent" : "11"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_12_U", "Parent" : "11"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_13_U", "Parent" : "11"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_14_U", "Parent" : "11"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer7_out_15_U", "Parent" : "11"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_U", "Parent" : "11"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_1_U", "Parent" : "11"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_2_U", "Parent" : "11"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_3_U", "Parent" : "11"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_4_U", "Parent" : "11"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_5_U", "Parent" : "11"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_6_U", "Parent" : "11"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_7_U", "Parent" : "11"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_8_U", "Parent" : "11"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_9_U", "Parent" : "11"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_10_U", "Parent" : "11"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_11_U", "Parent" : "11"},
	{"ID" : "470", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_12_U", "Parent" : "11"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_13_U", "Parent" : "11"},
	{"ID" : "472", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_14_U", "Parent" : "11"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer8_out_15_U", "Parent" : "11"},
	{"ID" : "474", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_U", "Parent" : "11"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_1_U", "Parent" : "11"},
	{"ID" : "476", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_2_U", "Parent" : "11"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_3_U", "Parent" : "11"},
	{"ID" : "478", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_4_U", "Parent" : "11"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_5_U", "Parent" : "11"},
	{"ID" : "480", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_6_U", "Parent" : "11"},
	{"ID" : "481", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_7_U", "Parent" : "11"},
	{"ID" : "482", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_8_U", "Parent" : "11"},
	{"ID" : "483", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_9_U", "Parent" : "11"},
	{"ID" : "484", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_10_U", "Parent" : "11"},
	{"ID" : "485", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_11_U", "Parent" : "11"},
	{"ID" : "486", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_12_U", "Parent" : "11"},
	{"ID" : "487", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_13_U", "Parent" : "11"},
	{"ID" : "488", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_14_U", "Parent" : "11"},
	{"ID" : "489", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_15_U", "Parent" : "11"},
	{"ID" : "490", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_16_U", "Parent" : "11"},
	{"ID" : "491", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_17_U", "Parent" : "11"},
	{"ID" : "492", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_18_U", "Parent" : "11"},
	{"ID" : "493", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_19_U", "Parent" : "11"},
	{"ID" : "494", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_20_U", "Parent" : "11"},
	{"ID" : "495", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_21_U", "Parent" : "11"},
	{"ID" : "496", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_22_U", "Parent" : "11"},
	{"ID" : "497", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_23_U", "Parent" : "11"},
	{"ID" : "498", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_24_U", "Parent" : "11"},
	{"ID" : "499", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_25_U", "Parent" : "11"},
	{"ID" : "500", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_26_U", "Parent" : "11"},
	{"ID" : "501", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_27_U", "Parent" : "11"},
	{"ID" : "502", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_28_U", "Parent" : "11"},
	{"ID" : "503", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_29_U", "Parent" : "11"},
	{"ID" : "504", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_30_U", "Parent" : "11"},
	{"ID" : "505", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer9_out_31_U", "Parent" : "11"},
	{"ID" : "506", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_U", "Parent" : "11"},
	{"ID" : "507", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_1_U", "Parent" : "11"},
	{"ID" : "508", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_2_U", "Parent" : "11"},
	{"ID" : "509", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_3_U", "Parent" : "11"},
	{"ID" : "510", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_4_U", "Parent" : "11"},
	{"ID" : "511", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_5_U", "Parent" : "11"},
	{"ID" : "512", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_6_U", "Parent" : "11"},
	{"ID" : "513", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_7_U", "Parent" : "11"},
	{"ID" : "514", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_8_U", "Parent" : "11"},
	{"ID" : "515", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_9_U", "Parent" : "11"},
	{"ID" : "516", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_10_U", "Parent" : "11"},
	{"ID" : "517", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_11_U", "Parent" : "11"},
	{"ID" : "518", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_12_U", "Parent" : "11"},
	{"ID" : "519", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_13_U", "Parent" : "11"},
	{"ID" : "520", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_14_U", "Parent" : "11"},
	{"ID" : "521", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_15_U", "Parent" : "11"},
	{"ID" : "522", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_16_U", "Parent" : "11"},
	{"ID" : "523", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_17_U", "Parent" : "11"},
	{"ID" : "524", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_18_U", "Parent" : "11"},
	{"ID" : "525", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_19_U", "Parent" : "11"},
	{"ID" : "526", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_20_U", "Parent" : "11"},
	{"ID" : "527", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_21_U", "Parent" : "11"},
	{"ID" : "528", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_22_U", "Parent" : "11"},
	{"ID" : "529", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_23_U", "Parent" : "11"},
	{"ID" : "530", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_24_U", "Parent" : "11"},
	{"ID" : "531", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_25_U", "Parent" : "11"},
	{"ID" : "532", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_26_U", "Parent" : "11"},
	{"ID" : "533", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_27_U", "Parent" : "11"},
	{"ID" : "534", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_28_U", "Parent" : "11"},
	{"ID" : "535", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_29_U", "Parent" : "11"},
	{"ID" : "536", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_30_U", "Parent" : "11"},
	{"ID" : "537", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.vae_core_U0.layer10_out_31_U", "Parent" : "11"},
	{"ID" : "538", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0", "Parent" : "0", "Child" : ["539", "540", "541", "542", "543", "544", "545", "546", "547", "548", "549", "550"],
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
			{"Name" : "recon_0", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "553", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_1", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "554", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_2", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "555", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_3", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "556", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_4", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "557", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_5", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "558", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_6", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "559", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "recon_7", "Type" : "None", "Direction" : "I", "DependentProc" : ["11","314"], "DependentChan" : "560", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "bypass", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "551", "DependentChanDepth" : "16", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "bypass_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_score_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score",
				"BlockSignal" : [
					{"Name" : "m_axis_score_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "m_axis_score_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"},
			{"Name" : "m_axis_score_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"},
			{"Name" : "m_axis_score_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_score"}]},
	{"ID" : "539", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U578", "Parent" : "538"},
	{"ID" : "540", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U579", "Parent" : "538"},
	{"ID" : "541", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U580", "Parent" : "538"},
	{"ID" : "542", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U581", "Parent" : "538"},
	{"ID" : "543", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U582", "Parent" : "538"},
	{"ID" : "544", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U583", "Parent" : "538"},
	{"ID" : "545", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U584", "Parent" : "538"},
	{"ID" : "546", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.mul_26s_26s_50_4_1_U585", "Parent" : "538"},
	{"ID" : "547", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.regslice_both_m_axis_score_V_data_V_U", "Parent" : "538"},
	{"ID" : "548", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.regslice_both_m_axis_score_V_keep_V_U", "Parent" : "538"},
	{"ID" : "549", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.regslice_both_m_axis_score_V_strb_V_U", "Parent" : "538"},
	{"ID" : "550", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_score_and_write_U0.regslice_both_m_axis_score_V_last_V_U", "Parent" : "538"},
	{"ID" : "551", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bypass_U", "Parent" : "0"},
	{"ID" : "552", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_core_U", "Parent" : "0"},
	{"ID" : "553", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_U", "Parent" : "0"},
	{"ID" : "554", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_1_U", "Parent" : "0"},
	{"ID" : "555", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_2_U", "Parent" : "0"},
	{"ID" : "556", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_3_U", "Parent" : "0"},
	{"ID" : "557", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_4_U", "Parent" : "0"},
	{"ID" : "558", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_5_U", "Parent" : "0"},
	{"ID" : "559", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_6_U", "Parent" : "0"},
	{"ID" : "560", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.recon_7_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vae_axis {
		s_axis_features_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_features_V_last_V {Type I LastRead 0 FirstWrite -1}
		m_axis_score_V_data_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_keep_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_strb_V {Type O LastRead -1 FirstWrite 7}
		m_axis_score_V_last_V {Type O LastRead -1 FirstWrite 7}
		outidx_42 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		w4 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}
		w11 {Type I LastRead -1 FirstWrite -1}}
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
		s_axis_features_V_last_V {Type I LastRead 0 FirstWrite -1}}
	vae_core {
		p_read {Type I LastRead 0 FirstWrite -1}
		layer11_out_0 {Type O LastRead -1 FirstWrite 7}
		layer11_out_1 {Type O LastRead -1 FirstWrite 7}
		layer11_out_2 {Type O LastRead -1 FirstWrite 7}
		layer11_out_3 {Type O LastRead -1 FirstWrite 7}
		layer11_out_4 {Type O LastRead -1 FirstWrite 7}
		layer11_out_5 {Type O LastRead -1 FirstWrite 7}
		layer11_out_6 {Type O LastRead -1 FirstWrite 7}
		layer11_out_7 {Type O LastRead -1 FirstWrite 7}
		outidx_42 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}
		w4 {Type I LastRead -1 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}
		w11 {Type I LastRead -1 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_4_4_0_0_config2_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		outidx_42 {Type I LastRead -1 FirstWrite -1}
		w2 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_25_9_5_3_0_ap_fixed_18_4_4_0_0_config2_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_18_4_4_0_0_ap_ufixed_18_3_4_0_0_relu_config3_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config4_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		w4 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_3_4_0_0_ap_fixed_18_5_4_0_0_config4_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config5_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_5_4_0_0_config6_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		w6 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_5_4_0_0_config6_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_18_5_4_0_0_config7_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		outidx {Type I LastRead -1 FirstWrite -1}
		w7 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_fixed_18_5_4_0_0_ap_fixed_18_5_4_0_0_config7_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_18_5_4_0_0_ap_ufixed_18_4_4_0_0_relu_config8_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_6_4_0_0_config9_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		w9 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_4_4_0_0_ap_fixed_18_6_4_0_0_config9_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	relu_ap_fixed_18_6_4_0_0_ap_ufixed_18_5_4_0_0_relu_config10_s {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}}
	dense_resource_rf_leq_nin_ap_ufixed_ap_fixed_18_4_4_0_0_config11_s {
		p_read {Type I LastRead 1 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 1 FirstWrite -1}
		p_read4 {Type I LastRead 1 FirstWrite -1}
		p_read5 {Type I LastRead 1 FirstWrite -1}
		p_read6 {Type I LastRead 1 FirstWrite -1}
		p_read7 {Type I LastRead 1 FirstWrite -1}
		p_read8 {Type I LastRead 1 FirstWrite -1}
		p_read9 {Type I LastRead 1 FirstWrite -1}
		p_read10 {Type I LastRead 1 FirstWrite -1}
		p_read11 {Type I LastRead 1 FirstWrite -1}
		p_read12 {Type I LastRead 1 FirstWrite -1}
		p_read13 {Type I LastRead 1 FirstWrite -1}
		p_read14 {Type I LastRead 1 FirstWrite -1}
		p_read15 {Type I LastRead 1 FirstWrite -1}
		p_read16 {Type I LastRead 1 FirstWrite -1}
		p_read17 {Type I LastRead 1 FirstWrite -1}
		p_read18 {Type I LastRead 1 FirstWrite -1}
		p_read19 {Type I LastRead 1 FirstWrite -1}
		p_read20 {Type I LastRead 1 FirstWrite -1}
		p_read21 {Type I LastRead 1 FirstWrite -1}
		p_read22 {Type I LastRead 1 FirstWrite -1}
		p_read23 {Type I LastRead 1 FirstWrite -1}
		p_read24 {Type I LastRead 1 FirstWrite -1}
		p_read25 {Type I LastRead 1 FirstWrite -1}
		p_read26 {Type I LastRead 1 FirstWrite -1}
		p_read27 {Type I LastRead 1 FirstWrite -1}
		p_read28 {Type I LastRead 1 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 1 FirstWrite -1}
		p_read31 {Type I LastRead 1 FirstWrite -1}
		res_0 {Type O LastRead -1 FirstWrite 7}
		res_1 {Type O LastRead -1 FirstWrite 7}
		res_2 {Type O LastRead -1 FirstWrite 7}
		res_3 {Type O LastRead -1 FirstWrite 7}
		res_4 {Type O LastRead -1 FirstWrite 7}
		res_5 {Type O LastRead -1 FirstWrite 7}
		res_6 {Type O LastRead -1 FirstWrite 7}
		res_7 {Type O LastRead -1 FirstWrite 7}
		w11 {Type I LastRead -1 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
	cast_ap_ufixed_18_5_4_0_0_ap_fixed_18_4_4_0_0_config11_s {
		x_val {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	s_axis_features_V_data_V { axis {  { s_axis_features_TDATA in_data 0 32 } } }
	s_axis_features_V_keep_V { axis {  { s_axis_features_TKEEP in_data 0 4 } } }
	s_axis_features_V_strb_V { axis {  { s_axis_features_TSTRB in_data 0 4 } } }
	s_axis_features_V_last_V { axis {  { s_axis_features_TLAST in_data 0 1 }  { s_axis_features_TVALID in_vld 0 1 }  { s_axis_features_TREADY in_acc 1 1 } } }
	m_axis_score_V_data_V { axis {  { m_axis_score_TDATA out_data 1 64 } } }
	m_axis_score_V_keep_V { axis {  { m_axis_score_TKEEP out_data 1 8 } } }
	m_axis_score_V_strb_V { axis {  { m_axis_score_TSTRB out_data 1 8 } } }
	m_axis_score_V_last_V { axis {  { m_axis_score_TLAST out_data 1 1 }  { m_axis_score_TVALID out_vld 1 1 }  { m_axis_score_TREADY out_acc 0 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
