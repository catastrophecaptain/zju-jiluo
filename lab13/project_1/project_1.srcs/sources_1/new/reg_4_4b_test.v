module reg_4_4b_test (
    input wire clk,
    input wire[3:0]increase,
    output wire[15:0]num
);
    wire[31:0] clk_1ms;
    wire[3:0] c=increase;
    reg[3:0] A=4'b0000,B=4'b0000,C=4'b0000,D=4'b0000;
    always @(posedge c[0]) begin
        A<=A+1'b1;
    end
    always @(posedge c[1]) begin
        B<=B+1'b1;
    end
    always @(posedge c[2]) begin
        C<=C+1'b1;
    end
    always @(posedge c[3]) begin
        D<=D+1'b1;
    end
    assign num={D,C,B,A};
endmodule
