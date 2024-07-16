module alutest;
    reg[15:0]X,Y;
    wire[15:0]Z;
    wire S,CY,Zr,P,V;
    
    ALU uut(X,Y,Z,S,CY,Zr,P,V);

    initial begin
        $dumpfile("ALU.vcd");
        $dumpvars(0,alutest);
        $monitor($time,"X=%h,Y=%h, Z=%h, S=%b, CY=%b, Zr=%b, P=%b, V=%b",X,Y,Z,S,CY,Zr,P,V);
        #5 X = 16'hffff; Y = 16'h8000;
        #5 X = 16'hffff; Y = 16'h0002;
        #5 X = 16'hAAAA; Y = 16'h5555;
        #5 $finish;
    end
endmodule    