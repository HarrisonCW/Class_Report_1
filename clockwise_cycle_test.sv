`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2023 11:46:32 AM
// Design Name: 
// Module Name: clockwise_cycle_test
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


module clockwise_cycle_test();
logic clk;      
logic rst;      
logic en;      
logic sel;     
                
logic [7:0] an; 
logic [7:0] sseg;   
    
    clockwise_cycle dut(
        .clk(clk),
        .rst(rst),
        .en(en),
        .sel(sel),
        
        .an(an),
        .sseg(sseg)
    );
    
    //Set Clock
    initial begin
        clk = 0;
        forever
            #2 clk = ~clk;
    end
    
    initial begin
        #4
        en  = 1'b1;
        sel = 1'b0;
        rst = 1'b0;
        #4 rst = 1'b1;
        #4 rst = 1'b0;
        #500
        $finish;
    end
    
    
endmodule
