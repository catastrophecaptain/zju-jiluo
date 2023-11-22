`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 17:41:31
// Design Name: 
// Module Name: AddSub1b
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


module AddSub1b (
    A,
    B,
    Ctrl,
    Ci,
    S,
    Co
);
  input wire A, B, Ctrl, Ci;
  output wire S, Co;
wire temp1=Ctrl^B;
Adder1b d_1(A,temp1,Ci,S,Co);
endmodule
