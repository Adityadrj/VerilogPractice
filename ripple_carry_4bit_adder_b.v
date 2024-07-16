module  fulladder(S,Cout,A,B,C);
    input A,B,C;
    output S,Cout;
    wire S1,C1,C2;

    xor G1(S1,A,B);
    xor G2(S,S1,C);
    xor G3(Cout,C2,C1);
    and G4(C1,A,B);
    and G5(C2,S1,C);
endmodule