module tb_exe6;
    logic d1, clk1;
    logic q1;

    exe6 uut(.d(d1), .clk(clk1), .q(q1));

    // Aplicação das entradas
    initial begin
        clk1 = 0;
        d1 = 0;

        #28; d1 = 1;
        #10; d1 = 0;
        #30; d1 = 1;
        #40; d1 = 0;
        #10; $stop;
    end

    // criação do sinal de clock
    always begin
        #5; clk1 = ~clk1;
    end

endmodule