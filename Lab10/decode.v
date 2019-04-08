`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:26:48 04/08/2019 
// Design Name: 
// Module Name:    decode 
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
module decode(clk, state, instruction, opcode, rs, rt, rd, imm, func
    );

   	input clk;
	input [2:0] state;
	input [31:0] instruction;
	
	output [5:0] opcode;
	output [4:0] rs;
	output [4:0] rt;
	output [4:0] rd;
	output [15:0] imm;
	output [5:0] func;
	
	reg [5:0] opcode;
	reg [4:0] rs;
	reg [4:0] rt;
	reg [4:0] rd;
	reg [15:0] imm;
	reg [5:0] func;
	
	always @ (posedge clk) begin
	   	if (state == 1) begin
		   	opcode <= instruction[31:26];
				rs <= instruction[25:21];
				rt <= instruction[20:16];
				rd <= instruction[15:11];
				imm <= instruction[15:0];
				func <= instruction[5:0];
		end
	end

endmodule
