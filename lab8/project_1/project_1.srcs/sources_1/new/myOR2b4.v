module myOR2b4 (
    A,
    B,
    C
);
  input wire [3:0] A, B;
  output wire [3:0] C;
  assign C[3:0]=A[3:0]|B[3:0];
endmodule
