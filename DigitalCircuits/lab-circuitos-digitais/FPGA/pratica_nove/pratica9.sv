module pratica9(
    input logic clk,
    input logic reset,
    output logic [6:0] disp1, disp3, disp4,
    output logic [6:0] disp2
);

// fios
logic clock;
logic [3:0] q_mod10, q_mod10m;
logic [2:0] q_mod6, q_mod6m;
logic carry, carry_m, carry_m10, carry_1h;

// divisor de clock
clock_divider divisor(.clk(clk), .reset(reset), .clk_out(clock));

// modulo 10(9seg)
contador_mod10 modd10(.clk(clock), .reset(reset), .cont(q_mod10), .carry(carry));

// modulo 6(60seg)
contador_mod6 modd6(.clk(carry), .reset(reset), .cont(q_mod6), .carry(carry_m));

// modulo 10(9min)
contador_mod10 modd10min(.clk(carry_m), .reset(reset), .cont(q_mod10m), .carry(carry_m10));

// modulo 6(60min)
contador_mod6 modd6min(.clk(carry_m10), .reset(reset), .cont(q_mod6m), .carry(carry_1h));


// decodificador de modulo 10s
decodificador dec1(.cod_in(q_mod10), .cod_out(disp1));

// decodificador de modulo 60s
decodificador dec2(.cod_in({1'b0, q_mod6}), .cod_out(disp2));

// decodificador de modulo 10min
decodificador dec3(.cod_in(q_mod10m), .cod_out(disp3));

// decodificador de modulo 60min
decodificador dec4(.cod_in({1'b0, q_mod6m}), .cod_out(disp4));


endmodule