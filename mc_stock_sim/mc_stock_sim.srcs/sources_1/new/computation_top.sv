import data_types_pkg::*;
//
module computation_top #(
    parameter int NUM_BLOCKS = 8,
    parameter int TOTAL_UIDS = 100000,
    parameter int STEP_MAX   = 59
)(
    input  logic clk,
    input  logic rst,
    input logic stall,

    input  logic        fetch_valid,
    input  logic [31:0] starting_price,
    input  logic [31:0] k0,
    input  logic [31:0] k1,

    output logic [NUM_BLOCKS*$bits(path_t)-1:0] path_out_packed,
    output logic [NUM_BLOCKS*32-1:0] floats_out_packed,
    output logic all_done
);

    localparam int UIDS_PER_BLOCK = TOTAL_UIDS / NUM_BLOCKS;  // 12500

    logic clk_fast, locked;
    clk_wiz_rand_gen clks (
        .clk_fast (clk_fast),
        .reset    (rst),
        .locked   (locked),
        .clk_in1  (clk)
    );

    logic [3:0]       valid;
    logic [3:0][31:0] za;
    logic [3:0][31:0] zb;

    genvar i;
    generate
        for (i = 0; i < 4; i++) begin : Z_GEN_ARRAY
            z_gen #(
                .INDEX(i)
            ) z_gen_inst (
                .clk   (clk),
                .rst   (rst),
                .valid (valid[i]),
                .za    (za[i]),
                .zb    (zb[i])
            );
        end
    endgenerate

    // -------------------------------------------------------------------------
    // Computation blocks — 8x comp_unit_top
    // UID slice: block j covers [j*UIDS_PER_BLOCK, (j+1)*UIDS_PER_BLOCK - 1]
    // zt mux:    even blocks get za[j/2], odd blocks get zb[j/2]
    // -------------------------------------------------------------------------
    logic   [NUM_BLOCKS-1:0] block_done;
    path_t  [NUM_BLOCKS-1:0] block_path_out;

    generate
        for (i = 0; i < NUM_BLOCKS; i++) begin : COMP_BLOCK_ARRAY
            comp_unit_top #(
                .UID_MIN    (i * UIDS_PER_BLOCK),
                .UID_MAX    ((i + 1) * UIDS_PER_BLOCK ), //TODO RM -1
                .STEP_MAX   (STEP_MAX),
                .FP_WIDTH   (32),
                .PIPE_DEPTH (52)
            ) comp_unit_inst (
                .clk      (clk),
                .rst      (rst),
                .stall    (stall),

                .inputs_valid (fetch_valid),
                .s0           (starting_price),
                .k0           (k0),
                .k1           (k1),
                .zt           ((i % 2 == 0) ? za[i/2] : zb[i/2]),

                .done     (block_done[i]),
                .path_out (block_path_out[i])
            );

            // Pack path_out into flat output bus
            assign path_out_packed[i*$bits(path_t) +: $bits(path_t)] = block_path_out[i];
        end
    endgenerate

    assign floats_out_packed[i*32 +: 32] = block_path_out[i].price;

    // -------------------------------------------------------------------------
    // All done — every block must finish
    // -------------------------------------------------------------------------
    assign all_done = &block_done;

endmodule