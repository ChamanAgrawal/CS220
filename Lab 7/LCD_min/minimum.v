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
module minimum( A, B, C, D, clk, DB, minpos);

input [2:0] A, B, C, D;
input clk;
output DB;
reg[7:0] DB;
output minpos;
reg[1:0] minpos;

initial begin
	DB <= 8'b0;
	minpos <= 2'b00;
end

always @(posedge clk) begin
	if ((A <= B) && (A <= C) && (A <= D)) begin
		DB <= 8'b00110000;
		minpos <= 2'b00;
	end
	else if ((B <= A) && (B <= C) && (B <= D)) begin
		DB <= 8'b00110001;
		minpos <= 2'b01;
	end
	else if ((C <= A) && (C <= B) && (C <= D)) begin
		DB <= 8'b00110010;
		minpos <= 2'b10;
	end
	else if ((D <= A) && (D <= B) && (D <= C)) begin
		DB <= 8'b00110011;
		minpos <= 2'b11;
	end
end
endmodule
