`timescale 1ns / 1ps
module D_FLIPFLOP(
input wire D,Cp,S,R,
output wire Q,Q_N
    );
    wire W_1,W_2,W_3,W_4;
    assign W_1=~(~R&D&W_3);
    assign W_2=~(~S&W_1&W_4);
    assign W_3=~(Cp&W_4&W_1);
    assign W_4=~(Cp&~R&W_2);
    assign Q=~(~S&W_4&Q_N);
    assign Q_N=~(Q&~R&W_3);
endmodule
