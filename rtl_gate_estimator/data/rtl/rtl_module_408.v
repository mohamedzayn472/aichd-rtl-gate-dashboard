module rtl_module_408 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [5:0] in_3,
    input wire [6:0] in_4,
    input wire [0:0] in_5,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2,
    output wire [5:0] out_3,
    output wire [5:0] out_4,
    output wire [3:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [7:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;
    wire [7:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [4:0] sig_17;
    wire [4:0] sig_18;
    wire [5:0] sig_19;
    wire [0:0] sig_20;
    wire [5:0] sig_21;
    wire [3:0] sig_22;
    wire [6:0] sig_23;
    wire [2:0] sig_24;
    wire [3:0] sig_25;
    wire [6:0] sig_26;
    wire [0:0] sig_27;
    wire [7:0] sig_28;
    wire [6:0] sig_29;
    wire [2:0] sig_30;
    wire [6:0] sig_31;

    // Logic assignments
    assign out_0 = (sig_12 & (~(~(sig_24 & (~((sig_2 ^ (~((~sig_10) & sig_20))) | in_4))))));
    assign out_1 = (~(~(out_0 | (~(sig_11 ^ sig_21)))));
    assign out_2 = (~((~(~((~(((in_0 & sig_22) | sig_11) & sig_20)) | out_6))) & sig_4));
    assign out_3 = (~(in_1 | (((sig_6 ^ (~sig_1)) | in_1) & in_0)));
    assign out_4 = (sig_4 & (~((~(sig_26 | ((~((~in_0) | sig_19)) & sig_8))) & out_3)));
    assign out_5 = (sig_14 & (in_1 ^ sig_31));
    assign out_6 = (~(~sig_6));
    assign out_1 = ((~(sig_12 & (~(sig_31 | sig_23)))) | sig_27);
    assign sig_26 = ((sig_15 | (~(~(out_3 & (sig_26 | (~(sig_31 & sig_8))))))) | sig_14);
    assign out_2 = (~((~(((~(((~out_0) | out_5) ^ sig_31)) | sig_15) | sig_13)) ^ sig_23));
    assign out_6 = (sig_7 & (~(~((sig_14 ^ (~(sig_12 | (~(sig_13 & (~((sig_29 ^ sig_30) | sig_18))))))) & in_2))));
    assign sig_23 = (~(sig_30 | (~((~(sig_28 | (sig_29 ^ (~((~((sig_1 & (out_0 ^ out_2)) & sig_10)) & in_0))))) | out_3))));
    assign sig_22 = (out_5 ^ (~(((~(sig_2 | sig_31)) | out_6) & sig_31)));
    assign out_0 = (~(sig_6 | (~(sig_24 & sig_6))));
    assign sig_31 = ((~(sig_3 | (((~(sig_30 | ((out_1 ^ sig_25) ^ sig_16))) | sig_25) & sig_13))) | sig_25);

endmodule
