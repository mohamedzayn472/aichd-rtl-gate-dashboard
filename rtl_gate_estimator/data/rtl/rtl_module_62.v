module rtl_module_62 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [0:0] in_4,
    input wire [5:0] in_5,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [5:0] out_2,
    output wire [7:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [3:0] sig_12;
    wire [5:0] sig_13;
    wire [4:0] sig_14;
    wire [4:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [7:0] sig_18;
    wire [0:0] sig_19;
    wire [2:0] sig_20;
    wire [2:0] sig_21;
    wire [5:0] sig_22;
    wire [6:0] sig_23;
    wire [6:0] sig_24;
    wire [0:0] sig_25;
    wire [4:0] sig_26;
    wire [7:0] sig_27;
    wire [3:0] sig_28;
    wire [6:0] sig_29;

    // Logic assignments
    assign out_0 = (~(sig_16 & (sig_19 & (sig_5 & (~(sig_1 | sig_7))))));
    assign out_1 = (~((((sig_14 ^ (~(out_4 | sig_0))) ^ sig_28) ^ sig_19) & sig_23));
    assign out_2 = (sig_20 | ((~(sig_5 ^ (sig_15 & sig_28))) | sig_0));
    assign out_3 = (sig_4 | (~(sig_14 | (sig_20 & (~(in_5 & (out_3 | sig_2)))))));
    assign out_4 = (~((((sig_6 & (~(sig_18 | out_2))) ^ sig_4) & sig_9) | sig_6));
    assign sig_18 = ((out_0 | sig_23) & out_2);
    assign sig_15 = (sig_10 | (~(~(in_4 & (~(sig_24 | (sig_20 & (~(in_2 & ((sig_23 | sig_9) ^ in_4))))))))));
    assign out_4 = (~((~(sig_28 & in_1)) | in_3));
    assign sig_25 = (~(((sig_1 ^ (~(~(out_1 | (~(sig_10 & (~((~(sig_21 | sig_22)) | sig_0)))))))) & sig_17) | sig_15));
    assign sig_15 = (~(sig_3 | (in_2 ^ ((sig_22 ^ (~((~((sig_25 & sig_23) | sig_10)) | sig_22))) & out_0))));
    assign sig_1 = ((~(sig_4 & (sig_13 ^ sig_12))) ^ sig_13);
    assign sig_28 = ((sig_26 | (~((~(sig_3 | (sig_7 | ((~(sig_12 & sig_18)) | sig_8)))) | sig_10))) ^ sig_27);
    assign sig_10 = (~(sig_24 | ((~(sig_25 & (~(sig_14 & sig_27)))) | sig_27)));

endmodule
