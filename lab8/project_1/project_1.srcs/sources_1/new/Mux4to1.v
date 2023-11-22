module Mux4to1 (
    S,
    I0,
    I1,
    I2,
    I3,
    O
);
  input wire [1:0] S;
  input wire I0, I1, I2, I3;
  output wire O;
  wire S00, S01, S10, S11;
  assign S00 = !S[1] & !S[0], S01 = !S[1] & S[0], S10 = S[1] & !S[0], S11 = S[0] & S[1];
  assign O = S00 & I0 | S01 & I1 | S10 & I2 | S11 & I3;
endmodule
