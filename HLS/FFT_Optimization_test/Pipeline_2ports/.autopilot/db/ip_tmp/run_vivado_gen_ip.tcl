create_project prj -part xc7z010-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/wow_r/OneDrive/Escritorio/Maestria/HLS/FFT_test_3/Pipeline_2ports/syn/verilog/Reorder_fft_ap_fadd_3_full_dsp_32_ip.tcl"
if {[regexp -nocase {2015\.3.*} $vivado_ver match] || [regexp -nocase {2016\.1.*} $vivado_ver match]} {
    extract_files -base_dir "./prjsrcs/sources_1/ip" [get_files -all -of [get_ips Reorder_fft_ap_fadd_3_full_dsp_32]]
}
