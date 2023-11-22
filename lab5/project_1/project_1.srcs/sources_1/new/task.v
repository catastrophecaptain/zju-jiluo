`timescale 1ns / 1ps
module LampCtrl (
    S1,
    S2,
    S3,
    F
);
  input wire S1, S2, S3;
  output wire F;
  wire[7:0] out;
  wire G,G2A,G2B;
  VCC vcc1(G);
  GND gnd1(G2A), gnd2(G2B);
  decoder_3_8 gate1(S1,S2,S3,G,G2A,G2B,out);
  nand gate2s(F,out[1],out[2],out[4],out[7]);
endmodule
