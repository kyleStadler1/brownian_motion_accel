`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 08:54:13 PM
// Design Name: 
// Module Name: top
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


// module top(
//     input CLK_100MHZ,
//     input [3:0] BTN,
//     output [15:0] LED
// );
//     logic [15:0] r0, r1, r2, r3, r4, r5, r6, r7;
//     logic valid;
//     assign LED = (r0 | r1 | r2 | r3 | r4 | r5 | r6 | r7) & {16{valid}};
//     // normalRandGenTop inst (
//     //     .clk(CLK_100MHZ),
//     //     .rst(BTN[0]),
//     //     .valid(valid),
//     //     .r0(r0),
//     //     .r1(r1),
//     //     .r2(r2),
//     //     .r3(r3),
//     //     .r4(r4),
//     //     .r5(r5),
//     //     .r6(r6),
//     //     .r7(r7)
//     // );
//     fp16_exp dut (
//         .aclk(CLK_100MHZ)
//         s_axis_a_tvalid,
//         s_axis_a_tready,
//         s_axis_a_tdata,
//         m_axis_result_tvalid,
//         m_axis_result_tready,
//         m_axis_result_tdata
//     );
// endmodule

module top (
    input  wire CLK_100MHZ,
    input  wire [3:0] BTN,
    output wire [15:0] LED
);

    // Simple AXIS signal stubs
    logic s_axis_a_tvalid;
    logic s_axis_a_tready;
    logic [15:0] s_axis_a_tdata;

    logic m_axis_result_tvalid;
    logic m_axis_result_tready;
    logic [15:0] m_axis_result_tdata;

    // Tie ready high so data flows
    assign m_axis_result_tready = 1'b1;

    // Simple test signal generator for synthesis (so design isn't optimized away)
    logic [15:0] counter = 0;
    always_ff @(posedge CLK_100MHZ) begin
        if (BTN[0]) begin
            counter <= 0;
            s_axis_a_tvalid <= 1'b0;
        end else begin
            counter <= counter + 1;
            s_axis_a_tvalid <= 1'b1;
        end
        s_axis_a_tdata <= counter;
    end

    // Instantiate your DUT
    fp16_exp dut (
        .aclk               (CLK_100MHZ),
        .s_axis_a_tvalid    (s_axis_a_tvalid),
        .s_axis_a_tready    (s_axis_a_tready),
        .s_axis_a_tdata     (s_axis_a_tdata),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tdata(m_axis_result_tdata)
    );

    // Show result on LEDs for synthesis visibility
    assign LED = m_axis_result_tdata;

endmodule





