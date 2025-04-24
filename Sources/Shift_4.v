//shifting right by 1 bit

`timescale 1ns / 1ps

module Shift_4(
        input [7:0]data,
        input en,
        output [7:0]q
    );
         
            MUX_2x1 m01(.data1(data[0]),.data2(data[4]),.y(q[0]),.sel(en));
            MUX_2x1 m02(.data1(data[1]),.data2(data[5]),.y(q[1]),.sel(en));
            MUX_2x1 m03(.data1(data[2]),.data2(data[6]),.y(q[2]),.sel(en));
            MUX_2x1 m04(.data1(data[3]),.data2(data[7]),.y(q[3]),.sel(en));
           
     
        
            assign q[4]=1'b0;
            assign q[5]=1'b0;
            assign q[6]=1'b0;
            assign q[7]=1'b0;
                
        
endmodule
