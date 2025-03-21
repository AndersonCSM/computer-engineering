module contador_mod10(
    input logic clk,
    input logic rst,
    output logic a, b, c, d
);
    logic [3:0] q;  // Barramento de 4 bits para o contador

    // Flip-flops JK atuando como T (toggle)
    ffjk ff0(.j(1'b1), .k(1'b1), .clk(clk), .rest(rst),  .q(q[0]));
    ffjk ff1(.j(1'b1), .k(1'b1), .clk(q[0]), .rest(rst), .q(q[1]));
    ffjk ff2(.j(1'b1), .k(1'b1), .clk(q[1]), .rest(rst), .q(q[2]));
    ffjk ff3(.j(1'b1), .k(1'b1), .clk(q[2]), .rest(rst), .q(q[3]));

    // Atribuição das saídas
    assign {d, c, b, a} = q;

    // Reset manual ou automático quando atingir 10 (1010)
    always @(posedge clk or posedge rst) begin
        if (rst)
            q <= 4'b0000;
        else if (q == 4'b1010)
            q <= 4'b0000;  // Reset quando atingir 10
    end
endmodule
