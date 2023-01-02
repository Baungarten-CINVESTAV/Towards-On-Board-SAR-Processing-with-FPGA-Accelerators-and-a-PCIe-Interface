// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1.3
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Reorder_fft_HH_
#define _Reorder_fft_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Reorder_fft_fadd_dEe.h"
#include "Reorder_fft_fmul_eOg.h"
#include "Reorder_fft_mux_4fYi.h"
#include "Reorder_fft_lut_rbkb.h"
#include "Reorder_fft_lut_rcud.h"
#include "Reorder_fft_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 4,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct Reorder_fft : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_lv<32> > Real_r_Addr_A;
    sc_out< sc_logic > Real_r_EN_A;
    sc_out< sc_lv<4> > Real_r_WEN_A;
    sc_out< sc_lv<32> > Real_r_Din_A;
    sc_in< sc_lv<32> > Real_r_Dout_A;
    sc_out< sc_logic > Real_r_Clk_A;
    sc_out< sc_logic > Real_r_Rst_A;
    sc_out< sc_lv<32> > Imag_Addr_A;
    sc_out< sc_logic > Imag_EN_A;
    sc_out< sc_lv<4> > Imag_WEN_A;
    sc_out< sc_lv<32> > Imag_Din_A;
    sc_in< sc_lv<32> > Imag_Dout_A;
    sc_out< sc_logic > Imag_Clk_A;
    sc_out< sc_logic > Imag_Rst_A;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const2;


    // Module declarations
    Reorder_fft(sc_module_name name);
    SC_HAS_PROCESS(Reorder_fft);

    ~Reorder_fft();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Reorder_fft_lut_rbkb* lut_reorder_I_U;
    Reorder_fft_lut_rcud* lut_reorder_J_U;
    Reorder_fft_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* Reorder_fft_AXILiteS_s_axi_U;
    Reorder_fft_fadd_dEe<1,5,32,32,32>* Reorder_fft_fadd_dEe_U1;
    Reorder_fft_fadd_dEe<1,5,32,32,32>* Reorder_fft_fadd_dEe_U2;
    Reorder_fft_fadd_dEe<1,5,32,32,32>* Reorder_fft_fadd_dEe_U3;
    Reorder_fft_fadd_dEe<1,5,32,32,32>* Reorder_fft_fadd_dEe_U4;
    Reorder_fft_fmul_eOg<1,4,32,32,32>* Reorder_fft_fmul_eOg_U5;
    Reorder_fft_fmul_eOg<1,4,32,32,32>* Reorder_fft_fmul_eOg_U6;
    Reorder_fft_fmul_eOg<1,4,32,32,32>* Reorder_fft_fmul_eOg_U7;
    Reorder_fft_fmul_eOg<1,4,32,32,32>* Reorder_fft_fmul_eOg_U8;
    Reorder_fft_mux_4fYi<1,1,32,32,32,32,2,32>* Reorder_fft_mux_4fYi_U9;
    Reorder_fft_mux_4fYi<1,1,32,32,32,32,2,32>* Reorder_fft_mux_4fYi_U10;
    Reorder_fft_mux_4fYi<1,1,32,32,32,32,2,32>* Reorder_fft_mux_4fYi_U11;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<32> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<9> > lut_reorder_I_address0;
    sc_signal< sc_logic > lut_reorder_I_ce0;
    sc_signal< sc_lv<10> > lut_reorder_I_q0;
    sc_signal< sc_lv<9> > lut_reorder_J_address0;
    sc_signal< sc_logic > lut_reorder_J_ce0;
    sc_signal< sc_lv<10> > lut_reorder_J_q0;
    sc_signal< sc_lv<32> > reg_290;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_lv<32> > reg_296;
    sc_signal< sc_lv<32> > grp_fu_274_p2;
    sc_signal< sc_lv<32> > reg_301;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<32> > grp_fu_278_p2;
    sc_signal< sc_lv<32> > reg_306;
    sc_signal< sc_lv<32> > grp_fu_258_p2;
    sc_signal< sc_lv<32> > reg_311;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_lv<32> > grp_fu_262_p2;
    sc_signal< sc_lv<32> > reg_317;
    sc_signal< sc_lv<10> > trunc_ln42_fu_331_p1;
    sc_signal< sc_lv<10> > trunc_ln42_reg_519;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > tmp_14_fu_323_p3;
    sc_signal< sc_lv<64> > zext_ln50_fu_341_p1;
    sc_signal< sc_lv<64> > zext_ln50_reg_525;
    sc_signal< sc_lv<10> > Real_addr_2_reg_535;
    sc_signal< sc_lv<10> > Imag_addr_reg_540;
    sc_signal< sc_lv<64> > zext_ln51_fu_362_p1;
    sc_signal< sc_lv<64> > zext_ln51_reg_545;
    sc_signal< sc_lv<10> > Real_addr_3_reg_555;
    sc_signal< sc_lv<10> > Imag_addr_1_reg_560;
    sc_signal< sc_lv<32> > RE_vec_128_b_reg_565;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > RE_vec_128_d_1_reg_570;
    sc_signal< sc_lv<32> > RE_vec_128_c_0_reg_580;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > IM_vec_128_a_reg_585;
    sc_signal< sc_lv<32> > RE_vec_128_d_0_reg_595;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > IM_vec_128_b_reg_600;
    sc_signal< sc_lv<32> > IM_vec_128_c_0_reg_605;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > IM_vec_128_c_1_reg_610;
    sc_signal< sc_lv<32> > IM_vec_128_d_0_reg_615;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > IM_vec_128_d_1_reg_620;
    sc_signal< sc_lv<3> > c_aux_fu_379_p2;
    sc_signal< sc_lv<3> > c_aux_reg_628;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<2> > trunc_ln76_fu_389_p1;
    sc_signal< sc_lv<2> > trunc_ln76_reg_633;
    sc_signal< sc_lv<1> > icmp_ln68_fu_373_p2;
    sc_signal< sc_lv<32> > tmp_11_fu_393_p6;
    sc_signal< sc_lv<32> > select_ln77_fu_415_p3;
    sc_signal< sc_lv<32> > select_ln77_1_fu_422_p3;
    sc_signal< sc_lv<32> > select_ln77_1_reg_652;
    sc_signal< sc_lv<32> > select_ln83_1_fu_436_p3;
    sc_signal< sc_lv<32> > select_ln83_1_reg_662;
    sc_signal< sc_lv<11> > add_ln86_fu_442_p2;
    sc_signal< sc_lv<11> > add_ln86_reg_667;
    sc_signal< sc_lv<11> > c_fu_448_p2;
    sc_signal< sc_lv<32> > grp_fu_282_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_677;
    sc_signal< sc_lv<32> > grp_fu_286_p2;
    sc_signal< sc_lv<32> > tmp_8_reg_682;
    sc_signal< sc_lv<32> > grp_fu_266_p2;
    sc_signal< sc_lv<32> > tmp_7_reg_687;
    sc_signal< sc_lv<32> > grp_fu_270_p2;
    sc_signal< sc_lv<32> > tmp_9_reg_692;
    sc_signal< sc_lv<32> > tmp_12_fu_454_p6;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<32> > tmp_13_fu_468_p6;
    sc_signal< sc_lv<9> > i_fu_493_p2;
    sc_signal< sc_lv<9> > i_reg_710;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_lv<1> > icmp_ln93_fu_487_p2;
    sc_signal< sc_lv<10> > indexJ_reg_725;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_lv<10> > Real_addr_4_reg_730;
    sc_signal< sc_lv<10> > Imag_addr_4_reg_735;
    sc_signal< sc_lv<10> > Real_addr_5_reg_740;
    sc_signal< sc_lv<10> > Imag_addr_5_reg_745;
    sc_signal< sc_lv<11> > c_0_reg_224;
    sc_signal< sc_lv<3> > c_aux_0_reg_236;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_lv<9> > i_0_reg_247;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_lv<64> > zext_ln52_fu_346_p1;
    sc_signal< sc_lv<64> > zext_ln54_fu_367_p1;
    sc_signal< sc_lv<64> > zext_ln86_fu_482_p1;
    sc_signal< sc_lv<64> > zext_ln97_fu_499_p1;
    sc_signal< sc_lv<64> > zext_ln100_fu_505_p1;
    sc_signal< sc_lv<64> > zext_ln102_fu_511_p1;
    sc_signal< sc_lv<32> > Real_r_Addr_A_orig;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_lv<32> > Imag_Addr_A_orig;
    sc_signal< sc_lv<32> > grp_fu_258_p1;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > grp_fu_262_p1;
    sc_signal< sc_lv<32> > grp_fu_274_p0;
    sc_signal< sc_lv<32> > grp_fu_274_p1;
    sc_signal< sc_lv<32> > grp_fu_278_p0;
    sc_signal< sc_lv<32> > grp_fu_278_p1;
    sc_signal< sc_lv<32> > grp_fu_286_p1;
    sc_signal< sc_lv<10> > ind1_fu_335_p2;
    sc_signal< sc_lv<10> > ind2_fu_352_p2;
    sc_signal< sc_lv<10> > ind3_fu_357_p2;
    sc_signal< sc_lv<2> > tmp_11_fu_393_p5;
    sc_signal< sc_lv<1> > trunc_ln77_fu_411_p1;
    sc_signal< sc_lv<11> > zext_ln76_fu_385_p1;
    sc_signal< sc_lv<32> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_ST_fsm_state1;
    static const sc_lv<32> ap_ST_fsm_state2;
    static const sc_lv<32> ap_ST_fsm_state3;
    static const sc_lv<32> ap_ST_fsm_state4;
    static const sc_lv<32> ap_ST_fsm_state5;
    static const sc_lv<32> ap_ST_fsm_state6;
    static const sc_lv<32> ap_ST_fsm_state7;
    static const sc_lv<32> ap_ST_fsm_state8;
    static const sc_lv<32> ap_ST_fsm_state9;
    static const sc_lv<32> ap_ST_fsm_state10;
    static const sc_lv<32> ap_ST_fsm_state11;
    static const sc_lv<32> ap_ST_fsm_state12;
    static const sc_lv<32> ap_ST_fsm_state13;
    static const sc_lv<32> ap_ST_fsm_state14;
    static const sc_lv<32> ap_ST_fsm_state15;
    static const sc_lv<32> ap_ST_fsm_state16;
    static const sc_lv<32> ap_ST_fsm_state17;
    static const sc_lv<32> ap_ST_fsm_state18;
    static const sc_lv<32> ap_ST_fsm_state19;
    static const sc_lv<32> ap_ST_fsm_state20;
    static const sc_lv<32> ap_ST_fsm_state21;
    static const sc_lv<32> ap_ST_fsm_state22;
    static const sc_lv<32> ap_ST_fsm_state23;
    static const sc_lv<32> ap_ST_fsm_state24;
    static const sc_lv<32> ap_ST_fsm_state25;
    static const sc_lv<32> ap_ST_fsm_state26;
    static const sc_lv<32> ap_ST_fsm_state27;
    static const sc_lv<32> ap_ST_fsm_state28;
    static const sc_lv<32> ap_ST_fsm_state29;
    static const sc_lv<32> ap_ST_fsm_state30;
    static const sc_lv<32> ap_ST_fsm_state31;
    static const sc_lv<32> ap_ST_fsm_state32;
    static const sc_lv<32> ap_const_lv32_0;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_2;
    static const sc_lv<10> ap_const_lv10_3;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_3F800000;
    static const sc_lv<32> ap_const_lv32_BF800000;
    static const sc_lv<11> ap_const_lv11_4;
    static const sc_lv<9> ap_const_lv9_1E0;
    static const sc_lv<9> ap_const_lv9_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_clk_no_reset_();
    void thread_Imag_Addr_A();
    void thread_Imag_Addr_A_orig();
    void thread_Imag_Clk_A();
    void thread_Imag_Din_A();
    void thread_Imag_EN_A();
    void thread_Imag_Rst_A();
    void thread_Imag_WEN_A();
    void thread_Real_r_Addr_A();
    void thread_Real_r_Addr_A_orig();
    void thread_Real_r_Clk_A();
    void thread_Real_r_Din_A();
    void thread_Real_r_EN_A();
    void thread_Real_r_Rst_A();
    void thread_Real_r_WEN_A();
    void thread_add_ln86_fu_442_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_c_aux_fu_379_p2();
    void thread_c_fu_448_p2();
    void thread_grp_fu_258_p1();
    void thread_grp_fu_262_p1();
    void thread_grp_fu_274_p0();
    void thread_grp_fu_274_p1();
    void thread_grp_fu_278_p0();
    void thread_grp_fu_278_p1();
    void thread_grp_fu_286_p1();
    void thread_i_fu_493_p2();
    void thread_icmp_ln68_fu_373_p2();
    void thread_icmp_ln93_fu_487_p2();
    void thread_ind1_fu_335_p2();
    void thread_ind2_fu_352_p2();
    void thread_ind3_fu_357_p2();
    void thread_lut_reorder_I_address0();
    void thread_lut_reorder_I_ce0();
    void thread_lut_reorder_J_address0();
    void thread_lut_reorder_J_ce0();
    void thread_select_ln77_1_fu_422_p3();
    void thread_select_ln77_fu_415_p3();
    void thread_select_ln83_1_fu_436_p3();
    void thread_tmp_11_fu_393_p5();
    void thread_tmp_14_fu_323_p3();
    void thread_trunc_ln42_fu_331_p1();
    void thread_trunc_ln76_fu_389_p1();
    void thread_trunc_ln77_fu_411_p1();
    void thread_zext_ln100_fu_505_p1();
    void thread_zext_ln102_fu_511_p1();
    void thread_zext_ln50_fu_341_p1();
    void thread_zext_ln51_fu_362_p1();
    void thread_zext_ln52_fu_346_p1();
    void thread_zext_ln54_fu_367_p1();
    void thread_zext_ln76_fu_385_p1();
    void thread_zext_ln86_fu_482_p1();
    void thread_zext_ln97_fu_499_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
