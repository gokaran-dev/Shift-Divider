`timescale 1ns / 1ps

module Shift_1_TB();
    reg [15:0] data;
    reg en;
    wire [15:0] q;
    
    Shift_1 UUT (
        .data(data),
        .en(en),
        .q(q)
    );
    
    initial begin
        data=16'b1010101010101010;
        en=0;
        #10 en=1;
        #20 data=16'b1111000011110000;
        #30 en=0;
        #40 data=16'b0000111100001111;
        #50 en=1;
        #60 $finish;
    end
endmodule
