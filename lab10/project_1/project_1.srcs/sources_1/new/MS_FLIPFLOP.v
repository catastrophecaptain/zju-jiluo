`timescale 1ns / 1ps
module MS_FLIPFLOP(
input wire S,R,C,
output Q,Q_N
    );
    wire W_1,W_2;
    CSR_LATCH d_1(C,S,R,W_1,W_2),d_2(~C,W_1,W_2,Q,Q_N);
endmodule
