module comp( a, b, li, gi, ei, l, g, e
);
	input a;
	input b;
	input li;
	input gi;
	input ei;

	output l;
	wire l;
	output e;
	wire e;
	output g;
	wire g;

	assign l = (~a)&b | li;
	assign e = a&b | (~a)&(~b) | ei;
	assign g = a&(~b) | gi;

endmodule