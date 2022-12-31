`timescale 1ns / 1ps
module tb_FA4( );
    // Define input and output ports 
    reg [3:0] A_tb = 0;
    reg [3:0] B_tb = 0; 
    reg Cin_tb;
    wire [3:0] Sum_tb; 
    wire Cout_tb; 
    
    // Port Mapping 
    FA4 instant(.A(A_tb), .B(B_tb), .Cin(Cin_tb), .Sum(Sum_tb), .Cout(Cout_tb)); 
    
    initial 
        begin 
            // Test 1
            A_tb = 4'b0110;
            B_tb = 4'b0100;
            Cin_tb = 1'b0;
            #20; // Run for 20ns
            
            // Test 2 
            A_tb = 4'b1000;
            B_tb = 4'b1001;
            Cin_tb = 1'b1;
            #20; // Run for 20ns
            
            // Test 3
            A_tb = 4'b1110;
            B_tb = 4'b0010;
            Cin_tb = 1'b0;
            #20; // Run for 20ns
            
            // Test 4 
            A_tb = 4'b1010;
            B_tb = 4'b1011;
            Cin_tb = 1'b0;
            #20; // Run for 20ns
    end 
endmodule
