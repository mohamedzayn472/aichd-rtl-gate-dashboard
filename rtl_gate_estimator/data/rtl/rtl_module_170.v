module rtl_module_170 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [4:0] in_3,
    input wire [2:0] in_4,
    input wire [3:0] in_5,
    output wire [6:0] out_0,
    output wire [4:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [1:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [6:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [4:0] sig_13;
    wire [1:0] sig_14;
    wire [5:0] sig_15;
    wire [7:0] sig_16;
    wire [3:0] sig_17;
    wire [0:0] sig_18;
    wire [6:0] sig_19;
    wire [7:0] sig_20;
    wire [6:0] sig_21;

    // Logic assignments
    assign out_0 = (~(((~(in_5 & (~(sig_6 | in_3)))) & sig_8) | sig_3));
    assign out_1 = ((sig_8 ^ (~(sig_6 & sig_19))) & out_0);
    assign sig_11 = (~((~((~(((out_1 ^ sig_15) ^ sig_0) | out_0)) | in_0)) & sig_15));
    assign sig_21 = (sig_7 & (~(~(sig_20 | (~((~(in_5 | sig_19)) | sig_21))))));
    assign sig_13 = (~(sig_9 & (~(sig_5 | (~((~(sig_4 | (~(out_1 | (~(sig_7 & sig_18)))))) & sig_9))))));
    assign sig_18 = ((~((sig_2 | (~sig_2)) | in_1)) | sig_0);
    assign sig_12 = (~(~(sig_8 | (~(sig_12 ^ (~((~((~(sig_4 | sig_10)) ^ sig_17)) & sig_13)))))));
    assign sig_11 = (~((~(in_1 | ((sig_8 ^ sig_21) | sig_21))) | in_4));

endmodule
