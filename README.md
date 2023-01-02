# Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface

## Overview
"Towards On-Board SAR Processing with  FPGA Accelerators and a PCIe-Interface" paper describe point by point the implemented methodology to have a fast and efficient Field Programmable Gate Array (FPGA) implementation with a PCIe interface. Two Hardware (HW) accelerators, FFT data re-ordering, and matrix transpose are used to exemplify and clarify the usage of the presented methodology.

The Schematic of the system that performs data re-ordering of 1024, 4096, or 16384 points is given below, in which each IP can be interchangeable with others with different performance or well increase or decrease the number of IPs

![image](https://user-images.githubusercontent.com/101527680/210269479-31089d99-4115-44f5-8d52-494a184933e5.png)

## Prerequisites:
- Windows/Linux operating system
- [RIFFA](https://sites.google.com/a/eng.ucsd.edu/matt-jacobsen/riffa/riffa_2_0/setup-guide)
- Vivado High-Level Synthesis
- Vivado Design Suite

## Content
The repository consists of three main folders:
### HLS:
This folder contains the HLS files of the optimization test comparison and the FFT re-ordering implementation for multiple sizes.
- [FFT_Optimization_test](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/tree/main/HLS/FFT_Optimization_test) has the scripts and the reports of the different HLS optimizations.
  - [Reorder_FFT.cpp](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/blob/main/HLS/FFT_Optimization_test/Reorder_FFT.cpp) contains the C code used to develop the VEC-FTT re-order with the diference optimizations, e.g. ```#pragma HLS PIPELINE```.
  - [Reorder_FFT_test.cpp](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/blob/main/HLS/FFT_Optimization_test/Reorder_FFT_test.cpp) contains the validation code of the implemented IP. It consists in comparing the results retrieved by the IP with a gold bench variable, by in-stance, the VEC-FFT output. A tolerance of 1e-5 is set, meaning a difference between both attained results of ± 0.00001.

- [FFT_Reorder_x_num](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/tree/main/HLS/FFT_Reorder_x_num) has the scripts and the reports of the FFT re-ordering function for different sizes, using best attained optimization. These results are presesnted in Table 6, inside the manuscript.
  - [Reorder_FFT.cpp](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/blob/main/HLS/FFT_Reorder_x_num/Reorder_FFT.cpp) contains the C code used to develop the VEC-FTT re-order with the diference sizes, e.g. 1024, 4096, and 16384, usign array partition optimization (```#pragma HLS array_partition variable=Real cyclic factor=4```).
  - [Reorder_FFT_test.cpp](https://github.com/Baungarten-CINVESTAV/Towards-On-Board-SAR-Processing-with-FPGA-Accelerators-and-a-PCIe-Interface/blob/main/HLS/FFT_Reorder_x_num/Reorder_FFT_test.cpp) contains the validation code of the implemented IP. It consists in comparing the results retrieved by the IP with a gold bench variable, by in-stance, the VEC-FFT output. A tolerance of 1e-5 is set, meaning a difference between both attained results of ± 0.00001.
  
**It is recommended to use Vivado HL to have a better visualization of the data.**
