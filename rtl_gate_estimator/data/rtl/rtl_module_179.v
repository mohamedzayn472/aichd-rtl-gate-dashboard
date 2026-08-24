module rtl_module_179 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [5:0] in_3,
    output wire [3:0] out_0,
    output wire [6:0] out_1,
    output wire [5:0] out_2,
    output wire [2:0] out_3,
    output wire [1:0] out_4,
    output wire [3:0] out_5,
    output wire [3:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;
    wire [0:0] sig_10;
    wire [0:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [2:0] sig_14;
    wire [2:0] sig_15;
    wire [1:0] sig_16;
    wire [1:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;
    wire [2:0] sig_20;
    wire [7:0] sig_21;
    wire [7:0] sig_22;
    wire [2:0] sig_23;
    wire [6:0] sig_24;

    // Logic assignments
    assign out_0 = (~((~(sig_3 | ((~(((~(sig_7 & (sig_16 ^ out_6))) ^ sig_15) & sig_18)) | sig_16))) & sig_16));
    assign out_1 = (sig_19 & (~((((out_4 & in_3) ^ sig_1) & out_0) & out_1)));
    assign out_2 = (sig_15 | ((~(~(sig_3 & sig_14))) ^ out_0));
    assign out_3 = (~(sig_1 | (((~(out_3 & (in_2 | sig_17))) ^ sig_10) ^ out_4)));
    assign out_4 = (~((out_4 | sig_11) | sig_7));
    assign out_5 = (~(out_5 & (~out_3)));
    assign out_6 = (~(sig_9 & ((((~(~((~(sig_14 | in_0)) & sig_23))) | sig_0) ^ sig_3) & sig_15)));
    assign out_7 = (sig_20 | (~(~(((sig_13 & (~((~(sig_2 & sig_18)) & out_1))) & out_2) & out_1))));
    assign out_0 = (in_1 & (out_7 ^ (((~(sig_12 | out_7)) | sig_23) | sig_17)));
    assign sig_7 = (~((~(out_6 & sig_17)) & out_7));
    assign sig_14 = (~(sig_19 | (~((out_0 ^ (sig_15 | (out_3 & (~(((~(sig_22 & out_4)) & sig_14) | sig_14))))) | sig_24))));
    assign out_6 = (~((~((~(sig_3 & (sig_4 ^ out_4))) | in_3)) | sig_0));
    assign out_4 = (~(sig_2 & (~(sig_12 & (~((~(sig_17 | (~((sig_24 & (out_4 | sig_15)) | out_0)))) | out_4))))));
    assign sig_13 = (~(sig_9 | (~(sig_9 & (~(~(sig_2 & sig_1)))))));
    assign sig_21 = (~(~((sig_6 & (out_7 & (~(in_1 & (sig_17 | (~((~out_5) & sig_1))))))) & sig_24)));
    assign sig_3 = (sig_16 ^ ((~((~sig_23) & sig_9)) | sig_19));
    assign sig_1 = (~((~(~(out_7 | ((~((sig_11 ^ ((in_1 | sig_21) | sig_3)) | sig_1)) & out_5)))) | sig_15));
    assign sig_20 = (out_5 & ((~((~in_2) | out_7)) | out_4));
    assign out_7 = (sig_18 & ((sig_4 ^ (sig_20 ^ ((sig_0 | (sig_9 ^ out_0)) & out_4))) & sig_1));
    assign out_0 = ((sig_17 | (((~((sig_17 & in_0) & sig_23)) | sig_14) ^ sig_11)) | sig_20);

endmodule
