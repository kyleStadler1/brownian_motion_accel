`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2025 02:53:07 AM
// Design Name: 
// Module Name: dualPortLFSR
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


module dualPortLFSR # (
    parameter WIDTH = 13
)(
    input logic clk,
    input logic rst,
    output logic [WIDTH-1:0] u0,
    output logic [WIDTH-1:0] u1,
    output logic valid
    );
    always_ff @(posedge clk) begin
        valid <= 1'b1;
    end
    //First LFSR - 13-bit maximal-length
    lfsr #(
        .WIDTH(WIDTH),
        .SEED(13'h1AAA),   // any non-zero 13-bit seed
        .TAP0(12),
        .TAP1(11),
        .TAP2(10),
        .TAP3(7)
    ) lfsr0 (
        .clk(clk),
        .rst(rst),
        .rnd(u0)
    );

    //Second LFSR - different primitive polynomial
    lfsr #(
        .WIDTH(WIDTH),
        .SEED(13'h2B4F),   // different non-zero 13-bit seed
        .TAP0(12),
        .TAP1(11),
        .TAP2(9),
        .TAP3(8)
    ) lfsr1 (
        .clk(clk),
        .rst(rst),
        .rnd(u1)
    );
endmodule

//core module that represents a single lfsr bit gen
module lfsr #(
    //these are default values that we should overwrite 
    parameter WIDTH = 13,                       //width
    parameter [WIDTH-1:0] SEED = 12'h000, //seed
    parameter TAP0 = 0,                //random tap indexes ...
    parameter TAP1 = 0,
    parameter TAP2 = 0,
    parameter TAP3 = 0
)(
    input  logic clk,
    input  logic rst,
    output logic [WIDTH-1:0] rnd
);
    logic [WIDTH-1:0] lfsr_reg;

    wire feedback = lfsr_reg[TAP0] ^ lfsr_reg[TAP1] ^ lfsr_reg[TAP2] ^ lfsr_reg[TAP3];

    always_ff @(posedge clk) begin
        if (rst)
            lfsr_reg <= SEED;
        else
            lfsr_reg <= {lfsr_reg[WIDTH-2:0], feedback};
    end
    assign rnd = lfsr_reg;
endmodule