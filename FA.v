`timescale 1ns / 1ps

module FA( A, B, Cin, Sum, Cout);
    // Define the input and output signals 
    input A;
    input B;
    input Cin;
    output Sum;
    output Cout;
    
    // Define the Full Adder modules behavior 
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule

