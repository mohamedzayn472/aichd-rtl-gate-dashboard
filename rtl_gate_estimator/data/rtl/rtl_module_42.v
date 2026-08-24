module rtl_module_42 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [0:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;
    wire [7:0] sig_15;
    wire [0:0] sig_16;
    wire [7:0] sig_17;
    wire [2:0] sig_18;
    wire [3:0] sig_19;
    wire [5:0] sig_20;
    wire [7:0] sig_21;
    wire [4:0] sig_22;
    wire [5:0] sig_23;
    wire [2:0] sig_24;

    // Logic assignments
    assign out_0 = (~(sig_17 & (~((((~(sig_0 | ((~(~sig_5)) & in_0))) | sig_3) | sig_0) | sig_17))));
    assign out_1 = ((out_1 | (sig_15 | sig_16)) ^ sig_15);
    assign out_2 = (sig_16 & ((~(sig_20 & (~(out_5 & sig_4)))) & sig_15));
    assign out_3 = (((~(sig_19 & out_1)) ^ in_1) & sig_1);
    assign out_4 = (sig_9 & (~sig_23));
    assign out_5 = (~((~(sig_3 | (~(out_2 | (~(~(sig_3 & (sig_19 ^ sig_17)))))))) | out_2));
    assign sig_9 = (~((~((~(~((sig_19 | (sig_14 | sig_21)) | sig_18))) | in_1)) | sig_5));
    assign sig_14 = (out_0 | (((~(sig_13 & (~(((~(sig_2 & (sig_23 & sig_4))) | out_2) & sig_24)))) ^ out_3) ^ sig_19));

endmodule
