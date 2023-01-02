set moduleName Reorder_fft
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
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
	{ num_word int 32 regular  }
	{ Real_0 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Real_1 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Real_2 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Real_3 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Imag_0 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Imag_1 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Imag_2 float 32 regular {array 4096 { 2 } 1 1 }  }
	{ Imag_3 float 32 regular {array 4096 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_word", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Real_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16380,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 16381,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 16382,"step" : 4}]}]}]} , 
 	{ "Name" : "Real_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 16383,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16380,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 16381,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 16382,"step" : 4}]}]}]} , 
 	{ "Name" : "Imag_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 16383,"step" : 4}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_word sc_in sc_lv 32 signal 0 } 
	{ Real_0_address0 sc_out sc_lv 12 signal 1 } 
	{ Real_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ Real_0_we0 sc_out sc_logic 1 signal 1 } 
	{ Real_0_d0 sc_out sc_lv 32 signal 1 } 
	{ Real_0_q0 sc_in sc_lv 32 signal 1 } 
	{ Real_1_address0 sc_out sc_lv 12 signal 2 } 
	{ Real_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ Real_1_we0 sc_out sc_logic 1 signal 2 } 
	{ Real_1_d0 sc_out sc_lv 32 signal 2 } 
	{ Real_1_q0 sc_in sc_lv 32 signal 2 } 
	{ Real_2_address0 sc_out sc_lv 12 signal 3 } 
	{ Real_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ Real_2_we0 sc_out sc_logic 1 signal 3 } 
	{ Real_2_d0 sc_out sc_lv 32 signal 3 } 
	{ Real_2_q0 sc_in sc_lv 32 signal 3 } 
	{ Real_3_address0 sc_out sc_lv 12 signal 4 } 
	{ Real_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ Real_3_we0 sc_out sc_logic 1 signal 4 } 
	{ Real_3_d0 sc_out sc_lv 32 signal 4 } 
	{ Real_3_q0 sc_in sc_lv 32 signal 4 } 
	{ Imag_0_address0 sc_out sc_lv 12 signal 5 } 
	{ Imag_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ Imag_0_we0 sc_out sc_logic 1 signal 5 } 
	{ Imag_0_d0 sc_out sc_lv 32 signal 5 } 
	{ Imag_0_q0 sc_in sc_lv 32 signal 5 } 
	{ Imag_1_address0 sc_out sc_lv 12 signal 6 } 
	{ Imag_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ Imag_1_we0 sc_out sc_logic 1 signal 6 } 
	{ Imag_1_d0 sc_out sc_lv 32 signal 6 } 
	{ Imag_1_q0 sc_in sc_lv 32 signal 6 } 
	{ Imag_2_address0 sc_out sc_lv 12 signal 7 } 
	{ Imag_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ Imag_2_we0 sc_out sc_logic 1 signal 7 } 
	{ Imag_2_d0 sc_out sc_lv 32 signal 7 } 
	{ Imag_2_q0 sc_in sc_lv 32 signal 7 } 
	{ Imag_3_address0 sc_out sc_lv 12 signal 8 } 
	{ Imag_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ Imag_3_we0 sc_out sc_logic 1 signal 8 } 
	{ Imag_3_d0 sc_out sc_lv 32 signal 8 } 
	{ Imag_3_q0 sc_in sc_lv 32 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_word", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_word", "role": "default" }} , 
 	{ "name": "Real_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Real_0", "role": "address0" }} , 
 	{ "name": "Real_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_0", "role": "ce0" }} , 
 	{ "name": "Real_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_0", "role": "we0" }} , 
 	{ "name": "Real_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_0", "role": "d0" }} , 
 	{ "name": "Real_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_0", "role": "q0" }} , 
 	{ "name": "Real_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Real_1", "role": "address0" }} , 
 	{ "name": "Real_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_1", "role": "ce0" }} , 
 	{ "name": "Real_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_1", "role": "we0" }} , 
 	{ "name": "Real_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_1", "role": "d0" }} , 
 	{ "name": "Real_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_1", "role": "q0" }} , 
 	{ "name": "Real_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Real_2", "role": "address0" }} , 
 	{ "name": "Real_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_2", "role": "ce0" }} , 
 	{ "name": "Real_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_2", "role": "we0" }} , 
 	{ "name": "Real_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_2", "role": "d0" }} , 
 	{ "name": "Real_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_2", "role": "q0" }} , 
 	{ "name": "Real_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Real_3", "role": "address0" }} , 
 	{ "name": "Real_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_3", "role": "ce0" }} , 
 	{ "name": "Real_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_3", "role": "we0" }} , 
 	{ "name": "Real_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_3", "role": "d0" }} , 
 	{ "name": "Real_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_3", "role": "q0" }} , 
 	{ "name": "Imag_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Imag_0", "role": "address0" }} , 
 	{ "name": "Imag_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_0", "role": "ce0" }} , 
 	{ "name": "Imag_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_0", "role": "we0" }} , 
 	{ "name": "Imag_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_0", "role": "d0" }} , 
 	{ "name": "Imag_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_0", "role": "q0" }} , 
 	{ "name": "Imag_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Imag_1", "role": "address0" }} , 
 	{ "name": "Imag_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_1", "role": "ce0" }} , 
 	{ "name": "Imag_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_1", "role": "we0" }} , 
 	{ "name": "Imag_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_1", "role": "d0" }} , 
 	{ "name": "Imag_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_1", "role": "q0" }} , 
 	{ "name": "Imag_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Imag_2", "role": "address0" }} , 
 	{ "name": "Imag_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_2", "role": "ce0" }} , 
 	{ "name": "Imag_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_2", "role": "we0" }} , 
 	{ "name": "Imag_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_2", "role": "d0" }} , 
 	{ "name": "Imag_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_2", "role": "q0" }} , 
 	{ "name": "Imag_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "Imag_3", "role": "address0" }} , 
 	{ "name": "Imag_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_3", "role": "ce0" }} , 
 	{ "name": "Imag_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag_3", "role": "we0" }} , 
 	{ "name": "Imag_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_3", "role": "d0" }} , 
 	{ "name": "Imag_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "Reorder_fft",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_word", "Type" : "None", "Direction" : "I"},
			{"Name" : "Real_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Real_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lut_reorder_I_1024", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_J_1024", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_I_4096", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_J_4096", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_I_16384", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lut_reorder_J_16384", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_I_1024_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_J_1024_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_I_4096_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_J_4096_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_I_16384_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lut_reorder_J_16384_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U1", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U2", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U3", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U4", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U5", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U6", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U7", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fadd_hbi_U8", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4ibs_U9", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4ibs_U10", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4ibs_U11", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4ibs_U12", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Reorder_fft {
		num_word {Type I LastRead 0 FirstWrite -1}
		Real_0 {Type IO LastRead 7 FirstWrite 8}
		Real_1 {Type IO LastRead 7 FirstWrite 8}
		Real_2 {Type IO LastRead 7 FirstWrite 8}
		Real_3 {Type IO LastRead 7 FirstWrite 8}
		Imag_0 {Type IO LastRead 7 FirstWrite 8}
		Imag_1 {Type IO LastRead 7 FirstWrite 8}
		Imag_2 {Type IO LastRead 7 FirstWrite 8}
		Imag_3 {Type IO LastRead 7 FirstWrite 8}
		lut_reorder_I_1024 {Type I LastRead -1 FirstWrite -1}
		lut_reorder_J_1024 {Type I LastRead -1 FirstWrite -1}
		lut_reorder_I_4096 {Type I LastRead -1 FirstWrite -1}
		lut_reorder_J_4096 {Type I LastRead -1 FirstWrite -1}
		lut_reorder_I_16384 {Type I LastRead -1 FirstWrite -1}
		lut_reorder_J_16384 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	num_word { ap_none {  { num_word in_data 0 32 } } }
	Real_0 { ap_memory {  { Real_0_address0 mem_address 1 12 }  { Real_0_ce0 mem_ce 1 1 }  { Real_0_we0 mem_we 1 1 }  { Real_0_d0 mem_din 1 32 }  { Real_0_q0 mem_dout 0 32 } } }
	Real_1 { ap_memory {  { Real_1_address0 mem_address 1 12 }  { Real_1_ce0 mem_ce 1 1 }  { Real_1_we0 mem_we 1 1 }  { Real_1_d0 mem_din 1 32 }  { Real_1_q0 mem_dout 0 32 } } }
	Real_2 { ap_memory {  { Real_2_address0 mem_address 1 12 }  { Real_2_ce0 mem_ce 1 1 }  { Real_2_we0 mem_we 1 1 }  { Real_2_d0 mem_din 1 32 }  { Real_2_q0 mem_dout 0 32 } } }
	Real_3 { ap_memory {  { Real_3_address0 mem_address 1 12 }  { Real_3_ce0 mem_ce 1 1 }  { Real_3_we0 mem_we 1 1 }  { Real_3_d0 mem_din 1 32 }  { Real_3_q0 mem_dout 0 32 } } }
	Imag_0 { ap_memory {  { Imag_0_address0 mem_address 1 12 }  { Imag_0_ce0 mem_ce 1 1 }  { Imag_0_we0 mem_we 1 1 }  { Imag_0_d0 mem_din 1 32 }  { Imag_0_q0 mem_dout 0 32 } } }
	Imag_1 { ap_memory {  { Imag_1_address0 mem_address 1 12 }  { Imag_1_ce0 mem_ce 1 1 }  { Imag_1_we0 mem_we 1 1 }  { Imag_1_d0 mem_din 1 32 }  { Imag_1_q0 mem_dout 0 32 } } }
	Imag_2 { ap_memory {  { Imag_2_address0 mem_address 1 12 }  { Imag_2_ce0 mem_ce 1 1 }  { Imag_2_we0 mem_we 1 1 }  { Imag_2_d0 mem_din 1 32 }  { Imag_2_q0 mem_dout 0 32 } } }
	Imag_3 { ap_memory {  { Imag_3_address0 mem_address 1 12 }  { Imag_3_ce0 mem_ce 1 1 }  { Imag_3_we0 mem_we 1 1 }  { Imag_3_d0 mem_din 1 32 }  { Imag_3_q0 mem_dout 0 32 } } }
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
