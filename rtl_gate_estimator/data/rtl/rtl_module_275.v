module rtl_module_275 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [1:0] in_2,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [2:0] out_2,
    output wire [7:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [1:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [7:0] sig_12;
    wire [3:0] sig_13;
    wire [5:0] sig_14;
    wire [4:0] sig_15;
    wire [3:0] sig_16;
    wire [2:0] sig_17;
    wire [6:0] sig_18;
    wire [0:0] sig_19;
    wire [3:0] sig_20;
    wire [2:0] sig_21;
    wire [2:0] sig_22;

    // Logic assignments
    assign out_0 = (~((~(~(~((in_1 & (sig_0 & ((~sig_21) | sig_14))) | sig_14)))) | sig_6));
    assign out_1 = (~(sig_9 & (~((~(sig_1 & (in_2 ^ (~(sig_0 & (in_1 | sig_18)))))) & sig_13))));
    assign out_2 = (~((~(sig_16 & sig_19)) & sig_19));
    assign out_3 = (out_0 & ((~(sig_15 & sig_8)) & sig_4));
    assign out_0 = (sig_16 | (~((~((sig_18 ^ sig_16) | sig_21)) | sig_0)));
    assign sig_16 = (~(out_3 & (~((sig_15 | (sig_4 ^ sig_21)) | sig_19))));
    assign sig_20 = (sig_16 & (sig_16 ^ ((~(sig_15 | (out_0 | sig_22))) ^ out_2)));

endmodule
