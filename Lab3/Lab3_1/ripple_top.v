module ripple_top
	reg clk;
	wire led0, led1, led2, led3, led4, led5, led6, led7;

	ripple uut (
		.clk(clk), 
		.led0(led0), 
		.led1(led1), 
		.led2(led2), 
		.led3(led3), 
		.led4(led4), 
		.led5(led5), 
		.led6(led6), 
		.led7(led7)
	);

	always @(led0, led1, led2, led3, led4, led5, led6, led7) begin
		$display("time=%d: clk=%b, led0=%b, led1=%b, led2=%b, led3=%b, led4=%b, led5=%b, led6=%b, led7=%b", $time, clk, led0, led1, led2, led3, led4, led5, led6, led7);
   end

   initial begin
		for(i=0;i<100000000;i++)
		begin
			clk = 0;
			#1
			clk = 1;
			#1
		end
		$finish
	end
endmodule