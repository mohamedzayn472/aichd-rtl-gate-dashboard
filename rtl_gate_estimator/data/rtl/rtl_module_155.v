module rtl_module_155 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    input wire [3:0] in_6,
    output wire [6:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [0:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [0:0] sig_13;
    wire [0:0] sig_14;
    wire [0:0] sig_15;
    wire [4:0] sig_16;
    wire [2:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [2:0] sig_20;
    wire [0:0] sig_21;
    wire [4:0] sig_22;

    // Logic assignments
    assign out_0 = ((~(in_0 | (~((~((~(~(~sig_6))) & in_1)) & sig_6)))) ^ sig_22);
    assign sig_13 = ((~(~(sig_18 ^ (~(in_6 & (sig_3 & (~((~sig_18) & out_0)))))))) ^ sig_6);
    assign sig_11 = (~(~((~(in_5 | sig_17)) | sig_15)));
    assign sig_3 = (~(((~((~(sig_15 & (sig_0 ^ sig_22))) & sig_6)) ^ in_5) | in_4));
    assign sig_14 = (~(~((~((~(in_4 ^ sig_5)) | sig_12)) | in_0)));
    assign sig_5 = (~(sig_5 | (sig_18 & ((sig_20 ^ sig_22) & out_0))));
    assign sig_0 = (~((sig_12 & ((~(~((~(sig_8 & (~(~sig_15)))) & in_4))) & in_2)) & sig_4));
    assign sig_0 = ((~(sig_16 | (~((~(((~(sig_18 | sig_6)) | sig_16) ^ in_5)) | sig_9)))) ^ sig_8);
    assign sig_13 = (~(sig_19 | (~(sig_7 & (~(sig_17 | (~sig_20)))))));

endmodule
