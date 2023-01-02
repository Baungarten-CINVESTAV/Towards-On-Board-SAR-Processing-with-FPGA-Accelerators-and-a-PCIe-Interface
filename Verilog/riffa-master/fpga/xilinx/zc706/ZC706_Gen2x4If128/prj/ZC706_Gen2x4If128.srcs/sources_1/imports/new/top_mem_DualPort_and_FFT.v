`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2021 21:18:36
// Design Name: 
// Module Name: top_mem_DualPort_and_FFT
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


module top_mem_DualPort_and_FFT(
    input ap_clk_0,
    output ap_done_0,
    output ap_idle_0,
    output ap_ready_0,
    input ap_rst_0,
    input ap_start_0,
      
    input [8:0]addr_imag_0,
    input [31:0]din_imag_0,
    output [31:0]dout_imag_0,
    input we_imag_0,
    
    input [8:0]addr_imag_1,
    input [31:0]din_imag_1,
    output [31:0]dout_imag_1,
    input we_imag_1,
    
    input [8:0]addr_imag_2,
    input [31:0]din_imag_2,
    output [31:0]dout_imag_2,
    input we_imag_2,
    
    input [8:0]addr_imag_3,
    input [31:0]din_imag_3,
    output [31:0]dout_imag_3,
    input we_imag_3,
      
    input [8:0]addr_real_0,
    input [31:0]din_real_0,
    output [31:0]dout_real_0,
    input we_real_0,
    
    input [8:0]addr_real_1,
    input [31:0]din_real_1,
    output [31:0]dout_real_1,
    input we_real_1,
    
    input [8:0]addr_real_2,
    input [31:0]din_real_2,
    output [31:0]dout_real_2,
    input we_real_2,
    
    input [8:0]addr_real_3,
    input [31:0]din_real_3,
    output [31:0]dout_real_3,
    input we_real_3,
    
    input [31:0] num_word_0
    );

  
  wire [7:0]Real_r_address0_0;
  wire [31:0]Real_r_d0_0;
  wire [31:0]Real_r_q0_0;
  wire Real_r_we0_0;
  
  wire [7:0]Real_r_address0_1;
  wire [31:0]Real_r_d0_1;
  wire [31:0]Real_r_q0_1;
  wire Real_r_we0_1;
  
  wire [7:0]Real_r_address0_2;
  wire [31:0]Real_r_d0_2;
  wire [31:0]Real_r_q0_2;
  wire Real_r_we0_2;
  
  wire [7:0]Real_r_address0_3;
  wire [31:0]Real_r_d0_3;
  wire [31:0]Real_r_q0_3;
  wire Real_r_we0_3;
  
      
  wire [7:0]Imag_address0_0;
  wire [31:0]Imag_d0_0;
  wire [31:0]Imag_q0_0;
  wire Imag_we0_0;
  
      
  wire [7:0]Imag_address0_1;
  wire [31:0]Imag_d0_1;
  wire [31:0]Imag_q0_1;
  wire Imag_we0_1;
  
      
  wire [7:0]Imag_address0_2;
  wire [31:0]Imag_d0_2;
  wire [31:0]Imag_q0_2;
  wire Imag_we0_2;
  
        
  wire [7:0]Imag_address0_3;
  wire [31:0]Imag_d0_3;
  wire [31:0]Imag_q0_3;
  wire Imag_we0_3;
  
  mem_dual_port MEM_real_0(
  .addra({1'b0,Real_r_address0_0}),
  .clka(ap_clk_0),
  .dina(Real_r_d0_0),
  .douta(Real_r_q0_0),
  .wea(Real_r_we0_0),
  
   .addrb(addr_real_0),
  .dinb(din_real_0),
  .doutb(dout_real_0),
  .web(we_real_0)
    );
    
      mem_dual_port MEM_real_1(
  .addra({1'b0,Real_r_address0_1}),
  .clka(ap_clk_0),
  .dina(Real_r_d0_1),
  .douta(Real_r_q0_1),
  .wea(Real_r_we0_1),
  
   .addrb(addr_real_1),
  .dinb(din_real_1),
  .doutb(dout_real_1),
  .web(we_real_1)
    );
    
      mem_dual_port MEM_real_2(
  .addra({1'b0,Real_r_address0_2}),
  .clka(ap_clk_0),
  .dina(Real_r_d0_2),
  .douta(Real_r_q0_2),
  .wea(Real_r_we0_2),
  
   .addrb(addr_real_2),
  .dinb(din_real_2),
  .doutb(dout_real_2),
  .web(we_real_2)
    );
    
          mem_dual_port MEM_real_3(
  .addra({1'b0,Real_r_address0_3}),
  .clka(ap_clk_0),
  .dina(Real_r_d0_3),
  .douta(Real_r_q0_3),
  .wea(Real_r_we0_3),
  
   .addrb(addr_real_3),
  .dinb(din_real_3),
  .doutb(dout_real_3),
  .web(we_real_3)
    );
    /*
      mem_dual_port MEM_real_3(
  .addra({1'b0,Real_r_address0_3}),
  .clka(ap_clk_0),
  .dina(Real_r_d0_3),
  .douta(Real_r_q0_3),
  .wea(Real_r_we0_3),
  
   .addrb(addr_real_3),
  .dinb(din_real_3),
  .doutb(dout_real_3),
  .web(we_real_3)
    );}
    */
    
   mem_dual_port MEM_imag_0(
  .addra({1'b0,Imag_address0_0}),
  .clka(ap_clk_0),
  .dina(Imag_d0_0),
  .douta(Imag_q0_0),
  .wea(Imag_we0_0),
  
   .addrb(addr_imag_0),
   .dinb(din_imag_0),
   .doutb(dout_imag_0),
   .web(we_imag_0)
    );
 
       mem_dual_port MEM_imag_1(
  .addra({1'b0,Imag_address0_1}),
  .clka(ap_clk_0),
  .dina(Imag_d0_1),
  .douta(Imag_q0_1),
  .wea(Imag_we0_1),
  
   .addrb(addr_imag_1),
   .dinb(din_imag_1),
   .doutb(dout_imag_1),
   .web(we_imag_1)
    );
    
       mem_dual_port MEM_imag_2(
  .addra({1'b0,Imag_address0_2}),
  .clka(ap_clk_0),
  .dina(Imag_d0_2),
  .douta(Imag_q0_2),
  .wea(Imag_we0_2),
  
   .addrb(addr_imag_2),
   .dinb(din_imag_2),
   .doutb(dout_imag_2),
   .web(we_imag_2)
    );
    
        
 mem_dual_port MEM_imag_3(
  .addra({1'b0,Imag_address0_3}),
  .clka(ap_clk_0),
  .dina(Imag_d0_3),
  .douta(Imag_q0_3),
  .wea(Imag_we0_3),
  
   .addrb(addr_imag_3),
   .dinb(din_imag_3),
   .doutb(dout_imag_3),
   .web(we_imag_3)
    );
   
    


    
 FFT_Reorder_x_num_wrapper FFT_Reorder_x_num_wrapper
       (
       .Imag_0_address0_0(Imag_address0_0),
        .Imag_0_ce0_0(),
        .Imag_0_d0_0(Imag_d0_0),
        .Imag_0_q0_0(Imag_q0_0),
        .Imag_0_we0_0(Imag_we0_0),
        
        .Imag_1_address0_0(Imag_address0_1),
        .Imag_1_ce0_0(),
        .Imag_1_d0_0(Imag_d0_1),
        .Imag_1_q0_0(Imag_q0_1),
        .Imag_1_we0_0(Imag_we0_1),
        
        .Imag_2_address0_0(Imag_address0_2),
        .Imag_2_ce0_0(),
        .Imag_2_d0_0(Imag_d0_2),
        .Imag_2_q0_0(Imag_q0_2),
        .Imag_2_we0_0(Imag_we0_2),
        
        .Imag_3_address0_0(Imag_address0_3),
        .Imag_3_ce0_0(),
        .Imag_3_d0_0(Imag_d0_3),
        .Imag_3_q0_0(Imag_q0_3),
        .Imag_3_we0_0(Imag_we0_3),
        
        .Real_0_address0_0(Real_r_address0_0),
        .Real_0_ce0_0(),
        .Real_0_d0_0(Real_r_d0_0),
        .Real_0_q0_0(Real_r_q0_0),
        .Real_0_we0_0(Real_r_we0_0),
        
        .Real_1_address0_0(Real_r_address0_1),
        .Real_1_ce0_0(),
        .Real_1_d0_0(Real_r_d0_1),
        .Real_1_q0_0(Real_r_q0_1),
        .Real_1_we0_0(Real_r_we0_1),
        
        .Real_2_address0_0(Real_r_address0_2),
        .Real_2_ce0_0(),
        .Real_2_d0_0(Real_r_d0_2),
        .Real_2_q0_0(Real_r_q0_2),
        .Real_2_we0_0(Real_r_we0_2),
        
        .Real_3_address0_0(Real_r_address0_3),
        .Real_3_ce0_0(),
        .Real_3_d0_0(Real_r_d0_3),
        .Real_3_q0_0(Real_r_q0_3),
        .Real_3_we0_0(Real_r_we0_3),
        
        .ap_clk_0(ap_clk_0),
        .ap_done_0(ap_done_0),
        .ap_idle_0(ap_idle_0),
        .ap_ready_0(ap_ready_0),
        .ap_start_0(ap_start_0),
        .ap_rst_0(ap_rst_0),
          .num_word_0(num_word_0));
        

endmodule

