module top1 (input wire clk, input wire [15:0] SW, output wire [3:0] AN, output wire [7:0] SEGMENT);
  wire Load_A;
  wire Co;
  wire [3:0] A, A_IN, A1;
  wire [31:0] clk_div;
  MyRegister4b RegA (
      .clk (clk),
      .IN  (A_IN),
      .Load(Load_A),
      .OUT (A)
  );
  Load_Gen m0 (
      .clk(clk),
      .clk_1ms(clk_div[17]),
      .btn_in(SW[2]),
      .Load_out(Load_A)
  );  //寄存器A的Load信号
  clkdiv m3 (
      clk,
      1'b0,
      clk_div
  );
  AddSub4b m4 (
      .A(A),
      .B(4'b0001),
      .Ctrl(SW[0]),
      .S(A1),
      .Co(Co)
  );  //自增/自减逻辑
  assign A_IN = (SW[15] == 1'b0) ? A1 : 4'b0000;  //2选1多路复用器，复位寄存器初值
  DispNum m8 (
      .clk(clk),
      .HEXS({A, A1, A_IN, 4'b0000}),
      .LES(4'b0),
      .points(4'b0),
      .RST(1'b0),
      .AN(AN),
      .Segment(SEGMENT)
  );
endmodule
