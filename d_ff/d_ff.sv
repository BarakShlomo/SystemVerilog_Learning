`timescale 1ns / 1ps

module d_ff(

    input logic clk,
    input logic rst,
    input logic d_i,
    
    output logic q_norst_o,
    output logic q_syncrst_o,
    output logic q_asyncrst_o
    );
    
    always_ff @ (posedge clk) begin
        q_norst_o <= d_i;
    end
    
    always_ff @ (posedge clk) begin
        if (rst)
            q_syncrst_o <= 1'b0;
        else
            q_syncrst_o <= d_i;
    end
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst)
            q_asyncrst_o <= 1'b0;
        else
            q_asyncrst_o <= d_i;
    end
            
endmodule
