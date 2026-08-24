module rtl_module_63 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] sel,
    output reg [3:0] out_0
);

    always @(*) begin
        case(sel)
            3'd0: out_0 = in_1 - in_0;
            3'd1: out_0 = in_1 ^ in_0;
            3'd2: out_0 = in_0 - in_1;
            3'd3: out_0 = in_1 + in_0;
            3'd4: out_0 = in_1 & in_0;
            3'd5: out_0 = in_1 ^ in_0;
            3'd6: out_0 = in_0 ^ in_1;
            3'd7: out_0 = in_1 | in_0;
            default: out_0 = 4'b0; 
        endcase
    end

endmodule
