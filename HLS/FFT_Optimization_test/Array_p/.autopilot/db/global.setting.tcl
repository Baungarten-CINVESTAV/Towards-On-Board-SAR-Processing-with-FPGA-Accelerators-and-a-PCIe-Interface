
set TopModule "Reorder_fft"
set ClockPeriod 10
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
set ResetLevelFlag 0
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
set TargetInfo xc7z010:-clg400:-1
set SourceFiles {sc {} c ../Reorder_FFT.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/wow_r/OneDrive/Escritorio/Maestria/HLS/FFT_test_3/Array_p/Array_p.directive
set TBFiles {verilog {../../FFT_test_1/Imag.txt ../../FFT_test_1/Imag_bininv.txt ../../FFT_test_1/Imag_ordered.txt ../../FFT_test_1/Reales.txt ../../FFT_test_1/Reales_bininv.txt ../../FFT_test_1/Reales_ordered.txt ../Reorder_FFT_test.cpp} bc {../../FFT_test_1/Imag.txt ../../FFT_test_1/Imag_bininv.txt ../../FFT_test_1/Imag_ordered.txt ../../FFT_test_1/Reales.txt ../../FFT_test_1/Reales_bininv.txt ../../FFT_test_1/Reales_ordered.txt ../Reorder_FFT_test.cpp} vhdl {../../FFT_test_1/Imag.txt ../../FFT_test_1/Imag_bininv.txt ../../FFT_test_1/Imag_ordered.txt ../../FFT_test_1/Reales.txt ../../FFT_test_1/Reales_bininv.txt ../../FFT_test_1/Reales_ordered.txt ../Reorder_FFT_test.cpp} sc {../../FFT_test_1/Imag.txt ../../FFT_test_1/Imag_bininv.txt ../../FFT_test_1/Imag_ordered.txt ../../FFT_test_1/Reales.txt ../../FFT_test_1/Reales_bininv.txt ../../FFT_test_1/Reales_ordered.txt ../Reorder_FFT_test.cpp} cas {../../FFT_test_1/Imag.txt ../../FFT_test_1/Imag_bininv.txt ../../FFT_test_1/Imag_ordered.txt ../../FFT_test_1/Reales.txt ../../FFT_test_1/Reales_bininv.txt ../../FFT_test_1/Reales_ordered.txt ../Reorder_FFT_test.cpp} c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile Array_p.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set HPFPO 0
