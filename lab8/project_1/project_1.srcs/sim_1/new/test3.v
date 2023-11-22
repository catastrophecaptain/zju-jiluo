`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/07 17:29:24
// Design Name: 
// Module Name: top_test3
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


module adder1b_test3 ();
  reg a, b, Ci;
  wire s, co;
  integer i;
  Adder1b test3 (
      a,
      b,
      Ci,
      s,
      co
  );
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
        {a,b,Ci}=i;
        #50;
    end
  end
endmodule
