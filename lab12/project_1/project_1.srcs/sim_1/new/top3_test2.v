module top3_test2();
reg clk;
reg [15:0] SW;
wire [15:0]num;
top3_test_source test2 (.clk(clk), .SW(SW), .num(num));
initial begin
    clk=0;
    while (1) begin
        #1;
        clk=~clk;
    end
end
initial begin
    SW=16'b0000000000000010;
    #50;
    SW[2]=1;
    SW[3]=1;
    #50;
    SW[2]=0;
    SW[3]=0;   
    #50;
    SW[2]=1;
    SW[3]=1;
    #50;
    SW[2]=0;
    SW[3]=0;
    SW[1]=0;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    SW[6:5]=2'b01;
    #50;
    SW[4]=1;
    #50;
    SW[4]=0;
    SW[8:7]=2'b10;
    SW[15]=1;
    #50;
    SW[2]=1;
    #50;
    SW[2]=0;
    SW[8:7]=2'b01;
    #50
    SW[4]=1;
    #50;
    SW[4]=0;
    $finish;

end
endmodule
