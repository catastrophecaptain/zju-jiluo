`timescale 1ns / 1ps
module top2 (
    input wire [7:0] SW,
    input wire clk,
    output wire SEGCLK,
    output wire SEGCLR,
    output wire SEGDT,
    output wire SEGEN
);
  wire finish;
  assign SEGCLR = 1;
  assign SEGEN  = 1;
  wire [31:0] num;
  wire [63:0] code;
  reg_8_4b d_1 (
      .clk(clk),
      .increase(SW),
      .num(num)
  );
  MyMC14495 d_2 (
      .D0(num[0]),
      .D1(num[1]),
      .D2(num[2]),
      .D3(num[3]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[0]),
      .b(code[1]),
      .c(code[2]),
      .d(code[3]),
      .e(code[4]),
      .f(code[5]),
      .g(code[6]),
      .p(code[7])
  );
  MyMC14495 d_3 (
      .D0(num[4]),
      .D1(num[5]),
      .D2(num[6]),
      .D3(num[7]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[8]),
      .b(code[9]),
      .c(code[10]),
      .d(code[11]),
      .e(code[12]),
      .f(code[13]),
      .g(code[14]),
      .p(code[15])
  );
  MyMC14495 d_4 (
      .D0(num[8]),
      .D1(num[9]),
      .D2(num[10]),
      .D3(num[11]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[16]),
      .b(code[17]),
      .c(code[18]),
      .d(code[19]),
      .e(code[20]),
      .f(code[21]),
      .g(code[22]),
      .p(code[23])
  );
  MyMC14495 d_5 (
      .D0(num[12]),
      .D1(num[13]),
      .D2(num[14]),
      .D3(num[15]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[24]),
      .b(code[25]),
      .c(code[26]),
      .d(code[27]),
      .e(code[28]),
      .f(code[29]),
      .g(code[30]),
      .p(code[31])
  );
  MyMC14495 d_6 (
      .D0(num[16]),
      .D1(num[17]),
      .D2(num[18]),
      .D3(num[19]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[32]),
      .b(code[33]),
      .c(code[34]),
      .d(code[35]),
      .e(code[36]),
      .f(code[37]),
      .g(code[38]),
      .p(code[39])
  );
  MyMC14495 d_7 (
      .D0(num[20]),
      .D1(num[21]),
      .D2(num[22]),
      .D3(num[23]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[40]),
      .b(code[41]),
      .c(code[42]),
      .d(code[43]),
      .e(code[44]),
      .f(code[45]),
      .g(code[46]),
      .p(code[47])
  );
  MyMC14495 d_8 (
      .D0(num[24]),
      .D1(num[25]),
      .D2(num[26]),
      .D3(num[27]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[48]),
      .b(code[49]),
      .c(code[50]),
      .d(code[51]),
      .e(code[52]),
      .f(code[53]),
      .g(code[54]),
      .p(code[55])
  );
  MyMC14495 d_9 (
      .D0(num[28]),
      .D1(num[29]),
      .D2(num[30]),
      .D3(num[31]),
      .point(1'b0),
      .LE(1'b0),
      .a(code[56]),
      .b(code[57]),
      .c(code[58]),
      .d(code[59]),
      .e(code[60]),
      .f(code[61]),
      .g(code[62]),
      .p(code[63])
  );
  SEG_DRV d_10 (
      .clk(clk),
      .num(code),
      .finish(finish),
      .ser_out(SEGDT)
  );
  assign SEGCLK = clk | finish;
endmodule
