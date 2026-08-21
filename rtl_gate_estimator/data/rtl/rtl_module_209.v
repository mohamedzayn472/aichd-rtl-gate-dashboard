module rtl_module_209 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [1:0] sig_6;
    wire [6:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [5:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [7:0] sig_13;
    wire [1:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [4:0] sig_17;
    wire [2:0] sig_18;
    wire [0:0] sig_19;
    wire [5:0] sig_20;
    wire [4:0] sig_21;
    wire [0:0] sig_22;
    wire [5:0] sig_23;
    wire [1:0] sig_24;

    // Logic assignments
    assign out_0 = (~(((~(~(sig_16 ^ (sig_21 & (~(sig_7 & in_3)))))) ^ sig_11) | in_1));
    assign out_1 = (~(sig_13 | (sig_0 & ((sig_18 & in_3) ^ out_1))));
    assign out_2 = (sig_12 ^ (~(sig_14 & ((in_3 & in_0) ^ sig_14))));
    assign out_3 = (~((~(~(~(sig_14 & sig_9)))) & sig_24));
    assign sig_11 = (out_1 & (sig_8 ^ (~((~((~(sig_5 & sig_14)) & sig_4)) & sig_23))));
    assign sig_23 = (sig_2 & (~(sig_6 & sig_3)));
    assign sig_12 = (sig_17 | (~((~(sig_17 | (in_3 ^ sig_3))) | sig_15)));
    assign sig_14 = (sig_3 & (~(sig_6 ^ (sig_10 & (~(sig_2 | (~(~(sig_20 | (out_1 ^ out_1))))))))));
    assign sig_12 = (out_3 & (((sig_22 ^ (~sig_2)) ^ sig_14) | sig_22));
    assign sig_24 = (sig_11 ^ (~(sig_0 | (sig_1 ^ sig_10))));

endmodule
