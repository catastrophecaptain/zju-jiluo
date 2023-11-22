`timescale 1ns / 1ps
module Mux4to14b (
    S,
    I0,
    I1,
    I2,
    I3,
    O
);
  input wire [1:0] S;
  input wire [3:0] I0, I1, I2, I3;
  output wire [3:0] O;
  wire S00, S01, S10, S11;
  wire [3:0] i0, i1, i2, i3;
  assign i0[3:0] = ~I0[3:0], i1[3:0] = ~I1[3:0], i2[3:0] = ~I2[3:0], i3[3:0] = ~I3[3:0];
  assign S00 = !S[1] & !S[0], S01 = !S[1] & S[0], S10 = S[1] & !S[0], S11 = S[0] & S[1];
  assign O[0] = S00 & i0[0] | S00 & i1[0] | S00 & i2[0] | S00 & i3[0];
  assign O[1] = S01 & i0[1] | S01 & i1[1] | S01 & i2[1] | S01 & i3[1];
  assign O[2] = S10 & i0[2] | S10 & i1[2] | S10 & i2[2] | S10 & i3[2];
  assign O[3] = S11 & i0[3] | S11 & i1[3] | S11 & i2[3] | S11 & i3[3];
endmodule
