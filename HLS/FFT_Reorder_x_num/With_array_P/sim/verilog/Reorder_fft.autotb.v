// ==============================================================
// File generated on Sun Mar 28 22:08:28 -0600 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      Reorder_fft
`define AUTOTB_DUT_INST AESL_inst_Reorder_fft
`define AUTOTB_TOP      apatb_Reorder_fft_top
`define AUTOTB_LAT_RESULT_FILE "Reorder_fft.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "Reorder_fft.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_Reorder_fft_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_num_word 1
`define AESL_MEM_Real_0 AESL_automem_Real_0
`define AESL_MEM_INST_Real_0 mem_inst_Real_0
`define AESL_MEM_Real_1 AESL_automem_Real_1
`define AESL_MEM_INST_Real_1 mem_inst_Real_1
`define AESL_MEM_Real_2 AESL_automem_Real_2
`define AESL_MEM_INST_Real_2 mem_inst_Real_2
`define AESL_MEM_Real_3 AESL_automem_Real_3
`define AESL_MEM_INST_Real_3 mem_inst_Real_3
`define AESL_MEM_Imag_0 AESL_automem_Imag_0
`define AESL_MEM_INST_Imag_0 mem_inst_Imag_0
`define AESL_MEM_Imag_1 AESL_automem_Imag_1
`define AESL_MEM_INST_Imag_1 mem_inst_Imag_1
`define AESL_MEM_Imag_2 AESL_automem_Imag_2
`define AESL_MEM_INST_Imag_2 mem_inst_Imag_2
`define AESL_MEM_Imag_3 AESL_automem_Imag_3
`define AESL_MEM_INST_Imag_3 mem_inst_Imag_3
`define AUTOTB_TVIN_num_word  "../tv/cdatafile/c.Reorder_fft.autotvin_num_word.dat"
`define AUTOTB_TVIN_Real_0  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_0.dat"
`define AUTOTB_TVIN_Real_1  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_1.dat"
`define AUTOTB_TVIN_Real_2  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_2.dat"
`define AUTOTB_TVIN_Real_3  "../tv/cdatafile/c.Reorder_fft.autotvin_Real_3.dat"
`define AUTOTB_TVIN_Imag_0  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_0.dat"
`define AUTOTB_TVIN_Imag_1  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_1.dat"
`define AUTOTB_TVIN_Imag_2  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_2.dat"
`define AUTOTB_TVIN_Imag_3  "../tv/cdatafile/c.Reorder_fft.autotvin_Imag_3.dat"
`define AUTOTB_TVIN_num_word_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_num_word.dat"
`define AUTOTB_TVIN_Real_0_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Real_0.dat"
`define AUTOTB_TVIN_Real_1_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Real_1.dat"
`define AUTOTB_TVIN_Real_2_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Real_2.dat"
`define AUTOTB_TVIN_Real_3_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Real_3.dat"
`define AUTOTB_TVIN_Imag_0_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Imag_0.dat"
`define AUTOTB_TVIN_Imag_1_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Imag_1.dat"
`define AUTOTB_TVIN_Imag_2_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Imag_2.dat"
`define AUTOTB_TVIN_Imag_3_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvin_Imag_3.dat"
`define AUTOTB_TVOUT_Real_0  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_0.dat"
`define AUTOTB_TVOUT_Real_1  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_1.dat"
`define AUTOTB_TVOUT_Real_2  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_2.dat"
`define AUTOTB_TVOUT_Real_3  "../tv/cdatafile/c.Reorder_fft.autotvout_Real_3.dat"
`define AUTOTB_TVOUT_Imag_0  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_0.dat"
`define AUTOTB_TVOUT_Imag_1  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_1.dat"
`define AUTOTB_TVOUT_Imag_2  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_2.dat"
`define AUTOTB_TVOUT_Imag_3  "../tv/cdatafile/c.Reorder_fft.autotvout_Imag_3.dat"
`define AUTOTB_TVOUT_Real_0_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_0.dat"
`define AUTOTB_TVOUT_Real_1_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_1.dat"
`define AUTOTB_TVOUT_Real_2_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_2.dat"
`define AUTOTB_TVOUT_Real_3_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Real_3.dat"
`define AUTOTB_TVOUT_Imag_0_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_0.dat"
`define AUTOTB_TVOUT_Imag_1_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_1.dat"
`define AUTOTB_TVOUT_Imag_2_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_2.dat"
`define AUTOTB_TVOUT_Imag_3_out_wrapc  "../tv/rtldatafile/rtl.Reorder_fft.autotvout_Imag_3.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_num_word = 1;
parameter LENGTH_Real_0 = 4096;
parameter LENGTH_Real_1 = 4096;
parameter LENGTH_Real_2 = 4096;
parameter LENGTH_Real_3 = 4096;
parameter LENGTH_Imag_0 = 4096;
parameter LENGTH_Imag_1 = 4096;
parameter LENGTH_Imag_2 = 4096;
parameter LENGTH_Imag_3 = 4096;

task read_token;
    input integer fp;
    output reg [143 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [31 : 0] num_word;
wire [11 : 0] Real_0_address0;
wire  Real_0_ce0;
wire  Real_0_we0;
wire [31 : 0] Real_0_d0;
wire [31 : 0] Real_0_q0;
wire [11 : 0] Real_1_address0;
wire  Real_1_ce0;
wire  Real_1_we0;
wire [31 : 0] Real_1_d0;
wire [31 : 0] Real_1_q0;
wire [11 : 0] Real_2_address0;
wire  Real_2_ce0;
wire  Real_2_we0;
wire [31 : 0] Real_2_d0;
wire [31 : 0] Real_2_q0;
wire [11 : 0] Real_3_address0;
wire  Real_3_ce0;
wire  Real_3_we0;
wire [31 : 0] Real_3_d0;
wire [31 : 0] Real_3_q0;
wire [11 : 0] Imag_0_address0;
wire  Imag_0_ce0;
wire  Imag_0_we0;
wire [31 : 0] Imag_0_d0;
wire [31 : 0] Imag_0_q0;
wire [11 : 0] Imag_1_address0;
wire  Imag_1_ce0;
wire  Imag_1_we0;
wire [31 : 0] Imag_1_d0;
wire [31 : 0] Imag_1_q0;
wire [11 : 0] Imag_2_address0;
wire  Imag_2_ce0;
wire  Imag_2_we0;
wire [31 : 0] Imag_2_d0;
wire [31 : 0] Imag_2_q0;
wire [11 : 0] Imag_3_address0;
wire  Imag_3_ce0;
wire  Imag_3_we0;
wire [31 : 0] Imag_3_d0;
wire [31 : 0] Imag_3_q0;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .num_word(num_word),
    .Real_0_address0(Real_0_address0),
    .Real_0_ce0(Real_0_ce0),
    .Real_0_we0(Real_0_we0),
    .Real_0_d0(Real_0_d0),
    .Real_0_q0(Real_0_q0),
    .Real_1_address0(Real_1_address0),
    .Real_1_ce0(Real_1_ce0),
    .Real_1_we0(Real_1_we0),
    .Real_1_d0(Real_1_d0),
    .Real_1_q0(Real_1_q0),
    .Real_2_address0(Real_2_address0),
    .Real_2_ce0(Real_2_ce0),
    .Real_2_we0(Real_2_we0),
    .Real_2_d0(Real_2_d0),
    .Real_2_q0(Real_2_q0),
    .Real_3_address0(Real_3_address0),
    .Real_3_ce0(Real_3_ce0),
    .Real_3_we0(Real_3_we0),
    .Real_3_d0(Real_3_d0),
    .Real_3_q0(Real_3_q0),
    .Imag_0_address0(Imag_0_address0),
    .Imag_0_ce0(Imag_0_ce0),
    .Imag_0_we0(Imag_0_we0),
    .Imag_0_d0(Imag_0_d0),
    .Imag_0_q0(Imag_0_q0),
    .Imag_1_address0(Imag_1_address0),
    .Imag_1_ce0(Imag_1_ce0),
    .Imag_1_we0(Imag_1_we0),
    .Imag_1_d0(Imag_1_d0),
    .Imag_1_q0(Imag_1_q0),
    .Imag_2_address0(Imag_2_address0),
    .Imag_2_ce0(Imag_2_ce0),
    .Imag_2_we0(Imag_2_we0),
    .Imag_2_d0(Imag_2_d0),
    .Imag_2_q0(Imag_2_q0),
    .Imag_3_address0(Imag_3_address0),
    .Imag_3_ce0(Imag_3_ce0),
    .Imag_3_we0(Imag_3_we0),
    .Imag_3_d0(Imag_3_d0),
    .Imag_3_q0(Imag_3_q0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// The signal of port num_word
reg [31: 0] AESL_REG_num_word = 0;
assign num_word = AESL_REG_num_word;
initial begin : read_file_process_num_word
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [143  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_num_word,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_num_word);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_num_word);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


//------------------------arrayReal_0 Instantiation--------------

// The input and output of arrayReal_0
wire    arrayReal_0_ce0, arrayReal_0_ce1;
wire    arrayReal_0_we0, arrayReal_0_we1;
wire    [11 : 0]    arrayReal_0_address0, arrayReal_0_address1;
wire    [31 : 0]    arrayReal_0_din0, arrayReal_0_din1;
wire    [31 : 0]    arrayReal_0_dout0, arrayReal_0_dout1;
wire    arrayReal_0_ready;
wire    arrayReal_0_done;

`AESL_MEM_Real_0 `AESL_MEM_INST_Real_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayReal_0_ce0),
    .we0        (arrayReal_0_we0),
    .address0   (arrayReal_0_address0),
    .din0       (arrayReal_0_din0),
    .dout0      (arrayReal_0_dout0),
    .ce1        (arrayReal_0_ce1),
    .we1        (arrayReal_0_we1),
    .address1   (arrayReal_0_address1),
    .din1       (arrayReal_0_din1),
    .dout1      (arrayReal_0_dout1),
    .ready      (arrayReal_0_ready),
    .done    (arrayReal_0_done)
);

// Assignment between dut and arrayReal_0
assign arrayReal_0_address0 = Real_0_address0;
assign arrayReal_0_ce0 = Real_0_ce0;
assign Real_0_q0 = arrayReal_0_dout0;
assign arrayReal_0_we0 = Real_0_we0;
assign arrayReal_0_din0 = Real_0_d0;
assign arrayReal_0_ready= ready;
assign arrayReal_0_done = interface_done;


//------------------------arrayReal_1 Instantiation--------------

// The input and output of arrayReal_1
wire    arrayReal_1_ce0, arrayReal_1_ce1;
wire    arrayReal_1_we0, arrayReal_1_we1;
wire    [11 : 0]    arrayReal_1_address0, arrayReal_1_address1;
wire    [31 : 0]    arrayReal_1_din0, arrayReal_1_din1;
wire    [31 : 0]    arrayReal_1_dout0, arrayReal_1_dout1;
wire    arrayReal_1_ready;
wire    arrayReal_1_done;

`AESL_MEM_Real_1 `AESL_MEM_INST_Real_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayReal_1_ce0),
    .we0        (arrayReal_1_we0),
    .address0   (arrayReal_1_address0),
    .din0       (arrayReal_1_din0),
    .dout0      (arrayReal_1_dout0),
    .ce1        (arrayReal_1_ce1),
    .we1        (arrayReal_1_we1),
    .address1   (arrayReal_1_address1),
    .din1       (arrayReal_1_din1),
    .dout1      (arrayReal_1_dout1),
    .ready      (arrayReal_1_ready),
    .done    (arrayReal_1_done)
);

// Assignment between dut and arrayReal_1
assign arrayReal_1_address0 = Real_1_address0;
assign arrayReal_1_ce0 = Real_1_ce0;
assign Real_1_q0 = arrayReal_1_dout0;
assign arrayReal_1_we0 = Real_1_we0;
assign arrayReal_1_din0 = Real_1_d0;
assign arrayReal_1_ready= ready;
assign arrayReal_1_done = interface_done;


//------------------------arrayReal_2 Instantiation--------------

// The input and output of arrayReal_2
wire    arrayReal_2_ce0, arrayReal_2_ce1;
wire    arrayReal_2_we0, arrayReal_2_we1;
wire    [11 : 0]    arrayReal_2_address0, arrayReal_2_address1;
wire    [31 : 0]    arrayReal_2_din0, arrayReal_2_din1;
wire    [31 : 0]    arrayReal_2_dout0, arrayReal_2_dout1;
wire    arrayReal_2_ready;
wire    arrayReal_2_done;

`AESL_MEM_Real_2 `AESL_MEM_INST_Real_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayReal_2_ce0),
    .we0        (arrayReal_2_we0),
    .address0   (arrayReal_2_address0),
    .din0       (arrayReal_2_din0),
    .dout0      (arrayReal_2_dout0),
    .ce1        (arrayReal_2_ce1),
    .we1        (arrayReal_2_we1),
    .address1   (arrayReal_2_address1),
    .din1       (arrayReal_2_din1),
    .dout1      (arrayReal_2_dout1),
    .ready      (arrayReal_2_ready),
    .done    (arrayReal_2_done)
);

// Assignment between dut and arrayReal_2
assign arrayReal_2_address0 = Real_2_address0;
assign arrayReal_2_ce0 = Real_2_ce0;
assign Real_2_q0 = arrayReal_2_dout0;
assign arrayReal_2_we0 = Real_2_we0;
assign arrayReal_2_din0 = Real_2_d0;
assign arrayReal_2_ready= ready;
assign arrayReal_2_done = interface_done;


//------------------------arrayReal_3 Instantiation--------------

// The input and output of arrayReal_3
wire    arrayReal_3_ce0, arrayReal_3_ce1;
wire    arrayReal_3_we0, arrayReal_3_we1;
wire    [11 : 0]    arrayReal_3_address0, arrayReal_3_address1;
wire    [31 : 0]    arrayReal_3_din0, arrayReal_3_din1;
wire    [31 : 0]    arrayReal_3_dout0, arrayReal_3_dout1;
wire    arrayReal_3_ready;
wire    arrayReal_3_done;

`AESL_MEM_Real_3 `AESL_MEM_INST_Real_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayReal_3_ce0),
    .we0        (arrayReal_3_we0),
    .address0   (arrayReal_3_address0),
    .din0       (arrayReal_3_din0),
    .dout0      (arrayReal_3_dout0),
    .ce1        (arrayReal_3_ce1),
    .we1        (arrayReal_3_we1),
    .address1   (arrayReal_3_address1),
    .din1       (arrayReal_3_din1),
    .dout1      (arrayReal_3_dout1),
    .ready      (arrayReal_3_ready),
    .done    (arrayReal_3_done)
);

// Assignment between dut and arrayReal_3
assign arrayReal_3_address0 = Real_3_address0;
assign arrayReal_3_ce0 = Real_3_ce0;
assign Real_3_q0 = arrayReal_3_dout0;
assign arrayReal_3_we0 = Real_3_we0;
assign arrayReal_3_din0 = Real_3_d0;
assign arrayReal_3_ready= ready;
assign arrayReal_3_done = interface_done;


//------------------------arrayImag_0 Instantiation--------------

// The input and output of arrayImag_0
wire    arrayImag_0_ce0, arrayImag_0_ce1;
wire    arrayImag_0_we0, arrayImag_0_we1;
wire    [11 : 0]    arrayImag_0_address0, arrayImag_0_address1;
wire    [31 : 0]    arrayImag_0_din0, arrayImag_0_din1;
wire    [31 : 0]    arrayImag_0_dout0, arrayImag_0_dout1;
wire    arrayImag_0_ready;
wire    arrayImag_0_done;

`AESL_MEM_Imag_0 `AESL_MEM_INST_Imag_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayImag_0_ce0),
    .we0        (arrayImag_0_we0),
    .address0   (arrayImag_0_address0),
    .din0       (arrayImag_0_din0),
    .dout0      (arrayImag_0_dout0),
    .ce1        (arrayImag_0_ce1),
    .we1        (arrayImag_0_we1),
    .address1   (arrayImag_0_address1),
    .din1       (arrayImag_0_din1),
    .dout1      (arrayImag_0_dout1),
    .ready      (arrayImag_0_ready),
    .done    (arrayImag_0_done)
);

// Assignment between dut and arrayImag_0
assign arrayImag_0_address0 = Imag_0_address0;
assign arrayImag_0_ce0 = Imag_0_ce0;
assign Imag_0_q0 = arrayImag_0_dout0;
assign arrayImag_0_we0 = Imag_0_we0;
assign arrayImag_0_din0 = Imag_0_d0;
assign arrayImag_0_ready= ready;
assign arrayImag_0_done = interface_done;


//------------------------arrayImag_1 Instantiation--------------

// The input and output of arrayImag_1
wire    arrayImag_1_ce0, arrayImag_1_ce1;
wire    arrayImag_1_we0, arrayImag_1_we1;
wire    [11 : 0]    arrayImag_1_address0, arrayImag_1_address1;
wire    [31 : 0]    arrayImag_1_din0, arrayImag_1_din1;
wire    [31 : 0]    arrayImag_1_dout0, arrayImag_1_dout1;
wire    arrayImag_1_ready;
wire    arrayImag_1_done;

`AESL_MEM_Imag_1 `AESL_MEM_INST_Imag_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayImag_1_ce0),
    .we0        (arrayImag_1_we0),
    .address0   (arrayImag_1_address0),
    .din0       (arrayImag_1_din0),
    .dout0      (arrayImag_1_dout0),
    .ce1        (arrayImag_1_ce1),
    .we1        (arrayImag_1_we1),
    .address1   (arrayImag_1_address1),
    .din1       (arrayImag_1_din1),
    .dout1      (arrayImag_1_dout1),
    .ready      (arrayImag_1_ready),
    .done    (arrayImag_1_done)
);

// Assignment between dut and arrayImag_1
assign arrayImag_1_address0 = Imag_1_address0;
assign arrayImag_1_ce0 = Imag_1_ce0;
assign Imag_1_q0 = arrayImag_1_dout0;
assign arrayImag_1_we0 = Imag_1_we0;
assign arrayImag_1_din0 = Imag_1_d0;
assign arrayImag_1_ready= ready;
assign arrayImag_1_done = interface_done;


//------------------------arrayImag_2 Instantiation--------------

// The input and output of arrayImag_2
wire    arrayImag_2_ce0, arrayImag_2_ce1;
wire    arrayImag_2_we0, arrayImag_2_we1;
wire    [11 : 0]    arrayImag_2_address0, arrayImag_2_address1;
wire    [31 : 0]    arrayImag_2_din0, arrayImag_2_din1;
wire    [31 : 0]    arrayImag_2_dout0, arrayImag_2_dout1;
wire    arrayImag_2_ready;
wire    arrayImag_2_done;

`AESL_MEM_Imag_2 `AESL_MEM_INST_Imag_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayImag_2_ce0),
    .we0        (arrayImag_2_we0),
    .address0   (arrayImag_2_address0),
    .din0       (arrayImag_2_din0),
    .dout0      (arrayImag_2_dout0),
    .ce1        (arrayImag_2_ce1),
    .we1        (arrayImag_2_we1),
    .address1   (arrayImag_2_address1),
    .din1       (arrayImag_2_din1),
    .dout1      (arrayImag_2_dout1),
    .ready      (arrayImag_2_ready),
    .done    (arrayImag_2_done)
);

// Assignment between dut and arrayImag_2
assign arrayImag_2_address0 = Imag_2_address0;
assign arrayImag_2_ce0 = Imag_2_ce0;
assign Imag_2_q0 = arrayImag_2_dout0;
assign arrayImag_2_we0 = Imag_2_we0;
assign arrayImag_2_din0 = Imag_2_d0;
assign arrayImag_2_ready= ready;
assign arrayImag_2_done = interface_done;


//------------------------arrayImag_3 Instantiation--------------

// The input and output of arrayImag_3
wire    arrayImag_3_ce0, arrayImag_3_ce1;
wire    arrayImag_3_we0, arrayImag_3_we1;
wire    [11 : 0]    arrayImag_3_address0, arrayImag_3_address1;
wire    [31 : 0]    arrayImag_3_din0, arrayImag_3_din1;
wire    [31 : 0]    arrayImag_3_dout0, arrayImag_3_dout1;
wire    arrayImag_3_ready;
wire    arrayImag_3_done;

`AESL_MEM_Imag_3 `AESL_MEM_INST_Imag_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayImag_3_ce0),
    .we0        (arrayImag_3_we0),
    .address0   (arrayImag_3_address0),
    .din0       (arrayImag_3_din0),
    .dout0      (arrayImag_3_dout0),
    .ce1        (arrayImag_3_ce1),
    .we1        (arrayImag_3_we1),
    .address1   (arrayImag_3_address1),
    .din1       (arrayImag_3_din1),
    .dout1      (arrayImag_3_dout1),
    .ready      (arrayImag_3_ready),
    .done    (arrayImag_3_done)
);

// Assignment between dut and arrayImag_3
assign arrayImag_3_address0 = Imag_3_address0;
assign arrayImag_3_ce0 = Imag_3_ce0;
assign Imag_3_q0 = arrayImag_3_dout0;
assign arrayImag_3_we0 = Imag_3_we0;
assign arrayImag_3_din0 = Imag_3_d0;
assign arrayImag_3_ready= ready;
assign arrayImag_3_done = interface_done;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_num_word;
reg [31:0] size_num_word;
reg [31:0] size_num_word_backup;
reg end_Real_0;
reg [31:0] size_Real_0;
reg [31:0] size_Real_0_backup;
reg end_Real_1;
reg [31:0] size_Real_1;
reg [31:0] size_Real_1_backup;
reg end_Real_2;
reg [31:0] size_Real_2;
reg [31:0] size_Real_2_backup;
reg end_Real_3;
reg [31:0] size_Real_3;
reg [31:0] size_Real_3_backup;
reg end_Imag_0;
reg [31:0] size_Imag_0;
reg [31:0] size_Imag_0_backup;
reg end_Imag_1;
reg [31:0] size_Imag_1;
reg [31:0] size_Imag_1_backup;
reg end_Imag_2;
reg [31:0] size_Imag_2;
reg [31:0] size_Imag_2_backup;
reg end_Imag_3;
reg [31:0] size_Imag_3;
reg [31:0] size_Imag_3_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end

reg dump_tvout_finish_Real_0;

initial begin : dump_tvout_runtime_sign_Real_0
    integer fp;
    dump_tvout_finish_Real_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Real_0_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Real_0_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Real_0 = 1;
end


reg dump_tvout_finish_Real_1;

initial begin : dump_tvout_runtime_sign_Real_1
    integer fp;
    dump_tvout_finish_Real_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Real_1_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Real_1_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Real_1 = 1;
end


reg dump_tvout_finish_Real_2;

initial begin : dump_tvout_runtime_sign_Real_2
    integer fp;
    dump_tvout_finish_Real_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Real_2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Real_2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Real_2 = 1;
end


reg dump_tvout_finish_Real_3;

initial begin : dump_tvout_runtime_sign_Real_3
    integer fp;
    dump_tvout_finish_Real_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Real_3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Real_3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Real_3 = 1;
end


reg dump_tvout_finish_Imag_0;

initial begin : dump_tvout_runtime_sign_Imag_0
    integer fp;
    dump_tvout_finish_Imag_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Imag_0_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Imag_0_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Imag_0 = 1;
end


reg dump_tvout_finish_Imag_1;

initial begin : dump_tvout_runtime_sign_Imag_1
    integer fp;
    dump_tvout_finish_Imag_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Imag_1_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Imag_1_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Imag_1 = 1;
end


reg dump_tvout_finish_Imag_2;

initial begin : dump_tvout_runtime_sign_Imag_2
    integer fp;
    dump_tvout_finish_Imag_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Imag_2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Imag_2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Imag_2 = 1;
end


reg dump_tvout_finish_Imag_3;

initial begin : dump_tvout_runtime_sign_Imag_3
    integer fp;
    dump_tvout_finish_Imag_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_Imag_3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_Imag_3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Imag_3 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

endmodule
