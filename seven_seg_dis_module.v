module seven_segment_display(
    input [3:0] digit,
    output reg [6:0] segments
);
    always @(*) begin
        case(digit)
            4'b0000: segments = 7'b0111111; // 0
            4'b0001: segments = 7'b0000110; // 1
            4'b0010: segments = 7'b1011011; // 2
            4'b0011: segments = 7'b1001111; // 3
            4'b0100: segments = 7'b1100110; // 4
            4'b0101: segments = 7'b1101101; // 5
            4'b0110: segments = 7'b1111101; // 6
            4'b0111: segments = 7'b0000111; // 7
            4'b1000: segments = 7'b1111111; // 8
            4'b1001: segments = 7'b1100111; // 9
            default: segments = 7'b0000000; // Blank
        endcase
        $display("Seven Segment: digit = %b, segments = %b", digit, segments);
    end
endmodule
