`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:29 04/07/2019 
// Design Name: 
// Module Name:    instruction_memory 
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
module instruction_memory( clk , update, imm, state, done,prog_cnt, instruction
    );
input clk;
input[2:0] state;
input[1:0] update;
input[15:0] imm;
reg[31:0] memory [0:13];
output[31:0] instruction;
output done;
output[7:0] prog_cnt;
reg done;
reg[31:0] instruction;
reg[7:0] prog_cnt; 
initial begin
	memory[0] = 32'b001001_00000_00010_0000000000000000;
	memory[1] = 32'b001001_00000_00011_0000000000000000;
	memory[2] = 32'b000000_00001_00011_00100_00000_101010;
	memory[3] = 32'b000100_00000_00100_0000000000001000;
	memory[4] = 32'b001001_00000_00101_0000000000001010;
	memory[5] = 32'b000100_00101_00011_0000000000000110;
	memory[6] = 32'b100011_00011_00101_0000000000000000;
	memory[7] = 32'b000000_00110_00010_00010_00000_100001;
	memory[8] = 32'b001001_00011_00011_0000000000000001;
	memory[9] = 32'b000000_00001_00011_00100_00000_101010;
	memory[10] = 32'b000101_00000_00100_1111111111111011;
	memory[11] = 32'b000000_11111_00000_00000_00000_001000;
	memory[12] = 32'b100011_00000_00001_0000000000001010;
	memory[13] = 32'b000011_00000000000000000000000000;
	instruction = 32'b0;
	prog_cnt = 8'b00001010;
	done = 0;
end
always @(posedge clk) begin
	if(prog_cnt == 11) begin
		done <= 1;
	end	
	if(state == 0) begin
		instruction <= memory[prog_cnt];
		if(update == 0) begin
			prog_cnt <= prog_cnt + 1;
		end
		else if(update == 1) begin
			prog_cnt <= prog_cnt + imm[7:0];
		end
		else if(update == 2) begin
			done <= 1;
		end
		else if(update == 3) begin
			prog_cnt <=  imm[7:0];
		end	
	end	
end
	
endmodule
