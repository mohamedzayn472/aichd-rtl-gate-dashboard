module rtl_module_114 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [0:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [0:0] sig_10;
    wire [2:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [2:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = (~((~(~(sig_6 | (~(sig_2 & sig_2))))) | sig_0));
    assign sig_6 = (~(in_1 ^ (in_1 ^ (sig_15 & (~(sig_12 & (~(in_1 & sig_9))))))));
    assign sig_3 = (~((~(sig_6 & ((~(sig_0 & (~((~(sig_5 | out_0)) | in_2)))) & sig_8))) | sig_13));
    assign sig_1 = (sig_10 | (~((in_3 | in_3) | sig_8)));
    assign sig_5 = (((sig_11 | sig_15) ^ sig_11) & sig_4);
    assign sig_8 = (~(~((~((sig_0 & sig_13) | sig_2)) | in_2)));

endmodule
