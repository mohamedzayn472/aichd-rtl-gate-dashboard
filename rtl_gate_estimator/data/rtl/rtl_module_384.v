module rtl_module_384 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [4:0] in_5,
    input wire [1:0] in_6,
    input wire [6:0] in_7,
    output wire [6:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;

    // Logic assignments
    assign out_0 = ((~(in_4 & (in_5 ^ (in_5 | (sig_0 & (~(~in_0))))))) | in_0);
    assign out_0 = (~(~((~((~((~(in_5 | in_7)) & in_0)) | in_0)) | in_5)));
    assign out_0 = (~((~(out_0 ^ (~((~((~(in_2 & (~in_2))) & sig_1)) & in_7)))) & sig_1));
    assign sig_1 = (~(in_5 & ((in_7 | (in_7 ^ (in_2 & (~(in_4 & (~((in_1 & in_0) & in_6))))))) | in_7)));
    assign out_0 = (~(~(in_5 & (sig_1 | in_3))));
    assign sig_1 = (~((sig_0 ^ (sig_0 ^ in_2)) | in_1));
    assign out_0 = (in_3 ^ (~(~(~(in_0 & (((~(in_5 | (in_3 ^ in_1))) & in_3) ^ in_3))))));
    assign sig_0 = (~(in_2 ^ in_5));
    assign out_0 = (in_7 | (in_3 ^ (in_4 | in_2)));
    assign sig_1 = (~(in_6 | (~((in_3 & in_7) & in_5))));

endmodule
