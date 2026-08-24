module rtl_module_115 (
input wire [7:0] in_0,
    input wire [6:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [5:0] in_5,
    output wire [3:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [5:0] sig_5;
    wire [0:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;
    wire [5:0] sig_14;
    wire [2:0] sig_15;
    wire [7:0] sig_16;
    wire [3:0] sig_17;
    wire [4:0] sig_18;
    wire [6:0] sig_19;
    wire [6:0] sig_20;
    wire [6:0] sig_21;

    // Logic assignments
    assign out_0 = (~(sig_4 & sig_11));
    assign out_1 = (sig_17 ^ (~(sig_3 ^ (~(sig_0 | (~(sig_10 | in_1)))))));
    assign out_2 = (sig_10 | (~((sig_20 ^ (~(out_2 | ((~(in_1 & in_0)) & sig_6)))) | sig_21)));
    assign sig_5 = (in_1 ^ (~(sig_14 | (~((in_2 & (sig_1 | (sig_8 & out_2))) | sig_9)))));
    assign sig_6 = (sig_12 & ((((~((out_1 ^ (sig_6 | sig_20)) | in_1)) | sig_13) & sig_15) ^ out_1));
    assign sig_20 = (sig_0 | (~(sig_2 | (~((sig_7 ^ sig_16) | sig_20)))));
    assign sig_15 = (~(((~((~(in_1 | sig_6)) | sig_8)) & sig_16) & sig_14));
    assign sig_5 = (~((sig_6 | (~(in_3 & (sig_21 ^ ((~((sig_15 ^ out_2) | sig_16)) | sig_11))))) & out_0));
    assign sig_2 = (~(sig_16 | ((~(in_1 & ((~sig_9) & in_3))) | in_5)));
    assign sig_7 = (~((sig_18 ^ (~(~(sig_15 | (sig_13 | sig_8))))) & sig_18));

endmodule
