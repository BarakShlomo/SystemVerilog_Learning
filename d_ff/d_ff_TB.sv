`timescale 1ns / 1ps

module d_ff_TB();

    logic clk;
    logic rst;
    logic d_i;
    logic q_norst_o;
    logic q_syncrst_o;
    logic q_asyncrst_o;
    
    d_ff dff(.clk(clk), .rst(rst), .d_i(d_i),
             .q_norst_o(q_norst_o), .q_syncrst_o(q_syncrst_o),
             .q_asyncrst_o(q_asyncrst_o));
             
     always begin
        clk = 1'b0;
        #5;
        clk = 1'b1;
        #5;
     end
     
     initial begin
      rst <= 1'b0;
     d_i <= 1'b1;
     @(negedge clk);
     rst <= 1'b1;
     #1;
     rst <= 1'b0;
     @(negedge clk);
     rst <= 1'b1;
     @(negedge clk);
     #10;
     $finish;
     end
     
     
endmodule
