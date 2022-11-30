`timescale 1ns / 1ps

module P_DP(
    input clk,
    input [15:0] in,
    output reg [31:0] out,
    output reg [31:0] C3, C5, C15, //Contadores en 3, 5, 15
    //Switch
    input RC3, RC5, RC15, ROut, SC3, SC5, SC15, SOut
    
    );
    //____Registro 1___//
    wire [31:0] nextC3; 
    
    always@(posedge clk) begin
        C3 <= nextC3;
    end
    assign nextC3 = RC3 ? 32'd0: (SC3 ? C3 + (32'd3): C3); 
    //Sumar 3 sin superar o igualar la entrada
    
    //____Registro 2___//
    wire [31:0] nextC5;
    wire [31:0] check5;
    always@(posedge clk) begin
        C5 <= nextC5;
    end
    
    assign check5 = in > C5 + 32'd5;
    assign nextC5 = RC5 ? 32'd0: (SC5 ? C5+(32'd5*(check5)):C5); 
    //Se suma 5 hasta superar la entrada 
    //Como se suma 5 y 3 al tiempo, se usa a check5 para que C5 no supere a in
    
    //____Registro 3___//
    wire [31:0] nextC15;
    always@(posedge clk) begin
        C15 <= nextC15;
    end
    
    assign nextC15 = RC15 ? 32'd0: (SC15 ? (C15 + 32'd15):C15); 
    //Se suma 15 hasta que esto supera la entrada
 
    //____Registro 4___// 
    wire [31:0] nextOut;
    always@(posedge clk) begin
        out <= nextOut;
    end
    assign nextOut = ROut ? (SOut ? 32'd0 : out) : (SOut ? out + (C5+32'd5)*check5 + C3: out-C15); 
    //4 Opciones:
    // Rout // SOut // Instruccion
    // 1    //  1   // Reiniciar
    // 1    //  0   // Mantener
    // 0    //  1   // Acumular
    // 0    //  0   // Corregir 
    
endmodule
