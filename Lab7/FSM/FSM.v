`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:14:04 03/03/2019 
// Design Name: 
// Module Name:    FSM 
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
module FSM( clk, Y , state
    );
	 input clk;
	 input[1:0] Y;
	 output state;
	 reg[3:0] state;
	 reg[2:0] microcode[0:12];
	 reg[3:0] dispatch1[0:3];
	 reg[3:0] dispatch2[0:3];
	 reg[3:0] initial_st = 4'b0;
	 reg[30:0] counter = 30'b0; 
	 initial begin
		microcode[0] = 3'b0;
		microcode[1] = 3'b0;
		microcode[2] = 3'b0;
		microcode[3] = 3'b001;
		microcode[4] = 3'b010;
		microcode[5] = 3'b010;
		microcode[6] = 3'b0;
		microcode[7] = 3'b0;
		microcode[8] = 3'b0;
		microcode[9] = 3'b0;
		microcode[10] = 3'b011;
		microcode[11] = 3'b100;
		microcode[12] = 3'b100;
		dispatch1[0] = 4'b0100;
		dispatch1[1] = 4'b0101;
		dispatch1[2] = 4'b0110;
		dispatch1[3] = 4'b0110;
		dispatch2[0] = 4'b1011;
		dispatch2[1] = 4'b1100;
		dispatch2[2] = 4'b1100;
		dispatch2[3] = 4'b1100;
	end
	always@(posedge clk) begin
		if(counter == 100000000) begin
			if(microcode[initial_st]==0) begin
				state <= initial_st+1;
				initial_st <= state;
			end
			else if(microcode[initial_st]==1) begin
				state <= dispatch1[Y];
				initial_st <= state;
			end
			else if(microcode[initial_st]==2) begin
				state <= 4'b0111;
				initial_st <= state;
			end
			else if(microcode[initial_st]==3) begin
				state <= dispatch2[Y];
				initial_st <= state;
			end
			else if(microcode[initial_st]==4) begin
				state <= 4'b0;
				initial_st <= state;
		end
			counter <= 30'b0;
		end
		else begin
			counter <= counter+1;
		end	
	end		
endmodule
