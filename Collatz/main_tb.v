`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2022 14:09:27
// Design Name: 
// Module Name: main_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_tb();
    reg clk = 1'b0;
    reg st;
    wire bs;
    reg [15:0] co;
    wire [15:0] x;

    main UUT(
        .clk(clk),
        .st(st),
        .bs(bs),
        .co(co),
        .x(x)
    );
    
    always #5 clk = ~clk;
    initial begin
        co<=15'b0;
        st<=1'b0;
        #100;
        co<=15'd8;
        #12.5;
        st<=1'd1;
        #5;
        st<=1'd0;
        #100;
        co <= 15'd7;
        #15;
        st<=1'd1;
        #5;
        st<=0;
        #220;
        co<=15'd27;
        st<=1'd1;
        #10;
        st<=0;
        #2000;
        
    end


endmodule
