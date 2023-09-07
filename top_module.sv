`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 09:31:44 PM
// Design Name: 
// Module Name: top_module
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


module top_module(
    input logic clk, rst, en, sel,
    output logic [7:0]sseg,
    output logic [7:0]an
    );
    
    logic [7:0]sseg0;
    logic [7:0]sseg1;
    logic [7:0]sseg2;
    logic [7:0]sseg3;
   
    clockwise_cycle cycle(
        .clk(clk),
        .rst(rst),
        .en(en),
        .sel(sel),
        
        .sseg0(sseg0),
        .sseg1(sseg1),
        .sseg2(sseg2),
        .sseg3(sseg3)
    );
    
    sseg_handler sseg_handler(
        .en(1'b1),
        .rst(rst),
        .clk(clk),
        .sel(sel),
        .sseg0(sseg0),
        .sseg1(sseg1),
        .sseg2(sseg2),
        .sseg3(sseg3),
        
        .an(an),
        .sseg(sseg)
    );
    
    
    
    
    
    
endmodule
