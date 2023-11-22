`timescale 1ns / 1ps
module SR_LATCH_test1 ();
  reg S, R;
  wire Q, Q_N;
  SR_LATCH test1 (
      S,
      R,
      Q,
      Q_N
  );
  initial begin
    R = 1;
    S = 1;
    #50;
    R = 1;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;
    R = 0;
    S = 1;
    #50;
    R = 1;
    S = 1;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;
  end
endmodule
