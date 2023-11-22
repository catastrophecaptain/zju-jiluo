`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 17:41:31
// Design Name: 
// Module Name: AddSub4b
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


module AddSub4b(
    
    A,B,Ctrl,S,Co

    );
    input wire[3:0]A,B;
    input wire Ctrl;
    output wire[3:0]S;
    output wire Co;
    wire C1,C2,C3;
      AddSub1b
      d_0 (
          A[0],
          B[0],
          Ctrl,
          Ctrl,
          S[0],
          C1
      ),
      d_1 (
          A[1],
          B[1],
          Ctrl,
          C1,
          S[1],
          C2
      ),
      d_2 (
          A[2],
          B[2],
          Ctrl,
          C2,
          S[2],
          C3
      ),
      d_3 (
          A[3],
          B[3],
          Ctrl,
          C3,
          S[3],
          Co
      );
endmodule
