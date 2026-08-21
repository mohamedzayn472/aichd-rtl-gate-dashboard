module rtl_module_16 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    output wire [2:0] out_0,
    output wire [5:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;

    // Logic assignments
    assign out_0 = (sig_1 ^ (sig_1 | ((~sig_1) & sig_1)));
    assign out_1 = (out_1 | (out_1 & (sig_0 | (~((~((sig_1 & (sig_1 | in_0)) | out_0)) | sig_2)))));
    assign sig_1 = (~(in_0 & (~(~(sig_0 & in_0)))));
    assign out_1 = (~(out_0 | (~((~(out_1 | (~((sig_0 | (~(((~(out_0 & sig_2)) ^ in_0) | out_0))) & out_0)))) & sig_2))));

endmodule
