`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/18 19:37:30
// Design Name: 
// Module Name: counter4b_test1
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


module counter4b_test1 ();
  wire Qa, Qb, Qc, Qd, Rc;
  reg clk;
  counter_4b test1 (
      clk,
      Qa,
      Qb,
      Qc,
      Qd,
      Rc
  );
  initial
    forever begin
      clk = 1'b0;
      #100;
      clk = 1'b1;
      #100;
    end
endmodule
