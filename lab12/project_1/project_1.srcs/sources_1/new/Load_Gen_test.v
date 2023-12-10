module Load_Gen_Test(
    input wire clk,
    input wire btn_in,
    output reg Load_out
    );	 
	 initial Load_out = 0;
	 wire btn_out=btn_in;
	 reg old_btn;
	 always@(posedge clk) begin
		if ((old_btn == 1'b0) && (btn_out == 1'b1))	//btn出现上升沿
			Load_out <= 1'b1;
		else
			Load_out <= 1'b0;
	 end
	 always@(posedge clk) begin		//保存上一个周期btn的状态
		old_btn <= btn_out;
	 end
endmodule