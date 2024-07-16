module adder4test;
   reg[3:0]A,B;
   reg Cin;
   wire[3:0]S;
   wire Cout;

   adder4 uut(.Cout(Cout), .S(S), .A(A), .B(B), .Cin(Cin));

   initial begin
    $dumpfile("adder4.vcd");
    $dumpvars(0,adder4test);
    $monitor($time,"A=%b,B=%b,Cin=%b,S=%b,Cout=%b",A,B,Cin,S,Cout);

    #5 A = 4'b0001; B = 4'b0010; Cin = 1'b0;
    #5 A = 4'b1101; B = 4'b1011; Cin = 1'b1;
    #5 A = 4'b1111; B = 4'b1111; Cin = 1'b1;
    #5 A = 4'b0101; B = 4'b0110; Cin = 1'b0;
    #5 $finish;

   end
endmodule