module five_four_adder_top;

	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg PB5;
	reg [3:0] Y;

	wire[5:0] sum;
	wire carry;

	five_four_adder uut ( 
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4),
		.PB5(PB5),
		.Y(Y),
		.sum(sum), 
		.carry(carry), 
	);

	always@( sum[5:0] or carry) begin
		$display("time = %d: %b %b", $time, carry, sum[5:0]);
	end

	initial begin
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB1 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB2 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB3 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB4 = 1;
		#1
		Y[0] = 0; Y[1] = 0; Y[2] = 0; Y[3] = 0;
		#1
		PB5 = 1;
		
		#5
		
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB1 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB2 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB3 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB4 = 1;
		#1
		Y[0] = 1; Y[1] = 1; Y[2] = 1; Y[3] = 1;
		#1
		PB5 = 1;
		
		#5
		PB1 = 0; PB2 = 0; PB3 = 0; PB4 = 0; PB5 = 0;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB1 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB2 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB3 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB4 = 1;
		#1
		Y[0] = 0; Y[1] = 1; Y[2] = 0; Y[3] = 1;
		#1
		PB5 = 1;
		
		#5
		$finish;
	end
endmodule;