module D_flipfloptest;
   reg A; reg C; wire F;

   D_flipflop D(.d(A), .clk(C), .q(F));
initial
   begin
    $dumpfile("D_flipflop.vcd");
    $dumpvars(0, D_flipfloptest);
    $monitor($time, "A=%b, C=%b, F=%b", A,C,F);

    #5 A=2'b11;  C=2'b0;
    #5 C=2'b1;
    #5 $finish;
   end   
endmodule   
