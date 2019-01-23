`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:36 01/14/2019
// Design Name:   full_adder
// Module Name:   /media/rishabhbt/DADA/CS220Labs/Lab1_1/full_adder/full_adder_top.v
// Project Name:  full_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module full_adder_top;

	// Inputs
	reg a;
	reg b;
	reg cin;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	full_adder uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);
	always@(sum or cout) begin
		$display("time=%d: %b + %b + %b = %b, cout = %b\n",$time, a, b, cin, sum, cout);
	end
	
	initial begin
		a = 0; b = 0; cin = 0;
		#5
		a = 0; b = 1; cin = 0;
		#5
		a = 1; b = 0; cin = 1;
		#5
		a = 1; b = 1; cin = 1;
		#5
		$finish;
	end	
      
endmodule

