# ikts22lab12
module mux_8_1 (
        input [2:0] addr,
        input [7:0] x,
        output y
);

assign y = addr[] ? (addr[] ? (addr[] ? x[7] : x[6]) : (addr[] ? x[5] : x[4])) : (addr[] ? (addr[] ? x[3] : x[2]) : (addr[] ? x[1] : x[0]));

endmodule 
