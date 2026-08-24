module rtl_module_287 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [5:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [6:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [4:0] sig_13;
    wire [3:0] sig_14;
    wire [6:0] sig_15;
    wire [3:0] sig_16;
    wire [2:0] sig_17;
    wire [7:0] sig_18;
    wire [0:0] sig_19;
    wire [5:0] sig_20;
    wire [6:0] sig_21;
    wire [1:0] sig_22;
    wire [4:0] sig_23;
    wire [6:0] sig_24;
    wire [5:0] sig_25;
    wire [3:0] sig_26;
    wire [4:0] sig_27;
    wire [4:0] sig_28;
    wire [2:0] sig_29;
    wire [0:0] sig_30;
    wire [0:0] sig_31;

    // Logic assignments
    assign out_0 = (~((~(~((~(~((sig_19 & sig_4) | sig_16))) ^ out_0))) & sig_29));
    assign out_1 = (out_0 & (sig_7 ^ (~(sig_12 ^ (~(((sig_16 | sig_10) & sig_31) | sig_30))))));
    assign out_2 = (~(~(~((in_3 | (out_1 | sig_27)) | sig_4))));
    assign out_3 = (((~((~((~(sig_0 & out_3)) | sig_27)) & sig_19)) & out_2) & sig_13);
    assign out_4 = (~((sig_28 ^ (~((~(sig_3 ^ (~((~((sig_17 & sig_4) & sig_7)) & out_3)))) & sig_9))) | in_2));
    assign out_5 = ((~(sig_31 | (~(~(~((~(sig_5 | (~((sig_3 ^ sig_10) | sig_0)))) | sig_4)))))) & sig_14);
    assign sig_12 = (~((sig_21 ^ (~((((sig_1 ^ sig_11) & sig_24) | sig_1) | sig_23))) & sig_7));
    assign sig_25 = (~(sig_17 ^ sig_28));
    assign sig_9 = (~((sig_4 ^ (sig_5 ^ sig_22)) ^ sig_11));
    assign sig_30 = ((sig_0 | (~(~(((sig_23 & (sig_18 & in_0)) ^ in_2) | in_0)))) & sig_7);

endmodule
