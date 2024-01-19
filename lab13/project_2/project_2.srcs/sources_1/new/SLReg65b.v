`timescale 1ns / 1ps
module SLReg65b (
    input wire clk,
    input wire S_L,
    input wire s_in,
    input wire [64:0] p_in,
    output wire [64:0] Q
);
  reg [64:0] Q_reg;
  initial begin
    Q_reg = 65'b1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1111_1;
  end
  assign Q = Q_reg;
  always @(posedge clk) begin
    if (S_L) Q_reg <= p_in;
    else Q_reg<= {Q_reg[63:0], s_in};
  end
endmodule
