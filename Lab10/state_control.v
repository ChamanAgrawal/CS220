`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:59 04/08/2019 
// Design Name: 
// Module Name:    state_control 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module state_control(clk, PC0, state
    );

   	input clk;
   	input [7:0] PC0;
	   output [2:0] state;
	   reg [2:0] state;
	   initial begin
	   	state = 0;
	   end
	
	always @ (posedge clk) begin
	   if ((state == 5) && (PC0 < 14)) begin
         		state <= 0;
		end
		else if (state != 6) begin
		   	state <= state + 1;
				
		end
	end

endmodule
