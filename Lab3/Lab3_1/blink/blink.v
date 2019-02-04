`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:54:03 02/04/2019 
// Design Name: 
// Module Name:    blink 
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

module blink(clk, led0
    );
	 `define OFF_TIME 25000000
	`define ON_TIME (`OFF_TIME*2)
	input clk;
	output led0;
	reg led0;
	integer	i;
	reg[27:0] counter;
	initial begin
		counter <= 28'b0;
		led0 <= 0;
	end
	
	always @(posedge clk) begin
		counter <= counter + 1'b1;
		#1
		// use if,else if this do not work
		if(counter == `OFF_TIME) begin
			led0 <= 0;
		end
		if (counter == `ON_TIME)
			begin
				led0 <=1; 
				counter <= 28'b0;
			end
		end

endmodule
