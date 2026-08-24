module rtl_module_6 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [6:0] in_3,
    input wire [0:0] in_4,
    input wire [6:0] in_5,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [4:0] out_3,
    output wire [6:0] out_4,
    output wire [6:0] out_5,
    output wire [3:0] out_6,
    output wire [7:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [6:0] sig_12;
    wire [0:0] sig_13;
    wire [1:0] sig_14;
    wire [6:0] sig_15;
    wire [2:0] sig_16;
    wire [7:0] sig_17;
    wire [2:0] sig_18;
    wire [0:0] sig_19;
    wire [4:0] sig_20;
    wire [6:0] sig_21;
    wire [5:0] sig_22;
    wire [3:0] sig_23;
    wire [7:0] sig_24;
    wire [5:0] sig_25;
    wire [5:0] sig_26;

    // Logic assignments
    assign out_0 = (~(((~in_1) & out_1) ^ sig_16));
    assign out_1 = (~(in_1 | (in_1 & sig_9)));
    assign out_2 = (sig_23 | (~(~(out_3 | sig_1))));
    assign out_3 = (out_3 ^ (out_5 | (~(sig_13 & (~((~((~((sig_13 & (sig_0 | sig_13)) | sig_18)) | sig_6)) & out_7))))));
    assign out_4 = (~((~(~(in_0 | (sig_26 ^ in_4)))) & sig_25));
    assign out_5 = (~(out_1 | (~(~(sig_11 | (sig_5 | sig_21))))));
    assign out_6 = (~(~((~(sig_23 & ((sig_9 ^ in_5) ^ sig_22))) | sig_18)));
    assign out_7 = (out_0 ^ (sig_11 | (~(out_5 | (sig_10 ^ sig_15)))));
    assign sig_5 = (~(sig_9 | (~(~out_2))));
    assign out_4 = ((((sig_13 | (~sig_9)) ^ sig_17) & out_0) & out_2);
    assign out_2 = (((out_1 | (sig_6 & sig_14)) ^ sig_5) ^ sig_24);
    assign out_6 = ((sig_2 & ((in_2 ^ ((sig_5 ^ sig_13) | out_1)) | out_2)) ^ sig_25);
    assign sig_0 = ((~(~(~((sig_10 | in_3) ^ sig_24)))) ^ in_4);
    assign sig_4 = (~((~(((sig_20 | (sig_1 | (~(in_5 & sig_13)))) & out_6) | out_0)) | sig_22));
    assign out_0 = (~((~((sig_10 & (~(sig_7 & sig_0))) & sig_4)) & out_2));
    assign sig_0 = (~(~((~(sig_12 & (~(in_2 ^ sig_8)))) | sig_23)));
    assign sig_14 = (~(sig_4 | (~((~(sig_3 | (sig_1 | sig_21))) & sig_3))));
    assign sig_18 = (sig_21 & (~(~(((~(sig_11 | sig_19)) ^ sig_25) | out_5))));
    assign sig_16 = (sig_11 & (out_4 | out_3));
    assign sig_11 = (~((~((~(sig_25 ^ (sig_21 | out_4))) | sig_24)) & sig_15));
    assign sig_6 = (in_0 | (sig_19 ^ (~(~(sig_1 | (~((~((~out_2) | in_2)) ^ sig_14)))))));
    assign out_7 = (~(((~((sig_25 ^ out_6) & in_3)) | out_2) & sig_12));
    assign out_4 = (sig_13 & (~(sig_9 | out_5)));
    assign sig_26 = ((sig_1 & sig_23) | sig_3);
    assign sig_18 = (~(sig_26 | (sig_6 ^ (~(~(~(sig_23 | out_2)))))));
    assign sig_8 = (sig_9 & (sig_14 ^ (~((~((sig_22 ^ (sig_25 & (out_4 ^ sig_13))) & sig_16)) ^ out_1))));

endmodule
