module top3 (
    input wire clk,
    input wire [15:0] SW,
    output wire [3:0] AN,
    output wire [7:0] SEGMENT
);
  wire Load_A, Load_B, Load_C;
  wire [3:0] Co;
  wire [3:0] A, A_IN, A1;
  wire [3:0] B, B_IN, B1;
  wire [3:0] C, C_IN;
  wire [ 3:0] result;
  wire [ 3:0] choose;
  wire [15:0] num;
  wire [31:0] clk_div;
  clkdiv m3 (
      clk,
      1'b0,
      clk_div
  );
  MyRegister4b RegA (
      .clk (clk),
      .IN  (A_IN),
      .Load(Load_A),
      .OUT (A)
  );
  MyRegister4b RegB (
      .clk (clk),
      .IN  (B_IN),
      .Load(Load_B),
      .OUT (B)
  );
  MyRegister4b RegC (
      .clk (clk),
      .IN  (C_IN),
      .Load(Load_C),
      .OUT (C)
  );
  Load_Gen m0 (
      .clk(clk),
      .clk_1ms(clk_div[17]),
      .btn_in(SW[2]),
      .Load_out(Load_A)
  );
  Load_Gen m1 (
      .clk(clk),
      .clk_1ms(clk_div[17]),
      .btn_in(SW[3]),
      .Load_out(Load_B)
  );
  Load_Gen m2 (
      .clk(clk),
      .clk_1ms(clk_div[17]),
      .btn_in(SW[4]),
      .Load_out(Load_C)
  );
  AddSub4b m4 (
      .A(A),
      .B(4'b0001),
      .Ctrl(SW[0]),
      .S(A1),
      .Co(Co[0])
  );
  AddSub4b m5 (
      .A(B),
      .B(4'b0001),
      .Ctrl(SW[1]),
      .S(B1),
      .Co(Co[1])
  );
  myALU m6 (
      .A (A),
      .B (B),
      .S ({SW[6:5]}),
      .C (result),
      .Co(Co[2])
  );
  assign A_IN = (SW[15] == 1'b0) ? A1 : choose;
  assign B_IN = (SW[15] == 1'b0) ? B1 : choose;
  assign C_IN = (SW[15] == 1'b0) ? result : choose;
  //assign choose = (SW[8:7]==2'b00)? A:
  //    (SW[8:7]==2'b01)?B:
  //    (SW[8:7]==2'b10)?C:4'b0000;
  Mux4to14b mux_1 (
      SW[8:7],
      A,
      B,
      C,
      4'b0000,
      choose
  );
  Mux4to116b mux_2 (
      SW[10:9],
      {A, A_IN, A1, choose},
      {B, B_IN, B1, choose},
      {C, C_IN, result, choose},
      {A, B, C, choose},
      num
  );
  //always @(SW[10:9], A, A_IN, A1, B, B_IN, B1, C, C_IN, choose) begin
  //case (SW[10:9])
  //2'b00: num <= {A, A_IN, A1, choose};
  //2'b01: num <= {B, B_IN, B1, choose};
  //2'b10: num <= {C, C_IN, result, choose};
  //endcase
  //end
  DispNum m8 (
      .clk(clk),
      .HEXS(num),
      .LES(4'b0),
      .points(4'b0),
      .RST(1'b0),
      .AN(AN),
      .Segment(SEGMENT)
  );
endmodule
