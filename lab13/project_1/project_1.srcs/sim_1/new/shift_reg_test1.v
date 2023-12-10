`timescale 1ns / 1ps
module shift_reg_test1(

    );
    reg clk, S_L, s_in;
    reg[7:0] p_in;
    wire [7:0] Q;
    shift_reg test1 (
        .clk(clk),
        .S_L(S_L),
        .s_in(s_in),
        .p_in(p_in),
        .Q(Q[7:0])
    );
    initial begin
		// Initialize Inputs
		S_L = 0;
		s_in = 0;
		p_in = 0;

		#100;
        
		// Add stimulus here
		S_L = 0;
		s_in = 1;
		p_in =0;
        #200;
		S_L = 1;
		s_in = 0;
		p_in = 8'b0101_0101;
		#500;
	end
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end

endmodule
