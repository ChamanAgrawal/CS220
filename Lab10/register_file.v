`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:22:27 04/08/2019 
// Design Name: 
// Module Name:    register_file 
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

module register_file(clk, state, done, rs, rt, rd, result, instruction_invalid, rsv, rtv
    );

   input clk;
	input [2:0] state;
	input [4:0] rs;
	input [4:0] rt;
	input [4:0] rd;
	input [7:0] result;
	input instruction_invalid,done;
	
	output [7:0] rsv;
	output [7:0] rtv;
	
	reg [7:0] rsv;
	reg [7:0] rtv;
	reg [7:0] data_memory [0:10];
	reg [7:0] regfile [0:31];
	
	initial begin
	   regfile[0] = 0;
		regfile[1] = 0;
		regfile[2] = 0;
		regfile[3] = 0;
		regfile[4] = 0;
		regfile[5] = 0;
		regfile[6] = 0;
		regfile[7] = 0;
		regfile[8] = 0;
		regfile[9] = 0;
		regfile[10] = 0;
		regfile[11] = 0;
		regfile[12] = 0;
		regfile[13] = 0;
		regfile[14] = 0;
		regfile[15] = 0;
		regfile[16] = 0;
		regfile[17] = 0;
		regfile[18] = 0;
		regfile[19] = 0;
		regfile[20] = 0;
		regfile[21] = 0;
		regfile[22] = 0;
		regfile[23] = 0;
		regfile[24] = 0;
		regfile[25] = 0;
		regfile[26] = 0;
		regfile[27] = 0;
		regfile[28] = 0;
		regfile[29] = 0;
		regfile[30] = 0;
		regfile[31] = 0;
	end
	
	always @ (posedge clk) begin
	   	if (state == 2) begin
		   	rsv <= regfile[rs];
			rtv <= regfile[rt];
		end
		else if ((state == 5) && (rd != 0) && (instruction_invalid == 0)) begin
		   	regfile[rd] <= result;
		end
		else if ((state == 6) || (done == 1)) begin
		   	rsv <= regfile[2];
		end
	end
	
endmodule
