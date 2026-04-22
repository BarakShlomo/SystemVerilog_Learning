`timescale 1ns / 1ps

module sequence_detector(

    input  wire clk,
    input  wire rst,
    input  wire x_i,
    output wire det_o
    );
    
    logic [11:0] sr_ff;
    logic [11:0] nxt_ff;
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst)
            sr_ff <= 12'h000;
        else 
            sr_ff <= nxt_ff;
    end
    
    assign nxt_ff = {sr_ff[10:0],x_i};
    assign det_o = (sr_ff == 12'b1110_1101_1011);
    
endmodule
