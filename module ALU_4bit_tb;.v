module ALU_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [1:0] S;
    wire [7:0] F;

    ALU_4bit uut (
        .A(A),
        .B(B),
        .S(S),
        .F(F)
    );

    initial begin
        $display("Starting ALU_4BIT TESTBENCH");
        
        A = 4'b0100;
        B = 4'b0100;
        S = 2'b01;
        
        #10;
        $display("A-B=%b", F);
        $display("ALU_4bit testbench completed.");
        
        $finish;
    end
endmodule