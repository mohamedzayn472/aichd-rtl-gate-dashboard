module rtl_module_439 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    input wire [1:0] in_5,
    input wire [7:0] in_6,
    input wire [5:0] in_7,
    output wire [7:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [1:0] sig_9;
    wire [4:0] sig_10;
    wire [3:0] sig_11;
    wire [6:0] sig_12;
    wire [2:0] sig_13;
    wire [6:0] sig_14;
    wire [1:0] sig_15;
    wire [2:0] sig_16;
    wire [2:0] sig_17;
    wire [7:0] sig_18;
    wire [3:0] sig_19;
    wire [0:0] sig_20;
    wire [7:0] sig_21;
    wire [5:0] sig_22;
    wire [0:0] sig_23;
    wire [4:0] sig_24;
    wire [7:0] sig_25;
    wire [5:0] sig_26;
    wire [7:0] sig_27;
    wire [0:0] sig_28;
    wire [7:0] sig_29;
    wire [4:0] sig_30;
    wire [1:0] sig_31;

    // Logic assignments
    assign out_0 = (in_4 ^ (sig_31 ^ (sig_13 & (in_6 & (~(out_2 | out_1))))));
    assign out_1 = (~(~(sig_20 | ((~(sig_12 & sig_20)) & sig_17))));
    assign out_2 = (~(sig_11 & (~(sig_14 & (sig_27 ^ (~(sig_23 | (out_4 ^ (in_1 | (~(sig_2 & (~sig_16))))))))))));
    assign out_3 = (sig_28 & (~(sig_6 & (~(sig_27 | sig_11)))));
    assign out_4 = (~(sig_31 | (((~(in_0 & ((in_7 ^ (~sig_20)) & out_4))) & out_0) ^ sig_16)));
    assign sig_17 = ((sig_10 & sig_7) ^ in_5);
    assign sig_29 = ((~(out_4 | sig_19)) | sig_0);
    assign sig_17 = (~(in_7 & (~(in_1 & sig_13))));
    assign sig_25 = (~(sig_27 & (~(~((~sig_4) | sig_30)))));
    assign sig_20 = (~(~(sig_27 & sig_5)));
    assign sig_8 = ((~(sig_9 | (~(out_3 ^ sig_20)))) | sig_13);
    assign sig_29 = (~((~(~out_0)) | out_3));
    assign sig_29 = (~((~(sig_4 | (~(in_1 | (~(in_5 & (~(sig_28 | (sig_26 | (in_0 & sig_17)))))))))) & sig_29));

endmodule
