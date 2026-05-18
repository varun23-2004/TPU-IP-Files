module systolic_2x2_mm #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 16
)(
    input clk,
    input rst,
    input en,
    input  [DATA_WIDTH-1:0] a0, a1, // Inputs from Left
    input  [DATA_WIDTH-1:0] b0, b1, // Inputs from Top
    output [ACC_WIDTH-1:0] c00, c01, c10, c11 // Final Results
);

    wire [DATA_WIDTH-1:0] a_w00, a_w10, b_w00, b_w01;
    wire [ACC_WIDTH-1:0]  acc_w00, acc_w01, acc_w10, acc_w11;

    // --- PE 0,0 ---
    pe pe00 (.clk(clk), .rst(rst), .en(en), .a_in(a0), .b_in(b0), 
             .acc_in(acc_w00), .a_out(a_w00), .b_out(b_w00), .acc_out(acc_w00));

    // --- PE 0,1 (Receives A from PE00) ---
    pe pe01 (.clk(clk), .rst(rst), .en(en), .a_in(a_w00), .b_in(b1), 
             .acc_in(acc_w01), .a_out(), .b_out(b_w01), .acc_out(acc_w01));

    // --- PE 1,0 (Receives B from PE00) ---
    pe pe10 (.clk(clk), .rst(rst), .en(en), .a_in(a1), .b_in(b_w00), 
             .acc_in(acc_w10), .a_out(a_w10), .b_out(), .acc_out(acc_w10));

    // --- PE 1,1 (Receives A from PE10, B from PE01) ---
    pe pe11 (.clk(clk), .rst(rst), .en(en), .a_in(a_w10), .b_in(b_w01), 
             .acc_in(acc_w11), .a_out(), .b_out(), .acc_out(acc_w11));

    assign {c00, c01, c10, c11} = {acc_w00, acc_w01, acc_w10, acc_w11};

endmodule
