module rtl_module_127 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [1:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;
    wire [7:0] sig_10;
    wire [3:0] sig_11;
    wire [5:0] sig_12;
    wire [1:0] sig_13;
    wire [2:0] sig_14;
    wire [7:0] sig_15;
    wire [2:0] sig_16;
    wire [4:0] sig_17;
    wire [5:0] sig_18;
    wire [5:0] sig_19;
    wire [3:0] sig_20;
    wire [3:0] sig_21;
    wire [7:0] sig_22;
    wire [5:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [6:0] sig_26;
    wire [7:0] sig_27;
    wire [6:0] sig_28;
    wire [4:0] sig_29;
    wire [7:0] sig_30;
    wire [4:0] sig_31;

    // Logic assignments
    assign out_0 = ((~(sig_21 & (sig_18 ^ sig_2))) ^ sig_15);
    assign out_1 = (~(sig_3 & (in_3 | (~((~(sig_29 ^ sig_19)) & sig_2)))));
    assign out_2 = (~(sig_12 | (~(sig_11 | (~(out_0 & (in_1 | sig_15)))))));
    assign out_3 = (sig_18 | (~(sig_2 & sig_14)));
    assign sig_11 = ((sig_30 ^ (~sig_24)) | in_0);
    assign sig_22 = (~(out_2 | (~((~((sig_2 ^ sig_28) | in_3)) & sig_8))));
    assign sig_5 = (~(~(sig_31 & (~(sig_4 | (sig_10 | sig_7))))));
    assign sig_17 = ((~((~(~sig_20)) | sig_23)) & sig_7);
    assign sig_14 = ((~(sig_11 & (~(((in_3 & (sig_3 & sig_4)) & sig_28) | sig_12)))) | sig_29);
    assign sig_13 = (~(~(sig_26 | (~(sig_29 & (~(sig_5 & sig_27)))))));

endmodule
