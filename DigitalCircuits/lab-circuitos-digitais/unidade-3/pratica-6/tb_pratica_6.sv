module tb_pratica_6;
    logic M1, M2, M3, M4;
    logic S1, S2, S3, S4;

    pratica_6 uut (M1, M2, M3, M4, S1, S2, S3, S4);

    initial begin
        $monitor("M1 = %b \t M2 = %b \t M3 = %b \t M4 = %b \t S1 = %b \t S2 = %b \t S3 = %b \t S4 = %b \t", M1, M2, M3, M4, S1, S2, S3, S4);
             M1 = 0; M2 = 0; M3 = 0; M4 = 0;
        #10; M1 = 0; M2 = 0; M3 = 0; M4 = 1;
        #10; M1 = 0; M2 = 0; M3 = 1; M4 = 0;
        #10; M1 = 0; M2 = 0; M3 = 1; M4 = 1;
        #10; M1 = 0; M2 = 1; M3 = 0; M4 = 0;
        #10; M1 = 0; M2 = 1; M3 = 0; M4 = 1;
        #10; M1 = 0; M2 = 1; M3 = 1; M4 = 0;
        #10; M1 = 0; M2 = 1; M3 = 1; M4 = 1;
        #10; M1 = 1; M2 = 0; M3 = 0; M4 = 0;
        #10; M1 = 1; M2 = 0; M3 = 0; M4 = 1;
        #10; M1 = 1; M2 = 0; M3 = 1; M4 = 0;
        #10; M1 = 1; M2 = 0; M3 = 1; M4 = 1;
        #10; M1 = 1; M2 = 1; M3 = 0; M4 = 0;
        #10; M1 = 1; M2 = 1; M3 = 0; M4 = 1;
        #10; M1 = 1; M2 = 1; M3 = 1; M4 = 0;
        #10; M1 = 1; M2 = 1; M3 = 1; M4 = 1;
        #10; $stop;
    end
endmodule