module ring_counter(clk, init, count);
    input clk, init;
    output reg [7:0] count;

    always @(posedge clk) begin
        if (init) begin
            count <= 8'b10000000;
        end else begin
            count<=count<<1;
            count[0]<=count[7];
        end
        $display("outputt:init=%b,count=%b", init, count);
    end
endmodule
