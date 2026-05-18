module sram #(
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 2, // 2 bits can address 4 locations (00, 01, 10, 11)
    parameter DEPTH = 4       // We need 4 slots for a 2x2 matrix
)(
    input clk,
    
    // ----------------------------------
    // Write Port (Fills the tank)
    // ----------------------------------
    input we,                        // Write Enable switch
    input [ADDR_WIDTH-1:0] waddr,    // Write Address (Where to put the data)
    input [DATA_WIDTH-1:0] wdata,    // Write Data (The actual number)

    // ----------------------------------
    // Read Port (Drains the tank)
    // ----------------------------------
    input [ADDR_WIDTH-1:0] raddr,    // Read Address (Where to read from)
    output reg [DATA_WIDTH-1:0] rdata // Read Data (The output number)
);

    // This line creates the actual physical memory blocks (The Sintex Tank)
    // It says: Give me 'DEPTH' number of rows, each 'DATA_WIDTH' bits wide.
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

    // Write Logic (Synchronous: happens on clock tick)
    always @(posedge clk) begin
        if (we) begin
            mem[waddr] <= wdata; 
        end
    end

    // Read Logic (Synchronous: happens on clock tick)
    always @(posedge clk) begin
        rdata <= mem[raddr];
    end

endmodule
