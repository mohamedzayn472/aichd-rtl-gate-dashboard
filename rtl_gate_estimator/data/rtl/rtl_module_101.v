module rtl_module_101 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    output wire [7:0] out_0,
    output wire [3:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [5:0] sig_9;
    wire [0:0] sig_10;
    wire [2:0] sig_11;
    wire [6:0] sig_12;
    wire [0:0] sig_13;
    wire [5:0] sig_14;
    wire [2:0] sig_15;
    wire [1:0] sig_16;
    wire [0:0] sig_17;
    wire [2:0] sig_18;
    wire [6:0] sig_19;

    // Logic assignments
    assign out_0 = (~(~sig_7));
    assign out_1 = (~((sig_4 & (sig_15 & (~(in_0 & (sig_1 | (sig_15 ^ sig_6)))))) & out_3));
    assign out_2 = ((~((~(out_1 & (~(sig_6 & (sig_17 | sig_17))))) | sig_15)) ^ sig_5);
    assign out_3 = ((out_2 & ((sig_10 & (in_1 | sig_19)) & sig_10)) ^ sig_18);
    assign sig_11 = (((~((sig_19 ^ (~(sig_12 & sig_4))) & sig_7)) & sig_16) ^ out_2);
    assign out_3 = (~(sig_18 | (sig_14 & sig_13)));
    assign sig_0 = (~((sig_9 | sig_11) | sig_1));

endmodule
