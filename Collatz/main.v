`timescale 1ns / 1ps
//Primera Entrega Digitales II
//Conjetura de Collatz
//Grupo: Los Cracks
//Codigos: 2190407 2190418 2190427
module main(
    input [15:0] co,
    input st,
    input clk,
    output [15:0] x,
    output bs
    );
    wire Mx, Rx, Ik, Pk, Sk;
    wire [19:0]k;
    
    C_DP Datapath (
        .clk(clk),
        .co(co),
        .st(st),
        .x(x),
        .k(k),
        
        .Mx(Mx),
        .Rx(Rx),
        .Ik(Ik),
        .Pk(Pk),


        .Sk(Sk)

    );
    
    C_FSMR FSM (
        .clk(clk),
        .co(co),
        .st(st),
        .k(k),
 
        .Mx(Mx),
        .Rx(Rx),
        .Ik(Ik),
        .Pk(Pk),
        
        .Sk(Sk)
        
    );
    
endmodule
