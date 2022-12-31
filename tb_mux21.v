`timescale 1ns / 1ps

module tb_mux21(  );

    // Define input and output ports
    reg D1_tb = 0;
    reg D2_tb = 0;
    reg S_tb = 0;
    wire Y_tb;
    
    // Port Mapping
    Mux_2_To_1 instant(.D1(D1_tb), .D2(D2_tb), .S(S_tb), .Y(Y_tb));
    
    initial 
        begin 
        // Test 1
        D1_tb = 1'b0;
        D2_tb = 1'b1;
        S_tb = 1'b0;
        #20; // Run for 20ns
        
        // Test 2 
        D1_tb = 1'b0;
        D2_tb = 1'b1;
        S_tb = 1'b1;
        #20; // Run for 20ns
        
    end 
endmodule
