`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 17:06:06
// Design Name: 
// Module Name: SR_LATCH_test1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MS_FLIPFLOP_test4 ();
  reg C, S, R;
  wire Q, Q_N;
  MS_FLIPFLOP test4 (
      S,
      R,
      C,
      Q,
      Q_N
  );
  initial begin
    R = 1;
    S = 1;
    #50;
    R = 1;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;
    R = 0;
    S = 1;
    #50;
    R = 1;
    S = 1;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;
  end
  always begin
    C = 0;
    #20;
    C = 1;
    #20;
  end

endmodule
