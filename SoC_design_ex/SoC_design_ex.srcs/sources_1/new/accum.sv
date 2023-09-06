`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2023 02:30:36 PM
// Design Name: 
// Module Name: accum
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


module accum#(parameter N = 4)(
    input  logic clk,
    input  logic rst,
    input  logic [3:0] op,
    input  logic [N-1:0] in,
    output logic [N-1:0] out
    );
    
    //parameters
    parameter CLR = 4'b0000;
    parameter ADD = 4'b0001;
    parameter SUB = 4'b0010;
    
    //variables
    logic [N-1:0] naccu, accu;
    
    //memory
    always_ff @(posedge(clk), posedge(rst))
     begin 
      if(rst)
        accu <= {N{1'b0}};
      else
        accu <= naccu;      
     end
    
    //combinational logic/ circuits
    always_comb
      begin
        case(op)
        CLR:     naccu = 0;
        ADD:     naccu = accu + in;
        SUB:     naccu = accu - in;
        default: naccu = accu;
        endcase
        assign out = accu;      
      end
    
endmodule
