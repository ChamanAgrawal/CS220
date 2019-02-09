`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:30 02/09/2019 
// Design Name: 
// Module Name:    rotator_top 
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
module rotator_top(clk, ROT_A, ROT_B, led0, led1, led2, led3, led4, led5, led6, led7
    );
	 
	input clk, ROT_A, ROT_B;
	 
	output led0, led1, led2, led3, led4, led5, led6, led7;
	wire led0, led1, led2, led3, led4, led5, led6, led7;
	
	wire rotation_event, rotation_direction;
	
	rotation uut1(clk, ROT_A, ROT_B, rotation_event, rotation_direction);
	ripple uut2(clk, rotation_event, rotation_direction, led0, led1, led2, led3, led4, led5, led6, led7);

endmodule
