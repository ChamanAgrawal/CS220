`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:48:43 04/08/2019 
// Design Name: 
// Module Name:    execute 
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
module execute(clk, state, opcode, rsv, rtv, imm, func, result, instruction_invalid, i, load, update
    );

   input clk;
	input [2:0] state;
	input [5:0] opcode;
	input [7:0] rsv;
	input [7:0] rtv;
	input [15:0] imm;
	input [5:0] func;
	
	output [7:0] result;
	output instruction_invalid;
	output i,load;
	output [1:0] update;
	
	reg [7:0] result;
	reg instruction_invalid;
	reg [3:0] i;
	reg load;
	reg [1:0]update;
	
	initial begin
	   	instruction_invalid = 1;
			i = 4'b0;
			load = 0;
			update = 2'b0;
	end
	
	always @ (posedge clk) begin
	   	if (state == 3) begin
		   	if ((opcode == 6'b0) && (func == 6'h21)) begin //addu
			   	result <= rsv + rtv;
				instruction_invalid <= 0;
				update <= 2'b0;
				load <=0;
			end
			else if ((opcode == 6'b0) && (func == 6'h2A)) begin //slt
			   	result <= ($signed(rsv)>$signed(rtv))?1:0;
				instruction_invalid <= 0;
				update <= 2'b0;
				load <=0;
			end
			else if (opcode == 6'b001001) begin //addiu
			   	result <= rsv + imm[7:0];
				instruction_invalid <= 0;
				update <= 2'b0;
				load <=0;
			end
			else if (opcode == 6'b000100) begin //beq
			   update <= 2'b01;
				instruction_invalid <= 0;
				load <=0;
			end
			else if (opcode == 6'b000101) begin //bne
			   update <= 2'b01;	
				instruction_invalid <= 0;
				load <=0;
			end
			else if ((opcode == 6'b000000)  && (func == 6'h8) ) begin //jr
			   update <= 2'b10;
				instruction_invalid <= 0;
				load <=0;
			end
			else if (opcode == 6'b000011) begin //jal
				update <= 2'b11;
				instruction_invalid <= 0;
				load <=0;
			end
			else if (opcode == 6'b100011) begin //lw
				load <= 1;
				i <= rsv+imm[7:0];
				instruction_invalid <= 0;
				update <= 2'b0;
			end	
			else begin
			   instruction_invalid <= 1;
				load <=0;
				update <= 2'b0;
			end
		end
	end


endmodule
