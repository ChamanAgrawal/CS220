`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:30 03/04/2019 
// Design Name: 
// Module Name:    minimum 
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
module minimum( A, B, C, D, clk, minpos);

input [2:0] A, B, C, D;
input clk;
output minpos;
reg[1:0] minpos;

always @(posedge clk) begin
	if ((A <= B) && (A <= C) && (A <= D)) begin
		minpos <= 0;
	end
	else if ((B <= A) && (B <= C) && (A <= D)) begin
		minpos <= 1;
	end
	else if ((C <= A) && (C <= B) && (A <= D)) begin
		minpos <= 2;
	end
	else if ((D <= A) && (D <= B) && (D <= C)) begin
		minpos <= 3;
	end
end

endmodule
