# ikts22lab12
module bus_mux_8_1 #(

    parameter N = 8

) (
        input [2:0] addr,
        input [N-1:0] x0, x1, x2, x3, x4, x5, x6, x7,
        output [N-1:0] y
);

assign y = addr[] ? (addr[] ? (addr[] ? x7 : x6) : (addr[] ? x5 : x4)) : (addr[] ? (addr[] ? x3 : x2) : (addr[] ? x1 : x0));

endmodule
