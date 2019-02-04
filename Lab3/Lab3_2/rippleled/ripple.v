`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:18 02/04/2019 
// Design Name: 
// Module Name:    ripple 
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


module ripple(clk, led0, led1, led2, led3, led4, led5, led6, led7);
`define SHIFT_TIME 50000000
	input clk;
	output led0, led1, led2, led3, led4, led5, led6, led7;
	reg led0, led1, led2, led3, led4, led5, led6, led7;

	reg[27:0] counter;

	initial begin
		led0 <= 1;
		led1 <= 0;
		led2 <= 0;
		led3 <= 0;
		led4 <= 0;
		led5 <= 0;
		led6 <= 0;
		led7 <= 0;
		counter <= 28'b0;
	end

	always @(posedge clk) begin
		counter <= counter + 1;
		if((counter == `SHIFT_TIME))
		begin
			counter <= 0;
			led1 <= led0;
			led2 <= led1;
			led3 <= led2;
			led4 <= led3;
			led5 <= led4;
			led6 <= led5;
			led7 <= led6;
			led0 <= led7;
		end
	end
endmodule 