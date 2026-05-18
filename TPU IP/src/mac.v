module mac #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 2*DATA_WIDTH
)(
    input clk,
    input rst,
    input en,

    input  [DATA_WIDTH-1:0] a,
    input  [DATA_WIDTH-1:0] b,
    input  [ACC_WIDTH-1:0]  acc_in,

    output reg [ACC_WIDTH-1:0] acc_out
);

always @(posedge clk) begin
    if (rst) begin
        acc_out <= 0;
    end else if (en) begin
        acc_out <= acc_in + (a * b);
    end
end

endmodule
