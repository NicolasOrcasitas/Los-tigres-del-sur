`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2022 08:23:41
// Design Name: Jorge Angarita
// Module Name: Sum221
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


module Sum221(
    input [4:0] in,
    output [2:0] outS
    );
    wire [1:0] A = in[1:0];
    wire [1:0] B = in[3:2];
    wire C = in[4]; 
    
    assign outS = A + B + C;
endmodule
