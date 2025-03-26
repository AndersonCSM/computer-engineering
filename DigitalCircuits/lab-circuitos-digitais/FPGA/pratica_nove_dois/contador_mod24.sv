module contador_mod10(
    input logic clk,
    input logic reset,
    output logic [4:0] cont,
    output logic carry
);

    always_ff @(posedge clk or negedge reset) begin
        if (~reset)
            cont <= 0;
        else if (cont == 23) begin
            cont <= 0;
            carry <= 1; // Pulso para o contador de módulo 6
        end else begin
            cont <= cont + 1;
            carry <= 0;
        end
    end
endmodule