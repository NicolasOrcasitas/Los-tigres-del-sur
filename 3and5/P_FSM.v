`timescale 1ns / 1ps

module P_FSM(
    input clk,
    input st,
    input [15:0] in,
    input [31:0] C3,C5,C15,
    
    output reg RC3, RC5, RC15, ROut, SC3, SC5, SC15, SOut, busy   
    );

    parameter Hold = 2'b00; 
    parameter In = 2'b01; 
    parameter Sum = 2'b10; 
    parameter End = 2'b11; 
    
    reg [1:0] CS = Hold;     
    reg [1:0] NS;         
  
    always@(posedge clk)
        CS<= NS;
        
    always@(CS,st,C15,C5,C3,in)
        case(CS)
            Hold:
               if(st)
                    NS<=In;
               else
                    NS<=Hold;
            In:
               if(in < 16'b11)
                    NS<=Hold;
               else
                    NS<=Sum;
            Sum:
               if((in >= C3 + 32'd3) && (in > C5+(32'd5*(in > C5 + 32'd5))))
                    NS<=Sum;
               else
                    NS<=End;
            End:
                if(in >= C15 + 32'd15)
                    NS<=End;
                else
                    NS<=Hold;
        endcase
        
    //Asignaciones de la máquina de estados
    always@(CS,NS) begin
        case(CS)
            Hold: begin
                  RC3  <= 0;
                  RC5  <= 0;
                  RC15 <= 0;
                  ROut <= 1;
                  SC3  <= 0;
                  SC5  <= 0;
                  SOut <= 0;
                  SC15 <= 0;
                  busy <= 0;
               end
            In:
               begin
                  RC3  <= 1;
                  RC5  <= 1;
                  RC15 <= 1;
                  ROut <= 1;
                  SC3  <= 0;
                  SC5  <= 0;
                  SC15 <= 0;
                  SOut <= 1;
                  busy <= 1;
               end
            Sum:
               begin
                  RC3  <= 0;
                  RC5  <= 0;
                  RC15 <= 0;
                  ROut <= 0;
                  SC3  <= 1;
                  SC5  <= 1;
                  SC15 <= 0;
                  SOut <= 1;
                  busy <= 1;
               end
            End:
               begin
                  RC3  <= 0;
                  RC5  <= 0;
                  RC15 <= 0;
                  SC3  <= 0;
                  SC5  <= 0;
                  SC15 <= 1;
                  SOut <= 0;
                  busy <= 1;
               end
        endcase           
    end                   
endmodule