`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:46:29 02/04/2019
// Design Name:   five_four_bit_adder
// Module Name:   /media/chamanag/8B9E-BFB0/Lab3/Lab3_3/five_four_adder/five_four_top.v
// Project Name:  five_four_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_four_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_four_top;

	// Inputs
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg PB5;
	reg [3:0] Y;

	// Outputs
	wire [5:0] sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	five_four_bit_adder uut (
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.PB5(PB5), 
		.Y(Y), 
		.sum(sum), 
		.carry(carry)
	);

	always@( sum[5:0] or carry) begin
		$display("time = %d: %b %b", $time, carry, sum[5:0]);
	end

	initial begin
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
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
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB5 = 1;
		
		#5
		
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB1 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB2 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB3 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB4 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB5 = 1;
		
		#5
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
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
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB5 = 1;
		
		#5
		$finish;
	end
      
endmodule

