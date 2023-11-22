`timescale 1ns / 1ps
module D_LATCH_test3 ();
  reg  C,sign;
  wire D, Q, Q_N;
  D_LATCH test3 (
      D,
      C,
      Q,
      Q_N
  );
  assign D=sign|Q_N;
  /*
  D_LATCH test3 (
      D,
      C,
      Q,
      Q_N
  );
  initial begin
    D = 0;
    C = 1;
    #50;
    D = 1;
    #50;
    C = 0;
    D = 0;
    #50;
    D = 1;
    #50;
  end*/
  initial begin
    C=1;
    sign=1;
    #100;
    sign=0;
  end
endmodule
