module top1 (
    clk,
    Segment,
    AN,
    Rc
);
  input wire clk;
  output wire [7:0] Segment;
  output wire [3:0] AN;
  output wire Rc;
  wire[15:0] HEXS;
  wire clk_1;
  clk_1s d_1(clk,clk_1);
  counter_4b d_2(clk_1,HEXS[0],HEXS[1],HEXS[2],HEXS[3],Rc);
  DispNum d_3(clk,HEXS,4'b1110,4'b0000,0,AN,Segment);
endmodule
