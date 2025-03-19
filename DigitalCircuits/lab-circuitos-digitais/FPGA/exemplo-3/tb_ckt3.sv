module skt3;
    logic [3:0] a, b;
    logic cin;
    logic [3:0] s;
    logic cout;

    ckt3 uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

    fulladder fa0(.a(a[0]), .b(b[0]), .cin(cin), .s(s[0]), .cout(c1));
    fulladder fa1(.a(a[1]), .b(b[1]), .cin(c1), .s(s[1]), .cout(c2));
    fulladder fa2(.a(a[2]), .b(b[2]), .cin(c2), .s(s[2]), .cout(c3));
    fulladder fa3(.a(a[3]), .b(b[3]), .cin(c3), .s(s[3]), .cout(cout));

    initial begin
        $monitor("a = %d \t b = %d \t cin = %b \t | s = %b \t cout = %b", a, b, cin, s, cout);
                a = 6; b = 3; cin = 0;
        #10;    a = 6; b = 3; cin = 0;
        #10;    a = 12; b = 3; cin = 0;
        #10;    a = 12; b = 5; cin = 0;
        #10;    a = 12; b = 5; cin = 1;
        #10; $stop;
    end
endmodule