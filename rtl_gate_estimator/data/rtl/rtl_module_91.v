module rtl_module_91 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [4:0] in_3,
    input wire [7:0] in_4,
    input wire [2:0] in_5,
    input wire [2:0] in_6,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [7:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [5:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [2:0] sig_15;
    wire [2:0] sig_16;
    wire [0:0] sig_17;
    wire [3:0] sig_18;
    wire [6:0] sig_19;
    wire [4:0] sig_20;
    wire [5:0] sig_21;
    wire [1:0] sig_22;
    wire [5:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;
    wire [1:0] sig_26;
    wire [4:0] sig_27;
    wire [4:0] sig_28;

    // Logic assignments
    assign out_0 = (sig_28 ^ ((~(sig_7 & in_6)) ^ sig_2));
    assign out_1 = (((~(sig_0 & ((~(sig_21 & (~((sig_11 | (sig_24 & in_1)) & out_0)))) & sig_22))) & sig_0) | sig_20);
    assign out_2 = (sig_7 | (sig_15 ^ sig_0));
    assign out_3 = ((~(sig_13 & (in_4 ^ (out_4 ^ sig_22)))) | in_2);
    assign out_4 = (~(sig_5 & ((sig_24 | (~((~(sig_7 | (~(sig_1 | (out_4 & out_4))))) & sig_9))) ^ sig_24)));
    assign out_5 = (~(sig_24 & (~(sig_6 | in_0))));
    assign sig_13 = ((sig_7 & (~(~(sig_4 | ((~((~out_4) & out_1)) ^ sig_15))))) | sig_24);
    assign sig_25 = ((~(sig_22 & (~(((sig_0 | sig_11) & sig_21) ^ sig_20)))) ^ sig_0);
    assign sig_25 = ((~(~(~((~(~(sig_6 | (in_1 | sig_11)))) & sig_19)))) | sig_13);
    assign sig_20 = (~(~(~(~(in_3 ^ sig_10)))));
    assign sig_14 = (~((sig_3 & (sig_7 ^ (~sig_19))) | out_4));
    assign sig_21 = (~((~(sig_14 & (in_1 & sig_17))) & sig_28));
    assign sig_3 = (in_1 | ((~(sig_28 & ((sig_3 | (~(sig_18 & sig_7))) | sig_14))) ^ in_0));
    assign out_4 = (~((~sig_24) & in_2));
    assign sig_19 = (sig_0 | (~(sig_8 | in_2)));
    assign sig_24 = (~(sig_12 | (~(sig_5 | (out_1 ^ ((sig_27 & (sig_25 & sig_19)) & sig_2))))));

endmodule
