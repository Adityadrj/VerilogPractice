module ALU(X,Y,Z,S,Zr,CY,P,V);
  input[15:0]X,Y;
  output[15:0]Z;
  output S, Zr, CY, P, V;

  assign{CY,Z}=X+Y;
  assign S=Z[15];
  assign Zr=~|Z;
  assign P=~^Z;
  assign V=(X[15]&Y[15]&~Z[15]|~X[15]&~Y[15]&Z[15]);
endmodule