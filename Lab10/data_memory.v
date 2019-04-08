`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:30:14 04/08/2019 
// Design Name: 
// Module Name:    data_memory 
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
module data_memory( clk ,state, result0, load , i , result1
    );
	input clk;
	input[2:0] state;
	input load;
	input[3:0] i;
	input[7:0] result0;
	output result1;
	reg[7:0] result1;
	reg[7:0] data_memory[0:10];
	initial begin
		data_memory[0] = 8'b00000000;
		data_memory[1] = 8'b00000000;
		data_memory[2] = 8'b00000000;
		data_memory[3] = 8'b00000000;
		data_memory[4] = 8'b00000000;
		data_memory[5] = 8'b00000000;
		data_memory[6] = 8'b00000000;
		data_memory[7] = 8'b00000000;
		data_memory[8] = 8'b00000000;
		data_memory[9] = 8'b00000000;
		data_memory[10] = 8'b00001000;
	end
	always @(posedge clk) begin
		if((state == 4) && (load == 1) ) begin
			result1 <= data_memory[i];
		end
		else begin
			result1 <= result0;
		end	
	end	

endmodule
