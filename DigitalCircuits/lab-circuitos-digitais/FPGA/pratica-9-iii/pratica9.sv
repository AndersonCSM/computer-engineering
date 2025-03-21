module pratica9(
    input logic clk, rst,
    output logic dis00, dis01, dis02, dis03, dis04, dis05, dis06,
    output logic dis10, dis11, dis12, dis13, dis14, dis15, dis16 
);

// fios
logic m1;
logic m2, m3, m4, m5;
logic m6, m7, m8;
logic [3:0] q_mod10;
logic [2:0] q_mod6;


// divisor de clock
Clock_divider divisor(.clock_in(clk), .clock_out(m1));

// modulo 10
contador_mod10 modd10(.clk(m1), .rst(~rst), .q(q_mod10));

// modulo 6
contador_mod6 modd6(.clk(~m5), .rst(~rst), .q(q_mod6));

// Atribuições individuais
assign m2 = q_mod10[0];
assign m3 = q_mod10[1];
assign m4 = q_mod10[2];
assign m5 = q_mod10[3];

assign m6 = q_mod6[0];
assign m7 = q_mod6[1];
assign m8 = q_mod6[2];

// decodificador de modulo 10
decodificador dec1(.A(m2), .B(m3), .C(m4), .D(m5), .a(dis00), .b(dis01), .c(dis02), .d(dis03), .e(dis04), .f(dis05), .g(dis06));

// decodificador de modulo 6
decodificador dec2(.A(m6), .B(m7), .C(m8), .D(1'b0), .a(dis10), .b(dis11), .c(dis12), .d(dis13), .e(dis14), .f(dis15), .g(dis16));


endmodule