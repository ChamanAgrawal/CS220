`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:16 03/31/2019 
// Design Name: 
// Module Name:    memory 
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
module memory( leds, clk, mode
    );
	input mode;
	input clk;
	reg[3:0] cnt_prog;
	reg[1:0] cnt_3;
	reg[1:0] cnt_4;
	reg[1:0] cnt_5;
	reg[1:0] cnt_6;
	reg[2:0] cnt_r;
	reg[2:0] cnt_i;
	reg[1:0] cnt_j;
	reg [31:0] inst_memory[0:7];
	wire [31:0] w;
	reg[7:0] i;
	output reg[7:0]leds;
	
	initial begin
		inst_memory[0]<=32'h20043456;
		inst_memory[1]<=32'h2005FFFF;
		inst_memory[2]<=32'h00A43020;
		inst_memory[3]<=32'h20030007;
		inst_memory[4]<=32'h00C33004;
		inst_memory[5]<=32'h00031842;
		inst_memory[6]<=32'h8C859ABC;
		inst_memory[7]<=32'h08123456;
		cnt_prog <= 4'b0;
		cnt_3 <= 2'b0;
		cnt_4 <= 2'b0;
		cnt_5 <= 2'b0;
		cnt_6 <= 2'b0;
		cnt_r <= 3'b0;
		cnt_i <= 3'b0;
		cnt_j <= 2'b0;
		leds <= 8'b0;
		
	end
	
	always @(posedge clk) begin
		if(cnt_prog != 8) begin
			if(w[31:26] == 0) begin
				cnt_r <= cnt_r + 1;
				if(w[15:11] == 3) begin
					cnt_3 <= cnt_3 + 1;
				end
				else if(w[15:11] == 4) begin
					cnt_4 <= cnt_4 + 1;
				end
				else if(w[15:11] == 5) begin
					cnt_5 <= cnt_5 + 1;
				end
				else if(w[15:11] == 6) begin
					cnt_6 <= cnt_6 + 1;
				end
			end
			else if(w[31:26] == 23 || w[31:26] == 8) begin
				cnt_i <= cnt_i + 1;
				if(w[20:16] == 3) begin
					cnt_3 <= cnt_3 + 1;
				end
				else if(w[20:16] == 4) begin
					cnt_4 <= cnt_4 + 1;
				end
				else if(w[20:16] == 5) begin
					cnt_5 <= cnt_5 + 1;
				end
				else if(w[20:16] == 6) begin
					cnt_6 <= cnt_6 + 1;
				end
			end
			else begin
				cnt_j <= cnt_j + 1;
			end
			cnt_prog <= cnt_prog + 1;
		end
		
		if(cnt_prog == 8) begin
			if(mode == 0) begin
				leds[2:0] <= cnt_r;
				leds[5:3] <= cnt_i;
				leds[7:6] <= cnt_j;
			end
			else begin
				leds[1:0] <= cnt_3;
				leds[3:2] <= cnt_4;
				leds[5:4] <= cnt_5;
				leds[7:6] <= cnt_6;
			end
		end
	end
	assign w = inst_memory[cnt_prog];
	
endmodule
