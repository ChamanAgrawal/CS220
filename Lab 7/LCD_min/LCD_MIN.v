`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:12 03/04/2019 
// Design Name: 
// Module Name:    LCD_MIN 
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
// using the four sliding buttons for taking input
module LCD_MIN(clk, slide
    );
input[3:0] slide;
input clk;
reg[2:0] A, B, C, D;
reg[1:0] counter;
wire[1:0] minpos;

initial begin
	counter = 2'b0;
end

// using 4th slide to trigger input and the rest three buttons to set input value
always@(posedge slide[3]) begin
	if (counter == 0) begin
		A <= slide[2:0];
		counter <= counter+1;
	end
	else if(counter == 1) begin
		B <= slide[2:0];
		counter <= counter+1;
	end
	else if(counter == 2) begin
		C <= slide[2:0];
		counter <= counter+1;
	end
	else if(counter == 3) begin
		D <= slide[2:0];
		counter <= counter+1;
	end
	else begin
		counter <= 2'b0;
	end
end

minimum uut0(A, B, C, D, clk, minpos);

endmodule
