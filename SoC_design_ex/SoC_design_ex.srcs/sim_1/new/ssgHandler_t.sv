`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 04:41:42 PM
// Design Name: 
// Module Name: ssgHandler_t
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


module ssgHandler_t();
logic [7:0]anode;  
logic [7:0]segment;
logic clk;
logic en;
logic sel;
logic rst;
                  
logic [7:0]sseg;  
logic [7:0]an;    

    ssgHandler dut(
        .anode(anode),
        .segment(segment),
        .clk(clk),
        .en(en),
        .sel(sel),
        .rst(rst),
        
        .sseg(sseg),
        .an(an)
    );

    initial begin
    
        en = 1;
    
    end

endmodule
