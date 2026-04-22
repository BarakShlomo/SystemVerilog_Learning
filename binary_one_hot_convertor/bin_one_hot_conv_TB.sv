`timescale 1ns / 1ps

module bin_one_hot_conv_TB();

    localparam BIN_W = 3;
    
    logic[BIN_W - 1 : 0] bin_i;
    logic[(2**BIN_W)-1 :0] one_hot_o;

    bin_one_hot_conv #(BIN_W) conv(.*);
    
    initial begin
        for (int i = 0 ; i<5 ; i++) begin
            bin_i <= $urandom_range((2**BIN_W)-1, 0);
            #5;
        end
        $finish;
    end
endmodule
