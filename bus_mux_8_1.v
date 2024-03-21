module bus_mux_8_1 #(

parameter N = 8
) ( input [2:0] addr, input [N-1:0] x0, x1, x2, x3, x4, x5, x6, x7, output [N-1:0] y );

assign y = addr[2] ? (addr[1] ? (addr[0] ? x7 : x6) : (addr[0] ? x5 : x4)) : (addr[1] ? (addr[0] ? x3 : x2) : (addr[0] ? x1 : x0));

endmodule