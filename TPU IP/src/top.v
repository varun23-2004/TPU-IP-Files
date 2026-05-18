module top #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH  = 16
)(
    input clk,
    input rst,

    // Memory A Write Port (Testbench fills this)
    input we_a,
    input [1:0] waddr_a,
    input [DATA_WIDTH-1:0] wdata_a,

    // Memory B Write Port (Testbench fills this)
    input we_b,
    input [1:0] waddr_b,
    input [DATA_WIDTH-1:0] wdata_b,

    // Memory C Read Port (Testbench reads this to check answers)
    input [1:0] raddr_c,
    output [ACC_WIDTH-1:0] rdata_c,

    input start,
    output reg done,
    
    // We can keep these exposed for the waveform, but they are technically internal now!
    output [ACC_WIDTH-1:0] c00, c01, c10, c11
);

    // Wires for SRAM A and B
    reg [1:0] raddr_a, raddr_b;
    wire [DATA_WIDTH-1:0] rdata_a, rdata_b;

    // Wires for SRAM C (Internal Write Port controlled by CPU)
    reg we_c;
    reg [1:0] waddr_c;
    reg [ACC_WIDTH-1:0] wdata_c;

    // ----------------------------------
    // Instantiate the 3 Memory Tanks
    // ----------------------------------
    sram #(.DATA_WIDTH(DATA_WIDTH), .DEPTH(4), .ADDR_WIDTH(2)) sram_a (
        .clk(clk), .we(we_a), .waddr(waddr_a), .wdata(wdata_a), .raddr(raddr_a), .rdata(rdata_a)
    );

    sram #(.DATA_WIDTH(DATA_WIDTH), .DEPTH(4), .ADDR_WIDTH(2)) sram_b (
        .clk(clk), .we(we_b), .waddr(waddr_b), .wdata(wdata_b), .raddr(raddr_b), .rdata(rdata_b)
    );

    // 🚨 IMPORTANT: SRAM C uses ACC_WIDTH (16-bit) because answers are bigger!
    sram #(.DATA_WIDTH(ACC_WIDTH), .DEPTH(4), .ADDR_WIDTH(2)) sram_c (
        .clk(clk), .we(we_c), .waddr(waddr_c), .wdata(wdata_c), .raddr(raddr_c), .rdata(rdata_c)
    );

    // CPU States
    localparam IDLE    = 2'd0;
    localparam LOAD    = 2'd1;
    localparam COMPUTE = 2'd2;
    localparam STORE   = 2'd3; // ✨ New State!
    
    reg [1:0] state;
    reg [3:0] load_cycle, comp_cycle, store_cycle;
    
    // Internal Registers (The Kitchen Counter)
    reg [DATA_WIDTH-1:0] a00, a01, a10, a11;
    reg [DATA_WIDTH-1:0] b00, b01, b10, b11;

    reg en;
    reg [DATA_WIDTH-1:0] a0, a1, b0, b1;

    // The Cooking Stove (Systolic Array)
    systolic_2x2 systolic_inst (
        .clk(clk), .rst(rst), .en(en),
        .a0(a0), .a1(a1), .b0(b0), .b1(b1),
        .c00(c00), .c01(c01), .c10(c10), .c11(c11)
    );

    always @(posedge clk) begin
        if (rst) begin
            state <= IDLE;
            done <= 0; en <= 0;
            we_c <= 0; waddr_c <= 0; wdata_c <= 0;
            raddr_a <= 0; raddr_b <= 0;
            load_cycle <= 0; comp_cycle <= 0; store_cycle <= 0;
            {a00, a01, a10, a11, b00, b01, b10, b11} <= 0;
            {a0, a1, b0, b1} <= 0;
        end else begin
            case (state)
                IDLE: begin
                    done <= 0; en <= 0; we_c <= 0;
                    if (start) begin
                        state <= LOAD;
                        load_cycle <= 0; raddr_a <= 0; raddr_b <= 0;
                    end
                end

                LOAD: begin
                    load_cycle <= load_cycle + 1;
                    if (load_cycle < 3) begin
                        raddr_a <= load_cycle + 1; raddr_b <= load_cycle + 1;
                    end

                    case (load_cycle)
                        1: begin a00 <= rdata_a; b00 <= rdata_b; end
                        2: begin a01 <= rdata_a; b01 <= rdata_b; end
                        3: begin a10 <= rdata_a; b10 <= rdata_b; end
                        4: begin 
                            a11 <= rdata_a; b11 <= rdata_b; 
                            state <= COMPUTE; 
                            comp_cycle <= 0;
                        end
                    endcase
                end

                COMPUTE: begin
                    en <= 1;
                    comp_cycle <= comp_cycle + 1;

                    case (comp_cycle)
                        0: begin a0 <= a00; a1 <= 0;   b0 <= b00; b1 <= 0;   end
                        1: begin a0 <= a01; a1 <= a10; b0 <= b10; b1 <= b01; end
                        2: begin a0 <= 0;   a1 <= a11; b0 <= 0;   b1 <= b11; end
                        default: begin a0 <= 0; a1 <= 0; b0 <= 0; b1 <= 0;   end
                    endcase

                    if (comp_cycle == 8) begin
                        en <= 0;
                        state <= STORE; // ✨ Jump to the Write-Back phase!
                        store_cycle <= 0;
                    end
                end

                STORE: begin
                    we_c <= 1; // Turn on the tap to fill Tank C
                    store_cycle <= store_cycle + 1;

                    // Pack the tiffin box one compartment per cycle
                    case (store_cycle)
                        0: begin waddr_c <= 0; wdata_c <= c00; end
                        1: begin waddr_c <= 1; wdata_c <= c01; end
                        2: begin waddr_c <= 2; wdata_c <= c10; end
                        3: begin waddr_c <= 3; wdata_c <= c11; end
                        4: begin 
                            we_c <= 0; // Turn off the tap
                            done <= 1; // Raise the flag!
                            state <= IDLE;
                        end
                    endcase
                end
            endcase
        end
    end
endmodule
