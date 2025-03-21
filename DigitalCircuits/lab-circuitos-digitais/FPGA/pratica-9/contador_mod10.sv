module contador_mod10(
    input logic clk,
    input logic reset,
    output logic [4:0] q
);

    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 0;
        end else if (q == 9) begin
            q <= 0;
        end else begin
            q <= q + 1;
        end
    end
endmodule