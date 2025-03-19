//alu1b.sv
// projeto completo para a prática 7

module alu1b(
    input logic a, b, a_inv, b_inv, c_in, s1, s0,
    output logic x, c_out
    );

    logic m1, m2, m3, m4, m5, mo;
    assign m1 = a ^ a_inv;
    assign m2 = b ^ b_inv;
    assign m3 = m1 & m2;
    assign m4 = m1 | m2;
    assign m5 = m1 ^ m2;

    fulladder adder(.a(m1), .b(m2), .ci(c_in), .s(mo), .co(c_out));

    multiplex mx(.s1(s1), .s0(s0), .i0(m3), .i1(m4), .i2(mo), .i3(m5), .x(x));


endmodule
