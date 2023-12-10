module top1 (
    input wire [3:0] btn,
    input wire clk,
    SW,
    output wire LED_CLK,
    LED_CLR,
    LED_DO,
    LED_EN
);
  assign LED_CLR = 1;
  assign LED_EN  = 1;
  wire finish;
  wire[15:0]num;
  reg_4_4b d_1 (
      .clk(clk),
      .increase(btn),
      .num(num)
  );
  LED_DRV d_2 (
      .clk(clk),
      .sw(SW),
      .num(num),
      .finish(finish),
      .ser_out(LED_DO)
  );
  assign LED_CLK=~clk|finish;
endmodule
