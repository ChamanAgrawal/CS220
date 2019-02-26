`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:55 02/25/2019 
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
module ripple(clk, rotation_event, rotation_direction, led0, led1, led2, led3, led4, led5, led6, led7
    );

	input clk, rotation_event, rotation_direction;
	
	output led0, led1, led2, led3, led4, led5, led6, led7;
	reg led0, led1, led2, led3, led4, led5, led6, led7, prev_rotation_event;
	
	initial begin
		led0 = 1'b1;
		led1 = 1'b0;
		led2 = 1'b0;
		led3 = 1'b0;
		led4 = 1'b0;
		led5 = 1'b0;
		led6 = 1'b0;
		led7 = 1'b0;
		prev_rotation_event = 1'b0;
	end
	
	always @(posedge clk) begin
		if((prev_rotation_event == 0) && (rotation_event == 1)) begin
			if(rotation_direction == 0) begin
				led0 <= led1;
				led1 <= led2;
				led2 <= led3;
				led3 <= led4;
				led4 <= led5;
				led5 <= led6;
				led6 <= led7;
				led7 <= led0;
			end
			
			if(rotation_direction == 1) begin
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
		prev_rotation_event <= rotation_event;
	end
		
endmodule