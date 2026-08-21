module rtl_module_222 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    input wire [5:0] in_4,
    input wire [6:0] in_5,
    output wire [2:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [6:0] sig_6;
    wire [0:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [6:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [4:0] sig_18;
    wire [1:0] sig_19;
    wire [6:0] sig_20;
    wire [4:0] sig_21;
    wire [3:0] sig_22;
    wire [6:0] sig_23;
    wire [6:0] sig_24;
    wire [3:0] sig_25;
    wire [3:0] sig_26;

    // Logic assignments
    assign out_0 = ((~(sig_11 & (sig_17 ^ (sig_25 ^ (sig_15 | sig_24))))) & sig_26);
    assign out_1 = (~(sig_13 & (~(sig_26 | sig_6))));
    assign out_2 = (sig_24 | ((~((~((sig_2 ^ sig_11) & in_0)) & sig_18)) | in_3));
    assign out_3 = (~(in_0 & (sig_19 ^ (~(out_1 & out_2)))));
    assign sig_14 = (~((sig_26 | (~(out_2 & (((sig_26 | in_1) & sig_25) ^ sig_4)))) | sig_14));
    assign sig_3 = (~(sig_23 & (~sig_0)));
    assign sig_0 = (~(~((~((~(((~(sig_24 & ((~(in_5 | sig_9)) | sig_13))) | sig_12) & in_2)) | sig_19)) | sig_17)));
    assign sig_15 = (~(sig_25 & (~(in_0 | (~(sig_3 | out_2))))));
    assign sig_24 = (sig_15 ^ (~in_3));
    assign sig_15 = (~(in_1 & (~((~(sig_12 | sig_1)) | sig_19))));
    assign out_2 = ((~(~(in_1 | ((~(sig_6 | sig_15)) & sig_22)))) & sig_4);
    assign sig_22 = (~(~((~(~(in_5 | sig_26))) & sig_7)));

endmodule
