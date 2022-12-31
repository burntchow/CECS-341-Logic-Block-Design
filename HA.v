`timescale 1ns / 1ps
 
module HA(A, B,Cout, Sum);
    // Define the input and output signals
    input A;
    input B;
    output Sum;
    output Cout;
    
    // Define module behavior 
    assign Sum = A ^ B;  // xor
    assign Cout = A & B; // and 
    
endmodule
