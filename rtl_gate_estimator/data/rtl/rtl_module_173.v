module rtl_module_173 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [3:0] in_3,
    input wire [6:0] in_4,
    input wire [3:0] in_5,
    input wire [2:0] in_6,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4,
    output wire [4:0] out_5,
    output wire [6:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [0:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [7:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;
    wire [1:0] sig_13;
    wire [5:0] sig_14;
    wire [2:0] sig_15;
    wire [0:0] sig_16;
    wire [3:0] sig_17;
    wire [5:0] sig_18;
    wire [1:0] sig_19;
    wire [1:0] sig_20;
    wire [5:0] sig_21;
    wire [0:0] sig_22;
    wire [5:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [1:0] sig_26;
    wire [3:0] sig_27;

    // Logic assignments
    assign out_0 = (sig_23 & (~(sig_25 & (sig_4 & (~(sig_5 | sig_9))))));
    assign out_1 = (~((((~(~(in_3 | out_2))) | sig_1) | out_0) | sig_18));
    assign out_2 = (~((~(sig_11 & (out_6 & (~((~(in_5 & (sig_16 & sig_2))) | sig_15))))) & sig_19));
    assign out_3 = (sig_25 & ((sig_0 | (~((~(sig_15 | sig_4)) & sig_20))) ^ sig_6));
    assign out_4 = ((out_5 & sig_23) ^ sig_16);
    assign out_5 = (~(out_3 & in_0));
    assign out_6 = (sig_5 & (~(~(out_2 & sig_22))));
    assign out_7 = ((~sig_8) ^ sig_2);
    assign sig_15 = (~((sig_21 | sig_11) & in_5));
    assign sig_27 = (sig_19 ^ (~(sig_14 & (sig_19 | (sig_5 | sig_18)))));
    assign sig_16 = ((sig_23 ^ ((sig_1 | (~sig_22)) ^ sig_8)) ^ sig_2);
    assign sig_20 = ((sig_20 & sig_15) & in_2);
    assign sig_0 = (~(((in_5 | sig_26) & sig_17) & out_3));
    assign sig_11 = (sig_11 ^ ((~(sig_7 & sig_7)) | sig_16));
    assign sig_20 = (~(in_3 ^ sig_23));
    assign sig_18 = (((~(sig_26 | sig_7)) & sig_10) | sig_9);
    assign out_5 = (sig_16 ^ (~((~(((~(sig_27 | (sig_13 & (~(out_6 & (sig_2 & in_2)))))) ^ sig_13) | out_3)) | sig_11)));
    assign sig_14 = ((sig_27 | (((~sig_16) ^ sig_12) & in_3)) | sig_0);
    assign sig_16 = (~(~(out_5 & out_6)));
    assign out_1 = (~((sig_21 ^ in_3) | sig_4));
    assign sig_10 = (~(((sig_17 | (~((~((~(sig_23 | in_5)) & sig_27)) | sig_26))) | sig_16) | out_3));
    assign sig_15 = (~((((~((sig_17 & ((~(sig_16 | sig_15)) & out_2)) | out_0)) & out_6) | out_2) & sig_17));
    assign out_3 = (~(sig_15 & (~(sig_9 & sig_12))));

endmodule
