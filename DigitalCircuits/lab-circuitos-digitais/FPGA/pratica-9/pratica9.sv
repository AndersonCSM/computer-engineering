module pratica9(
    input logic clk,
    input logic reset,
    output logic [6:0] disp1,
    output logic [6:0] disp2
);

// fios
logic clock;
logic [3:0] q_mod10;
logic [2:0] q_mod6;
logic carry;

// divisor de clock
clock_divider divisor(.clk(clk), .reset(reset), .clk_out(clock));

// modulo 10(9seg)
contador_mod10 modd10(.clk(clock), .reset(reset), .cont(q_mod10), .carry(carry));

// modulo 6(60seg)
contador_mod6 modd6(.clk(carry), .reset(reset), .cont(q_mod6));

// decodificador de modulo 10
decodificador dec1(.cod_in(q_mod10), .cod_out(disp1));

// decodificador de modulo 6
decodificador dec2(.cod_in({1'b0, q_mod6}), .cod_out(disp2));


endmodule