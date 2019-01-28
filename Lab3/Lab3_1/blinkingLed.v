`define OFF_TIME 25000000
`define ON_TIME (OFF_TIME*2)

module blinkled(clk, led0 );
	input clk;
	output led0;
	reg led0;
	reg counter;
	initial begin
		counter = 1'b0;
	end
	
	always @(posedge clk) begin
		counter = counter + 1;
		case(counter)
			OFF_TIME: led0 <=0;
			ON_TIME: begin
				led0 <=1;
				counter <= 0;
				end
			default: led0 = led0;
		endcase
	end
