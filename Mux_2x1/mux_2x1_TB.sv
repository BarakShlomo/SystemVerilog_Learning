`timescale 1ns / 1ps

module mux_2x1_TB();

    logic [7:0] a_i;
    logic [7:0] b_i;
    logic       sel_i;
    logic [7:0] y_o;
    
    mux_2x1 mux(.*);
    
    initial begin
        for (int i = 0 ; i<10 ; i++) begin
            a_i <= $urandom_range(0,8'hff);
            b_i <= $urandom_range(0,8'hff);
            sel_i <= $random%2;
            #5;
        end
        #5;
        $finish;
    end

endmodule
