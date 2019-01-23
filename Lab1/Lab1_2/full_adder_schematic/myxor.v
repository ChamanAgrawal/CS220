`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:14:47 01/14/2019 
// Design Name: 
// Module Name:    myxor 
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
module myxor(x, y,z
    );
	 input x;
	 input y;
	 output z;
	 wire z;
	 
	 assign z = (x& ~y) | (~x & y);


endmodule
