module LED_DRV_test (
    input wire clk,
    sw,
    input wire [15:0] num,
    output wire finish,
    ser_out
);
  wire S_L, nS_L;
  reg start;
  wire [16:0] O;
  SLReg17b d_1 (
      .clk(clk),
      .S_L(S_L),
      .s_in(1'b1),
      .p_in({num, 1'b0}),
      .Q(O)
  );
  assign finish = &O[15:0];
  assign S_L = finish & start;
  assign ser_out = O[16];
  always @(posedge sw) begin
    start <= 1'b1;
  end
  always @(posedge ~finish) begin
    start <= 1'b0;
  end
  initial begin
    start=0;
  end
endmodule
