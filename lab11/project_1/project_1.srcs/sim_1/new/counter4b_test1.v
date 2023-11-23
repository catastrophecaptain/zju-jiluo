`timescale 1ns / 1ps
module counter4b_test1 ();
  wire Qa, Qb, Qc, Qd, Rc;
  reg clk;
  counter_4b test1 (
      clk,
      Qa,
      Qb,
      Qc,
      Qd,
      Rc
  );
  initial
    forever begin
      clk = 1'b0;
      #100;
      clk = 1'b1;
      #100;
    end
endmodule
