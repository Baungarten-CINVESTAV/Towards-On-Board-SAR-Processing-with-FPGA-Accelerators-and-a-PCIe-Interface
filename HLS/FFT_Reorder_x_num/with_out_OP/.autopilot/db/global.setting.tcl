
set TopModule "Reorder_fft"
set ClockPeriod 5
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 1
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z045:ffg900:-2
set SourceFiles {sc {} c ../Reorder_FFT.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/EMILIO/Desktop/HLS/FFR_Reorder_x_num/with_out_OP/with_out_OP.directive
set TBFiles {verilog {../Imag.txt ../Imag_input_1_16384_2a.txt ../Imag_input_1_4096_2a.txt ../Imag_ordered.txt ../Imag_output_1_16384_2a.txt ../Imag_output_1_4096_2a.txt ../Reales.txt ../Reales_input_1_16384_2a.txt ../Reales_input_1_4096_2a.txt ../Reales_ordered.txt ../Reales_output_1_16384_2a.txt ../Reales_output_1_4096_2a.txt ../Reorder_FFT_test.cpp} bc {../Imag.txt ../Imag_input_1_16384_2a.txt ../Imag_input_1_4096_2a.txt ../Imag_ordered.txt ../Imag_output_1_16384_2a.txt ../Imag_output_1_4096_2a.txt ../Reales.txt ../Reales_input_1_16384_2a.txt ../Reales_input_1_4096_2a.txt ../Reales_ordered.txt ../Reales_output_1_16384_2a.txt ../Reales_output_1_4096_2a.txt ../Reorder_FFT_test.cpp} vhdl {../Imag.txt ../Imag_input_1_16384_2a.txt ../Imag_input_1_4096_2a.txt ../Imag_ordered.txt ../Imag_output_1_16384_2a.txt ../Imag_output_1_4096_2a.txt ../Reales.txt ../Reales_input_1_16384_2a.txt ../Reales_input_1_4096_2a.txt ../Reales_ordered.txt ../Reales_output_1_16384_2a.txt ../Reales_output_1_4096_2a.txt ../Reorder_FFT_test.cpp} sc {../Imag.txt ../Imag_input_1_16384_2a.txt ../Imag_input_1_4096_2a.txt ../Imag_ordered.txt ../Imag_output_1_16384_2a.txt ../Imag_output_1_4096_2a.txt ../Reales.txt ../Reales_input_1_16384_2a.txt ../Reales_input_1_4096_2a.txt ../Reales_ordered.txt ../Reales_output_1_16384_2a.txt ../Reales_output_1_4096_2a.txt ../Reorder_FFT_test.cpp} cas {../Imag.txt ../Imag_input_1_16384_2a.txt ../Imag_input_1_4096_2a.txt ../Imag_ordered.txt ../Imag_output_1_16384_2a.txt ../Imag_output_1_4096_2a.txt ../Reales.txt ../Reales_input_1_16384_2a.txt ../Reales_input_1_4096_2a.txt ../Reales_ordered.txt ../Reales_output_1_16384_2a.txt ../Reales_output_1_4096_2a.txt ../Reorder_FFT_test.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile with_out_OP.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
