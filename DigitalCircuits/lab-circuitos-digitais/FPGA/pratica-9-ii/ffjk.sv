module ffjk (
    input logic j, k, clk, rest,
    output logic q
);
    always @(posedge clk or posedge rest) begin
        if (rest)
            q <= 1'b0;
        else begin
            case ({j,k})
                2'b00: q <= q;      // q
                2'b01: q <= 1'b0;   // Reset
                2'b10: q <= 1'b1;   // Set
                2'b11: q <= ~q;     // ~q
            endcase
        end
    end
endmodule
