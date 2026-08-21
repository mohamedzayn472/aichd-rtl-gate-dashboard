module rtl_module_50 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [4:0] in_3,
    input wire [0:0] in_4,
    output wire [0:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [4:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [0:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;

    // Logic assignments
    assign out_0 = (~(((sig_5 ^ (~((in_0 & sig_2) & in_0))) & sig_18) | sig_0));
    assign out_1 = ((~(in_4 & ((~((sig_17 & ((in_1 & in_3) ^ in_2)) | sig_20)) & sig_17))) ^ in_3);
    assign out_2 = (sig_4 | (~((~(~((~(~(((~(sig_2 & sig_11)) & sig_16) | sig_3))) | sig_18))) & in_2)));
    assign sig_11 = (sig_1 | (~((~((~(((~(in_2 | in_2)) | in_1) | sig_16)) | out_0)) | sig_10)));
    assign sig_16 = ((sig_9 ^ (~((~(~((out_1 | sig_11) | in_4))) | sig_6))) ^ sig_11);
    assign sig_12 = (out_1 & ((~sig_0) ^ sig_16));
    assign sig_3 = (~((~(in_3 | sig_2)) & sig_9));
    assign sig_0 = (~((~(sig_7 & (~((in_3 ^ sig_12) ^ sig_8)))) | sig_11));
    assign sig_14 = (sig_3 ^ (((~(sig_18 | sig_7)) & sig_1) & sig_7));

endmodule
