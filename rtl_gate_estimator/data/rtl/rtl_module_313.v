module rtl_module_313 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    output wire [1:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [5:0] sig_15;
    wire [3:0] sig_16;
    wire [5:0] sig_17;
    wire [6:0] sig_18;
    wire [5:0] sig_19;
    wire [3:0] sig_20;
    wire [5:0] sig_21;
    wire [2:0] sig_22;
    wire [4:0] sig_23;
    wire [3:0] sig_24;
    wire [7:0] sig_25;
    wire [7:0] sig_26;
    wire [5:0] sig_27;
    wire [0:0] sig_28;
    wire [7:0] sig_29;
    wire [6:0] sig_30;
    wire [5:0] sig_31;

    // Logic assignments
    assign out_0 = (sig_30 | (~(sig_16 ^ (~((~(sig_17 | sig_4)) & sig_5)))));
    assign sig_26 = (~(sig_31 & (~(sig_6 | (out_0 & (sig_5 & (~(sig_15 | sig_26))))))));
    assign sig_27 = (sig_31 | (out_0 | (~(sig_11 & (~sig_26)))));
    assign sig_9 = ((~(sig_28 | sig_16)) | sig_23);
    assign sig_16 = (((~((~(sig_7 | ((sig_9 | (sig_25 ^ (sig_31 | sig_21))) & sig_29))) & sig_25)) ^ sig_10) & sig_13);
    assign sig_19 = (~((~(~(sig_5 | in_1))) | sig_27));
    assign sig_1 = (sig_6 | (((~(sig_28 & in_4)) ^ sig_28) | sig_23));

endmodule
