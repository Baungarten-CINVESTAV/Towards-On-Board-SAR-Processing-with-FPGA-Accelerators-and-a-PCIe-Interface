############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FFT_Reorder_x_num
set_top Reorder_fft
add_files FFT_reorder.h
add_files FFT_Reorder_x_num/Reorder_FFT.cpp
add_files -tb FFT_Reorder_x_num/Reorder_FFT_test.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales_output_1_4096_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales_output_1_16384_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales_ordered.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales_input_1_4096_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales_input_1_16384_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Reales.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag_output_1_4096_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag_output_1_16384_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag_ordered.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag_input_1_4096_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag_input_1_16384_2a.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FFT_Reorder_x_num/Imag.txt -cflags "-Wno-unknown-pragmas"
open_solution "With_array_P"
set_part {xc7z045ffg900-2}
create_clock -period 5 -name default
config_compile -no_signed_zeros=0 -unsafe_math_optimizations=0
config_sdx -optimization_level none -target none
config_schedule -effort medium -relax_ii_for_timing=0
config_bind -effort medium
config_export -format ip_catalog -rtl verilog
set_clock_uncertainty 12.5%
#source "./FFT_Reorder_x_num/With_array_P/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
