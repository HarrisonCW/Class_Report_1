`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2023 04:48:12 PM
// Design Name: 
// Module Name: sseg_handler
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


module sseg_handler(
    input logic en,
    input logic rst,
    input logic clk,
    input logic sel,
    input logic [7:0] sseg0,
    input logic [7:0] sseg1,
    input logic [7:0] sseg2,
    input logic [7:0] sseg3,
    
    output logic [7:0]an,
    output logic [7:0]sseg
    );
    
    logic [1:0]state;
    
    count_n#(.N(20), .M(2)) counter(
        .clk(clk),
        .rst(rst),
        .en(en),
        .up(sel),
        
        .count(state)
    );
    
    
    always_comb
        case(state)
            0:begin
                sseg = sseg0;
                an   = 8'b11111110;
            end
            1:begin
                sseg = sseg1;
                an   = 8'b11111101;
            end
            2:begin
                sseg = sseg2;
                an   = 8'b11111011;   
            end
            3:begin
                sseg = sseg3;
                an   = 8'b11110111;
            end
      endcase
    
endmodule
