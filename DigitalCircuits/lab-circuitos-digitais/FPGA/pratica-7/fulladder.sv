//somador.sv
// componente somador para a prática 7

module fulladder(
    input logic a, b, ci,
    output logic s, co
    );

    assign s = a ^ b ^ ci;
    assign co = a & b | a & ci | b & ci;
        
endmodule
