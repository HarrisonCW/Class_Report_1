    `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 03:56:45 PM
// Design Name: 
// Module Name: segHandler
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


module ssgHandler(
    input logic [7:0]anode,
    input logic [7:0]segment,
    input logic clk,
    input logic en,
    input logic sel,
    input logic rst,
    
    output logic [7:0]sseg,
    output logic [7:0]an
    );
    
    always_comb @ (segment, anode)
        if(en) begin
            sseg = segment;
            an   = anode;
        end
  
endmodule
