`timescale 1ns / 1ps

module sr(
    input  wire clk,
    input  wire rst,
    input  wire x_i,
    
    output wire[3:0] sr_o
    );
    
    logic [3:0] sr_ff;
    logic [3:0] nxt_ff;
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst)
            sr_ff <= 4'h0;
        else
            sr_ff <= nxt_ff;
    end
    
    assign nxt_ff = {sr_ff[2:0] , x_i};
    assign sr_o = sr_ff;
    
endmodule
