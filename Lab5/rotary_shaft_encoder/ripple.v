`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:05 02/09/2019 
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
		prev_rotation_event = 1'b1;
	end
	
	always @(posedge clk) begin
		if((prev_rotation_event == 1) && (rotation_event == 1)) begin
			if(rotation_direction == 0) begin
				led7 <= led0;
				led6 <= led7;
				led5 <= led6;
				led4 <= led5;
				led3 <= led4;
				led2 <= led3;
				led1 <= led2;
				led0 <= led1;
			end
			
			else begin
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
