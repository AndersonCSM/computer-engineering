module decodificador (
    input logic A, B, C, D,
    output logic a, b, c, d, e, f, g
);

assign a = A | C | ~(B ^ D);
assign b = ~B | ~(C ^ D);
assign c = B | ~C + D;
assign d = A | (~B & ~D) | (~B & C) | (C & ~D) | (B & ~C & D); 
assign e = (~B & ~D) | (C & ~D);
assign f = A | (~C & ~D) | (B & ~C) | (B & ~D);
assign g = A | (B & ~C) | (~B & C) | (C & ~D);
    
endmodule