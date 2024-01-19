module top1_test (
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
  wire temp;
  wire [15:0] num;

  wire finish;
  reg_4_4b_test d_1 (
      .clk(clk),
      .increase(btn),
      .num(num)
  );
  LED_DRV_test d_2 (
      .clk(clk),
      .sw(SW),
      .num(num),
      .finish(finish),
      .ser_out(temp)
  );
  assign LED_DO=~temp;
  assign LED_CLK = ~clk | finish;
endmodule
