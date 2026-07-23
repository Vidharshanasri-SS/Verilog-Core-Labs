`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2026 06:52:12
// Design Name: 
// Module Name: tb_piso
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

`timescale 1ns / 1ps

module tb_piso_register;

    reg clk;
    reg s;
    reg sin;
    reg [3:0] i;

    wire y;

    piso_register uut (
        .y(y),
        .s(s),
        .clk(clk),
        .i(i),
        .sin(sin)
    );

    // Clock generation
    initial
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial
    begin

        // Initialize
        s   = 1;
        sin = 0;
        i   = 4'b1011;

        // Load parallel data
        #10;

        // Shift mode
        s = 0;

        // Shift for several clock cycles
        #40;

        // Load another data
        s = 1;
        i = 4'b1100;

        #10;

        // Shift again
        s = 0;

        #40;

        $finish;
    end

    // Monitor values
    initial
    begin
        $monitor("Time=%0t  s=%b  i=%b  sin=%b  y=%b",
                  $time, s, i, sin, y);
    end

endmodule