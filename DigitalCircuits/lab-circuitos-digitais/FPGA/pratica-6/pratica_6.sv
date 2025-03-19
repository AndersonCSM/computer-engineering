//pratica_6.sv
// Prática de circuito_6

module pratica_6(
    input logic M1, M2, M3, M4,
    output logic S1, S2, S3, S4
    );
    
    assign S1 = M1;
    assign S2 = M2;
    assign S3 = (~M1 & M3) | (~M2 & M3);
    assign S4 = (~M1 & ~M2 & M4) | (~M1 & ~M3 & M4) | (~M2 & ~M3 * M4);
endmodule
