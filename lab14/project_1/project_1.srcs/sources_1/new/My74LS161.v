`timescale 1ns / 1ps
module My74LS161 (
    input wire [3:0] D,
    input wire CP,
    CR,
    LD,
    CTT,
    CTP,
    output wire CO,
    output wire [3:0] Q
);
assign CO =(&Q)&CTT;
reg[3:0] Q_reg;
assign Q=Q_reg;
initial begin
    Q_reg = 4'b0000;
end
always @(posedge CP or negedge  CR) begin
    if(!CR) begin
        Q_reg <= 4'b0000;
    end
    else if(!LD) begin
        Q_reg <= D;
    end
    else if(CTP&CTT) begin
        Q_reg <= Q_reg + 1;
    end
end
endmodule
