module generate_test;
reg [15:0]X,Y;
wire [15:0]OUT;

xor_bitwise G(.f(OUT), .a(X), .b(Y));

initial begin
    $monitor("X:%b,Y:%b,OUT:%b",X,Y,OUT);

    X=16'haaaa;
    Y=16'h00ff;
#10 X=16'h0f0f;
#10 Y=16'h3333;
#20 $finish; 
end
endmodule