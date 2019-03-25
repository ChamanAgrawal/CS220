`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:12 03/25/2019 
// Design Name: 
// Module Name:    interface 
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
module interface(bits,clk,rot,reset,line1,line2
    );
        input [3:0]bits;
        input clk,rot,reset;
        output line1;
        output line2;
        reg [127:0]line1;
        reg [127:0]line2;
        reg prev;
        initial prev<=1;
        reg [4:0]state;
        reg [3:0]count;
        reg op;
        reg [15:0]r_data1;
        reg [15:0]r_data2;
        reg [15:0]w_data;
        reg [4:0]r_addr1;
        reg [4:0]r_addr2;
        reg [4:0]w_addr;
        reg [3:0]shift;
        reg [15:0]mem_block[0:31];
        wire [15:0]op_res;
        wire [15:0]s_result;
        initial begin
                state<=0;
                count<=0;
                r_data1<=0;
                r_data2<=0;
                w_data<=0;
                r_addr1<=0;
                r_addr2<=0;
                w_addr<=0;
                shift<=0;
                line1<=0;
                line2<=0;
                mem_block[0]<=0;mem_block[1]<=0;mem_block[2]<=0;mem_block[3]<=0;
                mem_block[4]<=0;mem_block[5]<=0;mem_block[6]<=0;mem_block[7]<=0;
                mem_block[8]<=0;mem_block[9]<=0;mem_block[10]<=0;mem_block[11]<=0;
                mem_block[12]<=0;mem_block[13]<=0;mem_block[14]<=0;mem_block[15]<=0;
                mem_block[16]<=0;mem_block[17]<=0;mem_block[18]<=0;mem_block[19]<=0;
                mem_block[20]<=0;mem_block[21]<=0;mem_block[22]<=0;mem_block[23]<=0;
                mem_block[24]<=0;mem_block[25]<=0;mem_block[26]<=0;mem_block[27]<=0;
                mem_block[28]<=0;mem_block[29]<=0;mem_block[30]<=0;mem_block[31]<=0;
        end
        always@(posedge clk) begin
                prev<=rot;
                if(reset==1) begin
                        count<=0;
                        state<=0;
                end
                if(prev==0 & rot==1) begin
                        if(state==0) begin
                                if(bits[2:0]==0) begin
                                        state<=1;
                                end
                                else if(bits[2:0]==1) begin
                                        state<=2;
                                end
                                else if(bits[2:0]==2) begin
                                        state<=3;
                                end
                                else if(bits[2:0]==3) begin
                                        state<=4;
                                end
                                else if(bits[2:0]==4) begin
                                        state<=5;
                                end
                                else if(bits[2:0]==5) begin
                                        state<=6;
                                end
                                else if(bits[2:0]==6) begin
                                        state<=7;
                                end
                                else if(bits[2:0]==7) begin
                                        state<=8;
                                end
                        end
                        else if(state==1) begin
                                if(count==0) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                else if(count==1) begin
                                        w_addr[4]<=bits[0];
                                        count<=2;
                                end
                                else if(count==2) begin
                                        w_data[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                else if(count==3) begin
                                        w_data[7:4]<=bits[3:0];
                                        count<=4;
                                end
                                else if(count==4) begin
                                        w_data[11:8]<=bits[3:0];
                                        count<=5;
                                end
                                else if(count==5) begin
                                        w_data[15:12]<=bits[3:0];
                                        count<=0;
                                        state<=9;
                                end
                        end
                        else if(state==2) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=0;
                                        state<=10;
                                end
                        end
                        else if(state==3) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        r_addr2[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        r_addr2[4]<=bits[0];
                                        count<=0;
                                        state<=11;
                                end
                        end
                        else if(state==4) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        w_addr[4]<=bits[0];
                                        count<=4;
                                end
                                if(count==4) begin
                                        w_data[3:0]<=bits[3:0];
                                        count<=5;
                                end
                                if(count==5) begin
                                        w_data[7:4]<=bits[3:0];
                                        count<=6;
                                end
                                if(count==6) begin
                                        w_data[11:8]<=bits[3:0];
                                        count<=7;
                                end
                                if(count==7) begin
                                        w_data[15:12]<=bits[3:0];
                                        count<=0;
                                        state<=12;
                                end
                        end
                        else if(state==5) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        r_addr2[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        r_addr2[4]<=bits[0];
                                        count<=4;
                                end
                                if(count==4) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=5;
                                end
                                if(count==5) begin
                                        w_addr[4]<=bits[0];
                                        count<=6;
                                end
                                if(count==6) begin
                                        w_data[3:0]<=bits[3:0];
                                        count<=7;
                                end
                                if(count==7) begin
                                        w_data[7:4]<=bits[3:0];
                                        count<=8;
                                end
                                if(count==8) begin
                                        w_data[11:8]<=bits[3:0];
                                        count<=9;
                                end
                                if(count==9) begin
                                        w_data[15:12]<=bits[3:0];
                                        count<=0;
                                        state<=13;
                                end
                        end
                        else if(state==6) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        r_addr2[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        r_addr2[4]<=bits[0];
                                        count<=4;
                                end
                                if(count==4) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=5;
                                end
                                if(count==5) begin
                                        w_addr[4]<=bits[0];
                                        count<=0;
                                        state<=14;
                                end
                        end
                        else if(state==7) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        r_addr2[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        r_addr2[4]<=bits[0];
                                        count<=4;
                                end
                                if(count==4) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=5;
                                end
                                if(count==5) begin
                                        w_addr[4]<=bits[0];
                                        count<=0;
                                        state<=15;
                                end
                        end
                        else if(state==8) begin
                                if(count==0) begin
                                        r_addr1[3:0]<=bits[3:0];
                                        count<=1;
                                end
                                if(count==1) begin
                                        r_addr1[4]<=bits[0];
                                        count<=2;
                                end
                                if(count==2) begin
                                        w_addr[3:0]<=bits[3:0];
                                        count<=3;
                                end
                                if(count==3) begin
                                        w_addr[4]<=bits[0];
                                        count<=4;
                                end
                                if(count==4) begin
                                        shift[3:0]<=bits[3:0];
                                        count<=0;
                                        state<=16;
                                end
                        end
                        else if(state==9) begin
                                mem_block[w_addr]<=w_data;
                                state<=17;
                        end
                        else if(state==10) begin
                                r_data1<=mem_block[r_addr1];
                                state<=18;
                        end
                        else if(state==11) begin
                                r_data1<=mem_block[r_addr1];
                                r_data2<=mem_block[r_addr2];
                                state<=19;
                        end
                        else if(state==12) begin
                                r_data1<=mem_block[r_addr1];
                                mem_block[w_addr]<=w_data;
                                state<=20;
                        end
                        else if(state==13) begin
                                r_data1<=mem_block[r_addr1];
                                r_data2<=mem_block[r_addr2];
                                mem_block[w_addr]<=w_data;
                                state<=21;
                        end
                        else if(state==14) begin
                                r_data1<=mem_block[r_addr1];
                                r_data2<=mem_block[r_addr2];
                                op<=0;
                                state<=22;
                        end
                        else if(state==15) begin
                                r_data1<=mem_block[r_addr1];
                                r_data2<=mem_block[r_addr2];
                                op<=1;
                                state<=23;
                        end
                        else if(state==16) begin
                                r_data1<=mem_block[r_addr1];
                                state<=24;
                        end
                        else if(state==17) begin
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=w_addr[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=w_addr[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=w_addr[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=w_addr[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=w_addr[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=w_data[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=w_data[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=w_data[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=w_data[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=w_data[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=w_data[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=w_data[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=w_data[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=w_data[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=w_data[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=w_data[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=w_data[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=w_data[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=w_data[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=w_data[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=w_data[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==18) begin
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=r_addr1[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=r_addr1[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=r_addr1[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=r_addr1[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=r_addr1[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=r_data1[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=r_data1[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=r_data1[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=r_data1[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=r_data1[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=r_data1[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=r_data1[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=r_data1[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=r_data1[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=r_data1[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=r_data1[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=r_data1[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=r_data1[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=r_data1[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=r_data1[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=r_data1[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==19) begin
                                line1[127:120]<=r_data1[15]?8'b00110001:8'b00110000;
                                line1[119:112]<=r_data1[14]?8'b00110001:8'b00110000;
                                line1[111:104]<=r_data1[13]?8'b00110001:8'b00110000;
                                line1[103:96]<=r_data1[12]?8'b00110001:8'b00110000;
                                line1[95:88]<=r_data1[11]?8'b00110001:8'b00110000;
                                line1[87:80]<=r_data1[10]?8'b00110001:8'b00110000;
                                line1[79:72]<=r_data1[9]?8'b00110001:8'b00110000;
                                line1[71:64]<=r_data1[8]?8'b00110001:8'b00110000;
                                line1[63:56]<=r_data1[7]?8'b00110001:8'b00110000;
                                line1[55:48]<=r_data1[6]?8'b00110001:8'b00110000;
                                line1[47:40]<=r_data1[5]?8'b00110001:8'b00110000;
                                line1[39:32]<=r_data1[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=r_data1[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=r_data1[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=r_data1[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=r_data1[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=r_data2[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=r_data2[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=r_data2[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=r_data2[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=r_data2[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=r_data2[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=r_data2[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=r_data2[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=r_data2[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=r_data2[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=r_data2[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=r_data2[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=r_data2[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=r_data2[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=r_data2[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=r_data2[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==20) begin
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=r_addr1[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=r_addr1[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=r_addr1[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=r_addr1[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=r_addr1[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=r_data1[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=r_data1[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=r_data1[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=r_data1[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=r_data1[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=r_data1[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=r_data1[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=r_data1[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=r_data1[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=r_data1[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=r_data1[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=r_data1[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=r_data1[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=r_data1[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=r_data1[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=r_data1[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==21) begin
                                line1[127:120]<=r_data1[15]?8'b00110001:8'b00110000;
                                line1[119:112]<=r_data1[14]?8'b00110001:8'b00110000;
                                line1[111:104]<=r_data1[13]?8'b00110001:8'b00110000;
                                line1[103:96]<=r_data1[12]?8'b00110001:8'b00110000;
                                line1[95:88]<=r_data1[11]?8'b00110001:8'b00110000;
                                line1[87:80]<=r_data1[10]?8'b00110001:8'b00110000;
                                line1[79:72]<=r_data1[9]?8'b00110001:8'b00110000;
                                line1[71:64]<=r_data1[8]?8'b00110001:8'b00110000;
                                line1[63:56]<=r_data1[7]?8'b00110001:8'b00110000;
                                line1[55:48]<=r_data1[6]?8'b00110001:8'b00110000;
                                line1[47:40]<=r_data1[5]?8'b00110001:8'b00110000;
                                line1[39:32]<=r_data1[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=r_data1[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=r_data1[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=r_data1[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=r_data1[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=r_data2[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=r_data2[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=r_data2[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=r_data2[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=r_data2[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=r_data2[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=r_data2[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=r_data2[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=r_data2[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=r_data2[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=r_data2[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=r_data2[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=r_data2[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=r_data2[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=r_data2[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=r_data2[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==22) begin
                                mem_block[w_addr]<=op_res;
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=w_addr[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=w_addr[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=w_addr[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=w_addr[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=w_addr[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=op_res[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=op_res[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=op_res[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=op_res[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=op_res[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=op_res[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=op_res[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=op_res[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=op_res[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=op_res[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=op_res[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=op_res[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=op_res[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=op_res[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=op_res[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=op_res[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==23) begin
                                mem_block[w_addr]<=op_res;
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=w_addr[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=w_addr[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=w_addr[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=w_addr[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=w_addr[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=op_res[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=op_res[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=op_res[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=op_res[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=op_res[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=op_res[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=op_res[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=op_res[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=op_res[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=op_res[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=op_res[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=op_res[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=op_res[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=op_res[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=op_res[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=op_res[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                        else if(state==24) begin
                                mem_block[w_addr]<=s_result;
                                line1[127:40]<=88'h3030303030303030303030;
                                line1[39:32]<=w_addr[4]?8'b00110001:8'b00110000;
                                line1[31:24]<=w_addr[3]?8'b00110001:8'b00110000;
                                line1[23:16]<=w_addr[2]?8'b00110001:8'b00110000;
                                line1[15:8]<=w_addr[1]?8'b00110001:8'b00110000;
                                line1[7:0]<=w_addr[0]?8'b00110001:8'b00110000;
                                line2[127:120]<=s_result[15]?8'b00110001:8'b00110000;
                                line2[119:112]<=s_result[14]?8'b00110001:8'b00110000;
                                line2[111:104]<=s_result[13]?8'b00110001:8'b00110000;
                                line2[103:96]<=s_result[12]?8'b00110001:8'b00110000;
                                line2[95:88]<=s_result[11]?8'b00110001:8'b00110000;
                                line2[87:80]<=s_result[10]?8'b00110001:8'b00110000;
                                line2[79:72]<=s_result[9]?8'b00110001:8'b00110000;
                                line2[71:64]<=s_result[8]?8'b00110001:8'b00110000;
                                line2[63:56]<=s_result[7]?8'b00110001:8'b00110000;
                                line2[55:48]<=s_result[6]?8'b00110001:8'b00110000;
                                line2[47:40]<=s_result[5]?8'b00110001:8'b00110000;
                                line2[39:32]<=s_result[4]?8'b00110001:8'b00110000;
                                line2[31:24]<=s_result[3]?8'b00110001:8'b00110000;
                                line2[23:16]<=s_result[2]?8'b00110001:8'b00110000;
                                line2[15:8]<=s_result[1]?8'b00110001:8'b00110000;
                                line2[7:0]<=s_result[0]?8'b00110001:8'b00110000;
                                state<=0;
                        end
                end
        end
        sixteen_arithmetic S0(r_data1,r_data2,op,op_res);
        left_shift LEFT(clk,r_data1,shift,s_result);
endmodule
