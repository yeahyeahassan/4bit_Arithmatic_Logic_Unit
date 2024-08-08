module ALU_4bit (
    input [3:0] A,
    input [3:0] B,
    input [1:0] S,
    output reg [7:0] F
);

always @(A or B or S) begin
    case(S)
        2'b00: F = A + B;         // Addition
        2'b01: F = A - B;         // Subtraction
        2'b10: F = A * B;         // Multiply
        2'b11: begin              // Comparison (A < B)
            if (A < B)
                F = 8'b0000_0001;
            else if (A > B)
                F = 8'b0000_0010;
            else
                F = 8'b0000_0000;
        end
    endcase
end

endmodule