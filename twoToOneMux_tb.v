`timescale 1ns / 1ns
`include "twoToOneMux.v"

module twoToOneMux_tb;

reg D0;
reg D1;
reg S;
wire Y;

twoToOneMux UTT(D0,D1,S,Y);

initial begin
    $dumpfile("twoToOneMux_tb.vcd");
    $dumpvars(0, twoToOneMux_tb);

    // S | D0 | D1 || Y
    // 0 | 0 | 0 || 0
    $display("S | D0 | D1 || Y");

    S = 0;
    D0 = 0;
    D1 = 0;
    #20;
    $display("0 | 0 | 0 || %b", Y);

    // 0 | 0 | 1 || 0
    S = 0;
    D0 = 0;
    D1 = 1;
    #20;
    $display("0 | 0 | 1 || %b", Y);

    // 0 | 1 | 0 || 1
    S = 0;
    D0 = 1;
    D1 = 0;
    #20;
    $display("0 | 1 | 0 || %b", Y);

    // 0 | 1 | 1 || 1
    S = 0;
    D0 = 1;
    D1 = 1;
    #20;
    $display("0 | 1 | 1 || %b", Y);

    // 1 | 0 | 0 || 0
    S = 1;
    D0 = 0;
    D1 = 0;
    #20;
    $display("1 | 0 | 0 || %b", Y);

    // 1 | 0 | 1 || 1
    S = 1;
    D0 = 0;
    D1 = 1;
    #20;
    $display("1 | 0 | 1 || %b", Y);

    // 1 | 1 | 0 || 0
    S = 1;
    D0 = 1;
    D1 = 0;
    #20;
    $display("1 | 1 | 0 || %b", Y);

    // 1 | 1 | 1 || 1
    S = 1;
    D0 = 1;
    D1 = 1;
    #20;
    $display("1 | 1 | 1 || %b", Y);


    $display("Test Complete");

end

endmodule