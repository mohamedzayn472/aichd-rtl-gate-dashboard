module rtl_module_355 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [2:0] sel,
    output reg [7:0] out_0,
    output reg [7:0] out_1
);

    always @(*) begin
        case(sel)
            3'd0: out_0 = in_3 & in_0;
                   : out_1 = in_3 & in_0;
            3'd1: out_0 = in_2 | in_0;
                   : out_1 = in_2 | in_0;
            3'd2: out_0 = in_2 + in_3;
                   : out_1 = in_2 + in_3;
            default: out_0 = 8'b0; out_1 = 8'b0; 
        endcase
    end

endmodule
