module rtl_module_260 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4,
    output wire [2:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;

    // Logic assignments
    assign out_0 = (~(~(out_5 | out_6)));
    assign out_1 = ((~(out_6 ^ (~out_0))) ^ out_6);
    assign out_2 = (out_0 ^ (~(out_2 | out_2)));
    assign out_3 = (out_6 ^ (~((in_1 | out_4) | out_3)));
    assign out_4 = (in_1 ^ ((~((~(in_0 | out_2)) & sig_0)) | in_0));
    assign out_5 = ((~(in_1 | (~((out_6 & (out_1 & ((~(in_1 & out_3)) ^ out_4))) | in_1)))) & in_0);
    assign out_6 = (~(out_4 & (~((out_1 | (~(((~(out_5 & (out_6 ^ out_3))) | out_4) | out_0))) & out_5))));
    assign out_2 = (~(out_5 ^ (out_0 ^ (~((~(out_5 & (~(sig_0 & sig_0)))) | sig_0)))));
    assign out_5 = (out_2 ^ (out_3 & (~(~(out_3 & (~(in_1 | (~((~(out_0 | in_0)) | out_3)))))))));
    assign out_0 = (~(~(out_0 ^ (in_1 & (out_0 | sig_0)))));

endmodule
