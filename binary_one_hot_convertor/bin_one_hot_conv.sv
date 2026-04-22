`timescale 1ns / 1ps

module bin_one_hot_conv#(parameter BIN_W = 4)(
    input  wire[BIN_W - 1 : 0] bin_i,
    output wire[(2**BIN_W)-1 :0] one_hot_o
    );
    
    assign one_hot_o = 1'b1 << bin_i;
        
endmodule
