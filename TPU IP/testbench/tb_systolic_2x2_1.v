`timescale 1ns/1ps

module tb_systolic_2x2;

reg clk, rst, en;
reg [7:0] a0, a1, b0, b1;

// Outputs (not used for checking correctness in Phase-1)
wire [15:0] c00, c01, c10, c11;

// DUT
systolic_2x2 dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .c00(c00),
    .c01(c01),
    .c10(c10),
    .c11(c11)
);

// Clock
always #5 clk = ~clk;

initial begin
    $dumpfile("wave_p1.vcd");
    $dumpvars(0, tb_systolic_2x2);

    // Init
    clk = 0;
    rst = 1;
    en  = 0;

    a0 = 0; a1 = 0;
    b0 = 0; b1 = 0;

    // Reset phase
    #12;
    rst = 0;
    en  = 1;

    //------------------------------------------
    // Apply UNIQUE values (to track movement)
    //------------------------------------------

    // Cycle 1
    @(negedge clk);
    a0 = 8'd11; a1 = 8'd22;
    b0 = 8'd33; b1 = 8'd44;

    // Cycle 2
    @(negedge clk);
    a0 = 8'd55; a1 = 8'd66;
    b0 = 8'd77; b1 = 8'd88;

    // Stop inputs (flush)
    @(negedge clk);
    a0 = 0; a1 = 0;
    b0 = 0; b1 = 0;

    //------------------------------------------
    // Wait for propagation
    //------------------------------------------
    repeat(6) @(posedge clk);

    //------------------------------------------
    // Print outputs (optional)
    //------------------------------------------
    $display("---- Phase-1 Output (No accumulation expected) ----");
    $display("c00=%d c01=%d c10=%d c11=%d", c00, c01, c10, c11);

    //------------------------------------------
    // Finish
    //------------------------------------------
    $finish;
end

endmodule
