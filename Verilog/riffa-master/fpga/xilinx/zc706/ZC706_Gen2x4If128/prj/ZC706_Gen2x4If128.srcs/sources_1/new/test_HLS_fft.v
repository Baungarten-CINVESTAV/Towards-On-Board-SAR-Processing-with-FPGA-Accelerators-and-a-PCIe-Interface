`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2021 08:44:15
// Design Name: 
// Module Name: test_HLS_fft
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_HLS_fft();

reg ap_clk_0;
reg [8:0]Imag_0_addrb;
reg rCount_2;

wire [31:0]Imag_0_doutb;
wire [31:0]Imag_1_doutb;
wire [31:0]Imag_2_doutb;
wire [31:0]Imag_3_doutb;

reg [8:0]Real_0_addrb;
wire [31:0]Real_0_doutb;
wire [31:0]Real_1_doutb;
wire [31:0]Real_2_doutb;
wire [31:0]Real_3_doutb;
  
  wire ap_done;
  wire ap_ready;
   
  reg ap_start_Real;
  reg ap_start_Imag;
  reg o_W_enb_imag;
  reg o_W_enb_real;
  reg rst_out;
  
  reg [31:0]dinb_Imag_0;
  reg [31:0]dinb_Imag_1;
  reg [31:0]dinb_Imag_2;
  reg [31:0]dinb_Imag_3;
  reg [31:0]dinb_Real_0;
  reg [31:0]dinb_Real_1;
  reg [31:0]dinb_Real_2;
  reg [31:0]dinb_Real_3;


 HLS_FFT_wrapper HLS_FFT_wrapper
       (.addrb_Imag_0(Imag_0_addrb),
        .addrb_Imag_1(Imag_0_addrb),
        .addrb_Imag_2(Imag_0_addrb),
        .addrb_Imag_3(Imag_0_addrb),
        .addrb_Real_0(Real_0_addrb),
        .addrb_Real_1(Real_0_addrb),
        .addrb_Real_2(Real_0_addrb),
        .addrb_Real_3(Real_0_addrb),
        .ap_clk_0(ap_clk_0),
        .ap_done_0(ap_done),
        .ap_idle_0(),
        .ap_ready_0(ap_ready),
        .ap_rst_0(rst_out),
        .ap_start_0(ap_start_Real & ap_start_Imag),
        .dinb_Imag_0(dinb_Imag_0),
        .dinb_Imag_1(dinb_Imag_1),
        .dinb_Imag_2(dinb_Imag_2),
        .dinb_Imag_3(dinb_Imag_3),
        .dinb_Real_0(dinb_Real_0),
        .dinb_Real_1(dinb_Real_1),
        .dinb_Real_2(dinb_Real_2),
        .dinb_Real_3(dinb_Real_3),
        .doutb_Imag_0(Imag_0_doutb),
        .doutb_Imag_1(Imag_1_doutb),
        .doutb_Imag_2(Imag_2_doutb),
        .doutb_Imag_3(Imag_3_doutb),
        .doutb_Real_0(Real_0_doutb),
        .doutb_Real_1(Real_1_doutb),
        .doutb_Real_2(Real_2_doutb),
        .doutb_Real_3(Real_3_doutb),
        .web_Imag_0(o_W_enb_imag),
        .web_Imag_1(o_W_enb_imag),
        .web_Imag_2(o_W_enb_imag),
        .web_Imag_3(o_W_enb_imag),
        .web_Real_0(o_W_enb_real),
        .web_Real_1(o_W_enb_real),
        .web_Real_2(o_W_enb_real),
        .web_Real_3(o_W_enb_real));
        
        initial
        begin
            repeat(500)
            begin
                if(rCount_2 != 10)
                begin
                    if(ap_ready)
                    begin
                      rCount_2 = 1'd1;
                      ap_start_Real = 1'd0;
                      ap_start_Imag = 1'd0;
                    end
                    else if(rCount_2 == 0)
                    begin
                      ap_start_Real = 1'd1;
                      ap_start_Imag = 1'd1;
                    end
                    
                    if(ap_done)
                    begin
                        rCount_2 = 4'd10;
                    end
                    #10;
                  end
               end
        end
        
        always
        begin
            ap_clk_0 = ~ap_clk_0;
            #5;
        end
endmodule
