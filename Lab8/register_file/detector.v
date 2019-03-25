`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:43 03/25/2019 
// Design Name: 
// Module Name:    detector 
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
module detector(clk,rot_a,rot_b,rot
    );
        input clk,rot_a,rot_b;
        output rot;
        reg rot;
        always@(posedge clk) begin
                if(rot_a==1'b1 & rot_b==1'b1) begin
                        rot <= 1'b1;
                end
                else if(rot_a==1'b0 & rot_b==1'b0)      begin
                        rot <= 1'b0;
                end
        end
endmodule
