`timescale 1ns / 1ps
module MyClock_test (
    input  wire clk,
    output wire SEGCLK,
    output wire SEGCLR,
    output wire SEGDT,
    output wire SEGEN,
    output wire [23:0] O,
    output wire clk_128 
);
  wire [31:0] init = 32'h00235958;
  wire [31:0] num;
  assign num[31:24] = init[31:24];
  assign O=num[23:0];
  
  SEG8 seg8 (
      .num(num),
      .clk(clk),
      .SEGCLK(SEGCLK),
      .SEGCLR(SEGCLR),
      .SEGDT(SEGDT),
      .SEGEN(SEGEN)
  );
  wire [31:0] clk_100ms;
  assign clk_128=clk_100ms[7];
  // 24
  clkdiv d_0 (
      .clk(clk),
      .rst(1'b0),
      .clkdiv(clk_100ms)
  );
  /*reg[7:0] clk_100ms;
  always begin
    clk_100ms=8'b0;
    #1;
    clk_100ms=8'b11111111;
    #1;
  end*/
  reg [5:0] LD;
  wire [5:0] CTT, CR;
  wire [5:0] CO;
  initial begin
    LD = 6'b000000;
  end
  always @(posedge clk_100ms[7]) begin
    LD <= 6'b111111;
  end
  My74LS161 d_1 (
      .D  (init[3:0]),
      .CP (clk_100ms[7]),
      .CR (CR[0]),
      .LD (LD[0]),
      .CTT(CTT[0]),
      .CTP(1'b1),
      .CO (CO[0]),
      .Q  (num[3:0])
  );
  My74LS161 d_2 (
      .D  (init[7:4]),
      .CP (clk_100ms[7]),
      .CR (CR[1]),
      .LD (LD[1]),
      .CTT(CTT[1]),
      .CTP(1),
      .CO (CO[1]),
      .Q  (num[7:4])
  );
  My74LS161 d_3 (
      .D  (init[11:8]),
      .CP (clk_100ms[7]),
      .CR (CR[2]),
      .LD (LD[2]),
      .CTT(CTT[2]),
      .CTP(1),
      .CO (CO[2]),
      .Q  (num[11:8])
  );
  My74LS161 d_4 (
      .D  (init[15:12]),
      .CP (clk_100ms[7]),
      .CR (CR[3]),
      .LD (LD[3]),
      .CTT(CTT[3]),
      .CTP(1),
      .CO (CO[3]),
      .Q  (num[15:12])
  );
  My74LS161 d_5 (
      .D  (init[19:16]),
      .CP (clk_100ms[7]),
      .CR (CR[4]),
      .LD (LD[4]),
      .CTT(CTT[4]),
      .CTP(1),
      .CO (CO[4]),
      .Q  (num[19:16])
  );
  My74LS161 d_6 (
      .D  (init[23:20]),
      .CP (clk_100ms[7]),
      .CR (CR[5]),
      .LD (LD[5]),
      .CTT(CTT[5]),
      .CTP(1),
      .CO (CO[5]),
      .Q  (num[23:20])
  );
  assign CR[0] = ~(num[3] & num[1]);
  assign CR[1] = ~(num[6] & num[5]);
  assign CR[2] = ~(num[11] & num[9]);
  assign CR[3] = ~(num[14] & num[13]);
  assign CR[4] = ~(num[19] & num[17] | (num[21] & num[18]));
  assign CR[5] = ~(num[21] & num[18]);
  assign CTT[0] = 1'b1;
  assign CTT[1] = num[3] & num[0];
  assign CTT[2] = num[6] & num[4] & num[3] & num[0];
  assign CTT[3] = num[11] & num[8] & num[6] & num[4] & num[3] & num[0];
  assign CTT[4] = num[14] & num[12] & num[11] & num[8] & num[6] & num[4] & num[3] & num[0];
  assign CTT[5] = num[19] & num[16] & num[14] & num[12] & num[11] & num[8] & num[6] & num[4] & num[3] & num[0];
  // assign CTT[0]=1'b1;
  // assign CTT[1]=num[3]&num[0];
  // assign CTT[2]=num[6]&num[4]&CTT[1];
  // assign CTT[3]=num[11]&num[8]&CTT[2];
  // assign CTT[4]=num[14]&num[12]&CTT[3];
  // assign CTT[5]=num[19]&num[16]&CTT[4];
endmodule
