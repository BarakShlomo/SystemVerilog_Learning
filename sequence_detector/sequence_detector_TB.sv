`timescale 1ns / 1ps

module sequence_detector_TB();
    
    logic clk;
    logic rst;
    logic x_i;
    logic det_o;

    sequence_detector seq_dec (.*);
    
    always begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
    end
    
    initial begin
        rst <= 1'b1;
        x_i <= 1'b0;
        @(negedge clk);
        @(negedge clk);
        rst <= 1'b0;
        for (int i=0 ; i<10; ++i) begin
            x_i = $random%2;
            @(negedge clk);
        end
        rst <=1'b1;
        #1;
        rst <= 1'b0;
        @(negedge clk);
        //b1110_1101_1011
        x_i <= 1'b1;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        x_i <= 1'b0;
        @(negedge clk);
        x_i <= 1'b1;
        @(negedge clk);
        @(negedge clk);
        x_i <= 1'b0;
        @(negedge clk);
        x_i <= 1'b1;
        @(negedge clk);
        @(negedge clk);
        x_i <= 1'b0;
        @(negedge clk);
        x_i <= 1'b1;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        $finish;
    end
    
endmodule
