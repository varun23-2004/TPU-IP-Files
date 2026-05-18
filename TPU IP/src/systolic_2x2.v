module systolic_2x2 #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 16  // Make sure this matches the top module!
)(
    input clk,
    input rst,
    input en,

    input  [DATA_WIDTH-1:0] a0, a1,
    input  [DATA_WIDTH-1:0] b0, b1,

    output [ACC_WIDTH-1:0] c00, c01,
    output [ACC_WIDTH-1:0] c10, c11,

    // Expose internal movement for debugging
    output [DATA_WIDTH-1:0] a_pe00_to_pe01,
    output [DATA_WIDTH-1:0] a_pe10_to_pe11,
    output [DATA_WIDTH-1:0] b_pe00_to_pe10,
    output [DATA_WIDTH-1:0] b_pe01_to_pe11
);

    // Internal wires
    wire [DATA_WIDTH-1:0] a_wire[1:0][1:0];
    wire [DATA_WIDTH-1:0] b_wire[1:0][1:0];
    wire [ACC_WIDTH-1:0] acc_wire[1:0][1:0];

    //----------------------------------
    // Row 0
    //----------------------------------
    pe #(.DATA_WIDTH(DATA_WIDTH), .ACC_WIDTH(ACC_WIDTH)) pe00 (
        .clk(clk), .rst(rst), .en(en),
        .a_in(a0), .b_in(b0),
        .acc_in(acc_wire[0][0]),   // LOOPBACK: Now it remembers the total!
        .a_out(a_wire[0][0]),
        .b_out(b_wire[0][0]),
        .acc_out(acc_wire[0][0])
    );

    pe #(.DATA_WIDTH(DATA_WIDTH), .ACC_WIDTH(ACC_WIDTH)) pe01 (
        .clk(clk), .rst(rst), .en(en),
        .a_in(a_wire[0][0]), .b_in(b1),
        .acc_in(acc_wire[0][1]),   // LOOPBACK
        .a_out(a_wire[0][1]),
        .b_out(b_wire[0][1]),
        .acc_out(acc_wire[0][1])
    );

    //----------------------------------
    // Row 1
    //----------------------------------
    pe #(.DATA_WIDTH(DATA_WIDTH), .ACC_WIDTH(ACC_WIDTH)) pe10 (
        .clk(clk), .rst(rst), .en(en),
        .a_in(a1), .b_in(b_wire[0][0]),
        .acc_in(acc_wire[1][0]),   // LOOPBACK
        .a_out(a_wire[1][0]),
        .b_out(b_wire[1][0]),
        .acc_out(acc_wire[1][0])
    );

    pe #(.DATA_WIDTH(DATA_WIDTH), .ACC_WIDTH(ACC_WIDTH)) pe11 (
        .clk(clk), .rst(rst), .en(en),
        .a_in(a_wire[1][0]), .b_in(b_wire[0][1]),
        .acc_in(acc_wire[1][1]),   // LOOPBACK
        .a_out(a_wire[1][1]),
        .b_out(b_wire[1][1]),
        .acc_out(acc_wire[1][1])
    );

    //----------------------------------
    // Outputs
    //----------------------------------
    assign c00 = acc_wire[0][0];
    assign c01 = acc_wire[0][1];
    assign c10 = acc_wire[1][0];
    assign c11 = acc_wire[1][1];

    assign a_pe00_to_pe01 = a_wire[0][0];
    assign a_pe10_to_pe11 = a_wire[1][0];
    assign b_pe00_to_pe10 = b_wire[0][0];
    assign b_pe01_to_pe11 = b_wire[0][1];

endmodule
