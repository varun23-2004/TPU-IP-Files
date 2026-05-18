`timescale 1ns/1ps

module tb_top;
    reg clk, rst, start;
    
    reg we_a, we_b;
    reg [1:0] waddr_a, waddr_b;
    reg [7:0] wdata_a, wdata_b;

    // ✨ New: Wires to read the final answers from SRAM_C
    reg [1:0] raddr_c;
    wire [15:0] rdata_c;

    wire done;
    wire [15:0] c00, c01, c10, c11; // We keep these just to view in GTKWave

    top dut (
        .clk(clk), .rst(rst), .start(start),
        .we_a(we_a), .waddr_a(waddr_a), .wdata_a(wdata_a),
        .we_b(we_b), .waddr_b(waddr_b), .wdata_b(wdata_b),
        .raddr_c(raddr_c), .rdata_c(rdata_c), // Read port for Tank C
        .done(done),
        .c00(c00), .c01(c01), .c10(c10), .c11(c11)
    );

    always #5 clk = ~clk;

    initial begin
        #2000; 
        if (!done) begin
            $display("❌ ERROR: Simulation Timeout!");
            $finish;
        end
    end

    initial begin
        $dumpfile("wave_top.vcd");
        $dumpvars(0, tb_top);
        
        clk = 0; rst = 1; start = 0;
        we_a = 0; we_b = 0; waddr_a = 0; waddr_b = 0; wdata_a = 0; wdata_b = 0;
        raddr_c = 0;

        #20 rst = 0;

        // --- PHASE 1: Fill the Memory Tanks ---
        @(negedge clk);
        we_a = 1; waddr_a = 0; wdata_a = 2; we_b = 1; waddr_b = 0; wdata_b = 3;
        @(negedge clk);
        waddr_a = 1; wdata_a = 4; waddr_b = 1; wdata_b = 2;
        @(negedge clk);
        waddr_a = 2; wdata_a = 1; waddr_b = 2; wdata_b = 5;
        @(negedge clk);
        waddr_a = 3; wdata_a = 3; waddr_b = 3; wdata_b = 4;
        @(negedge clk);
        we_a = 0; we_b = 0;

        // --- PHASE 2: Start the CPU ---
        @(negedge clk); start = 1;
        @(negedge clk); start = 0;

        wait(done); 

        // --- PHASE 3: Read Back from SRAM_C ---
        $display("---- READING RESULTS FROM MEMORY C ----");
        
        @(negedge clk) raddr_c = 0; 
        @(negedge clk) $display("Address 0 (c00): %d", rdata_c);
        
        @(negedge clk) raddr_c = 1; 
        @(negedge clk) $display("Address 1 (c01): %d", rdata_c);
        
        @(negedge clk) raddr_c = 2; 
        @(negedge clk) $display("Address 2 (c10): %d", rdata_c);
        
        @(negedge clk) raddr_c = 3; 
        @(negedge clk) $display("Address 3 (c11): %d", rdata_c);

        $finish;
    end
endmodule
