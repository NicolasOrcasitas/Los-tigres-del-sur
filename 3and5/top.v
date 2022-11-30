`timescale 1ns / 1ps

module top(
    input [15:0] in,
    input clk,
    input st,
    output [31:0] out,
    output busy
    );
    //Wires Para unir señales
    wire RC3, RC5, RC15, ROut, SC3, SC5, SC15, SOut;
    wire [31:0] C3,C5,C15;
    
    P_DP Datapath(
        .clk(clk),
        .in(in),
        .out(out),
        .C3(C3),
        .C5(C5),
        .C15(C15),
        .RC3(RC3),
        .RC5(RC5),
        .RC15(RC15),
        .ROut(ROut),
        .SC3(SC3),
        .SC5(SC5),
        .SC15(SC15),
        .SOut(SOut)
        
    );
    
    P_FSM FSM(
        .clk(clk),
        .st(st),
        .in(in),
        .C3(C3),
        .C5(C5),
        .C15(C15),
        .RC3(RC3),
        .RC5(RC5),
        .RC15(RC15),
        .ROut(ROut),
        .SC3(SC3),
        .SC5(SC5),
        .SC15(SC15),
        .SOut(SOut),
        .busy(busy)
        
    );
endmodule
