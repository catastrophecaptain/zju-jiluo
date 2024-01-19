module SEG_DRV (
    input wire clk,
    input wire [63:0] num,
    output wire finish,
    ser_out
);
  wire S_L;
  reg start;
  wire [64:0] O;
  reg [63:0] old_num;
  always @(posedge clk) begin
    old_num <= num;
  end
  initial begin
    old_num=64'b0;
    start   = 1'b0;
  end
  always @(posedge clk) begin
    if (|(num[63:0] ^ old_num[63:0])) start <= 1'b1;
    else start <= 1'b0;
  end
  SLReg65b d_1 (
      .clk(clk),
      .S_L(S_L),
      .s_in(1'b1),
      .p_in({num, 1'b0}),
      .Q(O)
  );
  assign finish = &O[63:0];
  assign S_L = finish & start;
  assign ser_out = O[64];
endmodule
