module rtl_module_418 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;

    // Logic assignments
    assign out_0 = (in_0 & (~(out_2 & (~((~(sig_1 & in_0)) | out_2)))));
    assign out_1 = ((((out_2 & ((~in_1) ^ sig_0)) & sig_0) | sig_2) | in_0);
    assign out_2 = (out_0 | (out_1 ^ (~(in_0 & (~(in_1 & (in_1 ^ (sig_0 ^ out_2))))))));
    assign sig_2 = (~((~(in_0 & out_2)) & sig_2));
    assign sig_2 = (~(sig_2 & (sig_0 ^ (~(in_1 & (~(sig_1 | (sig_2 ^ in_1))))))));
    assign sig_1 = ((((~(~(sig_0 | out_2))) | in_1) & in_0) & sig_2);

endmodule
