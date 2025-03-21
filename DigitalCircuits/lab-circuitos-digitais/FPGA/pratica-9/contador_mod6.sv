module contador_mod6(
    input logic clk,
    input logic reset,
    output logic [3:0] q
);
    
    always_ff @(posedge clk) begin
        if (reset) begin
            q <= 0;
        end else if (q == 5) begin
            q <= 0;
        end else begin
            q <= q + 1;
        end
    end
endmodule