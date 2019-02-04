`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:45 02/04/2019 
// Design Name: 
// Module Name:    five_four_adder 
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
module five_four_bit_adder(PB1, PB2, PB3, PB4, PB5, Y, sum, carry);
    
    input PB1;
    input PB2;
    input PB3;
    input PB4;
	input PB5;
	input [3:0] Y;
	output [5:0] sum;
	wire[5:0] sum;
	output carry;
	wire carry;

	reg[3:0] a,b,c,d;
	reg[5:0] e;
	
	
	wire[4:0] out1, out2;
	wire[5:0] out3 ;

	always @(posedge PB1) begin
        a <= Y;
    end
    always @(posedge PB2) begin
       b <= Y;
    end
    always @(posedge PB3) begin
        c <= Y;
    end
    always @(posedge PB4) begin
        d <= Y;
    end
  	always @(posedge PB5) begin
        e[3:0] <= Y;
		  e[4] <= 0;
		  e[5] <= 0;
    end

    four_bit_adder FA1(a, b, 1'b0, out1[3:0], out1[4]);
    four_bit_adder FA2(c, d, 1'b0, out2[3:0], out2[4]);
    five_bit_adder FA3(out1[4:0], out2[4:0], 1'b0, out3[4:0], out3[5]);
    six_bit_adder FA4(out3[5:0], e, 1'b0, sum[5:0], carry);

endmodule
