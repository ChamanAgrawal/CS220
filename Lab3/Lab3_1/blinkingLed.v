`define OFF_TIME 25000000
`define ON_TIME (OFF_TIME*2)

module blinkled(clk, led0 );
	input clk;
	output led0;
	reg led0;
	reg[27:0] counter;
	initial begin
		for(i=0;i<27;i++)counter[i] = 1'b0;
		led0 = 0;
	end
	
	always @(posedge clk) begin
		counter <= counter + 1;
		// use if,else if this do not work
		case(counter)
			`OFF_TIME: led0 <=0;
			`ON_TIME: begin
				led0 <=1;
				for(i=0;i<27;i++)counter[i] <= 0;
				end
			default: led0 <= led0;
		endcase
	end
endmodule
