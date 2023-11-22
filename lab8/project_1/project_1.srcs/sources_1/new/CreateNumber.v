`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/07 16:34:03
// Design Name: 
// Module Name: CreateNumber
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


module CreateNumber (
    input  wire [ 3:0] btn,
    input  wire [ 3:0] sw,
    output reg  [15:0] num
);
  wire [3:0] A1, B1, C1, D1;
  initial num <= 16'b1010_1011_1100_1101;
  AddSub4b
      a1 (
          num[3:0],
          4'b0001,
          sw[0],
          A1
      ),
      a2 (
          num[7:4],
          4'b0001,
          sw[1],
          B1
      ),
      a3 (
          num[11:8],
          4'b0001,
          sw[2],
          C1
      ),
      a4 (
          num[15:12],
          4'b0001,
          sw[3],
          D1
      );
  always @(posedge btn[0]) num[3:0] <= A1;
  always @(posedge btn[1]) num[7:4] <= B1;
  always @(posedge btn[2]) num[11:8] <= C1;
  always @(posedge btn[3]) num[15:12] <= D1;
endmodule
