`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:08:50 02/24/2019 
// Design Name: 
// Module Name:    seven_bit_adder_substractor 
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
module seven_bit_adder_substractor( clk, Y, ROT_A, ROT_B, sum, carry
    );
	input clk, ROT_A, ROT_B;
	input[3:0] Y;
	
	output sum, carry;
	wire[6:0] sum;
	wire carry, rotation_event;
	
	is_rotation uut0(clk, ROT_A, ROT_B, rotation_event);
	myinput uut1(clk, Y, rotation_event, sum, carry);

endmodule
