module rtl_module_159 (
input wire [6:0] in_0,
    input wire [6:0] in_1,
    input wire [1:0] in_2,
    input wire [0:0] in_3,
    input wire [0:0] in_4,
    input wire [7:0] in_5,
    input wire [6:0] in_6,
    output wire [1:0] out_0,
    output wire [0:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3,
    output wire [3:0] out_4,
    output wire [5:0] out_5,
    output wire [6:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [4:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [6:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [5:0] sig_14;
    wire [4:0] sig_15;
    wire [6:0] sig_16;
    wire [5:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;
    wire [0:0] sig_20;
    wire [3:0] sig_21;
    wire [0:0] sig_22;
    wire [7:0] sig_23;
    wire [6:0] sig_24;
    wire [2:0] sig_25;
    wire [0:0] sig_26;
    wire [5:0] sig_27;
    wire [4:0] sig_28;
    wire [5:0] sig_29;

    // Logic assignments
    assign out_0 = (~(in_0 & (((~(in_2 | sig_20)) & out_5) ^ sig_10)));
    assign out_1 = ((((~(sig_21 | (sig_7 & sig_11))) & in_6) ^ out_0) ^ out_2);
    assign out_2 = (~((sig_29 & (sig_27 ^ (~(((~sig_19) | sig_28) & sig_28)))) & sig_3));
    assign out_3 = (out_6 & (~(sig_23 & (out_3 | (~(sig_28 & (~sig_28)))))));
    assign out_4 = (~((((sig_22 & (out_0 ^ sig_20)) ^ sig_29) & sig_17) & out_1));
    assign out_5 = (out_3 & (sig_20 | sig_15));
    assign out_6 = ((~(((sig_1 & (~(in_0 & sig_29))) ^ sig_22) & sig_25)) | sig_0);
    assign sig_29 = (~(out_6 | ((~((~(sig_1 | sig_24)) | out_1)) & in_4)));
    assign out_5 = (((~(sig_18 & out_0)) & sig_20) ^ sig_3);
    assign out_0 = (~((~((sig_9 & (~in_3)) & sig_16)) & sig_1));
    assign out_5 = (~((((~in_2) ^ sig_13) ^ sig_25) | sig_29));
    assign sig_23 = (sig_6 & (~((~((sig_7 & (~(in_4 | in_3))) & sig_14)) | in_3)));
    assign sig_17 = (~(sig_27 | (~(((~(sig_9 & (~((sig_24 ^ (~(sig_10 | in_0))) & sig_26)))) | sig_8) & sig_19))));
    assign sig_23 = (~(sig_15 & in_3));
    assign sig_3 = (sig_22 & (~(in_0 & sig_16)));
    assign sig_6 = (~(((in_4 ^ ((~((~((sig_7 & sig_16) | sig_21)) & sig_29)) | in_2)) & out_0) | in_0));
    assign out_0 = (~(sig_2 | (~(sig_7 | (sig_13 & (~(sig_12 & sig_29)))))));
    assign out_3 = (~(~(sig_19 & (~(sig_23 & (~((sig_19 | sig_15) & sig_9)))))));
    assign sig_5 = (~(out_5 | (~(sig_15 & ((~((sig_27 ^ in_5) | in_4)) | sig_14)))));
    assign sig_14 = ((sig_10 & (~(((~((sig_9 ^ sig_21) | sig_8)) | sig_2) ^ in_3))) | sig_20);
    assign sig_27 = (sig_17 | (~(sig_13 & (~(sig_12 & ((~(sig_12 | sig_9)) | sig_25))))));
    assign sig_19 = ((~(((sig_10 ^ (sig_21 ^ in_3)) & sig_18) & out_2)) | in_5);
    assign sig_25 = ((~(sig_14 & (in_0 | out_1))) | sig_13);
    assign out_1 = (~(sig_21 | (sig_14 ^ (~((in_6 & (~(sig_25 | (~((in_6 & sig_7) & in_6))))) | out_6)))));
    assign sig_3 = (~((in_0 | (in_5 | (~(sig_10 | (sig_13 & (~(~(sig_16 | out_2)))))))) | out_5));
    assign sig_28 = (~(sig_4 & (((sig_19 & sig_3) & in_3) ^ sig_0)));
    assign sig_22 = (~(sig_15 | (~((~((~(sig_21 & ((~(~(in_2 | (~(sig_14 & in_2))))) ^ sig_24))) | sig_1)) | sig_28))));
    assign sig_23 = (in_2 & ((~(((sig_12 & (out_6 & (~sig_11))) & in_0) | out_0)) | sig_10));
    assign sig_27 = (~(sig_12 & (~(sig_11 & in_4))));
    assign sig_6 = (~(sig_8 | ((~(sig_4 & out_2)) ^ sig_15)));
    assign out_6 = ((sig_24 & ((~in_4) ^ in_2)) | sig_29);
    assign sig_1 = (~((~(~(sig_8 & ((sig_17 & sig_27) & sig_23)))) & sig_25));

endmodule
