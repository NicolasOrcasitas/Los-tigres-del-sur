`timescale 1ns / 1ps

module top(
    input [4:0] in1,
    input [4:0] in2,
    input clk,
    output reg [9:0] out
    );
    
    wire A1, A2, A3, B1, B2, B3, C1, C2, C3, D1, D2, D3, E1, E2, E3, F1, F2, F3;
    wire G1, G2, G3, H1, H2, H3, I1, I2, I3, J1, J2, J3;
    wire M00, M10, M20, M30, M40, M01, M11, M21, M31, M41, M02, M12, M22, M32, M42;
    wire M03, M13, M23, M33, M43, M04, M14, M24, M34, M44;
    reg [4:0] in1C;
    reg [4:0] in2C;
    
    always@(posedge clk)
       in1C <= in1;
     
    always@(posedge clk)
       in2C <= in2;

    always@(posedge clk)
       out <= {J3, J2, J1, I2, I1, H2, H1, E1, A1, M00};
       
    assign M00 = in1C[0]*in2C[0];
    assign M10 = in1C[1]*in2C[0];
    assign M20 = in1C[2]*in2C[0];
    assign M30 = in1C[3]*in2C[0];
    assign M40 = in1C[4]*in2C[0];
    assign M01 = in1C[0]*in2C[1];
    assign M11 = in1C[1]*in2C[1];
    assign M21 = in1C[2]*in2C[1];
    assign M31 = in1C[3]*in2C[1];
    assign M41 = in1C[4]*in2C[1];
    assign M02 = in1C[0]*in2C[2];
    assign M12 = in1C[1]*in2C[2];
    assign M22 = in1C[2]*in2C[2];
    assign M32 = in1C[3]*in2C[2];
    assign M42 = in1C[4]*in2C[2];
    assign M03 = in1C[0]*in2C[3];
    assign M13 = in1C[1]*in2C[3];
    assign M23 = in1C[2]*in2C[3];
    assign M33 = in1C[3]*in2C[3];
    assign M43 = in1C[4]*in2C[3];
    assign M04 = in1C[0]*in2C[4];
    assign M14 = in1C[1]*in2C[4];
    assign M24 = in1C[2]*in2C[4];
    assign M34 = in1C[3]*in2C[4];
    assign M44 = in1C[4]*in2C[4];
   
    Sum221 SumA({0, M11, M01, M20, M10}, {A3, A2, A1});
    
    Sum221 SumB({0, M31, M21, M40, M30}, {B3, B2, B1});

    Sum221 SumC({M04, M14, M13, M23, M22}, {C3, C2, C1});

    Sum221 SumD({M24, M34, M33, M43, M42}, {D3, D2, D1});

    Sum221 SumE({0, B1, M02, A3, A2}, {E3, E2, E1});

    Sum221 SumF({0, C2, C1, B3, B2}, {F3, F2, F1});

    Sum221 SumG({0, D1, M41, C3, M32}, {G3, G2, G1});

    Sum221 SumH({M03, F1, M12, E3, E2}, {H3, H2, H1});

    Sum221 SumI({G1, G2, F2, F3, H3}, {I3, I2, I1});

    Sum221 SumJ({I3, D3, D2, M44, G3}, {J3, J2, J1});
       
endmodule
