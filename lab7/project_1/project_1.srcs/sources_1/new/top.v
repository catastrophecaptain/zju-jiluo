module top (
    input wire clk,
    input wire [7:0] SW,
    input wire [3:0] btn,
    output wire [3:0] AN,
    output wire [7:0] SEGMENT,
    output wire BTNX4
);
  wire [15:0] num;
 wire gnd;
  CreateNumber c0 (
      btn,
      num
  );
assign BTNX4=1'b0;
  DispNum d0 (
      clk,
      num,
      SW[7:4],
      SW[3:0],
      1'b0,
      AN,
      SEGMENT
  );
endmodule
