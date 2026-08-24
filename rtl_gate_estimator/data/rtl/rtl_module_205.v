module rtl_module_205 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [0:0] sel,
    output reg [3:0] out_0
);

    always @(*) begin
        case(sel)
            1'd0: out_0 = in_0 - in_2;
            1'd1: out_0 = in_1 + in_0;
            default: out_0 = 4'b0; 
        endcase
    end

endmodule
