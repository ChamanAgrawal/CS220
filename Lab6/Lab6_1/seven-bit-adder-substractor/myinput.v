`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:36 02/24/2019 
// Design Name: 
// Module Name:    myinput 
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
module myinput( clk, Y, rotation_event, sum, carry
    );
	 
		input clk, rotation_event;
		input [3:0]Y;
		
		output sum, carry;
		wire [6:0] sum;
		wire carry;
		wire carry0;
		wire carry1;
		wire carry2;
		wire carry3;
		wire carry4;
		wire carry5;
		wire carry6;
		
		reg type, prev_rotation_event;
		reg [5:0] counter;
		reg [6:0] A;
		reg [6:0] B;
		
		initial begin
			prev_rotation_event = 1'b1;
			counter = 5'b0;
		end
	
		always @(posedge clk) begin
			if((prev_rotation_event == 0) && (rotation_event == 1)) begin
				if(counter == 0) begin
					A[3:0] <= Y[3:0];
				end
				else if(counter == 1) begin
					A[6:4] <= Y[2:0];
				end
				else if(counter == 2) begin
					B[3:0] <= Y[3:0];
				end
				else if(counter == 3) begin
					B[6:4] <= Y[2:0];
				end
				else if(counter == 4) begin
					type <= Y[0:0];
				end
				counter <= counter + 1;
				
				if(counter > 4) begin
					counter <= 0;
				end
			end
			prev_rotation_event <= rotation_event;
		end
		
		full_adder FA0(A[0], B[0], type, type, sum[0], carry0);
		full_adder FA1(A[1], B[1], type, carry0, sum[1], carry1);
		full_adder FA2(A[2], B[2], type, carry1, sum[2], carry2);
		full_adder FA3(A[3], B[3], type, carry2, sum[3], carry3);
		full_adder FA4(A[4], B[4], type, carry3, sum[4], carry4);
		full_adder FA5(A[5], B[5], type, carry4, sum[5], carry5);
		full_adder FA6(A[6], B[6], type, carry5, sum[6], carry);
		
		assign carry = (carry^carry5);

endmodule
