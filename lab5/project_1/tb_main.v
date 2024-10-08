//~ `New testbench
`timescale  1ns / 1ps

module tb_main;

// main Parameters
parameter PERIOD  = 10;


// main Inputs
reg   c                                    = 0 ;

// main Outputs



initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

main  u_main (
    .c                       ( c   )
);

initial
begin

    $finish;
end

endmodule
