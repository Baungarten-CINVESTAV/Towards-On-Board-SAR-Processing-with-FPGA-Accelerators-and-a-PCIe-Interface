############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FFT_Optimization_test
set_top Reorder_fft
add_files FFT_reorder.h
add_files FFT_Optimization_test/Reorder_FFT.cpp
add_files -tb FFT_Optimization_test/Reorder_FFT_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Reales_ordered.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Reales_bininv.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Reales.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Imag_ordered.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Imag_bininv.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Imag.txt -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "without_optimization"
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./FFT_Optimization_test/without_optimization/directives.tcl"
csim_design -clean -O
csynth_design
cosim_design -trace_level all
export_design -flow impl -rtl verilog -format ip_catalog
