`timescale 1ns / 1ps
module CSR_LATCH(
input C,S,R,
output Q,Q_N
    );
    wire W_1,W_2;
    assign W_1=~(S&C);
    assign W_2=~(C&R);
    assign Q=~(Q_N&W_1);
    assign Q_N=~(Q&W_2);
endmodule
