`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:08 03/04/2019 
// Design Name: 
// Module Name:    grid_walk 
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
module grid_walk(clk,Y,rotation_event,final_x, final_y
    );
	 input clk;
	 input[3:0] Y;
	 input rotation_event;
	 output[3:0] final_x;
	 output[3:0] final_y;
	 reg[3:0] final_x;
	 reg[3:0] final_y;
	 reg dir_x;
	 reg dir_y;
	 reg[2:0] dir;
	 reg[2:0] dis;
	 reg[2:0] dis_x;
	 reg[2:0] dis_y;
	 reg [3:0] temp_x;
	 reg [3:0] temp_y;
	 
	 wire [3:0] x;
	 wire [3:0] y;
	 
	 wire carry_x;
	 wire carry_y;
	 reg prev_rotation_event;	
	 
	initial begin
		prev_rotation_event = 1'b0;
		dir_x = 1'b0;
		dir_y = 1'b0;
		final_x = 4'b0000;
		final_y = 4'b0000;
	end

always @(posedge clk) begin
	if((prev_rotation_event == 0) && (rotation_event == 1)) begin
		temp_x <= final_x;
		temp_y <= final_y;
		
		dir <= Y[1:0];
		dis <= Y[3:2];
		if(dir == 2'b00 || dir == 2'b01) begin
			if(dir == 2'b00) begin
				dir_x <= 1;
			end
			else begin
				dir_x <= 0;
			end
			dis_x <= dis;
			dis_y <= 2'b00;
			
			if(dir_x & !carry_x) begin
				final_x <= 0;
			end
			else if(!dir_x & carry_x) begin
				final_x <= 4'b1111;
			end
			else begin
				final_x <= x;
			end
		end
		else begin
			if(dir == 2'b10) begin
				dir_y <= 0;
			end
			else begin
				dir_y <= 1;
			end
			dis_y <= dis;
			dis_x <= 2'b00;
			
			if(dir_y & !carry_y) begin
				final_y <= 0;
			end
			else if(!dir_y & carry_y) begin
				final_y <= 4'b1111;
			end
			else begin
				final_y <= y;
			end
		end
	end
	prev_rotation_event <= rotation_event;
end
		
		five_bit_adder uut0(temp_x, dir_x, dis_x, x, carry_x);
		five_bit_adder uut1(temp_y, dir_y, dis_y, y, carry_y);	
		
endmodule