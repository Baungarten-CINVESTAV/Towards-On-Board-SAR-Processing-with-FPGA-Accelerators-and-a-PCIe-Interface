# ==============================================================
# File generated on Sun Mar 28 22:02:57 -0600 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../Imag.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Imag_input_1_16384_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Imag_input_1_4096_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Imag_ordered.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Imag_output_1_16384_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Imag_output_1_4096_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales_input_1_16384_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales_input_1_4096_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales_ordered.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales_output_1_16384_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reales_output_1_4096_2a.txt -cflags { -Wno-unknown-pragmas}
add_files -tb ../Reorder_FFT_test.cpp -cflags { -Wno-unknown-pragmas}
add_files FFR_Reorder_x_num/FFT_reorder.h
add_files FFR_Reorder_x_num/Reorder_FFT.cpp
set_part xc7z045ffg900-2
create_clock -name default -period 5
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_sdx -optimization_level=none
config_sdx -target=none
config_bind -effort=medium
config_schedule -effort=medium
config_schedule -relax_ii_for_timing=0
