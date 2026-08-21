module rtl_module_370 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    input wire [4:0] in_5,
    input wire [4:0] in_6,
    input wire [0:0] in_7,
    output wire [4:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [7:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [7:0] sig_13;
    wire [1:0] sig_14;
    wire [7:0] sig_15;
    wire [3:0] sig_16;
    wire [6:0] sig_17;
    wire [1:0] sig_18;
    wire [5:0] sig_19;
    wire [7:0] sig_20;
    wire [5:0] sig_21;
    wire [2:0] sig_22;
    wire [4:0] sig_23;
    wire [5:0] sig_24;
    wire [2:0] sig_25;
    wire [1:0] sig_26;
    wire [6:0] sig_27;
    wire [4:0] sig_28;
    wire [2:0] sig_29;
    wire [0:0] sig_30;

    // Logic assignments
    assign out_0 = (~(out_4 | (~(in_3 & sig_25))));
    assign out_1 = ((sig_11 ^ (~((~(in_7 & (~(in_5 | (in_5 ^ sig_0))))) | out_5))) ^ sig_7);
    assign out_2 = (sig_16 & (~((~(~((~(sig_18 | (~(sig_8 & sig_1)))) & in_2))) | sig_21)));
    assign out_3 = (~((sig_6 ^ sig_4) | out_4));
    assign out_4 = (sig_16 | (~((~((~(out_1 | (~(in_4 & (~(sig_18 & out_5)))))) & sig_5)) | sig_19)));
    assign out_5 = (((sig_12 ^ (~(((in_4 | sig_29) ^ sig_29) | sig_22))) ^ sig_9) & sig_23);
    assign sig_3 = (~(sig_22 | ((~((in_0 & (~(sig_13 | sig_9))) | sig_29)) | sig_8)));
    assign sig_27 = ((~((sig_8 ^ (~((~(sig_12 | sig_1)) & sig_28))) ^ sig_24)) ^ sig_12);
    assign out_3 = ((in_0 | sig_3) & sig_20);
    assign sig_24 = (out_3 | ((~((~(sig_23 | out_3)) | out_0)) & sig_18));
    assign sig_16 = ((sig_1 | (in_7 ^ out_3)) | sig_7);
    assign sig_15 = (~(out_2 & ((~((sig_18 | (~out_0)) ^ sig_22)) | sig_30)));
    assign sig_12 = ((~(~(sig_9 & (~(sig_5 & ((sig_0 | sig_22) | in_5)))))) ^ in_7);
    assign sig_9 = ((sig_14 | ((~sig_11) ^ sig_25)) & sig_3);
    assign sig_3 = (~(out_1 | (~(sig_7 & (~(out_1 & ((~((~(in_0 & sig_25)) | sig_9)) & sig_17)))))));
    assign sig_3 = (~(sig_28 | (~sig_27)));

endmodule
