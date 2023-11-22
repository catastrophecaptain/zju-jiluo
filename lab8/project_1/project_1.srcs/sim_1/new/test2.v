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


module ALU_test2 ();
  reg [3:0] A, B;
  reg  [1:0] S;
  wire [3:0] C;
  wire Co;
  ALU test2 (
      A,
      B,
      S,
      C,
      Co
  );
  integer i;
  initial begin
    A[3:0] = 4'b1010;
    B[3:0] = 4'b0111;
    S[1:0] = 2'b00;
    #50;
    B[3:0] = 4'b0011;
    for (i = 0; i <= 3; i = i + 1) begin
      S[1:0] = i;
      #50;
    end
  end
endmodule
