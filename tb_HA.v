`timescale 1ns / 1ps
module tb_HA( );

    // Define input and output ports 
    reg A_tb = 0;
    reg B_tb = 0; 
    wire Sum_tb;
    wire Cout_tb;
    
    // Port Mapping 
    HA instant( .A(A_tb), .B(B_tb), .Sum(Sum_tb), .Cout(Cout_tb) );
      
      initial 
          begin 
              // Test 1 
              A_tb = 1'b0;
              B_tb = 1'b0;
              #10; // wait 10ns 
              
              // Test 2 
              A_tb = 1'b0;
              B_tb = 1'b1;
              #10; // wait 10ns 
          
              // Test 3 
              A_tb = 1'b1;
              B_tb = 1'b0;
              #10; // wait 10ns 
              
              // Test 4 
              A_tb = 1'b1;
              B_tb = 1'b1;
              #10; // wait 10ns  
      end
      
endmodule
