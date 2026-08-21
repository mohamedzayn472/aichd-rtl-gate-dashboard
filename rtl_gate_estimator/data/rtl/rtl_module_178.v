module rtl_module_178 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [3:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    output wire [3:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;

    // Logic assignments
    assign out_0 = ((~(in_1 | ((sig_1 | in_2) ^ in_2))) & in_4);
    assign sig_0 = (~((in_2 & in_0) & out_0));
    assign out_0 = (~(in_3 | (~(out_0 & (sig_1 | ((sig_0 & in_2) & in_4))))));
    assign sig_1 = (out_0 | (~((in_1 ^ (~(((sig_0 ^ (~(in_1 & sig_1))) | in_4) | in_2))) & sig_0)));
    assign sig_1 = ((~(~(in_2 & (in_4 | (~(in_4 | (~(in_0 | sig_0)))))))) | in_2);
    assign out_0 = (~((in_2 | (sig_0 ^ (~(in_3 & in_0)))) & in_0));
    assign sig_1 = (in_4 & (~(~((~(out_0 | in_1)) | sig_0))));

endmodule
