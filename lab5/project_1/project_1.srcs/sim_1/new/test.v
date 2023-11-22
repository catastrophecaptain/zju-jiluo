`timescale 1ns / 1ps
module test_tb ();
  integer i;
  reg A, B, C, G, G2A, G2B;
  wire[7:0] Y;
  decoder_3_8 UUT (
      .A  (A),
      .B  (B),
      .C  (C),
      .G  (G),
      .G2A(G2A),
      .G2B(G2B),
      .Y  (Y)
  );
  initial begin
    A   = 0;
    B   = 0;
    C   = 0;

    G   = 1;
    G2A = 0;
    G2B = 0;
    #50;

    for (i = 0; i <= 7; i = i + 1) begin
      {C,B,A} = i;
      #50;
    end
    assign G = 0;
    assign G2A = 0;
    assign G2B = 0;
    #50;

    assign G = 1;
    assign G2A = 1;
    assign G2B = 0;
    #50;

    assign G = 1;
    assign G2A = 0;
    assign G2B = 1;
    #50;
  end
endmodule
