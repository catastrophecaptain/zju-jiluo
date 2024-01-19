module top1 (
    input wire [3:0] btn,
    input wire clk,
    SW,
    output wire LED_CLK,
    LED_CLR,
    LED_DO,
    LED_EN,
    BTNX4,
    output wire [3:0] AN,
    output wire [7:0] SEGMENT
);
wire temp;
  assign BTNX4   = 0;
  assign LED_CLR = 1;
  assign LED_EN  = 1;
  wire finish;
  wire [15:0] num;
  DispNum d_0 (
      .clk(clk),
      .HEXS(num),
      .LES(4'b0),
      .points(4'b0),
      .RST(1'b0),
      .AN(AN),
      .Segment(SEGMENT)
  );
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
      .ser_out(temp)
  );
  assign LED_DO=~temp;
  assign LED_CLK = ~clk | finish;
endmodule
