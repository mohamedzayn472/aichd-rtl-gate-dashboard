module rtl_module_318 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [3:0] in_3,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2,
    output wire [3:0] out_3,
    output wire [0:0] out_4,
    output wire [7:0] out_5,
    output wire [4:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [7:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [4:0] sig_10;
    wire [6:0] sig_11;
    wire [5:0] sig_12;
    wire [0:0] sig_13;
    wire [2:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [1:0] sig_17;
    wire [1:0] sig_18;
    wire [3:0] sig_19;
    wire [7:0] sig_20;
    wire [6:0] sig_21;
    wire [1:0] sig_22;
    wire [0:0] sig_23;
    wire [1:0] sig_24;
    wire [1:0] sig_25;
    wire [3:0] sig_26;
    wire [7:0] sig_27;

    // Logic assignments
    assign out_0 = ((in_0 ^ sig_25) & sig_13);
    assign out_1 = (out_1 ^ ((((~((sig_0 | ((~sig_26) ^ sig_4)) | sig_17)) | sig_1) ^ sig_13) ^ sig_4));
    assign out_2 = ((~(sig_18 ^ sig_1)) & sig_23);
    assign out_3 = (sig_13 & ((sig_23 & (~((~((~(sig_25 & (~((~(sig_26 & sig_22)) | sig_2)))) & sig_6)) & out_0))) & sig_8));
    assign out_4 = (out_6 ^ (~(sig_0 & (~((in_2 & sig_27) & sig_25)))));
    assign out_5 = (~(~(~sig_11)));
    assign out_6 = (sig_8 & (sig_16 & sig_6));
    assign out_7 = ((~((sig_23 | ((in_2 ^ (~(sig_14 & (sig_18 ^ sig_3)))) | sig_27)) & sig_26)) ^ out_5);
    assign out_5 = ((sig_25 & (~(sig_16 & (~(out_4 & ((in_3 & sig_24) | in_2)))))) & in_2);
    assign sig_23 = (~(out_5 | (~(~sig_22))));
    assign sig_26 = (~(sig_27 | ((sig_7 | (sig_27 ^ (out_5 ^ sig_21))) | sig_26)));
    assign sig_13 = (((~(sig_20 & (sig_20 | (sig_21 & sig_23)))) ^ sig_7) & sig_12);
    assign sig_3 = (out_6 ^ (out_0 | (~(~(out_1 & (sig_21 ^ (~(in_0 | (~(sig_14 | sig_14))))))))));

endmodule
