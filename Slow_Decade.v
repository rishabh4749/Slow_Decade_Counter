`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 12:24:52
// Design Name: 
// Module Name: Slow_Decade
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


module Slow_Decade(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q
    );
    always @ (posedge clk) begin
    if(reset)
    q<=0;
    else begin
    if(slowena==1) begin
    if(q<9)
    q<=q+1;
    else if(q==9)
    q<=0;
    end
    end
    end
endmodule
