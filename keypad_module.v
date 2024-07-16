module keypad(
    input clk,
    input [3:0] row,
    output reg [3:0] col,
    output reg [3:0] key,
    output reg valid
);
    reg [1:0] state;

    always @(posedge clk) begin
        case (state)
            2'b00: begin
                col <= 4'b1110;
                state <= 2'b01;
                $display("State 00: col = %b, row = %b", col, row);
            end
            2'b01: begin
                if (row != 4'b1111) begin
                    key <= {col, row};
                    valid <= 1;
                    state <= 2'b10;
                    $display("State 01: Key Pressed, key = %b, valid = %b", key, valid);
                end else begin
                    state <= 2'b10;
                    $display("State 01: No Key Pressed, row = %b", row);
                end
            end
            2'b10: begin
                col <= 4'b1101;
                state <= 2'b11;
                $display("State 10: col = %b", col);
            end
            2'b11: begin
                if (row != 4'b1111) begin
                    key <= {col, row};
                    valid <= 1;
                    state <= 2'b00;
                    $display("State 11: Key Pressed, key = %b, valid = %b", key, valid);
                end else begin
                    state <= 2'b00;
                    $display("State 11: No Key Pressed, row = %b", row);
                end
            end
        endcase
    end
endmodule
