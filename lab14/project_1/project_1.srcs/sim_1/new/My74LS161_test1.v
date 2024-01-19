`timescale 1ns / 1ps
module My74LS161_test1 ();
  reg [3:0] D;
  reg CP, CR, LD, CTT, CTP;
  wire CO;
  wire [3:0] Q;
  My74LS161 test1 (
      .D  (D),
      .CP (CP),
      .CR (CR),
      .LD (LD),
      .CTT(CTT),
      .CTP(CTP),
      .CO (CO),
      .Q  (Q)
  );
  always begin
     CP = 0;
     #20;
     CP = 1;
     #20;
  end
  initial begin
    CR  = 0;
    D   = 0;
    CTP = 0;
    CTT = 0;
    LD  = 0;

    #100;
    CR  = 1;
    LD  = 1;
    D   = 4'b1100;
    CTT = 0;
    CTP = 0;
    #30 CR = 0;
    #20 CR = 1;
    #10 LD = 0;
    #30 CTT = 1;
    CTP = 1;
    #10 LD = 1;

    #510;
    CR = 0;
    #20 CR = 1;
    #500;
  end

endmodule
