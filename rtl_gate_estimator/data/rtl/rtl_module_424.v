module rtl_module_424 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [3:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    input wire [1:0] in_5,
    input wire [0:0] in_6,
    input wire [3:0] in_7,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [7:0] out_4,
    output wire [0:0] out_5,
    output wire [5:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [0:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [0:0] sig_15;
    wire [3:0] sig_16;
    wire [7:0] sig_17;
    wire [0:0] sig_18;

    // Logic assignments
    assign out_0 = (sig_5 & (sig_11 | (sig_18 & sig_15)));
    assign out_1 = ((~(in_7 & (~(~(sig_14 & (sig_8 & sig_4)))))) ^ in_0);
    assign out_2 = (sig_0 & (~(in_6 & ((sig_9 | (~((~(out_4 | (~in_4))) | in_0))) & sig_14))));
    assign out_3 = ((~(sig_1 & (((~((~(sig_7 & (sig_12 ^ sig_2))) | sig_16)) & sig_15) & sig_9))) ^ out_7);
    assign out_4 = (sig_1 & (~(sig_4 & sig_0)));
    assign out_5 = (~(~in_7));
    assign out_6 = (in_2 & (out_5 ^ sig_6));
    assign out_7 = (((~((~((sig_11 | (sig_18 & sig_16)) & in_3)) | in_4)) | sig_5) ^ in_1);
    assign sig_14 = (~(((~((~(~(out_2 | sig_7))) | sig_4)) ^ sig_11) ^ sig_7));
    assign sig_12 = (sig_4 | (~((sig_8 & out_4) & in_3)));
    assign out_4 = (~(in_1 | ((sig_13 ^ (~((~((in_0 ^ sig_9) & in_4)) | sig_6))) & out_4)));
    assign sig_15 = (~(sig_14 ^ (sig_15 & in_3)));
    assign sig_18 = (~(sig_0 | (~(((((sig_11 ^ in_5) ^ sig_15) ^ out_0) & sig_12) | in_6))));
    assign sig_4 = (~(sig_1 & (~(~((~(sig_2 | out_7)) | sig_2)))));
    assign out_1 = (in_7 | (~(out_4 ^ (sig_11 & (~(sig_7 | sig_8))))));
    assign sig_7 = ((sig_0 ^ sig_16) ^ sig_6);
    assign sig_1 = (((in_1 | in_0) & sig_5) ^ out_0);
    assign sig_9 = ((in_1 ^ (out_3 | out_2)) & sig_15);
    assign out_0 = (~((in_1 | (~out_3)) | sig_0));
    assign out_4 = (~((~(~(~(out_6 & out_3)))) & sig_3));
    assign out_2 = (~(~((out_1 ^ ((out_0 & (in_0 | sig_14)) & sig_16)) | sig_4)));
    assign sig_13 = (out_3 & ((~((sig_14 & (~(sig_10 & out_4))) & sig_0)) & in_4));
    assign sig_0 = (sig_17 ^ ((sig_18 | (~((in_5 ^ (~((~(sig_7 | sig_6)) & sig_0))) | sig_6))) | in_4));

endmodule
