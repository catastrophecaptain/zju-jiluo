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


module CSR_LATCH_test2 ();
  reg C, S, R;
  wire Q, Q_N;
  CSR_LATCH test2 (
      C,
      S,
      R,
      Q,
      Q_N
  );
  initial begin
    C = 1;
    R = 1;
    S = 1;
    #50;
    R = 1;
    S = 0;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 0;
    S = 1;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;
    C = 0;
    R = 1;
    S = 1;
    #50;
    R = 1;
    S = 0;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 0;
    S = 1;
    #50;
    R = 0;
    S = 0;
    #50;
    R = 1;
    S = 1;
    #50;

  end
endmodule
