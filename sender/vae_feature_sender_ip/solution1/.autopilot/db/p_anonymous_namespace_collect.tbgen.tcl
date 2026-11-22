set moduleName p_anonymous_namespace_collect
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
set C_modelName {(anonymous namespace)collect}
set C_modelType { void 0 }
set C_modelArgList {
	{ s_axis_score_V_data_V int 64 regular {axi_s 0 volatile  { s_axis_score Data } }  }
	{ s_axis_score_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis_score Keep } }  }
	{ s_axis_score_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis_score Strb } }  }
	{ s_axis_score_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_score Last } }  }
	{ n_flows int 32 regular  }
	{ cycle_rx int 64 regular {fifo 0 volatile }  }
	{ gmem_res int 128 regular {axi_master 1}  }
	{ results int 64 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "s_axis_score_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "n_flows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cycle_rx", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_res", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "results","offset": { "type": "dynamic","port_name": "results","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "results", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 64
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_axis_score_TVALID sc_in sc_logic 1 invld 3 } 
	{ cycle_rx_dout sc_in sc_lv 64 signal 5 } 
	{ cycle_rx_empty_n sc_in sc_logic 1 signal 5 } 
	{ cycle_rx_read sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_res_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_res_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_res_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_res_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_res_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_WDATA sc_out sc_lv 128 signal 6 } 
	{ m_axi_gmem_res_WSTRB sc_out sc_lv 16 signal 6 } 
	{ m_axi_gmem_res_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_res_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_res_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_res_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_res_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_res_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_RDATA sc_in sc_lv 128 signal 6 } 
	{ m_axi_gmem_res_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem_res_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_res_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_res_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_res_BUSER sc_in sc_lv 1 signal 6 } 
	{ s_axis_score_TDATA sc_in sc_lv 64 signal 0 } 
	{ s_axis_score_TREADY sc_out sc_logic 1 inacc 3 } 
	{ s_axis_score_TKEEP sc_in sc_lv 8 signal 1 } 
	{ s_axis_score_TSTRB sc_in sc_lv 8 signal 2 } 
	{ s_axis_score_TLAST sc_in sc_lv 1 signal 3 } 
	{ n_flows sc_in sc_lv 32 signal 4 } 
	{ results sc_in sc_lv 64 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_axis_score_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "cycle_rx_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cycle_rx", "role": "dout" }} , 
 	{ "name": "cycle_rx_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_rx", "role": "empty_n" }} , 
 	{ "name": "cycle_rx_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_rx", "role": "read" }} , 
 	{ "name": "m_axi_gmem_res_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_res_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_res_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_res_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_res_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_res_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_res_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_res_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_res_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_res_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_res_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_res_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_res_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_res_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_res_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_res_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_res", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_res_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem_res", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_res_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_res_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_res_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_res_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_res_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_res_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_res_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_res_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_res_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_res_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_res_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_res_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_res_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_res_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_res_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_res_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_res_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_res_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_res_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "gmem_res", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_res_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_res_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_res_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_res", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_res_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_res_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_res_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_res_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_res_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_res_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_res_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BUSER" }} , 
 	{ "name": "s_axis_score_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_score_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_score_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_score_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "n_flows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_flows", "role": "default" }} , 
 	{ "name": "results", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "results", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "p_anonymous_namespace_collect",
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
			{"Name" : "s_axis_score_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score",
				"BlockSignal" : [
					{"Name" : "s_axis_score_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_axis_score_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score"},
			{"Name" : "s_axis_score_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score"},
			{"Name" : "s_axis_score_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score"},
			{"Name" : "n_flows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cycle_rx", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cycle_rx_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_res", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_res_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_res_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_res_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "results", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "write_results", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_score_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_score_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_score_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_s_axis_score_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_collect {
		s_axis_score_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_last_V {Type I LastRead 0 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		cycle_rx {Type I LastRead 0 FirstWrite -1}
		gmem_res {Type O LastRead 3 FirstWrite 2}
		results {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	s_axis_score_V_data_V { axis {  { s_axis_score_TDATA in_data 0 64 } } }
	s_axis_score_V_keep_V { axis {  { s_axis_score_TKEEP in_data 0 8 } } }
	s_axis_score_V_strb_V { axis {  { s_axis_score_TSTRB in_data 0 8 } } }
	s_axis_score_V_last_V { axis {  { s_axis_score_TVALID in_vld 0 1 }  { s_axis_score_TREADY in_acc 1 1 }  { s_axis_score_TLAST in_data 0 1 } } }
	n_flows { ap_none {  { n_flows in_data 0 32 } } }
	cycle_rx { ap_fifo {  { cycle_rx_dout fifo_data_in 0 64 }  { cycle_rx_empty_n fifo_status 0 1 }  { cycle_rx_read fifo_port_we 1 1 } } }
	 { m_axi {  { m_axi_gmem_res_AWVALID VALID 1 1 }  { m_axi_gmem_res_AWREADY READY 0 1 }  { m_axi_gmem_res_AWADDR ADDR 1 64 }  { m_axi_gmem_res_AWID ID 1 1 }  { m_axi_gmem_res_AWLEN SIZE 1 32 }  { m_axi_gmem_res_AWSIZE BURST 1 3 }  { m_axi_gmem_res_AWBURST LOCK 1 2 }  { m_axi_gmem_res_AWLOCK CACHE 1 2 }  { m_axi_gmem_res_AWCACHE PROT 1 4 }  { m_axi_gmem_res_AWPROT QOS 1 3 }  { m_axi_gmem_res_AWQOS REGION 1 4 }  { m_axi_gmem_res_AWREGION USER 1 4 }  { m_axi_gmem_res_AWUSER DATA 1 1 }  { m_axi_gmem_res_WVALID VALID 1 1 }  { m_axi_gmem_res_WREADY READY 0 1 }  { m_axi_gmem_res_WDATA FIFONUM 1 128 }  { m_axi_gmem_res_WSTRB STRB 1 16 }  { m_axi_gmem_res_WLAST LAST 1 1 }  { m_axi_gmem_res_WID ID 1 1 }  { m_axi_gmem_res_WUSER DATA 1 1 }  { m_axi_gmem_res_ARVALID VALID 1 1 }  { m_axi_gmem_res_ARREADY READY 0 1 }  { m_axi_gmem_res_ARADDR ADDR 1 64 }  { m_axi_gmem_res_ARID ID 1 1 }  { m_axi_gmem_res_ARLEN SIZE 1 32 }  { m_axi_gmem_res_ARSIZE BURST 1 3 }  { m_axi_gmem_res_ARBURST LOCK 1 2 }  { m_axi_gmem_res_ARLOCK CACHE 1 2 }  { m_axi_gmem_res_ARCACHE PROT 1 4 }  { m_axi_gmem_res_ARPROT QOS 1 3 }  { m_axi_gmem_res_ARQOS REGION 1 4 }  { m_axi_gmem_res_ARREGION USER 1 4 }  { m_axi_gmem_res_ARUSER DATA 1 1 }  { m_axi_gmem_res_RVALID VALID 0 1 }  { m_axi_gmem_res_RREADY READY 1 1 }  { m_axi_gmem_res_RDATA FIFONUM 0 128 }  { m_axi_gmem_res_RLAST LAST 0 1 }  { m_axi_gmem_res_RID ID 0 1 }  { m_axi_gmem_res_RFIFONUM LEN 0 9 }  { m_axi_gmem_res_RUSER DATA 0 1 }  { m_axi_gmem_res_RRESP RESP 0 2 }  { m_axi_gmem_res_BVALID VALID 0 1 }  { m_axi_gmem_res_BREADY READY 1 1 }  { m_axi_gmem_res_BRESP RESP 0 2 }  { m_axi_gmem_res_BID ID 0 1 }  { m_axi_gmem_res_BUSER DATA 0 1 } } }
	results { ap_none {  { results in_data 0 64 } } }
}
