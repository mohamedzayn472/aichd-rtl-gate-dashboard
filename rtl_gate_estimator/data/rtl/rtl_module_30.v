module rtl_module_30 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [5:0] in_3,
    output wire [5:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [5:0] sig_11;
    wire [2:0] sig_12;

    // Logic assignments
    assign out_0 = (((~(sig_0 & (~((~((~(out_0 & out_0)) | in_3)) & in_2)))) | sig_11) | sig_7);
    assign out_1 = (~(sig_0 & (~((sig_0 ^ ((~(in_0 | sig_5)) | in_3)) & sig_5))));
    assign sig_6 = (sig_5 & (((~(~(sig_12 & (in_1 | in_3)))) & sig_11) & sig_4));
    assign sig_12 = (sig_1 & (~(out_1 & sig_2)));
    assign sig_0 = (sig_1 | (~(sig_4 | out_1)));
    assign sig_12 = (~((sig_12 | (~(in_3 & (~((sig_1 & (sig_2 & (~(in_0 & sig_12)))) & out_0))))) & sig_11));

endmodule
