`timescale 1ns / 1ps
module MyClock_test2 ();
  reg clk;
  wire SEGCLK;
  wire SEGCLR;
  wire SEGDT;
  wire SEGEN;
  wire [23:0] num;
  wire clk_128;
  MyClock_test test2 (
      .clk(clk),
      .SEGCLK(SEGCLK),
      .SEGCLR(SEGCLR),
      .SEGDT(SEGDT),
      .SEGEN(SEGEN),
      .O(num),
      .clk_128(clk_128)
  );
  always begin
    clk = 0;
    #1;
    clk = 1;
    #1;
  end
  initial begin
    #2500;
    $finish;
  end
endmodule
