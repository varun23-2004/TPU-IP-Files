module pe #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 16
)(
    input clk,
    input rst,
    input en,
    input  [DATA_WIDTH-1:0] a_in,
    input  [DATA_WIDTH-1:0] b_in,
    input  [ACC_WIDTH-1:0]  acc_in,
    output reg [DATA_WIDTH-1:0] a_out,
    output reg [DATA_WIDTH-1:0] b_out,
    output [ACC_WIDTH-1:0] acc_out
);

    // 1-Cycle Delay for passing data to the neighbor
    always @(posedge clk) begin
        if (rst) begin
            a_out <= 0;
            b_out <= 0;
        end else if (en) begin
            a_out <= a_in;
            b_out <= b_in;
        end
    end

    // MAC performs math directly on the incoming signals.
    // Because MAC has its own internal register for acc_out, 
    // everything stays perfectly synchronized!
    mac #(
        .DATA_WIDTH(DATA_WIDTH),
        .ACC_WIDTH(ACC_WIDTH)
    ) mac_unit (
        .clk(clk),
        .rst(rst),
        .en(en),
        .a(a_in),       // Feed directly from input
        .b(b_in),       // Feed directly from input
        .acc_in(acc_in),
        .acc_out(acc_out)
    );

endmodule
