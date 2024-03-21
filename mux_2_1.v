module mux_2_1 (
	input addr,
	input [1:0] x,
	output y
);
assign y = addr ? x[1] : x[0];
endmodule
