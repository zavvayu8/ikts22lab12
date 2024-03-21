module dmx_1_8 (
	input [2:0] addr,
	input x,
	output reg [7:0] y
);
always @(*) case(addr)
	3'h0:y = {7'bzzzzzzz, x};
	3'h1:y = {6'bzzzzzz, x, 1'bz};
	3'h2:y = {5'bzzzzz, x, 2'bzz};
	3'h3:y = {4'bzzzz, x, 3'bzzz};
	3'h4:y = {3'bzzz, x, 4'bzzzz};
	3'h5:y = {2'bzz, x, 5'bzzzzz};
	3'h6:y = {1'bz, x, 6'bzzzzzz};
	3'h7:y = {x,7'bzzzzzzz};
	default : y=8'bzzzzzzzz;
endcase
endmodule
