`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2023 02:55:42 PM
// Design Name: 
// Module Name: accum_t
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


module accum_t();
parameter N = 4;
logic clk;
logic rst;
logic [3:0] op;
logic [N-1:0] in;
logic [N-1:0] out;

  accum#(.N(N)) dut(
    .clk(clk),
    .rst(rst),
    .op(op),
    .in(in),
    .out(out)
  );
      
  //Set Clock//////////////////////////////////
  initial begin
    clk = 0;
    forever
        #5 clk = ~clk; 
  end
  
  //Define Tasks//////////////////////////////
  task clear;
  begin
    op = 4'b0000;
    #10;
  end
  endtask
  
  task add(input logic [N-1:0] a);
  begin
    op = 4'b0001;
    in = a;
    #10;
  end
  endtask
  
  task sub(input logic [N-1:0] a);
  begin
    op = 4'b0010;
    in = a;
    #10;
  end
  endtask;
  
  //Tests////////////////////////////////
  initial begin
    rst = 0;
    #3 rst = 1;
    #3 rst = 0;
    #4;
    clear;
    add(5);
    add(3);
    sub(2);
    $finish;
  end
      
endmodule




