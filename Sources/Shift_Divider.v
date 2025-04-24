
`timescale 1ns / 1ps

module Shift_Divider(
        input [7:0] dividend,
        input [2:0] divisor,
        output [7:0] result
    );
        wire [15:0]temp1;
        wire [15:0]temp2;
        wire [15:0]temp3;
        
        Shift_1 mod1(
                .data(dividend),
                .en(divisor[0]),
                .q(temp1)
            );
        
         Shift_2 mod2(
                .data(divisor[0]?temp1:dividend),
                .en(divisor[1]),
                .q(temp2)
            );
            
          Shift_4 mod3(
                .data((divisor[0]||divisor[1])?temp2:dividend),
                .en(divisor[2]),
                .q(temp3)
            );
             
            
          assign result=divisor[2]?temp3:divisor[1]?temp2:divisor[0]?temp1:dividend;   
    
endmodule
