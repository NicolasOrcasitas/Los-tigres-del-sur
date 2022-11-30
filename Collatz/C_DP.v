`timescale 1ns / 1ps

module C_DP(
    input clk,
    input [15:0] co,
    input st,
    output [15:0] x,
    output reg [19:0] k,
    output reg r,
    input Mx, Rx, Ik, Pk, Sk
    );
    reg [15:0] i;
    wire [15:0] nexti;
    wire [19:0] nextk;
    wire [1:0] nextr;
    wire [15:0] rti;
    wire [15:0] rtp;
    //Registro i
    always@(posedge clk) begin
        i <= nexti;
    end
    assign nexti = Rx ? 0:( Mx ? i+1:i );
    assign x = i;
    
    //Registro k
    wire [19:0] K2;
    wire [19:0] K3;
    always@(posedge clk) begin
        k <= nextk;
    end
    assign nextk = Sk ? co:K2;
    assign K2 = Pk ? (k>>1):K3;
    assign K3 = Ik ? (3*k+1):k;
    
    /*Registro r
    wire [19:0] S2;
    wire [19:0] S3;
    always@(posedge clk) begin
        r <= nextr;
    end
    assign rti = k;
    assign rtp = k;
    assign nextr = Mr ? rti%2:S2;
    assign S2 = Pr ? rtp%2:S3;
    assign S3 = Ir ? co%2 : r;
    */
endmodule
