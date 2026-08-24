module rtl_module_305 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [0:0] sel,
    output reg [15:0] out_0
);

    always @(*) begin
        case(sel)
            1'd0: out_0 = in_0 + in_1;
            1'd1: out_0 = in_1 | in_0;
            default: out_0 = 16'b0; 
        endcase
    end

endmodule
