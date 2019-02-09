`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:10 02/09/2019 
// Design Name: 
// Module Name:    rotation 
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
module rotation( clk, ROAT_A, ROT_B, rotation_event, rotation_direction
    );
	 
	 input clk, ROAT_A, ROT_B;
	 
	 output rotation_event, rotation_direction;
	 reg rotation_event, rotation_direction;
	 
	 always@(posedge clk) begin
		if(ROT_A == 1) begin
			if(ROT_B == 1) begin
				rotation_event = 1;
			end
			else begin
				rotation_direction = 0;
			end
		end
		else begin
			if(ROT_B == 1) begin
				rotation_direction = 1;
			end
			else begin
				rotation_event = 0;
			end
		end
	 end

endmodule
