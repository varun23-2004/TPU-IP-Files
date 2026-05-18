`timescale 1ns/1ps
module tb_pe;
    reg clk, rst, en;
    reg [7:0] a_in, b_in;
    reg [15:0] acc_in;
    wire [15:0] acc_out;

    pe #(.DATA_WIDTH(8), .ACC_WIDTH(16)) dut (
        .clk(clk), .rst(rst), .en(en),
        .a_in(a_in), .b_in(b_in), .acc_in(acc_in),
        .acc_out(acc_out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("wave_pe.vcd");
        $dumpvars(0, tb_pe);
        
        // Initialize
        clk = 0; rst = 1; en = 0; a_in = 0; b_in = 0; acc_in = 0;
        #15 rst = 0; en = 1;

        // --- STEP 1: 2 * 3 = 6 ---
        @(negedge clk);
        a_in = 2; b_in = 3; acc_in = 0;
        
        repeat(2) @(posedge clk); // Wait for pipeline
        #1; // Small delay to let signals settle
        $display("Step 1 -> A:%d, B:%d, Acc_In:%d | Result: %d", a_in, b_in, acc_in, acc_out);

        // --- STEP 2: 6 + (4 * 5) = 26 ---
        @(negedge clk);
        acc_in = acc_out; // Use the 6 we just got
        a_in = 4; b_in = 5;
        
        repeat(2) @(posedge clk);
        #1;
        $display("Step 2 -> A:%d, B:%d, Acc_In:%d | Result: %d", a_in, b_in, acc_in, acc_out);

        // --- STEP 3: 26 + (6 * 2) = 38 ---
        @(negedge clk);
        acc_in = acc_out; // Use the 26 we just got
        a_in = 6; b_in = 2;
        
        repeat(2) @(posedge clk);
        #1;
        $display("Step 3 -> A:%d, B:%d, Acc_In:%d | Result: %d", a_in, b_in, acc_in, acc_out);

        $display("---------------------------------------");
        $display("FINAL TOTAL: %d", acc_out);
        $display("---------------------------------------");
        
        $finish;
    end
endmodule
