module contador_mod6(
    input logic clk,
    input logic rst,
    output logic a, b, c
);
    logic [2:0] q;  // Barramento de 3 bits para o contador

    // Flip-flops JK atuando como T (toggle)
    ffjk ff0(.j(1'b1), .k(1'b1), .clk(clk), .rest(rst), .q(q[0]));
    ffjk ff1(.j(1'b1), .k(1'b1), .clk(q[0]), .rest(rst),  .q(q[1]));
    ffjk ff2(.j(1'b1), .k(1'b1), .clk(q[1]), .rest(rst), .q(q[2]));

    assign {c, b, a} = q;  // Atribuição das saídas

    // Reset manual ou automático quando atingir 7 (111)
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 3'b000;
        else if (q == 3'b111)
            q <= 3'b000;  // Reset quando atingir 7
    end
endmodule
