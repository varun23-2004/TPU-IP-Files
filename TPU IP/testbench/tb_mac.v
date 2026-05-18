`timescale 1ns/1ps

module tb_mac;

parameter DATA_WIDTH = 8;
parameter ACC_WIDTH  = 2*DATA_WIDTH;
reg [DATA_WIDTH-1:0] prev_a, prev_b;
reg [ACC_WIDTH-1:0]  prev_acc;
reg clk;
reg rst;
reg en;

reg  [DATA_WIDTH-1:0] a, b;
reg  [ACC_WIDTH-1:0]  acc_in;

wire [ACC_WIDTH-1:0] acc_out;

// DUT
mac #(
    .DATA_WIDTH(DATA_WIDTH),
    .ACC_WIDTH(ACC_WIDTH)
) dut (
    .clk(clk),
    .rst(rst),
    .en(en),
    .a(a),
    .b(b),
    .acc_in(acc_in),
    .acc_out(acc_out)
);

// clock
always #5 clk = ~clk;

// debug (aligned with clock)
always @(posedge clk) begin
    if (!rst && en) begin
        #1;
        if (a != prev_a || b != prev_b || acc_in != prev_acc) begin 
             $display("T=%0t | a=%0d b=%0d | acc_in=%0d | acc_out=%0d",
                     $time, a, b, acc_in, acc_out);
        end
        // update previous values
        prev_a   <= a;
        prev_b   <= b;
        prev_acc <= acc_in;
    end
end

initial begin
    $dumpfile("wave_mac.vcd");   // file name
    $dumpvars(0, tb_mac); 
    clk = 0;
    rst = 1;
    en  = 0;

    a = 0;
    b = 0;
    acc_in = 0;

    //----------------------------------
    // RESET
    //----------------------------------
    #12;
    rst = 0;
    en  = 1;

    //----------------------------------
    // STEP 1: 2 × 3
    //----------------------------------
    @(negedge clk);
    a = 2;
    b = 3;
    acc_in = 0;

    @(posedge clk); // → 6

    //----------------------------------
    // STEP 2: + (4 × 5)
    //----------------------------------
    @(negedge clk);
    a = 4;
    b = 5;
    acc_in = acc_out;

    @(posedge clk); // → 26

    //----------------------------------
    // STEP 3: + (6 × 2)
    //----------------------------------
    @(negedge clk);
    a = 6;
    b = 2;
    acc_in = acc_out;

    @(posedge clk); // → 38

    //----------------------------------
    // FINAL CHECK
    //----------------------------------
    @(posedge clk);
    #1;
    $display("Final RESULT = %0d (Expected = 38)", acc_out);

    $finish;
end

endmodule
