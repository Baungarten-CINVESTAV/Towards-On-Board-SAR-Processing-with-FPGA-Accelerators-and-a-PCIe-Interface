
set PATH=
call C:/Xilinx_2018/Vivado/2018.3/bin/xelab xil_defaultlib.apatb_Reorder_fft_top glbl -prj Reorder_fft.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "C:/Xilinx_2018/Vivado/2018.3/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s Reorder_fft 
call C:/Xilinx_2018/Vivado/2018.3/bin/xsim --noieeewarnings Reorder_fft -tclbatch Reorder_fft.tcl

