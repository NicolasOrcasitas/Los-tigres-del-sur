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
    wire busy;
    reg [15:0] in;
    wire [31:0] out;

    top UUT(
        .clk(clk),
        .st(st),
        .busy(busy),
        .in(in),
        .out(out)
    );
    
    always #5 clk = ~clk;
    initial 
        begin
            in <= 15'b0;
            st <= 1'b0;
            #100;
            
            in <= 15'd2;
            #12.5;
            
            st<=1'd1;
            #5;
            
            st<=1'd0;
            #250;
            
            in <= 15'd10;
            #15;
            
            st <=1'd1;
            #5;
            
            st<=0;
            #250;
            
            in <= 15'd20;
            #15;
            
            st <=1'd1;
            #5;
            
            st<=0;
            #250;
            
            in <= 15'd45;
            #15;
            
            st <=1'd1;
            #5;
            
            st<=0;
            #7500;
    end


endmodule
