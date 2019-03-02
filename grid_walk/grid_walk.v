`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:29:31 03/02/2019 
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
module grid_walk(clk,Y,rotation_event,final_x,final_y
    );
	 input clk;
	 input[3:0] Y;
	 input rotation_event;
	 output[3:0] final_x;
	 output[3:0] final_y;
	 reg[3:0] initial_x;
	 reg[3:0] initial_y;
	 assign initial_x = 4'b0;
	 assign initial_y = 4'b0;
	 reg[2:0] dir;
	 reg[2:0] dis;
	 wire carry_x;
	 wire carry_y;
	 reg prev_rotation_event;	
	 assign prev_rotation_event = 1'b0;

always @(posedge clk) begin
			if((prev_rotation_event == 0) && (rotation_event == 1)) begin
				dir <= Y[1:0];
				dis <= Y[3:2];
				if(dir==0 || dir==1) begin
					five_bit_adder(initial_x,dir,dis,final_x,carry_x);
				end
				else begin 
					five_bit_adder(initial_y,dir,dis,final_y,carry_y);
				end
				initial_x <= final_x;
				initial_y <= final_y;
				if(initial_x < 0) begin
					initial_x <= 4'b0;
					break;
				end
				if(initial_y < 0) begin
					initial_y <= 4'b0;
					break;
				end
				if(carry_x == 1) begin
					initial_x <= 4'b1111;
					break;
				end
				if(carry_y == 1) begin
					initial_y <= 4'b1111;
					break;
				end	
			end
			prev_rotation_event <= rotation_event;
		end
endmodule
