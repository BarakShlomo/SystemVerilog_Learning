`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2026 11:37:29
// Design Name: 
// Module Name: edge_detector_TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module edge_detector_TB();

    logic clk;
    logic rst;
    logic a_i;
    logic rising_edge_o;
    logic falling_edge_o;
    
    edge_detector det(.*);
    
    always begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
    end
    
    initial begin
        rst <= 1'b0;
        a_i <= 1'b0;
        @(negedge clk);
        a_i <= 1'b1;
        @(negedge clk);
        a_i <= 1'b0;
        @(negedge clk);
        $finish;
    end
    
    
endmodule
