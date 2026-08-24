module rtl_module_394 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] sel,
    output reg [7:0] out_0
);

    always @(*) begin
        case(sel)
            2'd0: out_0 = in_1 ^ in_0;
            2'd1: out_0 = in_1 & in_0;
            2'd2: out_0 = in_0 & in_1;
            2'd3: out_0 = in_0 ^ in_1;
            default: out_0 = 8'b0; 
        endcase
    end

endmodule
