`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2023 12:28:04
// Design Name: 
// Module Name: Slow_deacade_tb
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


module Slow_deacade_tb(

    );
    reg clk;
    reg slowena;
    reg reset;
    wire [3:0] q;
    always #5 clk=~clk;
    Slow_Decade dut(.clk(clk),.slowena(slowena),.reset(reset),.q(q));
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t slowena=%0b reset=%0b q=%b",$time,slowena,reset,q);
    clk<=0;
    reset<=1;
    #5 reset<=0; slowena<=0;
    #10 reset<=0;slowena<=1;
    #10 reset<=0;slowena<=0;
    #10 reset<=0;slowena<=1;
    #10 reset<=0;slowena<=0;
    #30 reset<=1;slowena<=0;
    #30 reset<=0;slowena<=1;
    #50 $finish;
    end
endmodule
