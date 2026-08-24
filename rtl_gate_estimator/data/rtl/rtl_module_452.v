module rtl_module_452 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] sel,
    output reg [3:0] out_0,
    output reg [3:0] out_1
);

    always @(*) begin
        case(sel)
            2'd0: out_0 = in_1 - in_0;
                   : out_1 = in_1 - in_0;
            2'd1: out_0 = in_1 | in_0;
                   : out_1 = in_1 | in_0;
            2'd2: out_0 = in_0 - in_1;
                   : out_1 = in_0 - in_1;
            2'd3: out_0 = in_0 | in_1;
                   : out_1 = in_0 | in_1;
            default: out_0 = 4'b0; out_1 = 4'b0; 
        endcase
    end

endmodule
