`timescale 1ns/1ps
module tb_systolic_2x2;
    reg clk, rst, en;
    reg [7:0] a0, a1, b0, b1;
    wire [15:0] c00, c01, c10, c11;

    // Instantiate the Phase 2 Matrix Multiplier
    systolic_2x2_mm dut (
        .clk(clk), .rst(rst), .en(en),
        .a0(a0), .a1(a1), .b0(b0), .b1(b1),
        .c00(c00), .c01(c01), .c10(c10), .c11(c11)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Setup Waveform
        $dumpfile("wave_systolic.vcd");
        $dumpvars(0, tb_systolic_2x2);

        // Initialization
        clk = 0; rst = 1; en = 0;
        a0 = 0; a1 = 0; b0 = 0; b1 = 0;
        
        #20 rst = 0; en = 1;
        @(negedge clk);

        // --- STEP 1: First Multiplication Pair ---
        // PE00: 2 * 3 = 6
        a0 = 2; b0 = 3; 
        a1 = 0; b1 = 0;
        repeat(2) @(negedge clk); // WAIT for PE pipeline to "digest"

        // --- STEP 2: Second Pair (The Staggered Step) ---
        // PE00: adds (4 * 5) to 6 = 26
        // PE01: starts (2 * 2) = 4  (a0 moved right)
        // PE10: starts (1 * 3) = 3  (b0 moved down)
        a0 = 4; b0 = 5; 
        a1 = 1; b1 = 2;
        repeat(2) @(negedge clk);

        // --- STEP 3: Third Pair (Completing the Grid) ---
        // PE01: adds (4 * 4) to 4 = 20
        // PE10: adds (3 * 5) to 3 = 18
        // PE11: starts (1 * 2) = 2
        a0 = 0; b0 = 0;
        a1 = 3; b1 = 4;
        repeat(2) @(negedge clk);

        // --- STEP 4: Final Flush ---
        // PE11: adds (3 * 4) to 2 = 14
        a1 = 0; b1 = 0;
        repeat(4) @(negedge clk);

        // --- THE FINAL AUDIT ---
        $display("--------------------------------------");
        $display("GOLDEN RESULTS:");
        $display("C00 (Exp 26): %d", c00);
        $display("C01 (Exp 20): %d", c01);
        $display("C10 (Exp 18): %d", c10);
        $display("C11 (Exp 14): %d", c11);
        $display("--------------------------------------");

        if (c00 == 26 && c01 == 20 && c10 == 18 && c11 == 14)
            $display("✅ STATUS: PERFECT CALCULATION!");
        else
            $display("❌ STATUS: MATH MISMATCH - CHECK PE LATENCY");
            
        $finish;
    end
endmodule
