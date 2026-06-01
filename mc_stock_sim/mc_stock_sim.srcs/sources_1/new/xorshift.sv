`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2025 02:53:54 AM
// Design Name: 
// Module Name: xorshift
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


module xorshift #(
    parameter WIDTH = 13,
    parameter SEED = 32'h8BCD_4A7F
)(
    input logic clk,
    input logic rst,
    output logic [WIDTH-1 : 0] rand_val,
    output logic valid
    );
    logic [31:0] state;
    always_ff @(posedge clk) begin
        if (rst) begin
            state <= SEED;
            valid <= 1'b0;
        end else begin
            automatic logic [31:0] tmp0, tmp1; //temp fake vars
            tmp0 = state ^ (state << 13);
            tmp1 = tmp0 ^ (tmp0 >> 17);
            state <= tmp1 ^ (tmp1 << 5);
            valid <= 1'b1;
        end
    end
    assign rand_val = state[31 : 32-WIDTH];
endmodule
