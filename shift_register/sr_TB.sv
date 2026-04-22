`timescale 1ns / 1ps

module sr_TB();
    logic       clk;
    logic       rst;
    logic       x_i;
    logic [3:0] sr_o;
    
    sr shift_reg (.clk(clk), .rst(rst), .x_i(x_i), .sr_o(sr_o));
    
    always begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
    end
    
    initial begin
        rst <= 1'b0;
        for (int i = 0 ; i < 6 ; i++) begin
            x_i <= $random%2;
            @(negedge clk);
        end
        rst <= 1'b1;
        @(negedge clk);
        rst <= 1'b0;
        for (int i = 0 ; i < 6 ; i++) begin
            x_i <= $random%2;
            @(negedge clk);
        end
        $finish;
    end
endmodule
