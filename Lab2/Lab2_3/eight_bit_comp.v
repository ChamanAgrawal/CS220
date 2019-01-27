module eight_bit_comp(PB1, PB2, PB3, PB4, Y, l, g, e
    );
	 input PB1;
	 input PB2;
	 input PB3;
	 input PB4;
	 input [3:0]Y;
	 output l;
	 output g;
	 output e;
	 wire l0;
	 wire g0;
	 wire e0;
	 wire l1;
	 wire g1;
	 wire e1;
	 wire l2;
	 wire g2;
	 wire e2;
	 wire l3;
	 wire g3;
	 wire e3;
	 wire l4;
	 wire g4;
	 wire e4;
	 wire l5;
	 wire g5;
	 wire e5;
	 wire l6;
	 wire g6;
	 wire e6;
	 
	 reg [7:0]A;
	 reg [7:0]B;
	 
	always @(posedge PB1) begin
		A[3:0] <= #2 Y;
	end
	always @(posedge PB2) begin
		A[7:4] <= #2 Y;
	end
	
	always @(posedge PB3) begin
		B[3:0] <= #2 Y;
	end
	always @(posedge PB4) begin
		B[7:4] <= #2 Y;
	end
	 
	 comp C0(A[7], B[7], 1'b0, 1'b0, 1'b0, l0, g0, e0);
	 comp C1(A[6], B[6], l0, g0, e0, l1, g1, e1);
	 comp C2(A[5], B[5], l1, g1, e1, l2, g2, e2);
	 comp C3(A[4], B[4], l2, g2, e2, l3, g3, e3);
	 comp C4(A[3], B[3], l3, g3, e3, l4, g4, e4);
	 comp C5(A[2], B[2], l4, g4, e4, l5, g5, e5);
	 comp C6(A[1], B[1], l5, g5, e5, l6, g6, e6);
	 comp C7(A[0], B[0], l6, g6, e6, l, g, e);
	 
	

endmodule