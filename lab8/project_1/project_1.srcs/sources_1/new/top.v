`timescale 1ns / 1ps
module top (
    input wire clk,
    input wire [1:0] BTN,
    input wire [1:0] SW1,
    input wire [1:0] SW2,
    output wire [3:0] AN,
    output wire [7:0] SEGMENT,
    output wire BTNX4
);
  wire [15:0] num;
  wire [1:0] btn_out;
  wire [3:0] C;
  wire Co;
  wire [31:0] clk_div;
  wire [15:0] disp_hexs;
  assign disp_hexs[15:12] = num[3:0];  //A
  assign disp_hexs[11:8]  = num[7:4];  //B
  assign disp_hexs[7:4]   = {3'b000, Co};
  assign disp_hexs[3:0]   = C[3:0];
  pbdebounce m0 (
      clk_div[17],
      BTN[0],
      btn_out[0]
  );
  pbdebounce m1 (
      clk_div[17],
      BTN[1],
      btn_out[1]
  );
  clkdiv m2 (
      .clk(clk),
      .rst(1'b0),
      .clkdiv(clk_div)
  );
  CreateNumber m3 (
      {0, 0, btn_out[0],btn_out[1]},
      {0, 0, SW1[0],SW1[1]},
      num[15:0]
  );
  myALU m5 (
      num[3:0],
      num[7:4],
      SW2[1:0],
      C[3:0],
      Co
  );
  DispNum m6 (
      .clk(clk),
      .HEXS(disp_hexs),
      .LES(4'b0),
      .points(4'b0),
      .RST(1'b0),
      .AN(AN),
      .Segment(SEGMENT)
  );
  assign BTNX4 = 1'b0;  //Enable button inputs

endmodule
