`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:22:00 03/10/2019 
// Design Name: 
// Module Name:    LCD 
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
module LCD(DB, clk, lcd_rs, lcd_rw, lcd_e, data
    );

	input min;
	input[7:0] DB;
	input clk;
	output lcd_rs,lcd_rw,lcd_e,data;
	reg lcd_rs, lcd_rw, lcd_e;
	reg[3:0] data;
	reg[20:0] counter = 21'b0;
	reg[3:0] state = 4'b0; 
	always@(posedge clk) begin
		if(counter == 2000000) begin
			case(state)
			0: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0011;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0011;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				6: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				7: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0010;
					step <= step+1;
					counter <= 21'b0;
				end	
				8: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <= 4'b0;
				end	
				endcase
				state <= state+1;
			end	
			1: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0010;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b1000;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <= 4'b0;
				end	
				endcase
				state <= state+1;
			end
			2: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0110;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <= 4'b0;
				end	
				endcase
				state <= state+1;
			end
			3: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b1100;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <= 4'b0;
				end	
				endcase
				state <= state+1;
			end
			4: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0001;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <=4'b0;
				end	
				endcase
				state <= state+1;
			end
			5: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b1000;
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 0;
					lcd_w <= 0;
					data <= 4'b0;
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <=4'b0;
				end	
				endcase
				state <= state+1;
			end
			6: begin
				case(step)
				0: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				1: begin
					lcd_rs <= 1;
					lcd_w <= 0;
					data <= DB[7:4];
					step <= step+1;
					counter <= 21'b0;
				end	
				2: begin
					lcd_e <= 1;
					step <= step+1;
					counter <= 21'b0;
				end	
				3: begin
					lcd_e <= 0;
					step <= step+1;
					counter <= 21'b0;
				end	
				4: begin
					lcd_rs <= 1;
					lcd_w <= 0;
					data <= DB[3:0];
					step <= step+1;
					counter <= 21'b0;
				end	
				5: begin
					lcd_e <= 0;
					step <= 4'b0;
					counter <= 21'b0;
					step <=4'b0;
				end	
				endcase
			end
		endcase
		end
		else begin
			counter <= counter+1;
		end	
	end	
endmodule
