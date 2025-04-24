`timescale 1ns / 1ps

module MUX_2x1_TB();
    reg data1, data2, sel;
    wire y;
    
    MUX_2x1 UUT(
        .data1(data1),
        .data2(data2),
        .sel(sel),
        .y(y)
    );
    
    initial begin
            data1=0; data2=0; sel = 0;
        #10 data1=0; data2=1; sel = 0;
        #10 data1=1; data2=0; sel = 0;
        #10 data1=1; data2=1; sel = 0;
        #10 data1=0; data2=0; sel = 1;
        #10 data1=0; data2=1; sel = 1;
        #10 data1=1; data2=0; sel = 1;
        #10 data1=1; data2=1; sel = 1;
        #10 $finish;
    end
endmodule
