module rtl_module_245 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    input wire [5:0] in_4,
    input wire [1:0] in_5,
    input wire [7:0] in_6,
    input wire [4:0] in_7,
    output wire [5:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;

    // Logic assignments
    assign out_0 = ((in_1 | in_4) & in_1);
    assign out_1 = (in_7 | ((in_5 & (~(in_0 & (in_7 ^ (out_1 ^ sig_0))))) | out_0));
    assign sig_0 = (~(~(in_4 | (in_1 & ((in_4 & ((~(~(in_0 & in_7))) ^ in_4)) | in_6)))));
    assign sig_0 = (~(in_5 | (~((~((~(((((~in_6) | sig_0) | sig_0) ^ in_6) & out_1)) & in_0)) | in_4))));
    assign out_1 = (~(in_4 | (~(in_7 & (~((~(~(out_0 | (~((~((out_1 | in_1) | in_3)) | in_3))))) | in_7))))));
    assign out_0 = (in_0 & (in_4 ^ sig_0));
    assign out_1 = (~(~(in_4 | (in_5 | (out_0 & (~(in_7 & ((in_5 ^ (~in_0)) & in_2))))))));
    assign out_0 = ((in_2 & ((out_1 & (~(~((~(~in_4)) & in_7)))) & in_6)) & in_7);
    assign out_0 = (~((in_6 | (in_0 ^ (~(in_5 & ((out_0 ^ (~(in_3 | in_0))) ^ out_1))))) & out_0));
    assign out_1 = (~(((~((in_7 | (~(~(in_0 & in_7)))) & in_7)) | in_5) & out_1));
    assign out_1 = (~((~(in_7 | (~(~(~((in_1 | in_7) & in_1)))))) | in_5));

endmodule
