import data_types_pkg::*;

module math_unit(
    input logic clk,
    input logic rst,
    input logic stall,
    input path_t path_in,
    output path_t path_out,
    
    // Pre-calculated constants
    input logic [31:0] k0,
    input logic [31:0] k1,
    input logic [31:0] zt
);

    // Pipeline: price * exp(k0 + k1*zt)
    // Stage 1: k1 * zt            (6 cycles)
    // Stage 2: k0 + (k1*zt)       (11 cycles)
    // Stage 3: exp(k0 + k1*zt)    (29 cycles)
    // Stage 4: price * exp(...)   (6 cycles)
    // Total: 52 cycles

    // =========================================================================
    // Stage 1: Multiply k1 * zt (latency = 6)
    // =========================================================================
    logic mult1_valid_out;
    logic [31:0] k1_zt;

    path_t path_s1 [5:0];
    logic [31:0] k0_s1 [5:0];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 6; i++) begin
                path_s1[i] <= '0;
                k0_s1[i]   <= '0;
            end
        end else if (!stall) begin
            path_s1[0] <= path_in;
            k0_s1[0]   <= k0;
            for (int i = 1; i < 6; i++) begin
                path_s1[i] <= path_s1[i-1];
                k0_s1[i]   <= k0_s1[i-1];
            end
        end
    end

    fp32_mult mult1 (
        .aclk                (clk),
        .aclken              (!stall),
        .s_axis_a_tvalid     (path_in.valid),
        .s_axis_a_tdata      (k1),
        .s_axis_b_tvalid     (path_in.valid),
        .s_axis_b_tdata      (zt),
        .m_axis_result_tvalid(mult1_valid_out),
        //.m_axis_result_tready(1'b1),
        .m_axis_result_tdata (k1_zt)
    );

    // =========================================================================
    // Stage 2: Add k0 + (k1*zt) (latency = 11)
    // =========================================================================
    logic add1_valid_out;
    logic [31:0] k0_plus_k1zt;

    path_t path_s2 [10:0];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 11; i++)
                path_s2[i] <= '0;
        end else if (!stall) begin
            path_s2[0] <= path_s1[5];
            for (int i = 1; i < 11; i++)
                path_s2[i] <= path_s2[i-1];
        end
    end

    fp32_add add1 (
        .aclk                (clk),
        .aclken              (!stall),
        .s_axis_a_tvalid     (mult1_valid_out),
        .s_axis_a_tdata      (k0_s1[5]),
        .s_axis_b_tvalid     (mult1_valid_out),
        .s_axis_b_tdata      (k1_zt),
        .m_axis_result_tvalid(add1_valid_out),
        //.m_axis_result_tready(1'b1),
        .m_axis_result_tdata (k0_plus_k1zt)
    );

    // =========================================================================
    // Stage 3: exp(k0 + k1*zt) (latency = 29)
    // =========================================================================
    logic exp1_valid_out;
    logic [31:0] exp_result;

    path_t path_s3 [28:0];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 29; i++)
                path_s3[i] <= '0;
        end else if (!stall) begin
            path_s3[0] <= path_s2[10];
            for (int i = 1; i < 29; i++)
                path_s3[i] <= path_s3[i-1];
        end
    end

    fp32_ex exp1 (
        .aclk                (clk),
        .aclken              (!stall),
        .s_axis_a_tvalid     (add1_valid_out),
        .s_axis_a_tdata      (k0_plus_k1zt),
        .m_axis_result_tvalid(exp1_valid_out),
        //.m_axis_result_tready(1'b1),
        .m_axis_result_tdata (exp_result)
    );

    // =========================================================================
    // Stage 4: price * exp(...) (latency = 6)
    // =========================================================================
    logic mult2_valid_out;
    logic [31:0] price_new;

    path_t path_s4 [5:0];

    always_ff @(posedge clk) begin
        if (rst) begin
            for (int i = 0; i < 6; i++)
                path_s4[i] <= '0;
        end else if (!stall) begin
            path_s4[0] <= path_s3[28];
            for (int i = 1; i < 6; i++)
                path_s4[i] <= path_s4[i-1];
        end
    end

    fp32_mult mult2 (
        .aclk                (clk),
        .aclken              (!stall),
        .s_axis_a_tvalid     (exp1_valid_out),
        .s_axis_a_tdata      (path_s3[28].price),
        .s_axis_b_tvalid     (exp1_valid_out),
        .s_axis_b_tdata      (exp_result),
        .m_axis_result_tvalid(mult2_valid_out),
        //.m_axis_result_tready(1'b1),
        .m_axis_result_tdata (price_new)
    );

    // =========================================================================
    // Output assembly
    // =========================================================================
    always_comb begin
        path_out       = path_s4[5];
        path_out.price = price_new;
        path_out.valid = mult2_valid_out;
        path_out.day   = path_s4[5].day + 8'd0;
    end

endmodule