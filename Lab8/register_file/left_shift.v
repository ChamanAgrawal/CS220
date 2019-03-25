`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:19 03/25/2019 
// Design Name: 
// Module Name:    left_shift 
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
module left_shift(clk,A,shift,R
    );
        input clk; 
        input [15:0]A;
        input [3:0]shift;
        output R;
        reg [15:0]R;
        always@(posedge clk) begin
                if(shift==0) begin
                        R<=A;
                end
                else if(shift==1) begin
                        R[15:1]<=A[14:0];
                        R[0]<=0;
                end
                else if(shift==2) begin
                        R[15:2]<=A[13:0];
                        R[1:0]<=0;
                end
                else if(shift==3) begin
                        R[15:3]<=A[12:0];
                        R[2:0]<=0;
                end
                else if(shift==4) begin
                        R[15:4]<=A[11:0];
                        R[3:0]<=0;
                end
                else if(shift==5) begin
                        R[15:5]<=A[10:0];
                        R[4:0]<=0;
                end
                else if(shift==6) begin
                        R[15:6]<=A[9:0];
                        R[5:0]<=0;
                end
                else if(shift==7) begin
                        R[15:7]<=A[8:0];
                        R[6:0]<=0;
                end
                else if(shift==8) begin
                        R[15:8]<=A[7:0];
                        R[7:0]<=0;
                end
                else if(shift==9) begin
                        R[15:9]<=A[6:0];
                        R[8:0]<=0;
                end
                else if(shift==10) begin
                        R[15:10]<=A[5:0];
                        R[9:0]<=0;
                end
                else if(shift==11) begin
                        R[15:11]<=A[4:0];
                        R[10:0]<=0;
                end
                else if(shift==12) begin
                        R[15:12]<=A[3:0];
                        R[11:0]<=0;
                end
                else if(shift==13) begin
                        R[15:13]<=A[14:0];
                        R[12:0]<=0;
                end
                else if(shift==14) begin
                        R[15:14]<=A[1:0];
                        R[13:0]<=0;
                end
                else if(shift==15) begin
                        R[15]<=A[0];
                        R[14:0]<=0;
                end
        end
endmodule