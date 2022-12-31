`timescale 1ns / 1ps

module FA( A, B, Cin, Sum, Cout );
    // Define input and output signals 
    input A;
    input B; 
    input Cin;
    output Sum;
    output Cout;
    
    // Definal module behavior 
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin); 

endmodule


module FA4( A, B, Cin, Sum, Cout );
    // Define input and output signals 
    input [3:0] A;
    input [3:0] B; 
    input Cin;
    output [3:0] Sum;
    output Cout;
    
    wire c0, c1, c2; 
    
    FA fa0(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(c0));
    FA fa1(.A(A[1]), .B(B[1]), .Cin(c0), .Sum(Sum[1]), .Cout(c1));
    FA fa2(.A(A[2]), .B(B[2]), .Cin(c1), .Sum(Sum[2]), .Cout(c2));
    FA fa3(.A(A[3]), .B(B[3]), .Cin(c2), .Sum(Sum[3]), .Cout(Cout));
    
endmodule

