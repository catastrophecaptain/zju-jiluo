module reg_8_4b (
    input wire clk,
    input wire[7:0]increase,
    output wire[31:0]num
);
    wire[31:0] clk_1ms;
    wire[7:0] c;
    reg[3:0] A=4'b0000,B=4'b0000,C=4'b0000,D=4'b0000,E=4'b0000,F=4'b0000,G=4'b0000,H=4'b0000;
    clkdiv d_0 (
        .clk(clk),
        .rst(1'b0),
        .clkdiv(clk_1ms)
    );
    pbdebounce d_1(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[0]),
        .pbreg(c[0])
    ),d_2(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[1]),
        .pbreg(c[1])
    ),d_3(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[2]),
        .pbreg(c[2])
    ),d_4(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[3]),
        .pbreg(c[3])
    ),d_5(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[4]),
        .pbreg(c[4])
    ),d_6(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[5]),
        .pbreg(c[5])
    ),d_7(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[6]),
        .pbreg(c[6])
    ),d_8(
        .clk_1ms(clk_1ms[17]
        ),
        .button(increase[7]),
        .pbreg(c[7])
    );
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
