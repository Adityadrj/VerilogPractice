module calculator(
    input [3:0] a,
    input [3:0] b,
    input [1:0] operation,
    output reg [7:0] result
);
    parameter ADD = 2'b00, SUB = 2'b01, MUL = 2'b10, DIV = 2'b11;

    always @(*) begin
        case (operation)
            ADD: result = a + b;
            SUB: result = a - b;
            MUL: result = a * b;
            DIV: result = (b != 0) ? (a / b) : 8'b00000000; // Prevent divide by zero
            default: result = 8'b00000000;
        endcase
        $display("Calculator: a = %b, b = %b, operation = %b, result = %b", a, b, operation, result);
    end
endmodule
