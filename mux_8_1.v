module mux_8_1 ( 
	input [2:0] addr,
	input [7:0] x, 
	output y 
);

assign y = addr[2] ? (addr[1] ? (addr[0] ? x[7] : x[6]) : (addr[0] ? x[5] : x[4])) : (addr[1] ? (addr[0] ? x[3] : x[2]) : (addr[0] ? x[1] : x[0]));

endmodule
