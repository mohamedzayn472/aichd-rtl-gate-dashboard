module rtl_module_194 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [0:0] in_3,
    input wire [6:0] in_4,
    output wire [6:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [5:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [1:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [0:0] sig_13;
    wire [1:0] sig_14;
    wire [2:0] sig_15;
    wire [0:0] sig_16;
    wire [3:0] sig_17;
    wire [0:0] sig_18;
    wire [2:0] sig_19;
    wire [5:0] sig_20;
    wire [2:0] sig_21;

    // Logic assignments
    assign out_0 = (sig_2 | (~(sig_17 | (sig_6 | (~sig_19)))));
    assign sig_18 = (sig_15 | (~(sig_3 & (sig_4 & (~(sig_21 & (~((~(sig_8 & in_1)) | sig_9))))))));
    assign sig_4 = (sig_4 ^ (sig_12 ^ sig_18));
    assign sig_10 = (~((in_3 & (in_0 & sig_12)) & sig_14));
    assign sig_20 = (~((sig_0 | ((sig_19 ^ sig_5) ^ sig_7)) & sig_16));
    assign sig_3 = (~((~(((~(sig_8 | sig_7)) ^ sig_20) & sig_20)) & in_4));
    assign sig_13 = (~(sig_9 & sig_4));

endmodule
