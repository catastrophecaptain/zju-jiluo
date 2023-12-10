module MyRegister4b (
    input wire clk,
    input wire [3:0] IN,
    input wire Load,
    output reg [3:0] OUT
);
initial OUT =4'b0000;
    always @(posedge clk) begin
        if (Load) begin
            OUT <= IN;
        end
    end
endmodule