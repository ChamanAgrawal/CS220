`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:26 01/28/2019 
// Design Name: 
// Module Name:    comparator 
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
module comparator( a, b, li, gi, ei, l, g, e
);
	input a;
	input b;
	input li;
	input gi;
	input ei;

	output l;
	wire l;
	output e;
	wire e;
	output g;
	wire g;
	assign l = ((((~a)&b)&(ei))|li)&(~gi);
	assign e = (a&b | (~a)&(~b))&(~li)&(~gi);
	assign g = (((a&(~b))&(ei))|gi)&(~li);

endmodule
