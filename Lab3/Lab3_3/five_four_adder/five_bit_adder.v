`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:44 02/04/2019 
// Design Name: 
// Module Name:    five_bit_adder 
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
module five_bit_adder(
	x, y, cin, z, carry
    );
	input [4:0] x;
	input [4:0] y;
	input cin;
	output [4:0] z;
	wire [4:0] z;
	output carry;
	wire carry, carry0, carry1, carry2, carry3;
	full_adder FA0 (x[0], y[0], 1'b0, z[0], carry0);
	full_adder FA1 (x[1], y[1], carry0, z[1], carry1);
	full_adder FA2 (x[2], y[2], carry1, z[2], carry2);
	full_adder FA3 (x[3], y[3], carry2, z[3], carry3);
	full_adder FA4 (x[4], y[4], carry3, z[4], carry);

endmodule
