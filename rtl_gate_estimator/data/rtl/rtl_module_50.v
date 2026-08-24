module rtl_module_50 (
input wire [3:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [5:0] in_3,
    input wire [2:0] in_4,
    output wire [0:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [3:0] sig_11;
    wire [6:0] sig_12;
    wire [1:0] sig_13;
    wire [3:0] sig_14;
    wire [6:0] sig_15;
    wire [7:0] sig_16;
    wire [4:0] sig_17;
    wire [4:0] sig_18;
    wire [6:0] sig_19;
    wire [5:0] sig_20;
    wire [7:0] sig_21;
    wire [6:0] sig_22;
    wire [7:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;
    wire [7:0] sig_26;
    wire [1:0] sig_27;

    // Logic assignments
    assign out_0 = (sig_1 | (~((sig_19 | (in_1 & (in_3 & in_4))) | sig_15)));
    assign out_1 = (~(in_2 & (~(~(out_1 | (sig_16 ^ (~((~sig_26) | sig_27))))))));
    assign out_2 = (~(~sig_15));
    assign out_3 = (~(~(~(sig_26 & (sig_2 & ((~((~(sig_14 | sig_5)) & sig_3)) | sig_19))))));
    assign out_4 = (~(in_1 & (~((~(~(~(sig_17 & (out_4 | (~(in_3 & sig_20))))))) & sig_13))));
    assign sig_8 = ((in_4 ^ (~(sig_14 | (~((in_3 & (~(((~sig_1) ^ sig_22) | sig_17))) & sig_10))))) ^ sig_2);
    assign sig_1 = (((~(~(sig_25 | (~(~(sig_27 & sig_21)))))) & sig_15) ^ sig_19);
    assign sig_6 = (~((~((~(in_4 | ((sig_18 ^ (~(~(sig_5 & sig_16)))) | sig_7))) | out_1)) & sig_11));
    assign sig_25 = ((~((~((sig_14 & (~(in_4 | (~(((~(sig_16 & sig_12)) & out_0) & sig_8))))) | sig_14)) & out_1)) | sig_21);
    assign out_4 = (~(sig_22 | (~(out_1 & ((sig_8 & (~(sig_6 | out_0))) | sig_24)))));
    assign sig_3 = (sig_11 | (sig_13 ^ (~((in_4 | (sig_14 | sig_22)) | sig_21))));

endmodule
