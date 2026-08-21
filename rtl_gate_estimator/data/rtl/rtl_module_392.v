module rtl_module_392 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    input wire [0:0] in_5,
    output wire [6:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2,
    output wire [4:0] out_3,
    output wire [7:0] out_4,
    output wire [1:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [1:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [7:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [0:0] sig_16;
    wire [3:0] sig_17;
    wire [6:0] sig_18;
    wire [6:0] sig_19;
    wire [6:0] sig_20;

    // Logic assignments
    assign out_0 = (sig_15 | ((~((~(sig_11 | (~(in_4 | out_3)))) & sig_15)) | in_3));
    assign out_1 = (~((~(sig_8 & (~((((in_3 | (out_3 ^ sig_5)) ^ sig_0) & sig_0) & sig_19)))) | sig_18));
    assign out_2 = (sig_16 & (in_0 | in_1));
    assign out_3 = (out_5 & (~(sig_18 & (sig_6 | sig_14))));
    assign out_4 = (~((((sig_10 & ((~(sig_6 & sig_19)) ^ sig_20)) & sig_10) | sig_3) | in_4));
    assign out_5 = (~(sig_3 | sig_1));
    assign sig_18 = ((~(~(sig_7 | (sig_6 & sig_3)))) | in_1);
    assign sig_3 = (out_4 ^ (((~(sig_3 & sig_13)) ^ sig_0) | sig_1));
    assign sig_2 = (~(((~(sig_3 | sig_11)) ^ sig_6) | sig_3));
    assign sig_15 = (in_3 | (~(sig_9 | (sig_1 | out_1))));
    assign sig_19 = ((sig_19 ^ (((~(sig_11 & (sig_20 | (sig_18 ^ sig_8)))) & sig_7) ^ sig_20)) ^ sig_6);
    assign sig_0 = (~(sig_11 | (~((sig_5 & ((~((~((~sig_14) | sig_15)) & out_1)) | in_5)) & sig_8))));

endmodule
