module reg_8_4b_test (
    input wire clk,
    input wire[7:0]increase,
    output wire[31:0]num
);
    wire[7:0] c;
    assign c=increase;
    reg[3:0] A=4'b0000,B=4'b0000,C=4'b0000,D=4'b0000,E=4'b0000,F=4'b0000,G=4'b0000,H=4'b0000;
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
    always @(posedge c[4]) begin
        E<=E+1'b1;
    end
    always @(posedge c[5]) begin
        F<=F+1'b1;
    end
    always @(posedge c[6]) begin
        G<=G+1'b1;
    end
    always @(posedge c[7]) begin
        H<=H+1'b1;
    end
    assign num={H,G,F,E,D,C,B,A};
endmodule
