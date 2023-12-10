`timescale 1ns / 1ps
module Mux4to116b (
    S,
    I0,
    I1,
    I2,
    I3,
    O
);
  input wire [1:0] S;
  input wire [15:0] I0, I1, I2, I3;
  output wire [15:0] O;
  wire S00, S01, S10, S11;
  assign S00 = !S[1] & !S[0], S01 = !S[1] & S[0], S10 = S[1] & !S[0], S11 = S[0] & S[1];
  assign O[0] = S00 & I0[0] | S01 & I1[0] | S10 & I2[0] | S11 & I3[0];
  assign O[1] = S00 & I0[1] | S01 & I1[1] | S10 & I2[1] | S11 & I3[1];
  assign O[2] = S00 & I0[2] | S01 & I1[2] | S10 & I2[2] | S11 & I3[2];
  assign O[3] = S00 & I0[3] | S01 & I1[3] | S10 & I2[3] | S11 & I3[3];
  assign O[4] = S00 & I0[4] | S01 & I1[4] | S10 & I2[4] | S11 & I3[4];
  assign O[5] = S00 & I0[5] | S01 & I1[5] | S10 & I2[5] | S11 & I3[5];
  assign O[6] = S00 & I0[6] | S01 & I1[6] | S10 & I2[6] | S11 & I3[6];
  assign O[7] = S00 & I0[7] | S01 & I1[7] | S10 & I2[7] | S11 & I3[7];
  assign O[8] = S00 & I0[8] | S01 & I1[8] | S10 & I2[8] | S11 & I3[8];
  assign O[9] = S00 & I0[9] | S01 & I1[9] | S10 & I2[9] | S11 & I3[9];
  assign O[10] = S00 & I0[10] | S01 & I1[10] | S10 & I2[10] | S11 & I3[10];
  assign O[11] = S00 & I0[11] | S01 & I1[11] | S10 & I2[11] | S11 & I3[11];
  assign O[12] = S00 & I0[12] | S01 & I1[12] | S10 & I2[12] | S11 & I3[12];
  assign O[13] = S00 & I0[13] | S01 & I1[13] | S10 & I2[13] | S11 & I3[13];
  assign O[14] = S00 & I0[14] | S01 & I1[14] | S10 & I2[14] | S11 & I3[14];
  assign O[15] = S00 & I0[15] | S01 & I1[15] | S10 & I2[15] | S11 & I3[15];
  // assign O[3:0]=4'b0000;
endmodule
