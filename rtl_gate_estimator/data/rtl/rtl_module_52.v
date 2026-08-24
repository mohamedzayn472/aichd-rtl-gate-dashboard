module rtl_module_52 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    input wire [2:0] sel,
    output reg [15:0] out_0
);

    always @(*) begin
        case(sel)
            3'd0: out_0 = in_2 ^ in_1;
            3'd1: out_0 = in_2 | in_0;
            3'd2: out_0 = in_2 + in_0;
            3'd3: out_0 = in_2 | in_0;
            default: out_0 = 16'b0; 
        endcase
    end

endmodule
