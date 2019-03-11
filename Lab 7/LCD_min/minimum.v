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
module minimum( A, B, C, D, clk, minpos, DB);

input [2:0] A, B, C, D;
input clk;
output minpos, DB;
reg[1:0] minpos;
reg[7:0] DB = 8'b0;
always @(posedge clk) begin
	if ((A <= B) && (A <= C) && (A <= D)) begin
		minpos <= 0;
		DB <= 8'b00110000;
	end
	else if ((B <= A) && (B <= C) && (A <= D)) begin
		minpos <= 1;
		DB <= 8'b00110001;
	end
	else if ((C <= A) && (C <= B) && (A <= D)) begin
		minpos <= 2;
		DB <= 8'b00110010;
	end
	else if ((D <= A) && (D <= B) && (D <= C)) begin
		minpos <= 3;
		DB <= 8'b00110011;
	end
end
endmodule
