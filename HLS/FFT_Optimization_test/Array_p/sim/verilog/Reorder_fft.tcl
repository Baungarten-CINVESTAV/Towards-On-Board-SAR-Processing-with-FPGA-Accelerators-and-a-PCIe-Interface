
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set Imag_group [add_wave_group Imag(memory) -into $cinoutgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_3_q0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_3_d0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_3_we0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_3_ce0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_3_address0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_2_q0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_2_d0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_2_we0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_2_ce0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_2_address0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_1_q0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_1_d0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_1_we0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_1_ce0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_1_address0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_0_q0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_0_d0 -into $Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_0_we0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_0_ce0 -into $Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Imag_0_address0 -into $Imag_group -radix hex
set Real_group [add_wave_group Real(memory) -into $cinoutgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_3_q0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_3_d0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_3_we0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_3_ce0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_3_address0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_2_q0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_2_d0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_2_we0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_2_ce0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_2_address0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_1_q0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_1_d0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_1_we0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_1_ce0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_1_address0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_0_q0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_0_d0 -into $Real_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_0_we0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_0_ce0 -into $Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/Real_0_address0 -into $Real_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(axi_slave) -into $coutputgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/interrupt -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_BRESP -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_BREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_BVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_RRESP -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_RDATA -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_RREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_RVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_ARREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_ARVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_ARADDR -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_WSTRB -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_WDATA -into $return_group -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_WREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_WVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_AWREADY -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_AWVALID -into $return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/s_axi_AXILiteS_AWADDR -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_done -into $blocksiggroup
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_idle -into $blocksiggroup
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_ready -into $blocksiggroup
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_Reorder_fft_top/AESL_inst_Reorder_fft/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_Reorder_fft_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_Reorder_fft_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Reorder_fft_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Real_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Real_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Real_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Real_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Imag_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Imag_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Imag_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_Reorder_fft_top/LENGTH_Imag_3 -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_Imag_group [add_wave_group Imag(memory) -into $tbcinoutgroup]
add_wave /apatb_Reorder_fft_top/Imag_3_q0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_3_d0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_3_we0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_3_ce0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_3_address0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_2_q0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_2_d0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_2_we0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_2_ce0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_2_address0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_1_q0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_1_d0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_1_we0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_1_ce0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_1_address0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_0_q0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_0_d0 -into $tb_Imag_group -radix hex
add_wave /apatb_Reorder_fft_top/Imag_0_we0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_0_ce0 -into $tb_Imag_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Imag_0_address0 -into $tb_Imag_group -radix hex
set tb_Real_group [add_wave_group Real(memory) -into $tbcinoutgroup]
add_wave /apatb_Reorder_fft_top/Real_3_q0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_3_d0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_3_we0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_3_ce0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_3_address0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_2_q0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_2_d0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_2_we0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_2_ce0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_2_address0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_1_q0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_1_d0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_1_we0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_1_ce0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_1_address0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_0_q0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_0_d0 -into $tb_Real_group -radix hex
add_wave /apatb_Reorder_fft_top/Real_0_we0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_0_ce0 -into $tb_Real_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/Real_0_address0 -into $tb_Real_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(axi_slave) -into $tbcoutputgroup]
add_wave /apatb_Reorder_fft_top/AXILiteS_INTERRUPT -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_BRESP -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_BREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_BVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_RRESP -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_RDATA -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_RREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_RVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_ARREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_ARVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_ARADDR -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_WSTRB -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_WDATA -into $tb_return_group -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_WREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_WVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_AWREADY -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_AWVALID -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_Reorder_fft_top/AXILiteS_AWADDR -into $tb_return_group -radix hex
save_wave_config Reorder_fft.wcfg
run all
quit

