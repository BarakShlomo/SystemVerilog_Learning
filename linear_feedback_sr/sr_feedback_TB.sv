`timescale 1ns / 1ps

module sr_feedback_TB();

    logic       clk;
    logic       rst;
    logic [3:0] lfsr_o;
    
    sr_feedback sr_fb(.*);

    always begin 
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
    end
    
    initial begin
        rst <= 1'b1;
        @(negedge clk);
        rst <= 1'b0;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        rst <= 1'b1;
        @(negedge clk);
        rst <= 1'b0;
        @(negedge clk);
        @(negedge clk);
        $finish;
    end
endmodule
