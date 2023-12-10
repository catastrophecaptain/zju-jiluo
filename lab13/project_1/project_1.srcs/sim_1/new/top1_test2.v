module top1_test2 ();
  reg [3:0] btn;
  reg clk=1'b0, SW;
//   reg[1:0] A=0,B=1,C=2,D=3;
//   reg[7:0] sum;
//   initial begin
    // sum<={A,B,C,D};
//   end  
  wire LED_CLK, LED_CLR, LED_DO, LED_EN;
  always begin
     clk = ~clk;
     #1;
  end
  top1_test test2 (
    .btn(btn),
    .clk(clk),
    .SW(SW),
    .LED_CLK(LED_CLK),
    .LED_CLR(LED_CLR),
    .LED_DO(LED_DO),
    .LED_EN(LED_EN)
  );
  initial begin
    btn=4'b0000;
    SW=1'b0;
    #20;
    btn=4'b1111;
    #20;
    btn=4'b0000;
    #20;
    btn=4'b1110;
    #20;
    btn=4'b0000;
    #20;
    btn=4'b1100;
    #20;
    btn=4'b0000;
    #20;
    btn=4'b1000;
    #20;
    btn=4'b0000;
    #20;
    SW=1'b1;
    #20;
    SW=1'b0;
  end
endmodule
