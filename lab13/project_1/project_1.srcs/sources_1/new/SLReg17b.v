`timescale 1ns / 1ps
module SLReg17b (
    input wire clk,
    S_L,
    s_in,
    input wire [16:0] p_in,
    output wire [16:0] Q
);
  reg [16:0] Q_reg;
  initial begin
    Q_reg = 17'b1111_1111_1111_1111_1;
  end
  assign Q = Q_reg;
  always @(posedge clk) begin
    Q_reg[0]  <= (S_L & p_in[0]) | (~S_L & s_in);
    Q_reg[1]  <= (S_L & p_in[1]) | (~S_L & Q_reg[0]);
    Q_reg[2]  <= (S_L & p_in[2]) | (~S_L & Q_reg[1]);
    Q_reg[3]  <= (S_L & p_in[3]) | (~S_L & Q_reg[2]);
    Q_reg[4]  <= (S_L & p_in[4]) | (~S_L & Q_reg[3]);
    Q_reg[5]  <= (S_L & p_in[5]) | (~S_L & Q_reg[4]);
    Q_reg[6]  <= (S_L & p_in[6]) | (~S_L & Q_reg[5]);
    Q_reg[7]  <= (S_L & p_in[7]) | (~S_L & Q_reg[6]);
    Q_reg[8]  <= (S_L & p_in[8]) | (~S_L & Q_reg[7]);
    Q_reg[9]  <= (S_L & p_in[9]) | (~S_L & Q_reg[8]);
    Q_reg[10] <= (S_L & p_in[10]) | (~S_L & Q_reg[9]);
    Q_reg[11] <= (S_L & p_in[11]) | (~S_L & Q_reg[10]);
    Q_reg[12] <= (S_L & p_in[12]) | (~S_L & Q_reg[11]);
    Q_reg[13] <= (S_L & p_in[13]) | (~S_L & Q_reg[12]);
    Q_reg[14] <= (S_L & p_in[14]) | (~S_L & Q_reg[13]);
    Q_reg[15] <= (S_L & p_in[15]) | (~S_L & Q_reg[14]);
    Q_reg[16] <= (S_L & p_in[16]) | (~S_L & Q_reg[15]);
  end
endmodule
