module rtl_module_65 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    input wire [0:0] sel,
    output reg [15:0] out_0,
    output reg [15:0] out_1
);

    always @(*) begin
        case(sel)
            1'd0: out_0 = in_0 ^ in_2;
                   : out_1 = in_0 ^ in_2;
            1'd1: out_0 = in_0 - in_2;
                   : out_1 = in_0 - in_2;
            default: out_0 = 16'b0; out_1 = 16'b0; 
        endcase
    end

endmodule
