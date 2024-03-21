module dmx_1_2 ( input addr, input x, output reg [1:0] y );

always @(*) case(addr) 1'd0: y = {1'bz, x}; 1'd1: y = {x, 1'bz}; default : y = 2'bzz; endcase

endmodule