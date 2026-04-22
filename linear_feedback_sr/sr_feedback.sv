`timescale 1ns / 1ps

module sr_feedback(
    input     wire      clk,
    input     wire      rst,

    output    wire[3:0] lfsr_o
    );
    
    logic [3:0] sr_ff;
    logic [3:0] nxt_ff;
    
    always_ff @ (posedge clk or posedge rst) begin
        if (rst)
            sr_ff <= 4'hE;
        else
            sr_ff <= nxt_ff;
    end

    assign nxt_ff = {sr_ff[2:0] , (sr_ff[3]^sr_ff[1])};

    assign lfsr_o = sr_ff;
    
endmodule
