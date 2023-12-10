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
  assign S00 = !S[1] & !S[0], S01 = !S[1] & S[0], S10 = S[1] & !S[0], S11 = S[0] & S[1];
  assign O[0] = S00 & I0[0] | S01 & I1[0] | S10 & I2[0] | S11 & I3[0];
  assign O[1] = S00 & I0[1] | S01 & I1[1] | S10 & I2[1] | S11 & I3[1];
  assign O[2] = S00 & I0[2] | S01 & I1[2] | S10 & I2[2] | S11 & I3[2];
  assign O[3] = S00 & I0[3] | S01 & I1[3] | S10 & I2[3] | S11 & I3[3];
  // assign O[3:0]=4'b0000;
endmodule
