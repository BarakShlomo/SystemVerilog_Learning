`timescale 1ns / 1ps

module odd_cnt_8bit_TB();

    logic        clk;
    logic        rst;
    logic[7:0]  cnt_o;
    
    odd_cnt_8bit cnt(.*);
    
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
        rst <= 1'b1;
        @(negedge clk);
        rst <= 1'b0;
        wait(cnt_o == 8'h03);
        #20;
        wait(cnt_o == 8'h03);
        $finish;
        
    end
endmodule
