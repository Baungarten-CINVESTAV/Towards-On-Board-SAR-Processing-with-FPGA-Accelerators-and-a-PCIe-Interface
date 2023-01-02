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
	{ Real_r float 32 regular {array 16384 { 2 } 1 1 }  }
	{ Imag float 32 regular {array 16384 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_word", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "num_word","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "Real_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Real","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16383,"step" : 1}]}]}]} , 
 	{ "Name" : "Imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "Imag","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 16383,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_word sc_in sc_lv 32 signal 0 } 
	{ Real_r_address0 sc_out sc_lv 14 signal 1 } 
	{ Real_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ Real_r_we0 sc_out sc_logic 1 signal 1 } 
	{ Real_r_d0 sc_out sc_lv 32 signal 1 } 
	{ Real_r_q0 sc_in sc_lv 32 signal 1 } 
	{ Imag_address0 sc_out sc_lv 14 signal 2 } 
	{ Imag_ce0 sc_out sc_logic 1 signal 2 } 
	{ Imag_we0 sc_out sc_logic 1 signal 2 } 
	{ Imag_d0 sc_out sc_lv 32 signal 2 } 
	{ Imag_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_word", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_word", "role": "default" }} , 
 	{ "name": "Real_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Real_r", "role": "address0" }} , 
 	{ "name": "Real_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_r", "role": "ce0" }} , 
 	{ "name": "Real_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Real_r", "role": "we0" }} , 
 	{ "name": "Real_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_r", "role": "d0" }} , 
 	{ "name": "Real_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Real_r", "role": "q0" }} , 
 	{ "name": "Imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Imag", "role": "address0" }} , 
 	{ "name": "Imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag", "role": "ce0" }} , 
 	{ "name": "Imag_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Imag", "role": "we0" }} , 
 	{ "name": "Imag_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag", "role": "d0" }} , 
 	{ "name": "Imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Imag", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
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
			{"Name" : "Real_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "Imag", "Type" : "Memory", "Direction" : "IO"},
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
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fmul_ibs_U3", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fmul_ibs_U4", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fmul_ibs_U5", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_fmul_ibs_U6", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4jbC_U7", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4jbC_U8", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Reorder_fft_mux_4jbC_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Reorder_fft {
		num_word {Type I LastRead 0 FirstWrite -1}
		Real_r {Type IO LastRead 7 FirstWrite 8}
		Imag {Type IO LastRead 7 FirstWrite 8}
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
]}

set Spec2ImplPortList { 
	num_word { ap_none {  { num_word in_data 0 32 } } }
	Real_r { ap_memory {  { Real_r_address0 mem_address 1 14 }  { Real_r_ce0 mem_ce 1 1 }  { Real_r_we0 mem_we 1 1 }  { Real_r_d0 mem_din 1 32 }  { Real_r_q0 mem_dout 0 32 } } }
	Imag { ap_memory {  { Imag_address0 mem_address 1 14 }  { Imag_ce0 mem_ce 1 1 }  { Imag_we0 mem_we 1 1 }  { Imag_d0 mem_din 1 32 }  { Imag_q0 mem_dout 0 32 } } }
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
