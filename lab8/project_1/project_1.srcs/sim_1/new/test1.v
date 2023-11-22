`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:31:43
// Design Name: 
// Module Name: test1
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


module AddSub4b_test1 ();
  reg [3:0] A, B;
  wire [3:0] S;
  reg Ctrl;
  wire C0;
  AddSub4b test1 (
      A,
      B,
      Ctrl,
      S,
      C0
  );
  initial begin
    A[3:0] = 4'b1110;
    B[3:0] = 4'B0001;
    Ctrl   = 1;
    #200;
    Ctrl = 0;
    #200;
    A[3:0] = 4'b0110;
    B[3:0] = 4'B0100;
    Ctrl   = 1;
    #200;
    Ctrl = 0;
    #200;
  end
endmodule
