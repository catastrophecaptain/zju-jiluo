module top1_test1();
reg clk;
reg [15:0] SW;
wire [15:0]num;
top1_test_source test1 (.clk(clk), .SW(SW), .num(num));
initial begin
    clk=0;
    while (1) begin
        #1;
        clk=~clk;
    end
end
initial begin
    SW=16'b1000000000000000;
    //SW[15]=1;
    //SW[2]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    SW[15]=0;
    SW[0]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    #50;
    SW[2]=1;
    #50;
    SW[0]=1;
    SW[2]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    #50;
    $finish;
end
endmodule
