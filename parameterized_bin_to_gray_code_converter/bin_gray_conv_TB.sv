`timescale 1ns / 1ps

module bin_gray_conv_TB();
    
    localparam VEC_W = 4;
    
    logic [VEC_W-1:0] bin_i;
    logic [VEC_W-1:0] gray_o;
    
    bin_gray_conv #(VEC_W) conv(.*);
    
    initial begin
        for (int i=0 ; i < 5 ; i++) begin
            bin_i = $urandom_range((2**VEC_W -1),0);
            #5;
        end
        $finish;
    end
    
endmodule
