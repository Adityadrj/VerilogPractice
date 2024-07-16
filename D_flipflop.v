module D_flipflop(d,clk,q);
  
  input d;
  input clk;

  output q;

  reg q;

  always @(d or clk) 
    if (clk) 
      q = d;
    
endmodule
  