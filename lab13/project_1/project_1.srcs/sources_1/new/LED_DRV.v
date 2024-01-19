module LED_DRV (
    input wire clk,
    sw,
    input wire [15:0] num,
    output wire finish,
    ser_out
);
  wire S_L, nS_L;
  wire [31:0] clk_1ms;
  wire start ;
  wire [16:0] O;
  clkdiv d_0 (
      .clk(clk),
      .rst(1'b0),
      .clkdiv(clk_1ms)
  );
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
  Load_Gen d_2 (
      .clk(clk),
      .clk_1ms(clk_1ms[17]),
      .btn_in(sw),
      .Load_out(start)
  );
endmodule