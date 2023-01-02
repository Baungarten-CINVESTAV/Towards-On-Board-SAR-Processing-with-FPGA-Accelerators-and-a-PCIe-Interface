set moduleName Reorder_fft
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Reorder_fft}
set C_modelType { void 0 }
set C_modelArgList {
	{ Real_0 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Real_1 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Real_2 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Real_3 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Imag_0 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Imag_1 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Imag_2 float 32 regular {array 256 { 2 } 1 1 }  }
	{ Imag_3 float 32 regular {array 256 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Real_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1020,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1021,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 1022,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 1023,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1020,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1021,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 1022,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 1023,"step" : 4}]}]}]} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ Real_0_address0 sc_out sc_lv 8 signal 0 } 
	{ Real_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ Real_0_we0 sc_out sc_logic 1 signal 0 } 
	{ Real_0_d0 sc_out sc_lv 32 signal 0 } 
	{ Real_0_q0 sc_in sc_lv 32 signal 0 } 
	{ Real_1_address0 sc_out sc_lv 8 signal 1 } 
	{ Real_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ Real_1_we0 sc_out sc_logic 1 signal 1 } 
	{ Real_1_d0 sc_out sc_lv 32 signal 1 } 
	{ Real_1_q0 sc_in sc_lv 32 signal 1 } 
	{ Real_2_address0 sc_out sc_lv 8 signal 2 } 
	{ Real_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ Real_2_we0 sc_out sc_logic 1 signal 2 } 
	{ Real_2_d0 sc_out sc_lv 32 signal 2 } 
	{ Real_2_q0 sc_in sc_lv 32 signal 2 } 
	{ Real_3_address0 sc_out sc_lv 8 signal 3 } 
	{ Real_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ Real_3_we0 sc_out sc_logic 1 signal 3 } 
	{ Real_3_d0 sc_out sc_lv 32 signal 3 } 
	{ Real_3_q0 sc_in sc_lv 32 signal 3 } 
	{ Imag_0_address0 sc_out sc_lv 8 signal 4 } 
	{ Imag_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ Imag_0_we0 sc_out sc_logic 1 signal 4 } 
	{ Imag_0_d0 sc_out sc_lv 32 signal 4 } 
	{ Imag_0_q0 sc_in sc_lv 32 signal 4 } 
	{ Imag_1_address0 sc_out sc_lv 8 signal 5 } 
	{ Imag_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ Imag_1_we0 sc_out sc_logic 1 signal 5 } 
	{ Imag_1_d0 sc_out sc_lv 32 signal 5 } 
	{ Imag_1_q0 sc_in sc_lv 32 signal 5 } 
	{ Imag_2_address0 sc_out sc_lv 8 signal 6 } 
	{ Imag_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ Imag_2_we0 sc_out sc_logic 1 signal 6 } 
	{ Imag_2_d0 sc_out sc_lv 32 signal 6 } 
	{ Imag_2_q0 sc_in sc_lv 32 signal 6 } 
	{ Imag_3_address0 sc_out sc_lv 8 signal 7 } 
	{ Imag_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ Imag_3_we0 sc_out sc_logic 1 signal 7 } 
	{ Imag_3_d0 sc_out sc_lv 32 signal 7 } 
	{ Imag_3_q0 sc_in sc_lv 32 signal 7 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"Reorder_fft","role":"start","value":"0","valid_bit":"0"},{"name":"Reorder_fft","role":"continue","value":"0","valid_bit":"4"},{"name":"Reorder_fft","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"Reorder_fft","role":"start","value":"0","valid_bit":"0"},{"name":"Reorder_fft","role":"done","value":"0","valid_bit":"1"},{"name":"Reorder_fft","role":"idle","value":"0","valid_bit":"2"},{"name":"Reorder_fft","role":"ready","value":"0","valid_bit":"3"},{"name":"Reorder_fft","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "Real_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Real_0", "role": "address0" }} , 
 	{ "name": "Real_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_0", "role": "ce0" }} , 
 	{ "name": "Real_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_0", "role": "we0" }} , 
 	{ "name": "Real_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_0", "role": "d0" }} , 
 	{ "name": "Real_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_0", "role": "q0" }} , 
 	{ "name": "Real_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Real_1", "role": "address0" }} , 
 	{ "name": "Real_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_1", "role": "ce0" }} , 
 	{ "name": "Real_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_1", "role": "we0" }} , 
 	{ "name": "Real_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_1", "role": "d0" }} , 
 	{ "name": "Real_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_1", "role": "q0" }} , 
 	{ "name": "Real_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Real_2", "role": "address0" }} , 
 	{ "name": "Real_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_2", "role": "ce0" }} , 
 	{ "name": "Real_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_2", "role": "we0" }} , 
 	{ "name": "Real_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_2", "role": "d0" }} , 
 	{ "name": "Real_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_2", "role": "q0" }} , 
 	{ "name": "Real_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Real_3", "role": "address0" }} , 
 	{ "name": "Real_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_3", "role": "ce0" }} , 
 	{ "name": "Real_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_3", "role": "we0" }} , 
 	{ "name": "Real_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_3", "role": "d0" }} , 
 	{ "name": "Real_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_3", "role": "q0" }} , 
 	{ "name": "Imag_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Imag_0", "role": "address0" }} , 
 	{ "name": "Imag_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_0", "role": "ce0" }} , 
 	{ "name": "Imag_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_0", "role": "we0" }} , 
 	{ "name": "Imag_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_0", "role": "d0" }} , 
 	{ "name": "Imag_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_0", "role": "q0" }} , 
 	{ "name": "Imag_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Imag_1", "role": "address0" }} , 
 	{ "name": "Imag_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_1", "role": "ce0" }} , 
 	{ "name": "Imag_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_1", "role": "we0" }} , 
 	{ "name": "Imag_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_1", "role": "d0" }} , 
 	{ "name": "Imag_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_1", "role": "q0" }} , 
 	{ "name": "Imag_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Imag_2", "role": "address0" }} , 
 	{ "name": "Imag_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_2", "role": "ce0" }} , 
 	{ "name": "Imag_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_2", "role": "we0" }} , 
 	{ "name": "Imag_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_2", "role": "d0" }} , 
 	{ "name": "Imag_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_2", "role": "q0" }} , 
 	{ "name": "Imag_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Imag_3", "role": "address0" }} , 
 	{ "name": "Imag_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_3", "role": "ce0" }} , 
 	{ "name": "Imag_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_3", "role": "we0" }} , 
 	{ "name": "Imag_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_3", "role": "d0" }} , 
 	{ "name": "Imag_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "Reorder_fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2703", "EstimateLatencyMax" : "2703",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "Real_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lut_reorder_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_J", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_I_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_J_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U1", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U2", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U3", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U4", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U5", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_dEe_U6", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4eOg_U7", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4eOg_U8", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4eOg_U9", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4eOg_U10", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Reorder_fft {
		Real_0 {Type IO LastRead 5 FirstWrite 6}
		Real_1 {Type IO LastRead 5 FirstWrite 6}
		Real_2 {Type IO LastRead 5 FirstWrite 6}
		Real_3 {Type IO LastRead 5 FirstWrite 6}
		Imag_0 {Type IO LastRead 5 FirstWrite 6}
		Imag_1 {Type IO LastRead 5 FirstWrite 6}
		Imag_2 {Type IO LastRead 5 FirstWrite 6}
		Imag_3 {Type IO LastRead 5 FirstWrite 6}
		lut_reorder_I {Type I LastRead -1 FirstWrite -1}
		lut_reorder_J {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2703", "Max" : "2703"}
	, {"Name" : "Interval", "Min" : "2704", "Max" : "2704"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	Real_0 { ap_memory {  { Real_0_address0 mem_address 1 8 }  { Real_0_ce0 mem_ce 1 1 }  { Real_0_we0 mem_we 1 1 }  { Real_0_d0 mem_din 1 32 }  { Real_0_q0 mem_dout 0 32 } } }
	Real_1 { ap_memory {  { Real_1_address0 mem_address 1 8 }  { Real_1_ce0 mem_ce 1 1 }  { Real_1_we0 mem_we 1 1 }  { Real_1_d0 mem_din 1 32 }  { Real_1_q0 mem_dout 0 32 } } }
	Real_2 { ap_memory {  { Real_2_address0 mem_address 1 8 }  { Real_2_ce0 mem_ce 1 1 }  { Real_2_we0 mem_we 1 1 }  { Real_2_d0 mem_din 1 32 }  { Real_2_q0 mem_dout 0 32 } } }
	Real_3 { ap_memory {  { Real_3_address0 mem_address 1 8 }  { Real_3_ce0 mem_ce 1 1 }  { Real_3_we0 mem_we 1 1 }  { Real_3_d0 mem_din 1 32 }  { Real_3_q0 mem_dout 0 32 } } }
	Imag_0 { ap_memory {  { Imag_0_address0 mem_address 1 8 }  { Imag_0_ce0 mem_ce 1 1 }  { Imag_0_we0 mem_we 1 1 }  { Imag_0_d0 mem_din 1 32 }  { Imag_0_q0 mem_dout 0 32 } } }
	Imag_1 { ap_memory {  { Imag_1_address0 mem_address 1 8 }  { Imag_1_ce0 mem_ce 1 1 }  { Imag_1_we0 mem_we 1 1 }  { Imag_1_d0 mem_din 1 32 }  { Imag_1_q0 mem_dout 0 32 } } }
	Imag_2 { ap_memory {  { Imag_2_address0 mem_address 1 8 }  { Imag_2_ce0 mem_ce 1 1 }  { Imag_2_we0 mem_we 1 1 }  { Imag_2_d0 mem_din 1 32 }  { Imag_2_q0 mem_dout 0 32 } } }
	Imag_3 { ap_memory {  { Imag_3_address0 mem_address 1 8 }  { Imag_3_ce0 mem_ce 1 1 }  { Imag_3_we0 mem_we 1 1 }  { Imag_3_d0 mem_din 1 32 }  { Imag_3_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

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
