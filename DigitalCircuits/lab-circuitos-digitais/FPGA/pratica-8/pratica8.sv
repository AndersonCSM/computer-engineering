module pratica8 (
    input logic [3:0] b, c,
    output logic [7:0] s
);
    logic [7:0] m1, m2;
    logic m3;
    logic [7:0] m4, m5;

    assign m1 = b * b; // multiplicador b**2
    
    assign m2 = c * {4'b0100}; // multiplicador 4c

    assign m3 = (m1 >= m2) ? 0 : 1; // chave selecionadora // m1 >= m3 == x >= y | 

    assign m4 = (m3 == {1'b0}) ? m1 : m2; // ternário para funcionar como mux

    assign m5 = (m3 == {1'b0}) ? m2 : m1; // ternário para funcionar como mux

    assign s = m4 - m5; // saída do subtrator

endmodule