module top2 (
    clk,
    SW,
    Segment,
    AN,
    Rc
);
  input wire clk,SW;
  output wire [7:0] Segment;
  output wire [3:0] AN;
  output wire Rc;
  wire[15:0] HEXS;
  wire clk_1;
  clk_100ms d_1(clk,clk_1);
  counter_4b_rev d_2(clk_1,SW,HEXS[15:0],Rc);
  DispNum d_3(clk,HEXS[15:0],4'b0000,4'b0000,0,AN,Segment);
endmodule
