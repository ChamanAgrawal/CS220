`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:19 03/25/2019 
// Design Name: 
// Module Name:    lcd_driver 
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
module lcd_driver(line_a, line_b, clk, LCD_RS, LCD_W, LCD_E, databits
    );
    input [127:0] line_a;
    input [127:0] line_b;
    input clk;
    output LCD_E;
    output LCD_W;
    output LCD_RS;
    output reg[3:0] databits;
    reg LCD_E;
    reg LCD_W;
    reg LCD_RS;
    reg [19:0] counter;
    reg [15:0] state;
    // conter can count up to 100'00'00 <= 0b11110100001001000000
    initial begin
        counter=0;
        state=0;
    end

    always @(posedge clk) begin

        if(counter==100000) begin
            // implement a step
            case(state)
                // state of initialization step
                16'h0000: begin
                    LCD_E<=0;
                end
                16'h0001: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0011;
                end
                16'h0002: begin
                    LCD_E<=1;
                end
                16'h0003: begin
                    LCD_E<=0;
                end
                16'h0004: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0011;
                end
                16'h0005: begin
                    LCD_E<=1;
                end
                16'h0006: begin
                    LCD_E<=0;
                end
                16'h0007: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0011;
                end
                16'h0008: begin
                    LCD_E<=1;
                end
                16'h0009: begin
                    LCD_E<=0;
                end
                16'h000A: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0010;
                end
                16'h000B: begin
                    LCD_E<=1;
                end
                // configuration step
                // function set command
                16'h000C: begin
                    LCD_E<=0;
                end
                16'h000D: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0010;
                end
                16'h000E: begin
                    LCD_E<=1;
                end
                16'h000F: begin
                    LCD_E<=0;
                end
                16'h0010: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b1000;
                end
                16'h0011: begin
                    LCD_E<=1;
                end
                // entry mode set command
                16'h0012: begin
                    LCD_E<=0;
                end
                16'h0013: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0000;
                end
                16'h0014: begin
                    LCD_E<=1;
                end
                16'h0015: begin
                    LCD_E<=0;
                end
                16'h0016: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0110;
                end
                16'h0017: begin
                    LCD_E<=1;
                end

                // Display on/off
                16'h0018: begin
                    LCD_E<=0;
                end
                16'h0019: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0000;
                end
                16'h001A: begin
                    LCD_E<=1;
                end
                16'h001B: begin
                    LCD_E<=0;
                end
                16'h001C: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b1100;
                end
                16'h001D: begin
                    LCD_E<=1;
                end               

                // Clear display
                16'h001E: begin
                    LCD_E<=0;
                end
                16'h001F: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0000;
                end
                16'h0020: begin
                    LCD_E<=1;
                end
                16'h0021: begin
                    LCD_E<=0;
                end
                16'h0022: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0001;
                end
                16'h0023: begin
                    LCD_E<=1;
                end     

                // set DD RAM address
                16'h0024: begin
                    LCD_E<=0;
                end
                16'h0025: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b1000;
                end
                16'h0026: begin
                    LCD_E<=1;
                end
                16'h0027: begin
                    LCD_E<=0;
                end
                16'h0028: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0000;
                end
                16'h0029: begin
                    LCD_E<=1;
                end                

                // 16 write commands

                // 1st
                16'h002A: begin
                    LCD_E<=0;
                end
                16'h002B: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[127:124];
                end
                16'h002C: begin
                    LCD_E<=1;
                end
                16'h002D: begin
                    LCD_E<=0;
                end
                16'h002E: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[123:120];
                end
                16'h002F: begin
                    LCD_E<=1;
                end
                
                // 2nd
                16'h0030: begin
                    LCD_E<=0;
                end
                16'h0031: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[119:116];
                end
                16'h0032: begin
                    LCD_E<=1;
                end
                16'h0033: begin
                    LCD_E<=0;
                end
                16'h0034: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[115:112];
                end
                16'h0035: begin
                    LCD_E<=1;
                end

                //3rd
                16'h0036: begin
                    LCD_E<=0;
                end
                16'h0037: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[111:108];
                end
                16'h0038: begin
                    LCD_E<=1;
                end
                16'h0039: begin
                    LCD_E<=0;
                end
                16'h003A: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[107:104];
                end
                16'h003B: begin
                    LCD_E<=1;
                end

                // 4th
                16'h003C: begin
                    LCD_E<=0;
                end
                16'h003D: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[103:100];
                end
                16'h003E: begin
                    LCD_E<=1;
                end
                16'h003F: begin
                    LCD_E<=0;
                end
                16'h0040: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[99:96];
                end
                16'h0041: begin
                    LCD_E<=1;
                end  

                // 5th
                16'h0042: begin
                    LCD_E<=0;
                end
                16'h0043: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[95:92];
                end
                16'h0044: begin
                    LCD_E<=1;
                end
                16'h0045: begin
                    LCD_E<=0;
                end
                16'h0046: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[91:88];
                end
                16'h0047: begin
                    LCD_E<=1;
                end 

                // 6th
                16'h0048: begin
                    LCD_E<=0;
                end
                16'h0049: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[87:84];
                end
                16'h004A: begin
                    LCD_E<=1;
                end
                16'h004B: begin
                    LCD_E<=0;
                end
                16'h004C: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[83:80];
                end
                16'h004D: begin
                    LCD_E<=1;
                end 

                // 7th
                16'h004E: begin
                    LCD_E<=0;
                end
                16'h004F: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[79:76];
                end
                16'h0050: begin
                    LCD_E<=1;
                end
                16'h0051: begin
                    LCD_E<=0;
                end
                16'h0052: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[75:72];
                end
                16'h0053: begin
                    LCD_E<=1;
                end 

                // 8th
                16'h0054: begin
                    LCD_E<=0;
                end
                16'h0055: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[71:68];
                end
                16'h0056: begin
                    LCD_E<=1;
                end
                16'h0057: begin
                    LCD_E<=0;
                end
                16'h0058: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[67:64];
                end
                16'h0059: begin
                    LCD_E<=1;
                end 

                // 9th
                16'h005A: begin
                    LCD_E<=0;
                end
                16'h005B: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[63:60];
                end
                16'h005C: begin
                    LCD_E<=1;
                end
                16'h005D: begin
                    LCD_E<=0;
                end
                16'h005E: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[59:56];
                end
                16'h005F: begin
                    LCD_E<=1;
                end 

                // 10th
                16'h0060: begin
                    LCD_E<=0;
                end
                16'h0061: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[55:52];
                end
                16'h0062: begin
                    LCD_E<=1;
                end
                16'h0063: begin
                    LCD_E<=0;
                end
                16'h0064: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[51:48];
                end
                16'h0065: begin
                    LCD_E<=1;
                end 

                // 11th
                16'h0066: begin
                    LCD_E<=0;
                end
                16'h0067: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[47:44];
                end
                16'h0068: begin
                    LCD_E<=1;
                end
                16'h0069: begin
                    LCD_E<=0;
                end
                16'h006A: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[43:40];
                end
                16'h006B: begin
                    LCD_E<=1;
                end 

                // 12th
                16'h006C: begin
                    LCD_E<=0;
                end
                16'h006D: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[39:36];
                end
                16'h006E: begin
                    LCD_E<=1;
                end
                16'h006F: begin
                    LCD_E<=0;
                end
                16'h0070: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[35:32];
                end
                16'h0071: begin
                    LCD_E<=1;
                end

                // 13th
                16'h0072: begin
                    LCD_E<=0;
                end
                16'h0073: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[31:28];
                end
                16'h0074: begin
                    LCD_E<=1;
                end
                16'h0075: begin
                    LCD_E<=0;
                end
                16'h0076: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[27:24];
                end
                16'h0077: begin
                    LCD_E<=1;
                end

                // 14th
                16'h0078: begin
                    LCD_E<=0;
                end
                16'h0079: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[23:20];
                end
                16'h007A: begin
                    LCD_E<=1;
                end
                16'h007B: begin
                    LCD_E<=0;
                end
                16'h007C: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[19:16];
                end
                16'h007D: begin
                    LCD_E<=1;
                end

                // 15th
                16'h007E: begin
                    LCD_E<=0;
                end
                16'h007F: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[15:12];
                end
                16'h0080: begin
                    LCD_E<=1;
                end
                16'h0081: begin
                    LCD_E<=0;
                end
                16'h0082: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[11:8];
                end
                16'h0083: begin
                    LCD_E<=1;
                end

                // 16th
                16'h0084: begin
                    LCD_E<=0;
                end
                16'h0085: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[7:4];
                end
                16'h0086: begin
                    LCD_E<=1;
                end
                16'h0087: begin
                    LCD_E<=0;
                end
                16'h0088: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_a[3:0];
                end
                16'h0089: begin
                    LCD_E<=1;
                end

                // DD RAM address Command
                16'h008A: begin
                    LCD_E<=0;
                end
                16'h008B: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b1100;
                end
                16'h008C: begin
                    LCD_E<=1;
                end
                16'h008D: begin
                    LCD_E<=0;
                end
                16'h008E: begin
                    LCD_RS<=0;
                    LCD_W<=0;
                    databits <= 4'b0000;
                end
                16'h008F: begin
                    LCD_E<=1;
                end      

                // second line display
                // 16 write commands

                // 1st
                16'h0090: begin
                    LCD_E<=0;
                end
                16'h0091: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[127:124];
                end
                16'h0092: begin
                    LCD_E<=1;
                end
                16'h0093: begin
                    LCD_E<=0;
                end
                16'h0094: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[123:120];
                end
                16'h0095: begin
                    LCD_E<=1;
                end
                
                // 2nd
                16'h0096: begin
                    LCD_E<=0;
                end
                16'h0097: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[119:116];
                end
                16'h0098: begin
                    LCD_E<=1;
                end
                16'h0099: begin
                    LCD_E<=0;
                end
                16'h009A: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[115:112];
                end
                16'h009B: begin
                    LCD_E<=1;
                end

                //3rd
                16'h009C: begin
                    LCD_E<=0;
                end
                16'h009D: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[111:108];
                end
                16'h009E: begin
                    LCD_E<=1;
                end
                16'h009F: begin
                    LCD_E<=0;
                end
                16'h00A0: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[107:104];
                end
                16'h00A1: begin
                    LCD_E<=1;
                end

                // 4th
                16'h00A2: begin
                    LCD_E<=0;
                end
                16'h00A3: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[103:100];
                end
                16'h00A4: begin
                    LCD_E<=1;
                end
                16'h00A5: begin
                    LCD_E<=0;
                end
                16'h00A6: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[99:96];
                end
                16'h00A7: begin
                    LCD_E<=1;
                end  

                // 5th
                16'h00A8: begin
                    LCD_E<=0;
                end
                16'h00A9: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[95:92];
                end
                16'h00AA: begin
                    LCD_E<=1;
                end
                16'h00AB: begin
                    LCD_E<=0;
                end
                16'h00AC: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[91:88];
                end
                16'h00AD: begin
                    LCD_E<=1;
                end 

                // 6th
                16'h00AE: begin
                    LCD_E<=0;
                end
                16'h00AF: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[87:84];
                end
                16'h00B0: begin
                    LCD_E<=1;
                end
                16'h00B1: begin
                    LCD_E<=0;
                end
                16'h00B2: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[83:80];
                end
                16'h00B3: begin
                    LCD_E<=1;
                end 

                // 7th
                16'h00B4: begin
                    LCD_E<=0;
                end
                16'h00B5: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[79:76];
                end
                16'h00B6: begin
                    LCD_E<=1;
                end
                16'h00B7: begin
                    LCD_E<=0;
                end
                16'h00B8: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[75:72];
                end
                16'h00B9: begin
                    LCD_E<=1;
                end 

                // 8th
                16'h00BA: begin
                    LCD_E<=0;
                end
                16'h00BB: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[71:68];
                end
                16'h00BC: begin
                    LCD_E<=1;
                end
                16'h00BD: begin
                    LCD_E<=0;
                end
                16'h00BE: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[67:64];
                end
                16'h00BF: begin
                    LCD_E<=1;
                end 

                // 9th
                16'h00C0: begin
                    LCD_E<=0;
                end
                16'h00C1: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[63:60];
                end
                16'h00C2: begin
                    LCD_E<=1;
                end
                16'h00C3: begin
                    LCD_E<=0;
                end
                16'h00C4: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[59:56];
                end
                16'h00C5: begin
                    LCD_E<=1;
                end 

                // 10th
                16'h00C6: begin
                    LCD_E<=0;
                end
                16'h00C7: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[55:52];
                end
                16'h00C8: begin
                    LCD_E<=1;
                end
                16'h00C9: begin
                    LCD_E<=0;
                end
                16'h00CA: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[51:48];
                end
                16'h00CB: begin
                    LCD_E<=1;
                end 

                // 11th
                16'h00CC: begin
                    LCD_E<=0;
                end
                16'h00CD: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[47:44];
                end
                16'h00CE: begin
                    LCD_E<=1;
                end
                16'h00CF: begin
                    LCD_E<=0;
                end
                16'h00D0: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[43:40];
                end
                16'h00D1: begin
                    LCD_E<=1;
                end 

                // 12th
                16'h00D2: begin
                    LCD_E<=0;
                end
                16'h00D3: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[39:36];
                end
                16'h00D4: begin
                    LCD_E<=1;
                end
                16'h00D5: begin
                    LCD_E<=0;
                end
                16'h00D6: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[35:32];
                end
                16'h00D7: begin
                    LCD_E<=1;
                end

                // 13th
                16'h00D8: begin
                    LCD_E<=0;
                end
                16'h00D9: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[31:28];
                end
                16'h00DA: begin
                    LCD_E<=1;
                end
                16'h00DB: begin
                    LCD_E<=0;
                end
                16'h00DC: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[27:24];
                end
                16'h00DD: begin
                    LCD_E<=1;
                end

                // 14th
                16'h00DE: begin
                    LCD_E<=0;
                end
                16'h00DF: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[23:20];
                end
                16'h00E0: begin
                    LCD_E<=1;
                end
                16'h00E1: begin
                    LCD_E<=0;
                end
                16'h00E2: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[19:16];
                end
                16'h00E3: begin
                    LCD_E<=1;
                end

                // 15th
                16'h00E4: begin
                    LCD_E<=0;
                end
                16'h00E5: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[15:12];
                end
                16'h00E6: begin
                    LCD_E<=1;
                end
                16'h00E7: begin
                    LCD_E<=0;
                end
                16'h00E8: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[11:8];
                end
                16'h00E9: begin
                    LCD_E<=1;
                end

                // 16th
                16'h00EA: begin
                    LCD_E<=0;
                end
                16'h00EB: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[7:4];
                end
                16'h00EC: begin
                    LCD_E<=1;
                end
                16'h00ED: begin
                    LCD_E<=0;
                end
                16'h00EE: begin
                    LCD_RS<=1;
                    LCD_W<=0;
                    databits <= line_b[3:0];
                end
                16'h00EF: begin
                    LCD_E<=1;
                end
					 endcase
            if(state == 16'h00EF) begin
					state <= 0;
				end
				else begin
					state<=state+1;
				end // move to next state
            counter<=0;
        end
        else begin
            counter <=counter+1;
        end
    end
endmodule
