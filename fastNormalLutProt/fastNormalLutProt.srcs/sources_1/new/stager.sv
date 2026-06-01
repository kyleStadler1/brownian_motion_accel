`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 08:54:13 PM
// Design Name: 
// Module Name: stager
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


module stager #(
    parameter INPUT_WIDTH = 16,
    parameter CLOCK_MULT = 4
)(
    input logic clk,
    input logic rst,
    input logic valid_in,
    input logic [INPUT_WIDTH-1 : 0] din,
    output logic [INPUT_WIDTH*CLOCK_MULT-1 : 0] dout,
    output logic full
    );
    logic [CLOCK_MULT-1 : 0] valid_sr;
    always_ff @(posedge clk) begin
        if (rst) begin
            dout <= '0;
            valid_sr <= '0;
        end else begin
            if (valid_in) begin
                dout <= {dout[INPUT_WIDTH*(CLOCK_MULT-1)-1 : 0], din};
                valid_sr <= {valid_sr[CLOCK_MULT-2 : 0], 1'b1};
            end
        end
    end

    assign full = &valid_sr;

endmodule