`timescale 1ns / 1ps
module DispNumber (
    SW,
    BTN,
    SEGMENT,
    AN
);
  input wire [7:0] SW;
  input wire [1:0] BTN;
  output wire [7:0] SEGMENT;
  output wire [3:0] AN;
  MyMC14495 d_1 (
      SW[0],
      SW[1],
      SW[2],
      SW[3],
      BTN[1],
      BTN[0],
      SEGMENT[0],
      SEGMENT[1],
      SEGMENT[2],
      SEGMENT[3],
      SEGMENT[4],
      SEGMENT[5],
      SEGMENT[6],
      SEGMENT[7]
  );
  assign AN[3:0]=~SW[7:4];

endmodule
