`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:48 03/02/2019 
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
module five_bit_adder(X , dir , dis, final_x,carry
    );
	 input[3:0] X;
	 input[1:0] dir;
	 input[1:0] dis;
	 output[3:0] final_x;
	 output carry;
	 wire carry0;
	 wire carry1;
	 wire carry2;
	 full_adder FA0(X[0],dis[0]^dir[0],1'b0,final_x[0],carry0);
	 full_adder FA1(X[1],dis[1]^dir[0],carry0,final_x[1],carry1);
    full_adder FA2(X[2],1'b0,carry1,final_x[2],carry2);
	 full_adder FA3(X[3],1'b0,carry2,final_x[3],carry);

endmodule
