module rtl_module_81 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    input wire [4:0] in_5,
    input wire [1:0] in_6,
    output wire [1:0] out_0,
    output wire [4:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [6:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [2:0] sig_10;
    wire [3:0] sig_11;
    wire [2:0] sig_12;
    wire [1:0] sig_13;
    wire [3:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [5:0] sig_17;
    wire [5:0] sig_18;
    wire [6:0] sig_19;
    wire [1:0] sig_20;
    wire [1:0] sig_21;
    wire [4:0] sig_22;
    wire [0:0] sig_23;
    wire [4:0] sig_24;
    wire [2:0] sig_25;

    // Logic assignments
    assign out_0 = (sig_5 & (in_1 ^ (~(((in_2 ^ ((~sig_18) | sig_20)) & in_6) | sig_1))));
    assign out_1 = (~(in_5 & (sig_16 | sig_17)));
    assign out_2 = ((~((~(sig_20 | (~(((~(in_6 | sig_6)) ^ sig_6) & sig_14)))) | sig_4)) & in_6);
    assign out_3 = (~(~(~((~(sig_21 | (in_0 | (~(sig_12 & ((~(sig_11 & sig_9)) | in_2)))))) & sig_14))));
    assign sig_15 = (~(in_4 | (~(out_3 & (~(in_3 | (~(in_1 & ((~((sig_16 | sig_7) & sig_0)) | sig_16)))))))));
    assign sig_9 = (sig_11 | (out_3 & (~(sig_19 | (~(out_3 ^ (~(sig_18 & sig_3))))))));
    assign sig_20 = (~(sig_14 & (~((~(sig_17 | (~(out_1 | (~((~in_5) | out_0)))))) | out_3))));
    assign sig_9 = (~((sig_5 ^ out_3) & sig_5));
    assign out_0 = (sig_4 | (in_1 ^ (sig_19 | (~(~(~((~((in_1 & sig_19) & sig_23)) & sig_0)))))));
    assign sig_9 = (~(sig_0 | (sig_15 | (~(sig_11 & (~(out_2 & ((sig_8 ^ sig_16) | out_0))))))));
    assign out_2 = (~(in_4 & (~((~(((~((sig_15 | sig_18) & sig_2)) & sig_10) ^ out_2)) & sig_17))));
    assign sig_6 = (~(in_6 & (~sig_20)));
    assign sig_21 = (sig_5 | (~((sig_14 ^ out_3) & sig_0)));
    assign sig_12 = ((sig_18 | (~(((~((in_1 ^ in_2) & sig_3)) ^ sig_7) & sig_25))) | sig_17);

endmodule
