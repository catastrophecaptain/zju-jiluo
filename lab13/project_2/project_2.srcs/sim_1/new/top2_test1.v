`timescale 0.001ps / 0.001ps
module top2_test ();
  reg [7:0] SW;
  reg clk;
  wire SEGCLK;
  wire SEGCLR;
  wire SEGDT;
  wire SEGEN;
  top2 test1 (
      .SW(SW),
      .clk(clk),
      .SEGCLK(SEGCLK),
      .SEGCLR(SEGCLR),
      .SEGDT(SEGDT),
      .SEGEN(SEGEN)
  );
always begin
    clk=0;
    #1;
    clk=1;
    #1;
end
integer  i=0;
initial begin
    SW=8'b0;
    #200000;
    SW[7]=1;
    SW[5]=1;
    SW[3]=1;
    SW[2]=1;
    SW[0]=1;
    #200000;
    SW=8'b0;
    #200000;
    SW[7]=1;
    SW[3]=1;
    #200000;
    SW=8'b0;
    #200000;
    for(i=0;i<8;i=i+1)
    begin
        SW[1]=1;
        #200000;
        SW[1]=0;
        #200000;
    end
    $finish;
end
endmodule
