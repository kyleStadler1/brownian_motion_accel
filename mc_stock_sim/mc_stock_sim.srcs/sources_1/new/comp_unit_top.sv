import data_types_pkg::*;

module comp_unit_top #(
    parameter int UID_MIN    = 0,
    parameter int UID_MAX    = 100,
    parameter int STEP_MAX   = 3,
    parameter int FP_WIDTH   = 32,
    parameter int PIPE_DEPTH = 52    // Must match math_unit total latency
)(
    input  logic clk,
    input  logic rst,
    input  logic stall,

    input  logic                inputs_valid,
    input  logic [FP_WIDTH-1:0] s0,    // Initial price
    input  logic [FP_WIDTH-1:0] k0,    // (mu - 0.5*sig^2)*dt
    input  logic [FP_WIDTH-1:0] k1,    // sig*sqrt(dt)
    input  logic [FP_WIDTH-1:0] zt,    // Fresh random sample each cycle

    output logic  done,
    output logic [$bits(path_t)-1:0] path_out
);
    path_t _path_out;
    assign path_out = _path_out;
    // -------------------------------------------------------------------------
    // Bit-width constants
    // -------------------------------------------------------------------------
    localparam int UID_BITS  = $clog2(UID_MAX + 1);
    localparam int DAY_BITS  = $clog2(STEP_MAX + 1);
    localparam int FILL_BITS = $clog2(PIPE_DEPTH + 1);

    // -------------------------------------------------------------------------
    // Pipeline signals
    // -------------------------------------------------------------------------
    path_t pipe_in;
    path_t pipe_out;

    // -------------------------------------------------------------------------
    // Injection tracking
    // -------------------------------------------------------------------------
    logic [UID_BITS-1:0]  next_uid;
    logic [FILL_BITS-1:0] fill_count;
    logic                 filling;
    logic                 all_injected;

    assign all_injected = (next_uid > UID_BITS'(UID_MAX));

    // -------------------------------------------------------------------------
    // Control signals
    // pipe_out.day is the day currently being computed (pre-increment).
    // A path is complete when day == STEP_MAX - 1 (math_unit just did final step).
    // -------------------------------------------------------------------------
    logic path_complete;
    logic recirculate;
    logic inject_new;

    assign path_complete = pipe_out.valid && (pipe_out.day == DAY_BITS'(STEP_MAX - 1));
    assign recirculate   = pipe_out.valid && (pipe_out.day  < DAY_BITS'(STEP_MAX - 1));
    assign inject_new    = path_complete  && !all_injected;

    // -------------------------------------------------------------------------
    // Input mux
    // Priority: recirculate > inject_new > startup fill > bubble
    // -------------------------------------------------------------------------
    always_comb begin
        pipe_in = '0;

        if (recirculate) begin
            // Feed result back in — increment day so math_unit sees next step
            pipe_in       = pipe_out;
            pipe_in.day   = pipe_out.day + 8'd1;
            pipe_in.last  = 1'b0;

        end else if (inject_new) begin
            // Slot freed by finished UID — bring in next UID at day 0
            pipe_in.valid = 1'b1 & !rst;
            pipe_in.price = s0;
            pipe_in.uid   = UID_BITS'(next_uid);
            pipe_in.day   = '0;
            pipe_in.last  = 1'b0;

        end else if (filling && !all_injected) begin
            // Startup: fill pipeline slots with fresh UIDs at day 0
            pipe_in.valid = 1'b1 & !rst;
            pipe_in.price = s0;
            pipe_in.uid   = UID_BITS'(next_uid);
            pipe_in.day   = '0;
            pipe_in.last  = 1'b0;
        end
        // else: bubble (pipe_in = '0, valid = 0)
    end

    // -------------------------------------------------------------------------
    // Sequencer registers
    // -------------------------------------------------------------------------
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            next_uid   <= UID_BITS'(UID_MIN);
            fill_count <= '0;
            filling    <= 1'b1;
        end else if (!stall) begin

            if (filling) begin
                if (fill_count == FILL_BITS'(PIPE_DEPTH - 1))
                    filling <= 1'b0;
                else
                    fill_count <= fill_count + 1'b1;

                if (!all_injected)
                    next_uid <= next_uid + 1'b1;

            end else begin
                if (inject_new)
                    next_uid <= next_uid + 1'b1;
            end

        end
    end

    // -------------------------------------------------------------------------
    // Output — increment day here to reflect the day just committed
    // valid is high for all pipeline outputs, low only on coldstart and after
    // all work is done (pipeline naturally drains to invalid)
    // -------------------------------------------------------------------------
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            _path_out <= '0;
        end else begin
            _path_out       <= pipe_out;
            _path_out.day   <= pipe_out.day + 8'd1;
            _path_out.valid <= pipe_out.valid;
            _path_out.last  <= pipe_out.valid
                              && (pipe_out.uid == UID_BITS'(UID_MAX))
                              && (pipe_out.day == DAY_BITS'(STEP_MAX - 1));
        end
    end

    // -------------------------------------------------------------------------
    // Done — sticky, latches the cycle after final UID's final day exits
    // -------------------------------------------------------------------------
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            done <= 1'b0;
        end else begin
            done <= done | (pipe_out.valid
                            && (pipe_out.uid == UID_BITS'(UID_MAX))
                            && (pipe_out.day == DAY_BITS'(STEP_MAX - 1)));
        end
    end

    // -------------------------------------------------------------------------
    // Math unit instantiation
    // -------------------------------------------------------------------------
    math_unit math_unit_inst (
        .clk      (clk),
        .rst      (rst),
        .stall    (stall),
        .path_in  (pipe_in),
        .path_out (pipe_out),
        .k0       (k0),
        .k1       (k1),
        .zt       (zt)
    );

endmodule
