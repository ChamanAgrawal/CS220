`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:05 03/25/2019 
// Design Name: 
// Module Name:    top 
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
module top(bits,clk,rot_a,rot_b,reset,lcd_rs,lcd_w,lcd_e,databits
    );
        input [3:0]bits;
        input clk,rot_a,rot_b,reset;
        output lcd_rs,lcd_w,lcd_e;
        output databits;
        wire lcd_rs,lcd_w,lcd_e;
        wire [3:0]databits;
        wire rot;
        wire [127:0]line1;
        wire [127:0]line2;
        detector D0(clk,rot_a,rot_b,rot);
        interface I0(bits,clk,rot,reset,line1,line2);
        lcd_driver L0(line1,line2,clk,lcd_rs,lcd_w,lcd_e,databits);
endmodule 