`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2021 20:27:11
// Design Name: 
// Module Name: mem_dual_port
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


module mem_dual_port(
  input [8:0]addra,
  input clka,
  input [31:0]dina,
  output reg [31:0]douta,
  input wea,
  
  input [8:0]addrb,
  input [31:0]dinb,
  output reg [31:0]doutb,
  input web
    );
    
    reg [31:0] rv_Mem [511:0];
    initial
    begin
       // $readmemh("C:/Users/EMILIO/Desktop/HLS/FFT_Reorder/Array_p_2/impl/verilog/project.srcs/sources_1/new/mem_init.txt",rv_Mem);
        $readmemh("C:/Users/EMILIO/Desktop/Nueva carpeta/riffa-master_6_v3/fpga/xilinx/zc706/ZC706_Gen2x4If128/prj/ZC706_Gen2x4If128.srcs/sources_1/imports/new/mem_32_bits_0_to_255.txt",rv_Mem);
    end
    always @(posedge clka)
    begin
        if(wea)
        begin
            rv_Mem[addra]<= dina;
            douta <= dina;
        end
        else
        begin
            douta <= rv_Mem[addra];
        end
    end    
    
    always @(posedge clka)
    begin
        if(web)
        begin
            rv_Mem[addrb]<= dinb;
            doutb <= dinb;
        end
        else
        begin
            doutb <= rv_Mem[addrb];
        end
      end

    
endmodule
