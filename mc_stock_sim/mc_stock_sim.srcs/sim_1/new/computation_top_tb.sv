`timescale 1ns / 1ps
import data_types_pkg::*;

module computation_top_tb;

    // -------------------------------------------------------------------------
    // Parameters
    // -------------------------------------------------------------------------
    localparam int  NUM_BLOCKS     = 8;
    localparam int  TOTAL_UIDS     = 100000;
    localparam int  STEP_MAX       = 59;
    localparam real STARTING_PRICE = 100.0;
    localparam real CLK_PERIOD     = 10.0;

    // -------------------------------------------------------------------------
    // DUT ports
    // -------------------------------------------------------------------------
    logic        clk, rst, fetch_valid;
    logic [31:0] starting_price, k0, k1;

    logic [NUM_BLOCKS*$bits(path_t)-1:0] path_out_packed;
    logic all_done;

    path_t path_out [NUM_BLOCKS];

    // -------------------------------------------------------------------------
    // Unpack path_out_packed → array
    // -------------------------------------------------------------------------
    always_comb begin
        for (int i = 0; i < NUM_BLOCKS; i++)
            path_out[i] = path_out_packed[i*$bits(path_t) +: $bits(path_t)];
    end

    // -------------------------------------------------------------------------
    // DUT
    // -------------------------------------------------------------------------
    computation_top #(
        .NUM_BLOCKS (NUM_BLOCKS),
        .TOTAL_UIDS (TOTAL_UIDS),
        .STEP_MAX   (STEP_MAX)
    ) dut (
        .clk             (clk),
        .rst             (rst),
        .stall           (1'b0),
        .fetch_valid     (fetch_valid),
        .starting_price  (starting_price),
        .k0              (k0),
        .k1              (k1),
        .path_out_packed (path_out_packed),
        .all_done        (all_done)
    );

    // -------------------------------------------------------------------------
    // Clock
    // -------------------------------------------------------------------------
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    // -------------------------------------------------------------------------
    // Helpers
    // -------------------------------------------------------------------------
    function automatic real fp32_to_real(input logic [31:0] fp32);
        logic        sign = fp32[31];
        logic [7:0]  exp  = fp32[30:23];
        logic [22:0] mant = fp32[22:0];
        int e;
        if      (exp == 8'hFF) return sign ? -1e308 : 1e308;
        else if (exp == 8'h00) return (sign ? -1.0 : 1.0) * (real'(mant) / (2.0**23)) * (2.0**-126);
        else begin
            e = int'(exp) - 127;
            return (sign ? -1.0 : 1.0) * (1.0 + real'(mant) / (2.0**23)) * (2.0**e);
        end
    endfunction

    // -------------------------------------------------------------------------
    // Counters / tracking
    // -------------------------------------------------------------------------
    int          csv_fp32;
    int          total_samples = 0;
    int          clock_cycles;
    logic        start_counting;
    time         sim_start_time;
    time         sim_end_time;

    always_ff @(posedge clk) begin
        if (rst) begin
            start_counting <= 1'b0;
            clock_cycles   <= 0;
            sim_start_time <= 0;
        end else if (fetch_valid && !start_counting) begin
            start_counting <= 1'b1;
            sim_start_time <= $time;
        end else if (start_counting) begin
            clock_cycles   <= clock_cycles + 1;
        end
    end

    // -------------------------------------------------------------------------
    // CSV output
    // -------------------------------------------------------------------------
    initial begin
        csv_fp32      = $fopen("sim_fp32.csv", "w");
        //total_samples = 0;
        $fwrite(csv_fp32, "block,uid,day,price\n");
    end

    always_ff @(posedge clk) begin
        if (start_counting) begin
            for (int i = 0; i < NUM_BLOCKS; i++) begin
                if (path_out[i].valid) begin
                    $fwrite(csv_fp32, "%0d,%0d,%0d,%.6f\n",
                        i,
                        int'(path_out[i].uid),
                        int'(path_out[i].day),
                        fp32_to_real(path_out[i].price)
                    );
                    total_samples++;
                end
            end
        end
    end

    // -------------------------------------------------------------------------
    // Finish on all_done
    // -------------------------------------------------------------------------
    always_ff @(posedge clk) begin
        if (all_done && start_counting) begin
            sim_end_time = $time;
            $fclose(csv_fp32);
            print_statistics();
            $finish;
        end
    end

    // -------------------------------------------------------------------------
    // Statistics
    // -------------------------------------------------------------------------
    task automatic print_statistics();
        real sim_time_us  = real'(sim_end_time - sim_start_time) / 1e3;
        int  expected     = TOTAL_UIDS * STEP_MAX;
        $display("\n=========== SIMULATION COMPLETE ===========");
        $display("NUM_BLOCKS      : %0d", NUM_BLOCKS);
        $display("TOTAL_UIDS      : %0d", TOTAL_UIDS);
        $display("STEP_MAX        : %0d", STEP_MAX);
        $display("Expected Samples: %0d", expected);
        $display("Total Samples   : %0d", total_samples);
        $display("Sample Match    : %s",  (total_samples == expected) ? "PASS" : "FAIL");
        $display("Clock Cycles    : %0d", clock_cycles);
        $display("Sim Time        : %.2f us", sim_time_us);
        $display("CSV             : sim_fp32.csv");
        $display("==========================================\n");
    endtask

    // -------------------------------------------------------------------------
    // Stimulus
    // -------------------------------------------------------------------------
    initial begin
        starting_price = $shortrealtobits(shortreal'(STARTING_PRICE));
        k0 = 32'h312E538F;   // (mu - 0.5*sig^2)*dt
        k1 = 32'h381560C4;   // sig*sqrt(dt)

        rst         = 1'b1;
        fetch_valid = 1'b0;
        repeat(10) @(posedge clk);
        rst = 1'b0;
        repeat(10) @(posedge clk);
        fetch_valid = 1'b1;
    end

    // -------------------------------------------------------------------------
    // Watchdog
    // -------------------------------------------------------------------------
    initial begin
        #500ms;
        $display("\n*** ERROR: Simulation timeout — check pipeline or done logic ***");
        $fclose(csv_fp32);
        $finish;
    end

endmodule