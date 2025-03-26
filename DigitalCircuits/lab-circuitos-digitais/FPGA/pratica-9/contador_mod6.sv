module contador_mod6(
    input logic clk,
    input logic reset,
    output logic [2:0] cont
);
    
    always_ff @(posedge clk or negedge reset) begin
        if (~reset)
            cont <= 0;
        else if (cont == 5)
            cont <= 0;
        else
            cont <= cont + 1;
    end
endmodule