set moduleName vae_feature_sender
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {vae_feature_sender}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_in int 32 regular {axi_master 0}  }
	{ gmem_ts int 64 regular {axi_master 1}  }
	{ gmem_res int 128 regular {axi_master 1}  }
	{ features int 64 regular {axi_slave 0}  }
	{ t_send int 64 regular {axi_slave 0}  }
	{ results int 64 regular {axi_slave 0}  }
	{ n_flows int 32 regular {axi_slave 0}  }
	{ period int 32 regular {axi_slave 0}  }
	{ cycle_tx int 64 regular {fifo 0 volatile }  }
	{ cycle_rx int 64 regular {fifo 0 volatile }  }
	{ m_axis_features_V_data_V int 32 regular {axi_s 1 volatile  { m_axis_features Data } }  }
	{ m_axis_features_V_keep_V int 4 regular {axi_s 1 volatile  { m_axis_features Keep } }  }
	{ m_axis_features_V_strb_V int 4 regular {axi_s 1 volatile  { m_axis_features Strb } }  }
	{ m_axis_features_V_last_V int 1 regular {axi_s 1 volatile  { m_axis_features Last } }  }
	{ s_axis_score_V_data_V int 64 regular {axi_s 0 volatile  { s_axis_score Data } }  }
	{ s_axis_score_V_keep_V int 8 regular {axi_s 0 volatile  { s_axis_score Keep } }  }
	{ s_axis_score_V_strb_V int 8 regular {axi_s 0 volatile  { s_axis_score Strb } }  }
	{ s_axis_score_V_last_V int 1 regular {axi_s 0 volatile  { s_axis_score Last } }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "features","offset": { "type": "dynamic","port_name": "features","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_ts", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "t_send","offset": { "type": "dynamic","port_name": "t_send","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "gmem_res", "interface" : "axi_master", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "results","offset": { "type": "dynamic","port_name": "results","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "features", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "t_send", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "results", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "n_flows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "period", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "cycle_tx", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "cycle_rx", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "m_axis_features_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "m_axis_features_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_axis_score_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_strb_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "s_axis_score_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 173
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem_in_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_res_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_res_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_res_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_res_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_res_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_WDATA sc_out sc_lv 128 signal 2 } 
	{ m_axi_gmem_res_WSTRB sc_out sc_lv 16 signal 2 } 
	{ m_axi_gmem_res_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_res_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_res_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_res_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_res_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_res_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_RDATA sc_in sc_lv 128 signal 2 } 
	{ m_axi_gmem_res_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_res_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_res_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_res_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_ts_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ts_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_ts_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ts_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ts_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ts_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_ts_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_ts_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_ts_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ts_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_ts_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_ts_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_ts_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_ts_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_ts_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_ts_BUSER sc_in sc_lv 1 signal 1 } 
	{ cycle_tx_dout sc_in sc_lv 64 signal 8 } 
	{ cycle_tx_empty_n sc_in sc_logic 1 signal 8 } 
	{ cycle_tx_read sc_out sc_logic 1 signal 8 } 
	{ cycle_rx_dout sc_in sc_lv 64 signal 9 } 
	{ cycle_rx_empty_n sc_in sc_logic 1 signal 9 } 
	{ cycle_rx_read sc_out sc_logic 1 signal 9 } 
	{ m_axis_features_TDATA sc_out sc_lv 32 signal 10 } 
	{ m_axis_features_TKEEP sc_out sc_lv 4 signal 11 } 
	{ m_axis_features_TSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axis_features_TLAST sc_out sc_lv 1 signal 13 } 
	{ s_axis_score_TDATA sc_in sc_lv 64 signal 14 } 
	{ s_axis_score_TKEEP sc_in sc_lv 8 signal 15 } 
	{ s_axis_score_TSTRB sc_in sc_lv 8 signal 16 } 
	{ s_axis_score_TLAST sc_in sc_lv 1 signal 17 } 
	{ m_axis_features_TVALID sc_out sc_logic 1 outvld 13 } 
	{ m_axis_features_TREADY sc_in sc_logic 1 outacc 13 } 
	{ s_axis_score_TVALID sc_in sc_logic 1 invld 17 } 
	{ s_axis_score_TREADY sc_out sc_logic 1 inacc 17 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"vae_feature_sender","role":"start","value":"0","valid_bit":"0"},{"name":"vae_feature_sender","role":"continue","value":"0","valid_bit":"4"},{"name":"vae_feature_sender","role":"auto_start","value":"0","valid_bit":"7"},{"name":"features","role":"data","value":"16"},{"name":"t_send","role":"data","value":"28"},{"name":"results","role":"data","value":"40"},{"name":"n_flows","role":"data","value":"52"},{"name":"period","role":"data","value":"60"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"vae_feature_sender","role":"start","value":"0","valid_bit":"0"},{"name":"vae_feature_sender","role":"done","value":"0","valid_bit":"1"},{"name":"vae_feature_sender","role":"idle","value":"0","valid_bit":"2"},{"name":"vae_feature_sender","role":"ready","value":"0","valid_bit":"3"},{"name":"vae_feature_sender","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_in_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_in_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_in_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_in_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_in_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_in_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_in_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_in_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_in_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_in_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_in_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_in_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_in_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_in_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_in_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_in_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_in_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_in_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_in_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_in_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_res_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_res_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_res_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_res_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_res_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_res", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_res_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_res", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_res_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_res_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_res_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_res_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_res_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_res", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_res_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_res_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_res", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_ts_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_ts_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_ts_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_ts_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_ts_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_ts", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ts_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_ts", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_ts_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_ts_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_ts_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_ts_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_ts_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_ts_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_ts_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_ts", "role": "BUSER" }} , 
 	{ "name": "cycle_tx_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cycle_tx", "role": "dout" }} , 
 	{ "name": "cycle_tx_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_tx", "role": "empty_n" }} , 
 	{ "name": "cycle_tx_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_tx", "role": "read" }} , 
 	{ "name": "cycle_rx_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "cycle_rx", "role": "dout" }} , 
 	{ "name": "cycle_rx_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_rx", "role": "empty_n" }} , 
 	{ "name": "cycle_rx_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cycle_rx", "role": "read" }} , 
 	{ "name": "m_axis_features_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "m_axis_features_V_data_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_features_V_keep_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "m_axis_features_V_strb_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_axis_score_V_data_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_score_V_keep_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_axis_score_V_strb_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "m_axis_features_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "m_axis_features_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }} , 
 	{ "name": "s_axis_score_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "s_axis_score_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "9", "16", "19", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "vae_feature_sender",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
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
			{"ID" : "5", "Name" : "entry_proc_U0"},
			{"ID" : "6", "Name" : "p_anonymous_namespace_load_U0"},
			{"ID" : "19", "Name" : "p_anonymous_namespace_collect_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "p_anonymous_namespace_pace_send_U0"},
			{"ID" : "16", "Name" : "p_anonymous_namespace_store_stamps_U0"},
			{"ID" : "19", "Name" : "p_anonymous_namespace_collect_U0"}],
		"Port" : [
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "p_anonymous_namespace_load_U0", "Port" : "gmem_in"}]},
			{"Name" : "gmem_ts", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "p_anonymous_namespace_store_stamps_U0", "Port" : "gmem_ts"}]},
			{"Name" : "gmem_res", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "gmem_res"}]},
			{"Name" : "features", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_send", "Type" : "None", "Direction" : "I"},
			{"Name" : "results", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_flows", "Type" : "None", "Direction" : "I"},
			{"Name" : "period", "Type" : "None", "Direction" : "I"},
			{"Name" : "cycle_tx", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_anonymous_namespace_pace_send_U0", "Port" : "cycle_tx"}]},
			{"Name" : "cycle_rx", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "cycle_rx"}]},
			{"Name" : "m_axis_features_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_anonymous_namespace_pace_send_U0", "Port" : "m_axis_features_V_data_V"}]},
			{"Name" : "m_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_anonymous_namespace_pace_send_U0", "Port" : "m_axis_features_V_keep_V"}]},
			{"Name" : "m_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_anonymous_namespace_pace_send_U0", "Port" : "m_axis_features_V_strb_V"}]},
			{"Name" : "m_axis_features_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "p_anonymous_namespace_pace_send_U0", "Port" : "m_axis_features_V_last_V"}]},
			{"Name" : "s_axis_score_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "s_axis_score_V_data_V"}]},
			{"Name" : "s_axis_score_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "s_axis_score_V_keep_V"}]},
			{"Name" : "s_axis_score_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "s_axis_score_V_strb_V"}]},
			{"Name" : "s_axis_score_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "s_axis_score",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "p_anonymous_namespace_collect_U0", "Port" : "s_axis_score_V_last_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_in_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_res_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_ts_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
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
			{"Name" : "t_send", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_send_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "t_send_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "period", "Type" : "None", "Direction" : "I"},
			{"Name" : "period_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "period_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_load_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "p_anonymous_namespace_load",
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
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90", "Port" : "gmem_in", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "features", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_flows", "Type" : "None", "Direction" : "I"},
			{"Name" : "words", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "27", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90", "Port" : "words", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "n_flows_c19", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "n_flows_c19_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_load_U0.grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90", "Parent" : "6", "Child" : ["8"],
		"CDFG" : "p_anonymous_namespace_load_Pipeline_read_ddr",
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
			{"Name" : "n_words", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "words", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "words_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "read_ddr", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_load_U0.grp_p_anonymous_namespace_load_Pipeline_read_ddr_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0", "Parent" : "0", "Child" : ["10", "12", "13", "14", "15"],
		"CDFG" : "p_anonymous_namespace_pace_send",
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
		"StartSource" : "5",
		"StartFifo" : "start_for_p_anonymous_namespace_pace_send_U0_U",
		"Port" : [
			{"Name" : "words", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "27", "DependentChanDepth" : "256", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "words", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "n_flows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["6"], "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "n_flows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "period", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "period_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cycle_tx", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "cycle_tx_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "cycle_tx", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "m_axis_features_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "m_axis_features_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "m_axis_features_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "m_axis_features_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "m_axis_features_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "m_axis_features_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "m_axis_features_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "m_axis_features",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "m_axis_features_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stamps", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Port" : "stamps", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "n_flows_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["16"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "n_flows_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88", "Parent" : "9", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.grp_p_anonymous_namespace_pace_send_Pipeline_send_fu_88.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.regslice_both_m_axis_features_V_data_V_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.regslice_both_m_axis_features_V_keep_V_U", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.regslice_both_m_axis_features_V_strb_V_U", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_pace_send_U0.regslice_both_m_axis_features_V_last_V_U", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_store_stamps_U0", "Parent" : "0", "Child" : ["17"],
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
		"StartSource" : "5",
		"StartFifo" : "start_for_p_anonymous_namespace_store_stamps_U0_U",
		"Port" : [
			{"Name" : "stamps", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "29", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Port" : "stamps", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "n_flows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "n_flows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem_ts", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_ts_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_ts_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Port" : "gmem_ts", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "t_send", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "25", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "t_send_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_store_stamps_U0.grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77", "Parent" : "16", "Child" : ["18"],
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
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_store_stamps_U0.grp_p_anonymous_namespace_store_stamps_Pipeline_write_stamps_fu_77.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24"],
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
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0.flow_control_loop_pipe_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0.regslice_both_s_axis_score_V_data_V_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0.regslice_both_s_axis_score_V_keep_V_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0.regslice_both_s_axis_score_V_strb_V_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_collect_U0.regslice_both_s_axis_score_V_last_V_U", "Parent" : "19"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_send_c_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.period_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.words_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_flows_c19_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.stamps_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_flows_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_pace_send_U0_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_p_anonymous_namespace_store_stamps_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	vae_feature_sender {
		gmem_in {Type I LastRead 2 FirstWrite -1}
		gmem_ts {Type O LastRead 4 FirstWrite 2}
		gmem_res {Type O LastRead 3 FirstWrite 2}
		features {Type I LastRead 0 FirstWrite -1}
		t_send {Type I LastRead 0 FirstWrite -1}
		results {Type I LastRead 0 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		period {Type I LastRead 0 FirstWrite -1}
		cycle_tx {Type I LastRead 1 FirstWrite -1}
		cycle_rx {Type I LastRead 0 FirstWrite -1}
		m_axis_features_V_data_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_keep_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_strb_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_last_V {Type O LastRead 1 FirstWrite -1}
		s_axis_score_V_data_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_keep_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_strb_V {Type I LastRead 0 FirstWrite -1}
		s_axis_score_V_last_V {Type I LastRead 0 FirstWrite -1}}
	entry_proc {
		t_send {Type I LastRead 0 FirstWrite -1}
		t_send_c {Type O LastRead -1 FirstWrite 0}
		period {Type I LastRead 0 FirstWrite -1}
		period_c {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_load {
		gmem_in {Type I LastRead 2 FirstWrite -1}
		features {Type I LastRead 0 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		words {Type O LastRead -1 FirstWrite 3}
		n_flows_c19 {Type O LastRead -1 FirstWrite 0}}
	p_anonymous_namespace_load_Pipeline_read_ddr {
		n_words {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 2 FirstWrite -1}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		words {Type O LastRead -1 FirstWrite 3}}
	p_anonymous_namespace_pace_send {
		words {Type I LastRead 1 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		period {Type I LastRead 0 FirstWrite -1}
		cycle_tx {Type I LastRead 1 FirstWrite -1}
		m_axis_features_V_data_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_keep_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_strb_V {Type O LastRead 1 FirstWrite -1}
		m_axis_features_V_last_V {Type O LastRead 1 FirstWrite -1}
		stamps {Type O LastRead -1 FirstWrite 2}
		n_flows_c {Type O LastRead -1 FirstWrite 0}}
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
		zext_ln52 {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_store_stamps {
		stamps {Type I LastRead 1 FirstWrite -1}
		n_flows {Type I LastRead 0 FirstWrite -1}
		gmem_ts {Type O LastRead 4 FirstWrite 2}
		t_send {Type I LastRead 0 FirstWrite -1}}
	p_anonymous_namespace_store_stamps_Pipeline_write_stamps {
		n_flows_load {Type I LastRead 0 FirstWrite -1}
		gmem_ts {Type O LastRead -1 FirstWrite 2}
		sext_ln63 {Type I LastRead 0 FirstWrite -1}
		stamps {Type I LastRead 1 FirstWrite -1}}
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
]}

set Spec2ImplPortList { 
	gmem_in { m_axi {  { m_axi_gmem_in_AWVALID VALID 1 1 }  { m_axi_gmem_in_AWREADY READY 0 1 }  { m_axi_gmem_in_AWADDR ADDR 1 64 }  { m_axi_gmem_in_AWID ID 1 1 }  { m_axi_gmem_in_AWLEN SIZE 1 8 }  { m_axi_gmem_in_AWSIZE BURST 1 3 }  { m_axi_gmem_in_AWBURST LOCK 1 2 }  { m_axi_gmem_in_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_AWCACHE PROT 1 4 }  { m_axi_gmem_in_AWPROT QOS 1 3 }  { m_axi_gmem_in_AWQOS REGION 1 4 }  { m_axi_gmem_in_AWREGION USER 1 4 }  { m_axi_gmem_in_AWUSER DATA 1 1 }  { m_axi_gmem_in_WVALID VALID 1 1 }  { m_axi_gmem_in_WREADY READY 0 1 }  { m_axi_gmem_in_WDATA FIFONUM 1 32 }  { m_axi_gmem_in_WSTRB STRB 1 4 }  { m_axi_gmem_in_WLAST LAST 1 1 }  { m_axi_gmem_in_WID ID 1 1 }  { m_axi_gmem_in_WUSER DATA 1 1 }  { m_axi_gmem_in_ARVALID VALID 1 1 }  { m_axi_gmem_in_ARREADY READY 0 1 }  { m_axi_gmem_in_ARADDR ADDR 1 64 }  { m_axi_gmem_in_ARID ID 1 1 }  { m_axi_gmem_in_ARLEN SIZE 1 8 }  { m_axi_gmem_in_ARSIZE BURST 1 3 }  { m_axi_gmem_in_ARBURST LOCK 1 2 }  { m_axi_gmem_in_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_ARCACHE PROT 1 4 }  { m_axi_gmem_in_ARPROT QOS 1 3 }  { m_axi_gmem_in_ARQOS REGION 1 4 }  { m_axi_gmem_in_ARREGION USER 1 4 }  { m_axi_gmem_in_ARUSER DATA 1 1 }  { m_axi_gmem_in_RVALID VALID 0 1 }  { m_axi_gmem_in_RREADY READY 1 1 }  { m_axi_gmem_in_RDATA FIFONUM 0 32 }  { m_axi_gmem_in_RLAST LAST 0 1 }  { m_axi_gmem_in_RID ID 0 1 }  { m_axi_gmem_in_RUSER DATA 0 1 }  { m_axi_gmem_in_RRESP RESP 0 2 }  { m_axi_gmem_in_BVALID VALID 0 1 }  { m_axi_gmem_in_BREADY READY 1 1 }  { m_axi_gmem_in_BRESP RESP 0 2 }  { m_axi_gmem_in_BID ID 0 1 }  { m_axi_gmem_in_BUSER DATA 0 1 } } }
	gmem_ts { m_axi {  { m_axi_gmem_ts_AWVALID VALID 1 1 }  { m_axi_gmem_ts_AWREADY READY 0 1 }  { m_axi_gmem_ts_AWADDR ADDR 1 64 }  { m_axi_gmem_ts_AWID ID 1 1 }  { m_axi_gmem_ts_AWLEN SIZE 1 8 }  { m_axi_gmem_ts_AWSIZE BURST 1 3 }  { m_axi_gmem_ts_AWBURST LOCK 1 2 }  { m_axi_gmem_ts_AWLOCK CACHE 1 2 }  { m_axi_gmem_ts_AWCACHE PROT 1 4 }  { m_axi_gmem_ts_AWPROT QOS 1 3 }  { m_axi_gmem_ts_AWQOS REGION 1 4 }  { m_axi_gmem_ts_AWREGION USER 1 4 }  { m_axi_gmem_ts_AWUSER DATA 1 1 }  { m_axi_gmem_ts_WVALID VALID 1 1 }  { m_axi_gmem_ts_WREADY READY 0 1 }  { m_axi_gmem_ts_WDATA FIFONUM 1 64 }  { m_axi_gmem_ts_WSTRB STRB 1 8 }  { m_axi_gmem_ts_WLAST LAST 1 1 }  { m_axi_gmem_ts_WID ID 1 1 }  { m_axi_gmem_ts_WUSER DATA 1 1 }  { m_axi_gmem_ts_ARVALID VALID 1 1 }  { m_axi_gmem_ts_ARREADY READY 0 1 }  { m_axi_gmem_ts_ARADDR ADDR 1 64 }  { m_axi_gmem_ts_ARID ID 1 1 }  { m_axi_gmem_ts_ARLEN SIZE 1 8 }  { m_axi_gmem_ts_ARSIZE BURST 1 3 }  { m_axi_gmem_ts_ARBURST LOCK 1 2 }  { m_axi_gmem_ts_ARLOCK CACHE 1 2 }  { m_axi_gmem_ts_ARCACHE PROT 1 4 }  { m_axi_gmem_ts_ARPROT QOS 1 3 }  { m_axi_gmem_ts_ARQOS REGION 1 4 }  { m_axi_gmem_ts_ARREGION USER 1 4 }  { m_axi_gmem_ts_ARUSER DATA 1 1 }  { m_axi_gmem_ts_RVALID VALID 0 1 }  { m_axi_gmem_ts_RREADY READY 1 1 }  { m_axi_gmem_ts_RDATA FIFONUM 0 64 }  { m_axi_gmem_ts_RLAST LAST 0 1 }  { m_axi_gmem_ts_RID ID 0 1 }  { m_axi_gmem_ts_RUSER DATA 0 1 }  { m_axi_gmem_ts_RRESP RESP 0 2 }  { m_axi_gmem_ts_BVALID VALID 0 1 }  { m_axi_gmem_ts_BREADY READY 1 1 }  { m_axi_gmem_ts_BRESP RESP 0 2 }  { m_axi_gmem_ts_BID ID 0 1 }  { m_axi_gmem_ts_BUSER DATA 0 1 } } }
	gmem_res { m_axi {  { m_axi_gmem_res_AWVALID VALID 1 1 }  { m_axi_gmem_res_AWREADY READY 0 1 }  { m_axi_gmem_res_AWADDR ADDR 1 64 }  { m_axi_gmem_res_AWID ID 1 1 }  { m_axi_gmem_res_AWLEN SIZE 1 8 }  { m_axi_gmem_res_AWSIZE BURST 1 3 }  { m_axi_gmem_res_AWBURST LOCK 1 2 }  { m_axi_gmem_res_AWLOCK CACHE 1 2 }  { m_axi_gmem_res_AWCACHE PROT 1 4 }  { m_axi_gmem_res_AWPROT QOS 1 3 }  { m_axi_gmem_res_AWQOS REGION 1 4 }  { m_axi_gmem_res_AWREGION USER 1 4 }  { m_axi_gmem_res_AWUSER DATA 1 1 }  { m_axi_gmem_res_WVALID VALID 1 1 }  { m_axi_gmem_res_WREADY READY 0 1 }  { m_axi_gmem_res_WDATA FIFONUM 1 128 }  { m_axi_gmem_res_WSTRB STRB 1 16 }  { m_axi_gmem_res_WLAST LAST 1 1 }  { m_axi_gmem_res_WID ID 1 1 }  { m_axi_gmem_res_WUSER DATA 1 1 }  { m_axi_gmem_res_ARVALID VALID 1 1 }  { m_axi_gmem_res_ARREADY READY 0 1 }  { m_axi_gmem_res_ARADDR ADDR 1 64 }  { m_axi_gmem_res_ARID ID 1 1 }  { m_axi_gmem_res_ARLEN SIZE 1 8 }  { m_axi_gmem_res_ARSIZE BURST 1 3 }  { m_axi_gmem_res_ARBURST LOCK 1 2 }  { m_axi_gmem_res_ARLOCK CACHE 1 2 }  { m_axi_gmem_res_ARCACHE PROT 1 4 }  { m_axi_gmem_res_ARPROT QOS 1 3 }  { m_axi_gmem_res_ARQOS REGION 1 4 }  { m_axi_gmem_res_ARREGION USER 1 4 }  { m_axi_gmem_res_ARUSER DATA 1 1 }  { m_axi_gmem_res_RVALID VALID 0 1 }  { m_axi_gmem_res_RREADY READY 1 1 }  { m_axi_gmem_res_RDATA FIFONUM 0 128 }  { m_axi_gmem_res_RLAST LAST 0 1 }  { m_axi_gmem_res_RID ID 0 1 }  { m_axi_gmem_res_RUSER DATA 0 1 }  { m_axi_gmem_res_RRESP RESP 0 2 }  { m_axi_gmem_res_BVALID VALID 0 1 }  { m_axi_gmem_res_BREADY READY 1 1 }  { m_axi_gmem_res_BRESP RESP 0 2 }  { m_axi_gmem_res_BID ID 0 1 }  { m_axi_gmem_res_BUSER DATA 0 1 } } }
	cycle_tx { ap_fifo {  { cycle_tx_dout fifo_data_in 0 64 }  { cycle_tx_empty_n fifo_status 0 1 }  { cycle_tx_read fifo_port_we 1 1 } } }
	cycle_rx { ap_fifo {  { cycle_rx_dout fifo_data_in 0 64 }  { cycle_rx_empty_n fifo_status 0 1 }  { cycle_rx_read fifo_port_we 1 1 } } }
	m_axis_features_V_data_V { axis {  { m_axis_features_TDATA out_data 1 32 } } }
	m_axis_features_V_keep_V { axis {  { m_axis_features_TKEEP out_data 1 4 } } }
	m_axis_features_V_strb_V { axis {  { m_axis_features_TSTRB out_data 1 4 } } }
	m_axis_features_V_last_V { axis {  { m_axis_features_TLAST out_data 1 1 }  { m_axis_features_TVALID out_vld 1 1 }  { m_axis_features_TREADY out_acc 0 1 } } }
	s_axis_score_V_data_V { axis {  { s_axis_score_TDATA in_data 0 64 } } }
	s_axis_score_V_keep_V { axis {  { s_axis_score_TKEEP in_data 0 8 } } }
	s_axis_score_V_strb_V { axis {  { s_axis_score_TSTRB in_data 0 8 } } }
	s_axis_score_V_last_V { axis {  { s_axis_score_TLAST in_data 0 1 }  { s_axis_score_TVALID in_vld 0 1 }  { s_axis_score_TREADY in_acc 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_in {NUM_READ_OUTSTANDING 8 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_ts {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 8 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem_res {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 8 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	cycle_tx { fifo_read 1 no_conditional }
	cycle_rx { fifo_read 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_in 64 }
	{ gmem_ts 1 }
	{ gmem_res 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_in 64 }
	{ gmem_ts 1 }
	{ gmem_res 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
