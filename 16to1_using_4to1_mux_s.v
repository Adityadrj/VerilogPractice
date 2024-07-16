module ALU(X,Y,Z,S,CY,Zr,P,V);
   input[15:0]X,Y;
   output[15:0]Z;
   output S,CY,Zr,P,V;
   wire[3:0]C;

   assign S=Z[15];
   assign Zr=~|Z;
   assign P=~^Z;
   assign V=(X[15]&Y[15]&~Z[15]|~X[15]&~Y[15]&Z[15]);

   adder4 A0(Z[3:0],C[1],X[3:0],Y[3:0],1'b0);
   adder4 A1(Z[7:4],C[2],X[7:4],Y[7:4],C[1]);
   adder4 A2(Z[11:8],C[3],X[11:8],Y[11:8],C[2]);
   adder4 A3(Z[15:12],CY,X[15:12],Y[15:12],C[3]);
endmodule