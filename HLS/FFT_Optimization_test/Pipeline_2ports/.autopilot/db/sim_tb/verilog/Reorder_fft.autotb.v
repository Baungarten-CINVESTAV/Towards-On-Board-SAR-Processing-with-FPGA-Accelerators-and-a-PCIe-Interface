// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.3 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      Reorder_fft
`define AUTOTB_DUT_INST AESL_inst_Reorder_fft
`define AUTOTB_TOP      apatb_Reorder_fft_top
`define AUTOTB_LAT_RESULT_FILE "Reorder_fft.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "Reorder_fft.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_Reorder_fft_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_BRAM_Real_r AESL_autobram_Real_r
`define AESL_BRAM_INST_Real_r bram_inst_Real_r
`define AESL_BRAM_Imag AESL_autobram_Imag
`define AESL_BRAM_INST_Imag bram_inst_Imag
`define AUTOTB_TVIN_Real_r  "./c.Reorder_fft.autotvin_Real_r.dat"
`define AUTOTB_TVIN_Imag  "./c.Reorder_fft.autotvin_Imag.dat"
`define AUTOTB_TVIN_Real_r_out_wrapc  "./rtl.Reorder_fft.autotvin_Real_r.dat"
`define AUTOTB_TVIN_Imag_out_wrapc  "./rtl.Reorder_fft.autotvin_Imag.dat"
`define AUTOTB_TVOUT_Real_r  "./c.Reorder_fft.autotvout_Real_r.dat"
`define AUTOTB_TVOUT_Imag  "./c.Reorder_fft.autotvout_Imag.dat"
`define AUTOTB_TVOUT_Real_r_out_wrapc  "./impl_rtl.Reorder_fft.autotvout_Real_r.dat"
`define AUTOTB_TVOUT_Imag_out_wrapc  "./impl_rtl.Reorder_fft.autotvout_Imag.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 2738;
parameter LENGTH_Real_r = 1024;
parameter LENGTH_Imag = 1024;

task read_token;
    input integer fp;
    output reg [199 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [199 : 0] token1;
    reg [199 : 0] token2;
    reg [199 : 0] golden;
    reg [199 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
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
wire [3 : 0] AXILiteS_AWADDR;
wire  AXILiteS_AWVALID;
wire  AXILiteS_AWREADY;
wire  AXILiteS_WVALID;
wire  AXILiteS_WREADY;
wire [31 : 0] AXILiteS_WDATA;
wire [3 : 0] AXILiteS_WSTRB;
wire [3 : 0] AXILiteS_ARADDR;
wire  AXILiteS_ARVALID;
wire  AXILiteS_ARREADY;
wire  AXILiteS_RVALID;
wire  AXILiteS_RREADY;
wire [31 : 0] AXILiteS_RDATA;
wire [1 : 0] AXILiteS_RRESP;
wire  AXILiteS_BVALID;
wire  AXILiteS_BREADY;
wire [1 : 0] AXILiteS_BRESP;
wire  AXILiteS_INTERRUPT;
wire [31 : 0] Real_r_ADDR_A;
wire  Real_r_EN_A;
wire [3 : 0] Real_r_WEN_A;
wire [31 : 0] Real_r_DIN_A;
wire [31 : 0] Real_r_DOUT_A;
wire  Real_r_CLK_A;
wire  Real_r_RST_A;
wire [31 : 0] Real_r_ADDR_B;
wire  Real_r_EN_B;
wire [3 : 0] Real_r_WEN_B;
wire [31 : 0] Real_r_DIN_B;
wire [31 : 0] Real_r_DOUT_B;
wire  Real_r_CLK_B;
wire  Real_r_RST_B;
wire [31 : 0] Imag_ADDR_A;
wire  Imag_EN_A;
wire [3 : 0] Imag_WEN_A;
wire [31 : 0] Imag_DIN_A;
wire [31 : 0] Imag_DOUT_A;
wire  Imag_CLK_A;
wire  Imag_RST_A;
wire [31 : 0] Imag_ADDR_B;
wire  Imag_EN_B;
wire [3 : 0] Imag_WEN_B;
wire [31 : 0] Imag_DIN_B;
wire [31 : 0] Imag_DOUT_B;
wire  Imag_CLK_B;
wire  Imag_RST_B;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;

wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_AXILiteS_AWADDR(AXILiteS_AWADDR),
    .s_axi_AXILiteS_AWVALID(AXILiteS_AWVALID),
    .s_axi_AXILiteS_AWREADY(AXILiteS_AWREADY),
    .s_axi_AXILiteS_WVALID(AXILiteS_WVALID),
    .s_axi_AXILiteS_WREADY(AXILiteS_WREADY),
    .s_axi_AXILiteS_WDATA(AXILiteS_WDATA),
    .s_axi_AXILiteS_WSTRB(AXILiteS_WSTRB),
    .s_axi_AXILiteS_ARADDR(AXILiteS_ARADDR),
    .s_axi_AXILiteS_ARVALID(AXILiteS_ARVALID),
    .s_axi_AXILiteS_ARREADY(AXILiteS_ARREADY),
    .s_axi_AXILiteS_RVALID(AXILiteS_RVALID),
    .s_axi_AXILiteS_RREADY(AXILiteS_RREADY),
    .s_axi_AXILiteS_RDATA(AXILiteS_RDATA),
    .s_axi_AXILiteS_RRESP(AXILiteS_RRESP),
    .s_axi_AXILiteS_BVALID(AXILiteS_BVALID),
    .s_axi_AXILiteS_BREADY(AXILiteS_BREADY),
    .s_axi_AXILiteS_BRESP(AXILiteS_BRESP),
    .interrupt(AXILiteS_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .Real_r_Addr_A(Real_r_ADDR_A),
    .Real_r_EN_A(Real_r_EN_A),
    .Real_r_WEN_A(Real_r_WEN_A),
    .Real_r_Din_A(Real_r_DIN_A),
    .Real_r_Dout_A(Real_r_DOUT_A),
    .Real_r_Clk_A(Real_r_CLK_A),
    .Real_r_Rst_A(Real_r_RST_A),
    .Real_r_Addr_B(Real_r_ADDR_B),
    .Real_r_EN_B(Real_r_EN_B),
    .Real_r_WEN_B(Real_r_WEN_B),
    .Real_r_Din_B(Real_r_DIN_B),
    .Real_r_Dout_B(Real_r_DOUT_B),
    .Real_r_Clk_B(Real_r_CLK_B),
    .Real_r_Rst_B(Real_r_RST_B),
    .Imag_Addr_A(Imag_ADDR_A),
    .Imag_EN_A(Imag_EN_A),
    .Imag_WEN_A(Imag_WEN_A),
    .Imag_Din_A(Imag_DIN_A),
    .Imag_Dout_A(Imag_DOUT_A),
    .Imag_Clk_A(Imag_CLK_A),
    .Imag_Rst_A(Imag_RST_A),
    .Imag_Addr_B(Imag_ADDR_B),
    .Imag_EN_B(Imag_EN_B),
    .Imag_WEN_B(Imag_WEN_B),
    .Imag_Din_B(Imag_DIN_B),
    .Imag_Dout_B(Imag_DOUT_B),
    .Imag_Clk_B(Imag_CLK_B),
    .Imag_Rst_B(Imag_RST_B));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status ;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end
//------------------------bramReal_r Instantiation--------------

// The input and output of bramReal_r
wire  bramReal_r_Clk_A, bramReal_r_Clk_B;
wire  bramReal_r_EN_A, bramReal_r_EN_B;
wire  [4 - 1 : 0] bramReal_r_WEN_A, bramReal_r_WEN_B;
wire    [31 : 0]    bramReal_r_Addr_A, bramReal_r_Addr_B;
wire    [31 : 0]    bramReal_r_Din_A, bramReal_r_Din_B;
wire    [31 : 0]    bramReal_r_Dout_A, bramReal_r_Dout_B;
wire    bramReal_r_ready;
wire    bramReal_r_done;

`AESL_BRAM_Real_r `AESL_BRAM_INST_Real_r(
    .Clk_A    (bramReal_r_Clk_A),
    .Rst_A    (bramReal_r_Rst_A),
    .EN_A     (bramReal_r_EN_A),
    .WEN_A    (bramReal_r_WEN_A),
    .Addr_A   (bramReal_r_Addr_A),
    .Din_A    (bramReal_r_Din_A),
    .Dout_A   (bramReal_r_Dout_A),
    .Clk_B    (bramReal_r_Clk_B),
    .Rst_B    (bramReal_r_Rst_B),
    .EN_B     (bramReal_r_EN_B),
    .WEN_B    (bramReal_r_WEN_B),
    .Addr_B   (bramReal_r_Addr_B),
    .Din_B    (bramReal_r_Din_B),
    .Dout_B   (bramReal_r_Dout_B),
    .ready    (bramReal_r_ready),
    .done        (bramReal_r_done)
);

// Assignment between dut and bramReal_r
assign bramReal_r_Clk_A = Real_r_CLK_A;
assign bramReal_r_Rst_A = Real_r_RST_A;
assign bramReal_r_Addr_A = Real_r_ADDR_A;
assign bramReal_r_EN_A = Real_r_EN_A;
assign Real_r_DOUT_A = bramReal_r_Dout_A;
assign bramReal_r_WEN_A = Real_r_WEN_A;
assign bramReal_r_Din_A = Real_r_DIN_A;
assign bramReal_r_Clk_B = Real_r_CLK_B;
assign bramReal_r_Rst_B = Real_r_RST_B;
assign bramReal_r_Addr_B = Real_r_ADDR_B;
assign bramReal_r_EN_B = Real_r_EN_B;
assign Real_r_DOUT_B = bramReal_r_Dout_B;
assign bramReal_r_WEN_B = Real_r_WEN_B;
assign bramReal_r_Din_B = Real_r_DIN_B;
assign bramReal_r_ready= ready;
assign bramReal_r_done = interface_done;


//------------------------bramImag Instantiation--------------

// The input and output of bramImag
wire  bramImag_Clk_A, bramImag_Clk_B;
wire  bramImag_EN_A, bramImag_EN_B;
wire  [4 - 1 : 0] bramImag_WEN_A, bramImag_WEN_B;
wire    [31 : 0]    bramImag_Addr_A, bramImag_Addr_B;
wire    [31 : 0]    bramImag_Din_A, bramImag_Din_B;
wire    [31 : 0]    bramImag_Dout_A, bramImag_Dout_B;
wire    bramImag_ready;
wire    bramImag_done;

`AESL_BRAM_Imag `AESL_BRAM_INST_Imag(
    .Clk_A    (bramImag_Clk_A),
    .Rst_A    (bramImag_Rst_A),
    .EN_A     (bramImag_EN_A),
    .WEN_A    (bramImag_WEN_A),
    .Addr_A   (bramImag_Addr_A),
    .Din_A    (bramImag_Din_A),
    .Dout_A   (bramImag_Dout_A),
    .Clk_B    (bramImag_Clk_B),
    .Rst_B    (bramImag_Rst_B),
    .EN_B     (bramImag_EN_B),
    .WEN_B    (bramImag_WEN_B),
    .Addr_B   (bramImag_Addr_B),
    .Din_B    (bramImag_Din_B),
    .Dout_B   (bramImag_Dout_B),
    .ready    (bramImag_ready),
    .done        (bramImag_done)
);

// Assignment between dut and bramImag
assign bramImag_Clk_A = Imag_CLK_A;
assign bramImag_Rst_A = Imag_RST_A;
assign bramImag_Addr_A = Imag_ADDR_A;
assign bramImag_EN_A = Imag_EN_A;
assign Imag_DOUT_A = bramImag_Dout_A;
assign bramImag_WEN_A = Imag_WEN_A;
assign bramImag_Din_A = Imag_DIN_A;
assign bramImag_Clk_B = Imag_CLK_B;
assign bramImag_Rst_B = Imag_RST_B;
assign bramImag_Addr_B = Imag_ADDR_B;
assign bramImag_EN_B = Imag_EN_B;
assign Imag_DOUT_B = bramImag_Dout_B;
assign bramImag_WEN_B = Imag_WEN_B;
assign bramImag_Din_B = Imag_DIN_B;
assign bramImag_ready= ready;
assign bramImag_done = interface_done;


AESL_axi_slave_AXILiteS AESL_AXI_SLAVE_AXILiteS(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_AXILiteS_AWADDR (AXILiteS_AWADDR),
    .TRAN_s_axi_AXILiteS_AWVALID (AXILiteS_AWVALID),
    .TRAN_s_axi_AXILiteS_AWREADY (AXILiteS_AWREADY),
    .TRAN_s_axi_AXILiteS_WVALID (AXILiteS_WVALID),
    .TRAN_s_axi_AXILiteS_WREADY (AXILiteS_WREADY),
    .TRAN_s_axi_AXILiteS_WDATA (AXILiteS_WDATA),
    .TRAN_s_axi_AXILiteS_WSTRB (AXILiteS_WSTRB),
    .TRAN_s_axi_AXILiteS_ARADDR (AXILiteS_ARADDR),
    .TRAN_s_axi_AXILiteS_ARVALID (AXILiteS_ARVALID),
    .TRAN_s_axi_AXILiteS_ARREADY (AXILiteS_ARREADY),
    .TRAN_s_axi_AXILiteS_RVALID (AXILiteS_RVALID),
    .TRAN_s_axi_AXILiteS_RREADY (AXILiteS_RREADY),
    .TRAN_s_axi_AXILiteS_RDATA (AXILiteS_RDATA),
    .TRAN_s_axi_AXILiteS_RRESP (AXILiteS_RRESP),
    .TRAN_s_axi_AXILiteS_BVALID (AXILiteS_BVALID),
    .TRAN_s_axi_AXILiteS_BREADY (AXILiteS_BREADY),
    .TRAN_s_axi_AXILiteS_BRESP (AXILiteS_BRESP),
    .TRAN_AXILiteS_interrupt (AXILiteS_INTERRUPT),
    .TRAN_AXILiteS_ready_out (AESL_ready),
    .TRAN_AXILiteS_ready_in (AESL_slave_ready),
    .TRAN_AXILiteS_done_out (AESL_slave_output_done),
    .TRAN_AXILiteS_idle_out (AESL_idle),
    .TRAN_AXILiteS_write_start_in     (AESL_slave_write_start_in),
    .TRAN_AXILiteS_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_AXILiteS_transaction_done_in (AESL_done_delay),
    .TRAN_AXILiteS_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
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
        wait (AESL_reset === 1);
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
        if (~AESL_reset) begin
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
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_Real_r;
reg [31:0] size_Real_r;
reg [31:0] size_Real_r_backup;
reg end_Imag;
reg [31:0] size_Imag;
reg [31:0] size_Imag_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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
    if(AESL_reset === 0)
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

reg dump_tvout_finish_Real_r;

initial begin : dump_tvout_runtime_sign_Real_r
    integer fp;
    dump_tvout_finish_Real_r = 0;
    fp = $fopen(`AUTOTB_TVOUT_Real_r_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_r_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_Real_r_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Real_r_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Real_r = 1;
end


reg dump_tvout_finish_Imag;

initial begin : dump_tvout_runtime_sign_Imag
    integer fp;
    dump_tvout_finish_Imag = 0;
    fp = $fopen(`AUTOTB_TVOUT_Imag_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_out_wrapc);
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
    fp = $fopen(`AUTOTB_TVOUT_Imag_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_Imag_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_Imag = 1;
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
    wait (AESL_reset == 1);
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
    wait (AESL_reset == 1);
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
