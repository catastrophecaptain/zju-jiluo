`timescale 1ns / 1ps
module counter_4b_rev_test1(

    );
    reg clk,S;
    wire [15:0]cnt;
    wire Rc;
    integer i;
    counter_4b_rev test1(clk,S,cnt,Rc);
    initial begin
        S=0;
        for(i=0;i<18;i=i+1)begin
            clk=0;
            #50;
            clk=1;
            #50;
        end
        S=1;
        for(i=0;i<18;i=i+1)begin
            clk=0;
            #50;
            clk=1;
            #50;
        end
    end

endmodule
