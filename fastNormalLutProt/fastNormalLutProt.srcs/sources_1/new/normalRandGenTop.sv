`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2025 03:33:07 AM
// Design Name: 
// Module Name: normalRandGenTop
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


module normalRandGenTop #(
    parameter FP_WIDTH = 16,
    parameter LFSR_WIDTH = 13,
    parameter CLOCK_MULT = 3
    )(
    input logic clk,
    input logic rst,
    output logic valid,
    output logic [FP_WIDTH-1 : 0] r0,
    output logic [FP_WIDTH-1 : 0] r1,
    output logic [FP_WIDTH-1 : 0] r2,
    output logic [FP_WIDTH-1 : 0] r3,
    output logic [FP_WIDTH-1 : 0] r4,
    output logic [FP_WIDTH-1 : 0] r5
//    output logic [FP_WIDTH-1 : 0] r6,
//    output logic [FP_WIDTH-1 : 0] r7
    );



//////////////////////////////////////////////////////////////////////////////////
    logic clk_100, clk_300, locked;
    clk_wiz_0 clks(
        .clk_100(clk_100),
        .clk_300(clk_300),

        .reset(rst),
        .locked(locked),

        .clk_in1(clk)
    );
//////////////////////////////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////////////////////////////
    logic [FP_WIDTH-1 : 0] uniformRandomA, uniformRandomB;
    logic lfsrValid;
    dualPortLFSR  #(
        .WIDTH(LFSR_WIDTH)
    ) dplfsr (
        .clk(clk_300),
        .rst(rst),
        .u0(uniformRandomA),
        .u1(uniformRandomB),
        .valid(lfsrValid)
    );
//////////////////////////////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////////////////////////////
    //takes 3 clocks from read
    logic p0, p1, normLutValid;
    always_ff @(posedge clk_300) begin
        if (rst) begin
            p0 <= 1'b0;
            p1 <= 1'b0;
            normLutValid <= 1'b0;
        end else begin
            p0 <= lfsrValid;
            p1 <= p0;
            normLutValid <= p1;
        end
    end
    logic[FP_WIDTH-1 : 0] nomralRandA, normalRandB;
    blk_mem_gen_0 normlut(
    .clka(clk_300),
    .addra(uniformRandomA),
    .douta(nomralRandA),
    .clkb(clk_300),
    .addrb(uniformRandomB),
    .doutb(normalRandB)
    );
//////////////////////////////////////////////////////////////////////////////////





//////////////////////////////////////////////////////////////////////////////////
    logic [FP_WIDTH*CLOCK_MULT*2-1 : 0] randoms; //FP_WIDTH*CLOCK_MULT*2 fp16 randoms all in here
    logic full;
    stager #(
        .INPUT_WIDTH(FP_WIDTH*2),
        .CLOCK_MULT(CLOCK_MULT)
    ) st (
        .clk(clk_300),
        .rst(rst),
        .valid_in(normLutValid),
        .din({nomralRandA,normalRandB}),
        .dout(randoms),
        .full(full)
    );
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
    synchronizer #(
        .WIDTH(FP_WIDTH*2*CLOCK_MULT)
    ) sc (
        .clk(clk_100),
        .rst(rst),
        .valid_in(full),
        .din(randoms),
        .valid_out(valid),
        .dout({r0,r1,r2,r3, r4, r5})
    );
//////////////////////////////////////////////////////////////////////////////////
endmodule
