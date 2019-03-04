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
module LCD_MIN(Y,PB1,PB2,PB3,PB4, A
    );
input[2:0] Y;
input PB1;
input PB2;
input PB3;
input PB4;
output [11:0] A;
reg[11:0] A;
always@(posedge PB1) begin
	A[2:0] <= Y;
end
always@(posedge PB2) begin
	A[5:3] <= Y;
end
always@(posedge PB3) begin
	A[8:6] <= Y;
end
always@(posedge PB4) begin
	A[11:9] <= Y;
end
	
endmodule
