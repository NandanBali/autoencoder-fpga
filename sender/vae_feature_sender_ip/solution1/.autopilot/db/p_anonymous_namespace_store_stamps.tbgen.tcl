set moduleName p_anonymous_namespace_store_stamps
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
set C_modelName {(anonymous namespace)store_stamps}
set C_modelType { void 0 }
set C_modelArgList {
	{ stamps int 64 regular {fifo 0 volatile }  }
	{ n_flows int 32 regular {fifo 0}  }
	{ gmem_ts int 64 regular {axi_master 1}  }
	{ t_send int 64 regular {fifo 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "stamps", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "n_flows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_ts", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "t_send","offset": { "type": "dynamic","port_name": "t_send","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "t_send", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ stamps_dout sc_in sc_lv 64 signal 0 } 
	{ stamps_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ stamps_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ stamps_empty_n sc_in sc_logic 1 signal 0 } 
	{ stamps_read sc_out sc_logic 1 signal 0 } 
	{ n_flows_dout sc_in sc_lv 32 signal 1 } 
	{ n_flows_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ n_flows_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ n_flows_empty_n sc_in sc_logic 1 signal 1 } 
	{ n_flows_read sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ts_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ts_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ts_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ts_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_WDATA sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ts_WSTRB sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_ts_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ts_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ts_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ts_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ts_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ts_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_RDATA sc_in sc_lv 64 signal 2 } 
	{ m_axi_gmem_ts_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_ts_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ts_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_ts_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_BUSER sc_in sc_lv 1 signal 2 } 
	{ t_send_dout sc_in sc_lv 64 signal 3 } 
	{ t_send_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ t_send_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ t_send_empty_n sc_in sc_logic 1 signal 3 } 
	{ t_send_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "stamps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stamps", "role": "dout" }} , 
 	{ "name": "stamps_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "stamps", "role": "num_data_valid" }} , 
 	{ "name": "stamps_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "stamps", "role": "fifo_cap" }} , 
 	{ "name": "stamps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stamps", "role": "empty_n" }} , 
 	{ "name": "stamps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stamps", "role": "read" }} , 
 	{ "name": "n_flows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "n_flows", "role": "dout" }} , 
 	{ "name": "n_flows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "n_flows", "role": "num_data_valid" }} , 
 	{ "name": "n_flows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "n_flows", "role": "fifo_cap" }} , 
 	{ "name": "n_flows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_flows", "role": "empty_n" }} , 
 	{ "name": "n_flows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "n_flows", "role": "read" }} , 
 	{ "name": "m_axi_gmem_ts_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_ts_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_ts_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_ts_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_ts_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_ts_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_ts_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_ts_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_ts_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_ts_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_ts_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_ts_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_ts_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_ts_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_ts_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_ts_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_ts_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_ts_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_ts_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_ts_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ts_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ts_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ts_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ts_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ts_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ts_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ts_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ts_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ts_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ts_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ts_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ts_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ts_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_ts_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_ts_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_ts_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_ts_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_ts_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_ts_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_ts_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_ts_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_ts_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_ts_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_ts_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_ts_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_ts_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BUSER" }} , 
 	{ "name": "t_send_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_send", "role": "dout" }} , 
 	{ "name": "t_send_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_send", "role": "num_data_valid" }} , 
 	{ "name": "t_send_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_send", "role": "fifo_cap" }} , 
 	{ "name": "t_send_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_send", "role": "empty_n" }} , 
 	{ "name": "t_send_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_send", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "p_anonymous_namespace_store_stamps",
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
			{"Name" : "stamps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Port" : "stamps", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "n_flows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "n_flows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_ts", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_ts_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_ts_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Port" : "gmem_ts", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "t_send", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "t_send_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "p_anonymous_namespace_store_stamps_Pipeline_write_stamps",
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
			{"Name" : "n_flows_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_ts", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_ts_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln63", "Type" : "None", "Direction" : "I"},
			{"Name" : "stamps", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stamps_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "write_stamps", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	p_anonymous_namespace_store_stamps {
		stamps {Type I LastRead 1 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		gmem_ts {Type O LastRead 4 FirstWrite 2}
		t_send {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_store_stamps_Pipeline_write_stamps {
		n_flows_load {Type I LastRead 0 FirstWrite -1}
		gmem_ts {Type O LastRead -1 FirstWrite 2}
		sext_ln63 {Type I LastRead 0 FirstWrite -1}
		stamps {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stamps { ap_fifo {  { stamps_dout fifo_data_in 0 64 }  { stamps_num_data_valid fifo_status_num_data_valid 0 7 }  { stamps_fifo_cap fifo_update 0 7 }  { stamps_empty_n fifo_status 0 1 }  { stamps_read fifo_port_we 1 1 } } }
	n_flows { ap_fifo {  { n_flows_dout fifo_data_in 0 32 }  { n_flows_num_data_valid fifo_status_num_data_valid 0 3 }  { n_flows_fifo_cap fifo_update 0 3 }  { n_flows_empty_n fifo_status 0 1 }  { n_flows_read fifo_port_we 1 1 } } }
	 { m_axi {  { m_axi_gmem_ts_AWVALID VALID 1 1 }  { m_axi_gmem_ts_AWREADY READY 0 1 }  { m_axi_gmem_ts_AWADDR ADDR 1 64 }  { m_axi_gmem_ts_AWID ID 1 1 }  { m_axi_gmem_ts_AWLEN SIZE 1 32 }  { m_axi_gmem_ts_AWSIZE BURST 1 3 }  { m_axi_gmem_ts_AWBURST LOCK 1 2 }  { m_axi_gmem_ts_AWLOCK CACHE 1 2 }  { m_axi_gmem_ts_AWCACHE PROT 1 4 }  { m_axi_gmem_ts_AWPROT QOS 1 3 }  { m_axi_gmem_ts_AWQOS REGION 1 4 }  { m_axi_gmem_ts_AWREGION USER 1 4 }  { m_axi_gmem_ts_AWUSER DATA 1 1 }  { m_axi_gmem_ts_WVALID VALID 1 1 }  { m_axi_gmem_ts_WREADY READY 0 1 }  { m_axi_gmem_ts_WDATA FIFONUM 1 64 }  { m_axi_gmem_ts_WSTRB STRB 1 8 }  { m_axi_gmem_ts_WLAST LAST 1 1 }  { m_axi_gmem_ts_WID ID 1 1 }  { m_axi_gmem_ts_WUSER DATA 1 1 }  { m_axi_gmem_ts_ARVALID VALID 1 1 }  { m_axi_gmem_ts_ARREADY READY 0 1 }  { m_axi_gmem_ts_ARADDR ADDR 1 64 }  { m_axi_gmem_ts_ARID ID 1 1 }  { m_axi_gmem_ts_ARLEN SIZE 1 32 }  { m_axi_gmem_ts_ARSIZE BURST 1 3 }  { m_axi_gmem_ts_ARBURST LOCK 1 2 }  { m_axi_gmem_ts_ARLOCK CACHE 1 2 }  { m_axi_gmem_ts_ARCACHE PROT 1 4 }  { m_axi_gmem_ts_ARPROT QOS 1 3 }  { m_axi_gmem_ts_ARQOS REGION 1 4 }  { m_axi_gmem_ts_ARREGION USER 1 4 }  { m_axi_gmem_ts_ARUSER DATA 1 1 }  { m_axi_gmem_ts_RVALID VALID 0 1 }  { m_axi_gmem_ts_RREADY READY 1 1 }  { m_axi_gmem_ts_RDATA FIFONUM 0 64 }  { m_axi_gmem_ts_RLAST LAST 0 1 }  { m_axi_gmem_ts_RID ID 0 1 }  { m_axi_gmem_ts_RFIFONUM LEN 0 9 }  { m_axi_gmem_ts_RUSER DATA 0 1 }  { m_axi_gmem_ts_RRESP RESP 0 2 }  { m_axi_gmem_ts_BVALID VALID 0 1 }  { m_axi_gmem_ts_BREADY READY 1 1 }  { m_axi_gmem_ts_BRESP RESP 0 2 }  { m_axi_gmem_ts_BID ID 0 1 }  { m_axi_gmem_ts_BUSER DATA 0 1 } } }
	t_send { ap_fifo {  { t_send_dout fifo_data_in 0 64 }  { t_send_num_data_valid fifo_status_num_data_valid 0 3 }  { t_send_fifo_cap fifo_update 0 3 }  { t_send_empty_n fifo_status 0 1 }  { t_send_read fifo_port_we 1 1 } } }
}
