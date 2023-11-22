`timescale 1ns / 1ps

module LampCtrl(S1, 
                S2, 
                S3, 
                F, 
                LED);

    input S1;
    input S2;
    input S3;
   output F;
   output [6:0] LED;
   
   wire XLXN_4;
   wire XLXN_6;
   wire XLXN_8;
   wire XLXN_10;
   wire XLXN_11;
   wire XLXN_12;
   wire XLXN_13;
   
   INV  XLXI_3 (.I(S1), 
               .O(XLXN_6));
   INV  XLXI_4 (.I(S2), 
               .O(XLXN_8));
   INV  XLXI_5 (.I(S3), 
               .O(XLXN_4));
   AND3  XLXI_6 (.I0(S3), 
                .I1(S2), 
                .I2(S1), 
                .O(XLXN_13));
   AND3  XLXI_7 (.I0(S3), 
                .I1(XLXN_8), 
                .I2(XLXN_6), 
                .O(XLXN_12));
   AND3  XLXI_8 (.I0(XLXN_4), 
                .I1(S2), 
                .I2(XLXN_6), 
                .O(XLXN_11));
   AND3  XLXI_9 (.I0(XLXN_4), 
                .I1(XLXN_8), 
                .I2(S1), 
                .O(XLXN_10));
   OR4  XLXI_10 (.I0(XLXN_13), 
                .I1(XLXN_12), 
                .I2(XLXN_11), 
                .I3(XLXN_10), 
                .O(F));
   GND  XLXI_12 (.G(LED[6]));
   GND  XLXI_13 (.G(LED[5]));
   GND  XLXI_14 (.G(LED[4]));
   GND  XLXI_15 (.G(LED[3]));
   GND  XLXI_16 (.G(LED[2]));
   GND  XLXI_17 (.G(LED[1]));
   GND  XLXI_18 (.G(LED[0]));
endmodule

