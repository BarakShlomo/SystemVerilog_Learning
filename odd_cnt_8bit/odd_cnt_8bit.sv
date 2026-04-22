`timescale 1ns / 1ps

module odd_cnt_8bit(
    input  logic clk,
    input  logic rst,
    output logic[7:0] cnt_o

    );
    
    always_ff @ (posedge clk or posedge rst) begin
        if(rst)
            cnt_o <= 8'h01;
        else
            cnt_o <= cnt_o + 8'h02;
    end
    
endmodule
