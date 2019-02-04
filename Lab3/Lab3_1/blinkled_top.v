module blinkled_top;
	reg clk;
	wire led0;
	blinkled uut(
		.clk(clk),
		.led0(led0)
	);

	always @(led0, clk) begin
		$display("time=%d: clk=%b, led0=%b", $time, clk, led0);
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

