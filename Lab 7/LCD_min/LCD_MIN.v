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
module LCD_MIN(clk, slide, lcd_rs, lcd_rw, lcd_e, minpos, PB1, PB2, PB3, PB4,lcd4,lcd5,lcd6,lcd7
    );
input[2:0] slide;
input clk, PB1, PB2, PB3, PB4;
output lcd_rs, lcd_rw, lcd_e, minpos,lcd4,lcd5,lcd6,lcd7;
wire lcd_rs, lcd_rw, lcd_e, lcd4,lcd5,lcd6,lcd7;
wire[7:0] DB;
wire[1:0] minpos;

reg[127:0] lines, lines1;
reg[2:0] A, B, C, D;
reg[1:0] counter;
reg flag =0;
initial begin
	counter <= 2'b00;
	A <= 3'b0;
	B <= 3'b0;
	C <= 3'b0;
	D <= 3'b0;
	flag <= 0;
end

// using 4th slide to trigger input and the rest three buttons to set input value
always@(posedge PB1) begin
			A <= slide[2:0];
			lines[127:120] <= (8'b00110000);
			lines[122:120] <= A;
			lines[119:112] <= 8'b00101100;
			lines[111:104] <= 8'b00100000;
end
always@(posedge PB2) begin
			B <= slide[2:0];
			lines[103:96] <= (8'b00110000);
			lines[98:96] <= B;
			lines[95:88] <= 8'b00101100;
			lines[87:80] <= 8'b00100000;
end
always@(posedge PB3) begin
			C <= slide[2:0];
			lines[79:72] <= (8'b00110000);
			lines[74:72] <= C;
			lines[71:64] <= 8'b00101100;
			lines[63:56] <= 8'b00100000;
end
always@(posedge PB4) begin
			D <= slide[2:0];
			lines[55:48] <= (8'b00110000);
			lines[50:48] <= D;
			lines[47:40] <= 8'b00101100;
			lines[39:32] <= 8'b00100000;
			lines[31:24] <= 8'b00100000;
			lines[23:16] <= 8'b00100000;
			lines[15:8] <= 8'b00100000;
			lines[7:0] <= 8'b00100000;
			
			lines1[127:120] <= DB;
			lines1[119:112] <= 8'b00100000;
			lines1[111:104] <= 8'b00100000;
			lines1[103:96] <= 8'b00100000;
			lines1[95:88] <= 8'b00100000;
			lines1[87:80] <= 8'b00100000;
			lines1[79:72] <= 8'b00100000;
			
			lines1[71:64] <= 8'b00100000;
			lines1[63:56] <= 8'b00100000;
			lines1[55:48] <= 8'b00100000;
			lines1[47:40] <= 8'b00100000;
			lines1[39:32] <= 8'b00100000;
			lines1[31:24] <= 8'b00100000;
			lines1[23:16] <= 8'b00100000;
			lines1[15:8] <= 8'b00100000;
			lines1[7:0] <= 8'b00100000;
			flag <= 1;
			
end

minimum uut0(A, B, C, D, clk, DB, minpos);


LCD uut1(lines,
			 lines1,clk, lcd_rs, lcd_rw, lcd_e, lcd4,lcd5,lcd6,lcd7,flag);

endmodule
