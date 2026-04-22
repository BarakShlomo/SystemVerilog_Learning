`timescale 1ns / 1ps

module alu_8bit_TB();

    logic [7:0]   a_i;
    logic [7:0]   b_i;
    logic [2:0]   op_i;
    logic [7:0]   alu_o;
    
    alu_8bit alu(.*);
    
    initial begin
        a_i <= 8'h7;
        b_i <= 8'h3;
        #5;
        op_i <= 3'b000;
        #5;
        op_i <= 3'b001;
        #5;
        op_i <= 3'b010;
        #5;
        op_i <= 3'b011;
        #5;
        op_i <= 3'b100;
        #5;
        op_i <= 3'b101;
        #5;
        op_i <= 3'b110;
        #5;
        op_i <= 3'b111;
        #5;
        b_i <= 8'h7;
        #5;
        $finish;
    end

endmodule
