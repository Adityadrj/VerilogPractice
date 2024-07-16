module muxtest;
     reg[3:0]A;  reg[1:0]S; wire F;

     mux4to1 M(.in(A), .sel(S), .out(F));
initial
     begin
        $dumpfile("mux4to1.vcd");
        $dumpvars(0, muxtest);
        $monitor($time, "A=%h, S=%b, F=%b", A,S,F);

        #5 A=4'h1; S=2'b00;
        #5 S=2'b01;
        #5 $finish;
     end          
endmodule     