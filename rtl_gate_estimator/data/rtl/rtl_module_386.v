module rtl_module_386 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    input wire [7:0] in_6,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [0:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [2:0] sig_15;
    wire [5:0] sig_16;
    wire [1:0] sig_17;
    wire [1:0] sig_18;
    wire [6:0] sig_19;
    wire [0:0] sig_20;
    wire [5:0] sig_21;

    // Logic assignments
    assign out_0 = (sig_15 & (~(sig_17 | sig_3)));
    assign out_1 = (~((~(((~sig_18) ^ out_2) & sig_13)) & sig_16));
    assign out_2 = (sig_16 & (~((sig_12 ^ ((sig_16 ^ (sig_13 | (sig_10 ^ out_3))) | in_4)) & sig_9)));
    assign out_3 = (~((sig_20 ^ sig_16) | sig_3));
    assign out_4 = (sig_5 | (sig_21 | (~(out_0 & (~(in_1 & (sig_11 & (~(out_1 | (sig_2 | sig_19))))))))));
    assign out_2 = (sig_5 | (sig_21 & ((~(sig_18 & out_0)) & in_5)));
    assign sig_5 = (~((~(~(~((~(in_6 | (~(out_0 | (sig_15 ^ (in_4 | sig_16)))))) | sig_3)))) & out_4));
    assign sig_17 = (~(sig_8 | ((~(sig_15 & sig_15)) | sig_15)));
    assign sig_12 = (~(sig_1 | (sig_4 & (~(in_0 & (~(sig_9 & in_0)))))));
    assign out_0 = (~(sig_0 & ((sig_0 & in_5) & sig_19)));
    assign out_3 = ((~(sig_10 | out_3)) & sig_14);
    assign sig_19 = ((~(sig_14 & (~(((~(sig_17 & ((sig_9 | in_1) & sig_11))) | sig_18) | sig_9)))) | in_1);
    assign sig_10 = (~((~(~(out_0 | in_6))) & in_0));

endmodule
