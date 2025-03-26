module decodificador (
    input logic [3:0] cod_in,
    output logic [6:0] cod_out // a, b, c, d, e, f, g
);
    always_comb begin
        case (cod_in)
            4'd0: cod_out = 7'b1000000;
            4'd1: cod_out = 7'b1111001;
            4'd2: cod_out = 7'b0100100;
            4'd3: cod_out = 7'b0110000;
            4'd4: cod_out = 7'b0011001;
            4'd5: cod_out = 7'b0010010;
            4'd6: cod_out = 7'b0000010;
            4'd7: cod_out = 7'b1111000;
            4'd8: cod_out = 7'b0000000;
            4'd9: cod_out = 7'b0010000;
            default: cod_out = 7'b1111111; // Apaga tudo
        endcase
    end
endmodule