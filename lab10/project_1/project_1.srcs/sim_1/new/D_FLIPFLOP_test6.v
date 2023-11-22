`timescale 1ns / 1ps
module D_FLIPFLOP_test6 ();
  reg D, Cp,S,R;
  wire Q, Q_N;
  D_FLIPFLOP test6 (
      D,
      Cp,
      S,
      R,
      Q,
      Q_N
  );
  initial begin
    S=0;R=0;
    D = 0;
    #150;
    D = 1;
    #150;
    S=0;R=1;
    #150
    S=1;R=0;
  end

  always begin
    Cp = 0;
    #50;
    Cp = 1;
    #50;
  end

endmodule
