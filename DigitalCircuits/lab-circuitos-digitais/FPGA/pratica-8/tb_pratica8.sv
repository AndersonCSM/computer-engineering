module tb_pratica8;
    logic [3:0] b, c;
    logic [7:0] s;

    pratica8 uut(.b(b), .c(c), .s(s));

    initial begin
        $monitor("b = %d \t c = %d \t s = %b", b, c, s);
                b = 5; c = 6;
        #10;    b = 1; c = 1;
        #10;    b = 2; c = 1;
        #10;    $stop;
    end

endmodule