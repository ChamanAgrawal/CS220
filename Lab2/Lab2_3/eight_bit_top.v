`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:06:34 01/28/2019
// Design Name:   eight_bit_comp
// Module Name:   /media/rishabhbt/DADA/CS220Labs/Lab2/Lab2_3/eight_bit_top.v
// Project Name:  comp
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_top;

	// Inputs
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg [3:0] Y;

	// Outputs
	wire l;
	wire g;
	wire e;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comp uut (
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.Y(Y), 
		.l(l), 
		.g(g), 
		.e(e)
	);

	always@( l or g or e) begin
		$display("time = %d: %b %b %b", $time, l, g, e);
	end
   
	initial begin
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB1 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB2 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB3 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB4 = 1;
		
		#5
		
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 1;
		#1
		PB1 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB2 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB3 = 1;
		#1
		Y[0] = 1; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB4 = 1;
		
		#5
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB1 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB2 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB3 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB4 = 1;
		
		#5
		$finish;
	end	
endmodule

