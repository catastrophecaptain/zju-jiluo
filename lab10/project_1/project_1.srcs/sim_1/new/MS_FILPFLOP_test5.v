`timescale 1ns / 1ps
module MS_FLIPFLOP_test5 ();
  reg C, S, R;
  wire Q, Q_N;
  MS_FLIPFLOP test5 (
      S,
      R,
      C,
      Q,
      Q_N
  );
  initial begin
    R = 1;
    S = 0;
    #50;
    R = 0;
    S = 1;
    #50 R = 0;
    S = 0;
    #5;
    R = 1;
    S = 0;
    #5;
    R = 0;
    S = 0;
    #40;
    R = 0;
    S = 1;
    #50;
    R = 1;
    S = 0;
    #50;
    R = 0;
    S = 0;
    #50;
  end
  always begin
    C = 0;
    #20;
    C = 1;
    #20;
  end

endmodule
