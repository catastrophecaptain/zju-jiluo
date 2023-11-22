`timescale 1ns / 1ps
module test1 ();
  integer i;
  reg [1:0] S;
  reg [3:0] I0, I1, I2, I3;
  wire [3:0] O;
  Mux4to14b test1 (
      S,
      I0,
      I1,
      I2,
      I3,
      O
  );
  initial begin
    I0 = 4'b0001;
    I1 = 4'b0010;
    I2 = 4'b0100;
    I3 = 4'b1000;
    for (i = 0; i < 4; i = i + 1) begin
      S = i;
      #200;
    end
  end
endmodule
