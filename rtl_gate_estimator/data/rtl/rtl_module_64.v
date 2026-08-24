module rtl_module_64 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] sel,
    output reg [7:0] out_0
);

    always @(*) begin
        case(sel)
            1'd0: out_0 = in_0 ^ in_3;
            1'd1: out_0 = in_0 | in_1;
            default: out_0 = 8'b0; 
        endcase
    end

endmodule
