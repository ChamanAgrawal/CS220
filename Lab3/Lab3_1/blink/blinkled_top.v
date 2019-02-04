`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:56:43 02/04/2019
// Design Name:   blink
// Module Name:   /media/chamanag/8B9E-BFB0/Lab3/Lab3_1/blink/blinkled_top.v
// Project Name:  blink
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blinkled_top;

	// Inputs
	reg clk;
	reg[26:0] i;
	wire led0;
	blink uut(
		.clk(clk),
		.led0(led0)
	);

	always @(led0, clk) begin
		$display("time=%d: clk=%b, led0=%b", $time, clk, led0);
	end

	initial begin
	#100
		i = 27'b0;
		while(i<727379968) begin
			#0.1 clk <= 0;
			#0.1 clk <= 1;
			i= i+1;
		end
		#1
		$finish;
	end
      
endmodule

