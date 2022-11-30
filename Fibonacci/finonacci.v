`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2022 11:07:25
// Design Name: 
// Module Name: finonacci
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


module finonacci(
    input [7:0] n,
    input st, clk,
    output reg [31:0] fn,
    output reg busy
    );
    
    reg [31:0] a ,b;
    reg [7:0] c;
    wire [31:0] b1, a1, fn1;
    wire [7:0] c1;
    reg ra, rb, rc, rfn;
    
    //****************DATAPATH******************///
    
    assign a1 = (ra)? 32'b0: b;
    
    always @(posedge clk)
        a<= a1;
     
    assign b1 = (rb)? 32'b1 : b+a;
    
    always @(posedge clk)
        b <= b1;
    
    assign c1 = (rc)? n: c-8'b1;
    
    always @(posedge clk)
        c <= c1;
        
    assign fn1 = (rfn)? a: fn;
    
    always @(posedge clk)
        fn <= fn1;
    
    //***************************MAQUINA DE ESTADOS****************/////

           //variables internas
      reg [1:0] presente, futuro;
      
       //Codificacion maquina de estado 
    parameter inicio = 2'b00;
    parameter calculo = 2'b01;
    parameter imprimir = 2'b10;
    
    //REGISTRO DE ESTADO
    always @(posedge clk)
        presente <= futuro;
        
    
    //LOGICA DEL ESTADI SIGUIENTE
    always @(*)
    begin 
        case(presente)
        inicio:
            if(st==1'b1 && n!=8'b0)
                futuro <= calculo;
            else if (st==1'b1 && n==8'b0)
                futuro <= imprimir;
            else
               futuro <= inicio;
        calculo:
            if(c!=8'b1)
                futuro <= calculo;
            else
               futuro <= imprimir;          
  
        imprimir:
                futuro <= inicio;    
                              
        default:
            futuro <= inicio;
            
        endcase 
    end  
    
    //logica de salida
    always @(*)
        case(presente)
        inicio: begin 
            ra <= 1'b1;
            rb <= 1'b1;    
            rc <= 1'b1;    
            rfn <= 1'b0;                          
            busy <=  1'b0;       
        end
        
        calculo: begin  
            ra <= 1'b0;
            rb <= 1'b0;    
            rc <= 1'b0;    
            rfn <= 1'b0;                          
            busy <=  1'b1;
        end    
       
        imprimir: begin  
            ra <= 1'b1;
            rb <= 1'b1;    
            rc <= 1'b1;    
            rfn <= 1'b1;                          
            busy <=  1'b1;
        end            
        
        default: begin
            ra <= 1'b1;
            rb <= 1'b1;    
            rc <= 1'b1;    
            rfn <= 1'b0;                          
            busy <=  1'b0;
        end
     
      endcase
    
    
    
    
    
endmodule
