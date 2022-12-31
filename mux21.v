`timescale 1ns / 1ps

module Mux_2_To_1( input S, input D1, input D2, output Y );
    // module behavior
    assign Y = (D1 & S) | (D2 & ~S);
    
endmodule
