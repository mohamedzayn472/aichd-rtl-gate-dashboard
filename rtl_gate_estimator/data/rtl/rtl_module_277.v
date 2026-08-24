module rtl_module_277 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    output wire [3:0] out_0,
    output wire [2:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3,
    output wire [0:0] out_4,
    output wire [3:0] out_5,
    output wire [5:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [2:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;
    wire [4:0] sig_12;
    wire [3:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;
    wire [4:0] sig_16;
    wire [5:0] sig_17;
    wire [4:0] sig_18;
    wire [0:0] sig_19;
    wire [3:0] sig_20;
    wire [5:0] sig_21;
    wire [5:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [6:0] sig_26;

    // Logic assignments
    assign out_0 = (((~(out_1 & out_0)) & in_3) | sig_1);
    assign out_1 = (~((~(sig_20 | sig_20)) | sig_6));
    assign out_2 = (~((~((~((~(sig_6 | sig_7)) | sig_9)) | out_1)) | out_5));
    assign out_3 = (~(~(in_0 | sig_21)));
    assign out_4 = (sig_24 & (sig_15 & (~((sig_9 & (in_1 ^ (~(out_2 & sig_23)))) & sig_5))));
    assign out_5 = (~((~(in_1 | (~(sig_23 | ((~(sig_18 | (~out_1))) | sig_13))))) & out_0));
    assign out_6 = (out_5 ^ (~((~(sig_11 | (~(sig_18 | (out_4 ^ sig_2))))) | sig_22)));
    assign out_7 = (~((~(in_3 | (sig_24 | out_3))) | sig_16));
    assign sig_1 = (out_3 ^ (~(~(out_2 ^ ((~(sig_15 & (out_3 | sig_24))) & sig_24)))));
    assign out_1 = (((sig_9 ^ (sig_21 & out_7)) ^ sig_21) | sig_16);
    assign sig_15 = (~(out_7 & (~(out_6 & sig_20))));
    assign sig_10 = (sig_2 | (((sig_12 ^ out_2) | sig_17) ^ sig_3));
    assign sig_24 = ((~(sig_24 & sig_0)) | out_3);
    assign sig_21 = ((~(~(((~(~((out_6 ^ in_3) & sig_21))) ^ sig_13) & out_6))) ^ sig_1);
    assign sig_11 = (sig_18 & (sig_21 ^ (out_5 & sig_11)));
    assign sig_26 = (~((~(sig_22 | (~(sig_4 | ((~(out_2 | (~((~(in_2 | in_2)) & sig_15)))) & sig_9))))) & sig_21));
    assign sig_14 = ((sig_14 ^ (~((((sig_17 | out_6) & sig_26) & out_2) | in_1))) ^ sig_25);
    assign out_7 = (sig_1 ^ (~(sig_20 & in_3)));
    assign sig_7 = (~(~((~(in_2 | sig_19)) | sig_17)));
    assign sig_6 = (~(sig_5 | (~(sig_15 & (in_0 | (~((~(~((~sig_1) & out_1))) & out_0)))))));
    assign sig_13 = ((~((~(((sig_5 & (~(~(sig_2 | out_7)))) ^ sig_10) | sig_4)) & sig_8)) | sig_18);
    assign sig_8 = (~((in_3 ^ in_2) & sig_9));

endmodule
