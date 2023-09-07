`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/06/2023 04:26:18 PM
// Design Name: 
// Module Name: clockwise_cycle
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


module clockwise_cycle(
    input logic clk,
    input logic rst,
    input logic en,
    input logic sel,
    
    output logic [7:0] sseg0,
    output logic [7:0] sseg1,
    output logic [7:0] sseg2,
    output logic [7:0] sseg3
    );
    
    parameter top  = 8'b10011100;
    parameter bot  = 8'b10100011;
    parameter none = 8'b11111111;
    
    logic [2:0]state;
    
    count_n#(.N(20), .M(3)) counter(
        .clk(clk),
        .rst(rst),
        .en(en),
        .up(sel),
        
        .count(state)
    );
    
    always_comb
    if(en)
        case(state)
            0:begin
                sseg0 = top;
                sseg1 = none;
                sseg2 = none;
                sseg3 = none;
             end
             1:begin
                sseg0 = none;
                sseg1 = top;
                sseg2 = none;
                sseg3 = none;
             end
             2:begin
                sseg0 = none;
                sseg1 = none;
                sseg2 = top;
                sseg3 = none;
             end
             3:begin
                sseg0 = none;
                sseg1 = none;
                sseg2 = none;
                sseg3 = top;
             end
             4:begin
                sseg0 = none;
                sseg1 = none;
                sseg2 = none;
                sseg3 = bot;
             end
             5:begin
                sseg0 = none;
                sseg1 = none;
                sseg2 = bot;
                sseg3 = none;
             end
             6:begin
                sseg0 = none;
                sseg1 = bot;
                sseg2 = none;
                sseg3 = none;
             end
             7:begin
                sseg0 = bot;
                sseg1 = none;
                sseg2 = none;
                sseg3 = none;
             end
        endcase
    
    
endmodule
