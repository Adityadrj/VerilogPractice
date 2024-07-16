module adder4(S,Cout,A,B,Cin);
     input[3:0]A,B;
     input Cin;
     output[3:0]S;
     output Cout;
     wire C1,C2,C3;

     fulladder   fa0(S[0],C1,A[0],B[0],Cin);
     fulladder   fa1(S[1],C2,A[1],B[1],C1);
     fulladder   fa2(S[2],C3,A[2],B[2],C2);
     fulladder   fa3(S[3],Cout,A[3],B[3],C3);
     
endmodule