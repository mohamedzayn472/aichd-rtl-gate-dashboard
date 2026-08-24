module rtl_module_397 (
input wire [0:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [5:0] in_3,
    input wire [1:0] in_4,
    input wire [0:0] in_5,
    input wire [6:0] in_6,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [5:0] sig_13;
    wire [0:0] sig_14;
    wire [1:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [7:0] sig_18;
    wire [5:0] sig_19;
    wire [5:0] sig_20;
    wire [5:0] sig_21;
    wire [7:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [3:0] sig_25;
    wire [2:0] sig_26;
    wire [1:0] sig_27;

    // Logic assignments
    assign out_0 = (~(sig_19 | (sig_17 & (in_1 ^ (~(((sig_6 ^ sig_23) ^ sig_11) & out_1))))));
    assign out_1 = (~((in_5 & (~(sig_22 | (((in_1 & (~(~sig_18))) | sig_3) ^ sig_16)))) | sig_11));
    assign out_2 = (~((~(~((~(sig_10 ^ (~(sig_17 ^ (sig_18 ^ sig_9))))) & sig_4))) | sig_16));
    assign sig_27 = (~((sig_13 | (~(sig_0 | (sig_27 ^ (~(sig_17 & (~(sig_20 | out_2)))))))) & in_2));
    assign sig_9 = ((sig_21 | (~(out_1 | ((~((~sig_9) & sig_14)) ^ sig_17)))) & sig_3);
    assign sig_23 = (sig_21 | ((~(sig_10 & (~(in_5 | (~(in_4 | (sig_6 ^ sig_11))))))) & sig_13));
    assign sig_19 = ((~sig_4) & sig_14);
    assign sig_25 = (~((~(((sig_21 & (~(~(sig_26 | (sig_19 | sig_15))))) | sig_16) | in_3)) & sig_8));
    assign sig_14 = (~(~(~(((~(sig_1 & sig_5)) ^ sig_1) & sig_17))));
    assign sig_14 = (~((~sig_23) & sig_13));
    assign sig_14 = (((sig_6 & (~(sig_10 & (sig_27 ^ (in_1 ^ sig_9))))) | sig_26) & out_2);
    assign sig_18 = (sig_25 & (sig_27 | (~((~sig_17) | sig_24))));
    assign sig_18 = (~(((~(in_5 & (~(~(sig_7 & sig_20))))) & sig_12) & sig_8));
    assign sig_1 = (~((~(((~(((~((sig_11 ^ sig_9) | sig_4)) & sig_21) & sig_12)) ^ sig_2) & sig_19)) | sig_14));
    assign sig_26 = (out_0 | (~((~(((~(sig_8 ^ in_5)) & sig_9) ^ in_0)) & sig_27)));
    assign sig_0 = (sig_16 ^ (~(~(in_1 & sig_0))));
    assign sig_15 = (sig_18 & (~(sig_4 | (~(sig_6 ^ (sig_5 & in_6))))));

endmodule
