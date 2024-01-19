module Load_Gen (
    input  wire clk,
    input  wire clk_1ms,
    input  wire btn_in,
    output reg  Load_out
);
  initial Load_out = 0;
  wire btn_out;
  reg  old_btn;
  pbdebounce p0 (
      clk_1ms,
      btn_in,
      btn_out
  );
  always @(posedge clk) begin
    Load_out <= ((old_btn == 1'b0) && (btn_out == 1'b1));
  end
  always @(posedge clk) begin  //保存上一个周期btn的状态
    old_btn <= btn_out;
  end
endmodule
