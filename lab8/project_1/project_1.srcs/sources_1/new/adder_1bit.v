`timescale 1ns / 1ps
module Adder1b (
    input  wire a,
    b,
    ci,
    output wire s,
    co
);
  and m0 (c1, a, b);
  and m1 (c2, b, ci);
  and m2 (c3, a, ci);
  xor m3 (s1, a, b);
  xor m4 (s, s1, ci);
  or m5 (co, c1, c2, c3);
endmodule
