# 4-bit Arithmetic Logic Unit (ALU) 🧮

## Overview 🔍

The 4-bit Arithmetic Logic Unit (ALU) is a key digital component designed to perform fundamental arithmetic and logical operations. Implemented in Verilog HDL, this ALU module supports operations such as addition, subtraction, multiplication, and comparison. This report provides a detailed look at the ALU design and its testbench.

## ALU Design 🛠️

The ALU module is defined as follows:

```verilog
module ALU_4bit (
    input [3:0] A,      // 4-bit input operand A
    input [3:0] B,      // 4-bit input operand B
    input [1:0] S,      // 2-bit selection signal
    output reg [7:0] F  // 8-bit output result
);

always @(A or B or S) begin
    case(S)
        2'b00: F = A + B;         // Addition
        2'b01: F = A - B;         // Subtraction
        2'b10: F = A * B;         // Multiplication
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
```
---

![Graph](https://github.com/user-attachments/assets/87764153-2d28-4461-b6d8-0de1b31141e4)
---

## Summary 📝
The 4-bit ALU design effectively demonstrates essential arithmetic and logical operations, including addition, subtraction, multiplication, and comparison. The testbench validates the ALU's functionality by simulating operations and displaying results. This design is foundational for digital systems requiring basic computational tasks.

Feel free to reach out if you have any questions or need further assistance! 😊🚀


![Thank You](https://img.shields.io/badge/Thank%20You!-blue?style=flat-square&logo=smile)

<!-- Graphical GIF Animation -->
<div class="gif-container" style="text-align: center; margin-bottom: 20px;">
  <img src="https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExYzdob2I4cHdsdWhnbmtmYTBxbnk4cnl2YjZ1bGw5ZGZvMXBwdWc4bSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/00n6TSoGffGTLXSMPO/giphy.gif" alt="Working on it GIF" />
</div>
