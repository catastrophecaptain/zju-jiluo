`timescale 1ns / 1ps
module test2 ();
  integer i;
  reg [1:0] S;
  reg I0, I1, I2, I3;
  wire  O;
  Mux4to1 test2 (
      S,
      I0,
      I1,
      I2,
      I3,
      O
  );
  initial begin
    I0 = 1'b1;
    I1 = 1'b0;
    I2 = 1'b0;
    I3 = 1'b0;
    for (i = 0; i < 4; i = i + 1) begin
      S = i;
      #200;
      {I3,I2,I1,I0}=2*{I3,I2,I1,I0};
      
    end
  end
endmodule