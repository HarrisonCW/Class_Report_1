`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 03:11:21 PM
// Design Name: 
// Module Name: mux_t
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


module mux_t();

parameter N=4;
logic [N-1:0] a;
logic [N-1:0] b;
logic [N-1:0] c;
logic [N-1:0] d;
logic [N-1:0] sel;
logic [N-1:0] e;
    
    mux#(.N(N)) dut(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .e(e)
    );
    
    initial begin
    a   = 0;
    b   = 1;
    c   = 2;
    d   = 4;
    sel = 0;
    #10;
    
    sel = 1;
    #10;
    
    sel = 2;
    #10;
    
    sel = 3;
    #10;
    
    $finish;
    end
    
endmodule
