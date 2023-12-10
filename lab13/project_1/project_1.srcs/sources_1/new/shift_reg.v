`timescale 1ns / 1ps
module shift_reg (
    input wire clk,
    S_L,
    s_in,
    input wire [7:0] p_in,
    output wire [7:0] Q
);
  reg [7:0] Q_reg=8'b11111111;
  assign Q[7:0] = Q_reg[7:0];
  always @(posedge clk) begin
    Q_reg[0] <= (S_L & p_in[0]) | (~S_L & Q_reg[1]);
    Q_reg[1] <= (S_L & p_in[1]) | (~S_L & Q_reg[2]);
    Q_reg[2] <= (S_L & p_in[2]) | (~S_L & Q_reg[3]);
    Q_reg[3] <= (S_L & p_in[3]) | (~S_L & Q_reg[4]);
    Q_reg[4] <= (S_L & p_in[4]) | (~S_L & Q_reg[5]);
    Q_reg[5] <= (S_L & p_in[5]) | (~S_L & Q_reg[6]);
    Q_reg[6] <= (S_L & p_in[6]) | (~S_L & Q_reg[7]);
    Q_reg[7] <= (S_L & p_in[7]) | (~S_L & s_in);
  end
  
endmodule

