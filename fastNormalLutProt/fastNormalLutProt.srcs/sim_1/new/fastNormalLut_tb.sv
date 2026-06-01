`timescale 1ns / 1ps

module fastNormalLut_tb;

    // Parameters
    localparam FP_WIDTH   = 16;
    localparam LFSR_WIDTH = 14;
    localparam CLOCK_MULT = 3;
    localparam SIM_TIME_NS = 1_000_000; // 1 ms

    // Signals
    logic CLK_100MHZ = 0;
    logic [3:0] BTN = 0;
    logic VALID;
    logic [FP_WIDTH-1:0] r0, r1, r2, r3, r4, r5;//, r6, r7;

    // DUT instantiation
    normalRandGenTop dut (
        .clk(CLK_100MHZ),
        .rst(BTN[0]),
        .valid(VALID),
        .r0(r0),
        .r1(r1),
        .r2(r2),
        .r3(r3),
        .r4(r4),
        .r5(r5)
//        .r6(r6),
//        .r7(r7)
        // assume dut has internal signal 'locked' accessible as dut.locked
    );

    // 100 MHz clock generation (10 ns period)
    always #5 CLK_100MHZ = ~CLK_100MHZ;

    integer fp;
    time time_end;

    initial begin
        // Open file for writing
        fp = $fopen("fp16_output.txt", "w");
        if (!fp) begin
            $display("ERROR: Failed to open output file!");
            $finish;
        end

        // Apply reset for a short time
        BTN[0] = 1;
        #100;
        BTN[0] = 0;

        // Wait until the PLL/clock wizard is locked
        @(posedge dut.locked);
        $display("PLL locked at time %0t ns, starting FP16 write", $time);

        // Set simulation end time (1 ms after PLL lock)
        time_end = $time + SIM_TIME_NS;

        // Write FP16 outputs on every VALID pulse until 1 ms has passed
        forever begin
            @(posedge CLK_100MHZ);
            if (VALID) begin
                $fwrite(fp, "%h\n", r0);
                $fwrite(fp, "%h\n", r1);
                $fwrite(fp, "%h\n", r2);
                $fwrite(fp, "%h\n", r3);
                $fwrite(fp, "%h\n", r4);
                $fwrite(fp, "%h\n", r5);
                //$fwrite(fp, "%h\n", r6);
                //$fwrite(fp, "%h\n", r7);
            end

            if ($time >= time_end) begin
                $display("Simulation complete after 1 ms of writing");
                $fclose(fp);
                $finish;
            end
        end
    end

endmodule
