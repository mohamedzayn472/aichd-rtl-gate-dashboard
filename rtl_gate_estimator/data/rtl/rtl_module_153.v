module rtl_module_153 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [1:0] out_2,
    output wire [0:0] out_3,
    output wire [1:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [3:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [7:0] sig_11;
    wire [2:0] sig_12;
    wire [2:0] sig_13;
    wire [3:0] sig_14;
    wire [5:0] sig_15;
    wire [0:0] sig_16;
    wire [2:0] sig_17;
    wire [3:0] sig_18;
    wire [0:0] sig_19;
    wire [3:0] sig_20;
    wire [4:0] sig_21;
    wire [2:0] sig_22;

    // Logic assignments
    assign out_0 = (in_1 | (~(sig_6 ^ (out_1 | sig_4))));
    assign out_1 = (~(~(sig_22 | sig_11)));
    assign out_2 = (~(~((~(~(sig_1 & (~(~(sig_14 | (~((in_0 ^ sig_12) | in_0)))))))) & sig_21)));
    assign out_3 = ((~((~(sig_18 & (sig_15 & sig_15))) & sig_3)) ^ sig_3);
    assign out_4 = ((~((~(~(in_0 | sig_7))) & sig_15)) | sig_19);
    assign out_5 = ((~(sig_5 | (~(sig_12 & (~(~((~(sig_7 & (~((~sig_3) | sig_9)))) & sig_20))))))) & sig_0);
    assign out_3 = ((~(~((~(~(sig_0 | (sig_19 ^ sig_12)))) | sig_16))) | sig_22);
    assign sig_10 = (~(((~(((out_1 & ((sig_18 & sig_4) & sig_17)) ^ out_3) & sig_8)) | sig_11) | out_2));
    assign sig_18 = (in_0 | (sig_19 & sig_13));
    assign sig_18 = (sig_15 & (~(sig_18 & (~((sig_8 ^ sig_5) & sig_11)))));
    assign sig_11 = (sig_16 | ((sig_9 ^ (~((out_5 ^ (~(out_0 & out_2))) | sig_2))) & sig_11));
    assign sig_14 = (out_3 | (~(sig_19 ^ (in_0 ^ (~(sig_2 | sig_3))))));
    assign sig_1 = (sig_12 & (sig_3 ^ (~((((out_1 & ((sig_21 | sig_21) | sig_9)) | sig_1) | sig_11) | out_5))));
    assign sig_18 = (~(out_5 | (~(~((~(sig_0 & (sig_18 | (~sig_3)))) & sig_11)))));

endmodule
