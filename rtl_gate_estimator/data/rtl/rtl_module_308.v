module rtl_module_308 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [5:0] in_3,
    output wire [2:0] out_0,
    output wire [6:0] out_1,
    output wire [5:0] out_2,
    output wire [3:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [0:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [3:0] sig_12;
    wire [4:0] sig_13;
    wire [4:0] sig_14;
    wire [0:0] sig_15;
    wire [2:0] sig_16;
    wire [7:0] sig_17;
    wire [5:0] sig_18;
    wire [5:0] sig_19;
    wire [4:0] sig_20;
    wire [7:0] sig_21;

    // Logic assignments
    assign out_0 = ((~(((sig_3 & sig_16) ^ sig_14) & sig_13)) | in_1);
    assign out_1 = (sig_14 & (sig_4 & sig_7));
    assign out_2 = (~((~(((~((~(sig_2 ^ out_3)) & sig_14)) ^ sig_15) | out_1)) | out_3));
    assign out_3 = ((~(~((sig_2 ^ (~(sig_6 | sig_11))) & sig_14))) & sig_7);
    assign out_4 = ((~(sig_16 | (in_2 | sig_2))) | sig_2);
    assign sig_4 = (sig_11 & (~((in_0 & (~(out_4 & (out_3 & ((~(out_4 | in_1)) & sig_11))))) | out_4)));
    assign sig_17 = (~(sig_17 & ((~(sig_9 & (~(in_0 | (~(~(sig_20 & out_3))))))) & out_4)));
    assign sig_6 = (((~(in_3 ^ (sig_15 & (~(sig_0 & (~((out_2 | sig_3) & sig_17))))))) & sig_4) | sig_5);
    assign sig_19 = (sig_11 ^ (~(~(sig_15 & sig_12))));

endmodule
