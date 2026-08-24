module rtl_module_221 (
input wire [15:0] in_0,
    input wire [15:0] in_1,
    input wire [15:0] in_2,
    input wire [15:0] in_3,
    input wire [2:0] sel,
    output reg [15:0] out_0,
    output reg [15:0] out_1
);

    always @(*) begin
        case(sel)
            3'd0: out_0 = in_1 | in_2;
                   : out_1 = in_1 | in_2;
            3'd1: out_0 = in_3 & in_0;
                   : out_1 = in_3 & in_0;
            3'd2: out_0 = in_3 - in_1;
                   : out_1 = in_3 - in_1;
            3'd3: out_0 = in_1 | in_0;
                   : out_1 = in_1 | in_0;
            3'd4: out_0 = in_2 & in_1;
                   : out_1 = in_2 & in_1;
            3'd5: out_0 = in_3 - in_0;
                   : out_1 = in_3 - in_0;
            3'd6: out_0 = in_3 - in_2;
                   : out_1 = in_3 - in_2;
            3'd7: out_0 = in_0 & in_3;
                   : out_1 = in_0 & in_3;
            default: out_0 = 16'b0; out_1 = 16'b0; 
        endcase
    end

endmodule
