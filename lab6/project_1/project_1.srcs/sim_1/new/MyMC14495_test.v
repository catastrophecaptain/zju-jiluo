`timescale 1ns / 1ps
module MyMC14495_test ();
  reg D0, D1, D2, D3, point, LE;
  wire a, b, c, d, e, f, g, p;
  MyMC14495 UUT1 (

      D0,
      D1,
      D2,
      D3,
      point,
      LE,
      a,
      b,
      c,
      d,
      e,
      f,
      g,
      p
  );

  integer i;
  initial begin
    D3 = 0;
    D2 = 0;
    D1 = 0;
    D0 = 0;
    LE = 0;
    point = 0;
    for (i = 0; i <= 15; i = i + 1) begin
      #50;
      {D3, D2, D1, D0} = i;
      point = i;
    end

    #50;
    LE = 1;
  end

endmodule
