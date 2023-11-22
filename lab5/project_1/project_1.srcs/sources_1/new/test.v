`timescale 1ns / 1ps
module test(S1,
    S2,
    S3,
    S4,
    S5,
    S6,
    LED);
  input wire S1,S2,S3,S4,S5,S6;
  output wire [7:0] LED;
  decoder_3_8(S1,S2,S3,S4,S6,S5,LED);
endmodule
