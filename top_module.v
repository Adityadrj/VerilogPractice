module calculator_top(
    input clk,
    input [3:0] row,
    output [3:0] col,
    output [6:0] segments,
    output [3:0] digit_sel
);
    wire [3:0] key;
    wire [7:0] result;
    reg [3:0] a, b;
    reg [1:0] operation;
    wire valid;

    // Instantiate keypad module
    keypad k1 (.clk(clk), .row(row), .col(col), .key(key), .valid(valid));

    // Instantiate calculator module
    calculator c1 (.a(a), .b(b), .operation(operation), .result(result));

    // Instantiate seven-segment display module
    seven_segment_display s1 (.digit(result[3:0]), .segments(segments));

    // Simple FSM or logic to set a, b, and operation based on key inputs
    always @(posedge clk) begin
        if (valid) begin
            // Map keypad inputs to values and operations
            case (key)
                4'b0001: begin
                    a <= 4'b0001;
                    $display("Top: Setting a to %b", a);
                end
                4'b0010: begin
                    b <= 4'b0010;
                    $display("Top: Setting b to %b", b);
                end
                4'b1010: begin
                    operation <= 2'b00;
                    $display("Top: Setting operation to ADD");
                end
                // Add more mappings here
            endcase
        end
    end
endmodule
