module rtl_module_48 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2,
    output wire [5:0] out_3,
    output wire [6:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [4:0] sig_13;
    wire [0:0] sig_14;
    wire [7:0] sig_15;
    wire [2:0] sig_16;
    wire [7:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;

    // Logic assignments
    assign out_0 = (~(sig_6 | (~(sig_13 & (sig_1 | (~((~sig_1) & sig_6)))))));
    assign out_1 = ((out_1 ^ sig_11) ^ sig_17);
    assign out_2 = (~(~(((~(sig_11 & sig_8)) ^ sig_5) ^ sig_0)));
    assign out_3 = (sig_4 | (~((~(out_2 & (sig_12 | sig_8))) & sig_16)));
    assign out_4 = (sig_2 & ((in_1 & (sig_11 & (~(in_3 | (sig_14 & (~(sig_10 & (~in_3)))))))) & out_2));
    assign out_5 = (~((sig_15 | (~(sig_8 & (out_0 ^ out_5)))) & sig_18));
    assign sig_11 = ((~(sig_18 & (out_1 ^ ((~((((~sig_16) ^ sig_2) ^ out_4) | in_0)) ^ out_0)))) | sig_5);
    assign sig_18 = ((~((~(out_0 | (~(sig_7 & sig_15)))) & sig_8)) | sig_15);
    assign out_3 = (~(sig_17 ^ (~(sig_0 & sig_8))));
    assign sig_16 = (~(sig_15 | (~(sig_7 & out_0))));
    assign sig_17 = ((sig_15 | (in_2 & in_0)) ^ in_4);

endmodule
