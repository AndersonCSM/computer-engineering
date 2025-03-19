module tb_alu1b;
    logic a, b, a_inv, b_inv, c_in, s1, s0, x, c_out;
    alu1b uut (
        .a(a),
        .b(b),
        .a_inv(a_inv),
        .b_inv(b_inv),
        .c_in(c_in),
        .s1(s1),
        .s0(s0),
        .x(x),
        .c_out(c_out)
    );
    initial begin
        $monitor("a = %d \t b = %d \t a_inv = %b \t b_inv = %b \t c_in = %b \t | s1 = %b \t s0 = %b \t x = %b \t c_out = %b", a, b, a_inv, b_inv, c_in, s1, s0, x, c_out);
        a = 1; b = 0; a_inv = 0; b_inv = 0; c_in = 0; s1 = 0; s0 = 0;
        #10
        a = 1; b = 1; a_inv = 0; b_inv = 0; c_in = 0; s1 = 0; s0 = 0;
        #10
        a = 1; b = 0; a_inv = 0; b_inv = 0; c_in = 0; s1 = 0; s0 = 1;
        #10
        a = 0; b = 0; a_inv = 0; b_inv = 0; c_in = 0; s1 = 0; s0 = 1;
        #10
        a = 1; b = 0; a_inv = 0; b_inv = 0; c_in = 0; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; a_inv = 0; b_inv = 0; c_in = 0; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; a_inv = 0; b_inv = 0; c_in = 1; s1 = 1; s0 = 0;
        #10
        a = 1; b = 1; a_inv = 0; b_inv = 1; c_in = 1; s1 = 1; s0 = 0;
        #10
        a = 1; b = 0; a_inv = 0; b_inv = 0; c_in = 0; s1 = 1; s0 = 1;
        #10
        a = 1; b = 1; a_inv = 0; b_inv = 0; c_in = 0; s1 = 1; s0 = 1;
        #10
        $stop;
    end
endmodule