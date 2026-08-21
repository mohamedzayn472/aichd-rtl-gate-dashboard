module rtl_module_142 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [2:0] in_4,
    input wire [4:0] in_5,
    input wire [3:0] in_6,
    input wire [4:0] in_7,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [3:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [5:0] sig_15;
    wire [6:0] sig_16;
    wire [6:0] sig_17;
    wire [7:0] sig_18;
    wire [1:0] sig_19;
    wire [5:0] sig_20;
    wire [5:0] sig_21;
    wire [4:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [0:0] sig_25;
    wire [5:0] sig_26;
    wire [3:0] sig_27;
    wire [2:0] sig_28;
    wire [6:0] sig_29;
    wire [0:0] sig_30;

    // Logic assignments
    assign out_0 = (out_5 ^ (~((~(~((~(sig_0 | sig_23)) | out_1))) | sig_5)));
    assign out_1 = (~(out_1 & (~((sig_25 & (sig_30 & out_5)) & sig_14))));
    assign out_2 = (~(out_2 & (sig_14 ^ (~(sig_2 | in_2)))));
    assign out_3 = (~(in_5 & (sig_12 | (out_4 & sig_23))));
    assign out_4 = (sig_27 | (~(((~(sig_15 & sig_17)) | sig_24) ^ sig_17)));
    assign out_5 = ((~(sig_11 ^ ((~(sig_28 | (~((~((~(sig_30 & in_6)) | sig_21)) & sig_15)))) & sig_9))) & sig_2);
    assign sig_6 = ((~((~(((~(sig_7 & out_4)) | out_2) & sig_28)) & sig_20)) ^ sig_14);
    assign sig_20 = ((~(sig_19 & ((sig_5 ^ (sig_8 ^ out_0)) ^ sig_11))) & out_3);
    assign sig_21 = (~(~((in_3 | ((~(sig_15 | ((~((out_0 ^ in_3) & out_5)) & in_7))) | sig_21)) & in_7)));
    assign sig_21 = ((~(~(((~((sig_7 ^ out_3) & out_3)) ^ sig_26) | sig_3))) ^ sig_15);
    assign out_1 = (~(((sig_9 | sig_13) & out_1) ^ in_6));
    assign sig_21 = ((~((~(out_4 & (~(in_1 | ((sig_1 | sig_7) ^ sig_15))))) | sig_14)) ^ sig_30);
    assign out_0 = (~(sig_8 & (sig_25 & (~((~sig_17) | in_2)))));
    assign sig_7 = (sig_23 | (~((sig_20 | (sig_29 | (~((~((~(out_1 | sig_11)) | sig_11)) | in_6)))) | in_6)));
    assign out_0 = (~(sig_30 | ((((~((in_2 ^ (~(sig_12 | sig_28))) & sig_5)) & sig_10) ^ sig_17) | sig_21)));
    assign sig_6 = (out_0 & (~sig_14));
    assign sig_2 = ((~(~(((~(~(~((~(sig_9 | sig_28)) & sig_26)))) & sig_30) | sig_25))) & out_4);
    assign sig_9 = (~((sig_7 ^ sig_29) | sig_29));
    assign sig_25 = ((((~(~((sig_14 ^ out_4) | sig_30))) | sig_23) ^ sig_0) | sig_26);
    assign sig_5 = (((sig_4 & out_0) ^ sig_9) | sig_30);
    assign sig_19 = (~(~(out_4 | (out_0 ^ sig_6))));
    assign sig_20 = (~((~((~((~(~in_4)) & out_5)) | in_1)) | out_3));
    assign sig_3 = (~((~((in_1 | ((~(sig_15 | sig_19)) ^ sig_1)) | sig_13)) | out_3));
    assign sig_30 = (~((sig_12 ^ (~(out_1 | ((sig_4 | (~(sig_0 & (~((~sig_19) & sig_29))))) & sig_2)))) & sig_16));
    assign sig_6 = (~(~(sig_15 | (~((~(sig_8 & ((out_0 ^ sig_11) | sig_12))) & sig_9)))));
    assign sig_11 = (~(((out_5 ^ (in_7 ^ in_4)) ^ out_5) | sig_5));
    assign sig_28 = (~(out_2 & (sig_27 & (~(sig_13 | sig_1)))));

endmodule
