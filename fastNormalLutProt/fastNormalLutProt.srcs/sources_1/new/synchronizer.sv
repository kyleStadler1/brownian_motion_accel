`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 08:54:13 PM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer #(
    parameter WIDTH = 32
)(
    input logic clk,
    input logic rst,
    input logic valid_in,
    input logic [WIDTH-1 : 0] din,
    output logic valid_out,
    output logic [WIDTH-1 : 0] dout
    );

    logic [WIDTH-1 : 0] interm_data;
    logic interm_valid;

    always_ff @(posedge clk) begin
        if (rst) begin
            interm_data <= '0;
            dout <= '0;

            interm_valid <= '0;
            valid_out <= '0;
        end else begin
            interm_data <= din;
            dout <= interm_data;

            interm_valid <= valid_in;
            valid_out <= interm_valid;
        end
    end
endmodule
