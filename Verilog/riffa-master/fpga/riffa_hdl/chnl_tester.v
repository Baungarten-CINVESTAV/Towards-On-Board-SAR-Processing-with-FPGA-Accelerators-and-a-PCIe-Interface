// ----------------------------------------------------------------------
// Copyright (c) 2016, The Regents of the University of California All
// rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
// 
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
// 
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
// 
//     * Neither the name of The Regents of the University of California
//       nor the names of its contributors may be used to endorse or
//       promote products derived from this software without specific
//       prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL REGENTS OF THE
// UNIVERSITY OF CALIFORNIA BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
// OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
// TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
// USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
// DAMAGE.
// ----------------------------------------------------------------------
//----------------------------------------------------------------------------
// Filename:			chnl_tester.v
// Version:				1.00.a
// Verilog Standard:	Verilog-2001
// Description:			Sample RIFFA channel user module. Designed to exercise
// 						the RIFFA TX and RX interfaces. Receives data on the
//						RX interface and saves the last value received. Sends
//						the same amount of data back on the TX interface. The
//						returned data starts with the last value received, 
//						resets and increments to end with a value equal to the
//						number of (4 byte) words sent back on the TX interface.
// Author:				Matt Jacobsen
// History:				@mattj: Version 2.0
//-----------------------------------------------------------------------------
`timescale 1ns/1ns
module chnl_tester #(
	parameter C_PCI_DATA_WIDTH = 9'd32
)
(
	input CLK,
	input RST,
	output CHNL_RX_CLK, 
	input CHNL_RX, 
	output CHNL_RX_ACK, 
	input CHNL_RX_LAST, 
	input [31:0] CHNL_RX_LEN, 
	input [30:0] CHNL_RX_OFF, 
	input [C_PCI_DATA_WIDTH-1:0] CHNL_RX_DATA, 
	input CHNL_RX_DATA_VALID, 
	output CHNL_RX_DATA_REN,
	
	output CHNL_TX_CLK, 
	output CHNL_TX, 
	input CHNL_TX_ACK, 
	output CHNL_TX_LAST, 
	output [31:0] CHNL_TX_LEN, 
	output [30:0] CHNL_TX_OFF, 
	output [C_PCI_DATA_WIDTH-1:0] CHNL_TX_DATA, 
	output CHNL_TX_DATA_VALID, 
	input CHNL_TX_DATA_REN,
	
	output [31:0] ov_addr,
	output o_W_enb,
	input [C_PCI_DATA_WIDTH-1:0] douta,
	
	output reg ap_start,
	input ap_ready,
	input ap_done
	
);

reg [C_PCI_DATA_WIDTH-1:0] rData={C_PCI_DATA_WIDTH{1'b0}};
reg [31:0] rLen=0;
reg [31:0] rCount=0;
reg [2:0] rState=0;

reg [C_PCI_DATA_WIDTH-1:0] mem [15:0];
reg [5:0] rCount_2 ={C_PCI_DATA_WIDTH{1'b0}};

reg add_mem_addr = (rState == 3'd3)?1'd1:1'd0;


assign ov_addr = (rCount>>3'd2) + add_mem_addr;
assign o_W_enb = (rState == 3'd1 | rState == 3'd0);

// - - - - - -- - Señales riffa - - - - - - - - - -
assign CHNL_RX_CLK = CLK;
assign CHNL_RX_ACK = (rState == 3'd1 & CHNL_RX);
assign CHNL_RX_DATA_REN = (rState == 3'd1);

assign CHNL_TX_CLK = CLK;
assign CHNL_TX = (rState >= 3'd2);
assign CHNL_TX_LAST = 1'd1;
assign CHNL_TX_LEN = rLen; // in words
assign CHNL_TX_OFF = 0;
assign CHNL_TX_DATA = rData;
assign CHNL_TX_DATA_VALID = (rState == 3'd3);


always @(posedge CLK or posedge RST) begin
	if (RST) begin
		rLen <= #1 0;
		rCount <= #1 0;
		rState <= #1 0;
		rData <= #1 0;
		
		ap_start <= 1'd0;
		rCount_2 <= 0;
		//o_W_enb <= 1;
	end
	else begin
		case (rState)
		
		3'd0: begin // Wait for start of RX, save length
			if (CHNL_RX) begin
				rLen <= #1 CHNL_RX_LEN;
				rCount <= #1 0;
				rState <= #1 3'd1;
				
				ap_start <= 1'd0;
		//		o_W_enb <= 1;
			end
		end
		
		3'd1: begin // Wait for last data in RX, save value
			if (CHNL_RX_DATA_VALID)
			 begin
				//mem[rCount>>3'd2] <= #1 CHNL_RX_DATA;
				//rData <= #1 CHNL_RX_DATA;
				//rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
				rCount <= #1 rCount + 3'd4;
			 end
			if (rCount >= rLen)
			begin
				rState <= 3'd4;
			//	o_W_enb <= 0;
			end
		end

		3'd2: begin // Prepare for TX
			rCount <= #1 (C_PCI_DATA_WIDTH/32);
			//rCount <= #1 rCount + 3'd4;
		   rData <= #1 mem[0];// funciona bien
			//rData <= #1 douta;

			
			rState <= #1 3'd3;
		end

		2'd3: 
		begin // Start TX with save length and data value
			if (CHNL_TX_DATA_REN & CHNL_TX_DATA_VALID) 
			begin
				
			///    	rData <= #1 douta;
			    
			     //rCount <= #1 rCount + 3'd4;
			     
                if (rCount >= 6'd59)//(rLen + 4'd8)
                begin
                   rData <= #1 douta;
                   rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
                end
                else if (rCount >= 6'd55)
                begin
                    rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
                    rData <= #1 mem[rCount>>2'd2]; //funciona bien
                end
                else
                begin     
                    rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
                    rData <= #1 mem[rCount>>2'd2]; //funciona bien
                end
			     
				if (rCount >= rLen)
				begin
					rState <= #1 3'd0;
				end
			end
			
		end
		
		// down WE 
		3'd4: 
		begin 
		  rCount <= #1 32'd0;
		  rCount_2 <= 0;
          rState <= #1  3'd5; // cambiar por estado 5
    //      o_W_enb <= 1'd0;
		end
		
		3'd5: 
		begin 
		
		    if(ap_done)
            begin
                rState <= #1  3'd6;
                rCount_2 <= 1'd0;
            end
            else if(ap_ready)
            begin
              rCount_2 <= 1'd1;
              ap_start <= 1'd0;
            end
            else if(rCount_2 == 0)
            begin
              ap_start <= 1'd1;
            end
            
            
    //      o_W_enb <= 1'd0;
		end
	/*	
		3'd5:
		begin
		  if(rCount_2 < 2'd1 )
		  begin
		      rCount_2 <= rCount_2 + 1'd1;
		  end
		  else
		  begin
		      rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
		      //rData <= #1 mem[rCount>>2'd2]; //funciona bien
		  end
          // rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);      
            if (rCount >= rLen)
            begin
                rState <= #1 3'd6;
                rCount_2 <= 0;
        //        o_W_enb <= 1'd0;
            end

		end
	*/
		3'd6:
		begin
		  if(rCount_2 < 3'd1 )
		  begin
		      rCount_2 <= rCount_2 + 1'd1;
		      rCount <= 0;
		  end
		  else
		  begin
		      rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
		       mem[(rCount>>2'd2)-1'd1] <= douta;
		  end
          // rCount <= #1 rCount + (C_PCI_DATA_WIDTH/32);
            
            if (rCount >= 7'd67)//(rLen + 4'd8)
            begin
                rState <= #1 3'd7;
                rCount_2 <= 0;
            //    o_W_enb <= 1'd0;
            end
		end
		
		3'd7:
		begin
		  rCount <= #1 32'd0;
          rState <= #1  3'd2;     
		end
		endcase
	end
end

// ---------------------- Test MEM ip --------------------------

/*
Test_mem_wrapper Test_mem_wrapper
   (//.addra(rCount>>2'd2),
    .clka(CLK),
    .addra(rCount>>3'd2),
    .dina(CHNL_RX_DATA),
    .douta(douta),
    .wea(o_W_enb),
    //.wea(rState == 2'd0 | rState == 2'd1)
    
    .clkb(1'd0),
    .addrb(31'd0),
    .dinb(31'd0),
    .doutb(31'd0),
    .web(1'd0)
    );
    */
// ---------------------- Test MEM ip --------------------------  

// ---------------------- Test with MEM module --------------------------
/*
Mem_no_IP Mem_no_IP(
    //.addra(rCount>>2'd2),
    .clka(CLK),
    .addra(rCount>>2'd2),
    .dina(CHNL_RX_DATA),
    .douta(CHNL_TX_DATA),
    //.wea(1'd0)
    .wea(rState == 2'd0 | rState == 2'd1)
    
    .clkb(CLK),
    .addrb(rCount>>2'd2),
    .dinb(1'b0),
    .doutb(),
    //.wea(1'd0)
    .web(1'b0) 
    
    );
    */
// ---------------------- Test with MEM module --------------------------
endmodule
