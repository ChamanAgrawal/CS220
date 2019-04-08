`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:12 04/08/2019 
// Design Name: 
// Module Name:    instruction_memory_top 
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
module instruction_memory_top( clk,led
    );

   input clk;
	output [7:0] led;
	
	reg [7:0] led;
	
	wire [7:0] PC0;
	wire [2:0] state;
	wire [31:0] instruction;
	wire [5:0] opcode;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [15:0] imm;
	wire [5:0] func;
	wire [7:0] result0;
	wire [7:0] result1;
	wire instruction_invalid;
	wire [7:0] rsv;
	wire [7:0] rtv;
	wire [3:0] i;
	wire load,done;	
	state_control SC(clk, PC0, state);
	instruction_memory IF(clk, update, imm, state, done, PC0, instruction);
	decode ID(clk, state, instruction, opcode, rs, rt, rd, imm, func);
	register_file RF(clk, state, done, rs, rt, (opcode == 6'b0) ? rd : rt, result1, instruction_invalid, rsv, rtv);
	execute EX(clk, state, opcode, rsv, rtv, imm, func, result0, instruction_invalid,i,load, update);
	data_memory DM(clk ,state,result0, load , i , result1);
	
	always @ (posedge clk) begin
	   	if ((state == 6) || (done == 1)) begin
		   	led <= rsv;
		end
	end


endmodule
