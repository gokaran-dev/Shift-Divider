`timescale 1ns / 1ps

module Shift_Divider_TB();

    reg [7:0] dividend;
    reg [2:0] divisor;
    wire [7:0] result;

    Shift_Divider uut(
        .dividend(dividend),
        .divisor(divisor),
        .result(result)
    );

    initial begin
        dividend=8'b10101010;
        divisor=3'b000;
        
        #10;
        divisor=3'b001;
        #10;

        divisor=3'b010;
        #10;

        divisor=3'b100;
        #10;

        divisor=3'b101;
        #10;

        divisor=3'b110;
        #10;

        divisor=3'b111;
        #10;


        $finish;
    end
endmodule
