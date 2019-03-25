`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:48 03/25/2019 
// Design Name: 
// Module Name:    sixteen_arithmetic 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sixteen_arithmetic(A,B,op,R
    );
        input [15:0]A;
        input [15:0]B;
        input op;
        output R;
        wire [15:0]R;
        wire [15:0]C;
        full_adder F00(A[0],op^B[0],op,R[0],C[0]);
        full_adder F01(A[1],op^B[1],C[0],R[1],C[1]);
        full_adder F02(A[2],op^B[2],C[1],R[2],C[2]);
        full_adder F03(A[3],op^B[3],C[2],R[3],C[3]);
        full_adder F04(A[4],op^B[4],C[3],R[4],C[4]);
        full_adder F05(A[5],op^B[5],C[4],R[5],C[5]);
        full_adder F06(A[6],op^B[6],C[5],R[6],C[6]);
        full_adder F07(A[7],op^B[7],C[6],R[7],C[7]);
        full_adder F08(A[8],op^B[8],C[7],R[8],C[8]);
        full_adder F09(A[9],op^B[9],C[8],R[9],C[9]);
        full_adder F10(A[10],op^B[10],C[9],R[10],C[10]);
        full_adder F11(A[11],op^B[11],C[10],R[11],C[11]);
        full_adder F12(A[12],op^B[12],C[11],R[12],C[12]);
        full_adder F13(A[13],op^B[13],C[12],R[13],C[13]);
        full_adder F14(A[14],op^B[14],C[13],R[14],C[14]);
        full_adder F15(A[15],op^B[15],C[14],R[15],C[15]);
endmodule 
