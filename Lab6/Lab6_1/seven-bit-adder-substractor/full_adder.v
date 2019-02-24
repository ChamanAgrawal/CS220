`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:57 02/24/2019 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(a,b,type,cin,sum,cout
    );
	input a;
	input b;
	input type;
	input cin;
	
	output sum;
	wire sum;
	output cout;
	wire cout;
	
	assign sum = a^(b^type)^cin;
	assign cout = (a&(b^type))|((b^type)&cin)|(cin&a);
	

endmodule
