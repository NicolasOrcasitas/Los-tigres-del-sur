`timescale 1ns / 1ps

module C_FSMR(
    input clk,
    input st,
    input [15:0] co,
    input r,
    input [19:0] k,
    output reg Mx, Rx, Ik, Pk, Sk
    );
    
    parameter H = 2'b00; //Hold
    parameter I = 2'b01; //In
    parameter O = 2'b10; //Odd
    parameter E = 2'b11; //Even
    
    reg [1:0] CS = H; //Current State 
    reg [1:0] NS;         //Next State
    wire [19:0] ShiftK = k>>1;
    wire [19:0] TimesK = 3*k+1;
    
    always@(posedge clk)
        CS<= NS;
        
    always@(CS,st,k,Pk)
        case(CS)
            H:
                if(st)
                    NS<=I;
                else
                    NS<=H;
            I:
                if(co<=1)
                    NS<=H;
                else if(co[0]==1)
                    NS<=O;
                else
                    NS<=E;
            O:
                if(TimesK[0]==1)
                    NS<=O;
                else
                    NS<=E;
            E:
                if(k==2)
                    NS<=H;
                else if(ShiftK[0]==1)
                    NS<=O;
                else
                    NS<=E;
        endcase
        
    always@(CS,NS) begin
        case(CS)
            H: begin
                   Mx <= 0;
                   Rx <= 0;
                   Ik <= 0;
                   Pk <= 0;
                   Sk <= 0;
                  
               end
            I:
               begin
                   Mx <= 0;
                   Rx <= 1;
                   Ik <= 1;
                   Pk <= 1;
                   Sk <= 1;
                   
               end
            E:
               begin
                   Mx <= 1;
                   Rx <= 0;
                   Ik <= 0;
                   Pk <= 1;
                   Sk <= 0;
                   
               end
            O:
               begin
                   Mx <= 1;
                   Rx <= 0;
                   Pk <= 0;
                   Sk <= 0;
                   Ik <= 1;
               end
        endcase           
    end                   
                          
endmodule                 
                          
