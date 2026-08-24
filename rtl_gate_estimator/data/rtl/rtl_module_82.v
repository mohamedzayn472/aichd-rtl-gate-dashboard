module rtl_module_82 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2,
    output wire [0:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;

    // Logic assignments
    assign out_0 = (~(~(in_0 | ((in_1 ^ (((~(out_4 & out_1)) ^ in_0) ^ out_3)) ^ in_1))));
    assign out_1 = (out_1 & (sig_1 ^ (~(out_2 | sig_1))));
    assign out_2 = (out_1 & (~((sig_0 & ((out_1 & (in_0 & out_0)) ^ out_2)) | out_3)));
    assign out_3 = (~(sig_1 & (~(~((~(~(out_0 | ((~((~(out_3 & sig_1)) & out_0)) & out_3)))) | in_1)))));
    assign out_4 = (out_0 | (~(out_1 | (out_4 & ((~((in_0 | sig_1) & out_2)) & in_1)))));
    assign out_3 = (~((out_3 & (sig_1 | out_1)) & out_4));
    assign out_1 = ((out_0 ^ (~sig_0)) & in_1);

endmodule
