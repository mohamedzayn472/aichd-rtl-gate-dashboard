module rtl_module_162 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [2:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;

    // Logic assignments
    assign out_0 = (~(in_1 & (~(~(out_1 | (sig_0 & (~(in_1 | (in_1 ^ out_2)))))))));
    assign out_1 = (~(in_0 & (~((~(~(in_2 | out_3))) | in_1))));
    assign out_2 = (((~(~(in_1 & (~(out_0 | (~((out_3 | (in_2 & out_2)) & out_0))))))) | in_2) ^ out_3);
    assign out_3 = ((~(out_0 & sig_0)) | sig_0);
    assign out_0 = (out_0 ^ (out_0 & out_0));
    assign out_0 = (~((~((out_0 & (sig_0 & (~((~(in_0 & sig_0)) ^ in_0)))) | in_2)) & in_2));
    assign out_2 = (((~((in_2 & (out_1 | sig_0)) | out_2)) | in_0) ^ out_2);

endmodule
