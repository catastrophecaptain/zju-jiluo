`timescale 1ns / 1ps
module SR_LATCH(
input wire S,R,
output wire Q,Q_N
    );
    assign Q=~(S&Q_N);
    assign Q_N=~(Q&R);
endmodule
