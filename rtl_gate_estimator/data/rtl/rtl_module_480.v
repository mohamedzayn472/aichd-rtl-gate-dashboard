module rtl_module_480 (
input wire [3:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [3:0] in_3,
    input wire [3:0] in_4,
    input wire [7:0] in_5,
    input wire [1:0] in_6,
    input wire [4:0] in_7,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [7:0] sig_10;
    wire [2:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;
    wire [1:0] sig_16;
    wire [1:0] sig_17;
    wire [5:0] sig_18;
    wire [1:0] sig_19;
    wire [3:0] sig_20;
    wire [6:0] sig_21;
    wire [6:0] sig_22;
    wire [5:0] sig_23;
    wire [1:0] sig_24;
    wire [3:0] sig_25;
    wire [0:0] sig_26;
    wire [6:0] sig_27;
    wire [7:0] sig_28;
    wire [1:0] sig_29;
    wire [3:0] sig_30;
    wire [3:0] sig_31;

    // Logic assignments
    assign out_0 = ((~((~(sig_1 | (~(sig_16 | ((~(sig_10 & sig_20)) & sig_2))))) | sig_5)) ^ sig_29);
    assign out_1 = (in_3 & (sig_2 ^ (~(~(sig_22 | sig_23)))));
    assign out_2 = (~(sig_18 & (~((sig_25 ^ in_6) | sig_28))));
    assign out_3 = (~(((~(((~out_1) | sig_25) & out_0)) ^ sig_27) | sig_25));
    assign out_4 = (~(in_4 | out_2));
    assign out_5 = (sig_6 | (~(in_4 | (~(sig_27 | (sig_13 & sig_18))))));
    assign sig_9 = (~((~((~(in_3 & ((~(sig_16 ^ sig_22)) | sig_18))) | in_0)) | sig_25));
    assign sig_28 = (~(in_6 | (sig_19 & (~(out_1 & (out_0 ^ ((~(sig_31 | sig_23)) ^ in_7)))))));
    assign sig_4 = (~((~(((sig_10 | in_3) & sig_11) | sig_17)) & sig_8));
    assign sig_31 = (~(~(~(sig_11 & (~(sig_11 & sig_6))))));
    assign sig_22 = (~(out_0 ^ (((~((out_1 ^ sig_27) | sig_4)) & in_4) | sig_4)));
    assign sig_12 = ((~((sig_19 & in_1) | sig_1)) & in_1);
    assign sig_1 = (~(~((sig_17 ^ in_0) & sig_20)));
    assign sig_22 = (~(out_3 | ((~(((sig_16 | (in_2 & sig_20)) & sig_11) | sig_23)) | in_4)));
    assign sig_26 = (~(~((~sig_12) & sig_5)));
    assign sig_15 = ((~(~(sig_21 & (~(in_5 & (~(sig_23 | (in_5 ^ (~(in_4 | (~(sig_12 & in_0)))))))))))) ^ sig_30);
    assign sig_12 = (~(sig_10 & (~((sig_5 | sig_20) | sig_5))));
    assign sig_14 = (~((~(sig_16 | (sig_1 ^ ((sig_0 ^ (~((sig_3 | sig_10) | out_4))) ^ in_6)))) | sig_3));
    assign sig_0 = (~((~(~((~(in_5 | (sig_6 ^ ((~((in_4 | sig_6) | sig_24)) & sig_16)))) | sig_22))) & out_3));
    assign sig_31 = (sig_11 ^ (~((~(out_5 & (~(sig_27 & sig_26)))) & sig_27)));
    assign sig_18 = (~(in_7 | (~(sig_15 | in_1))));

endmodule
