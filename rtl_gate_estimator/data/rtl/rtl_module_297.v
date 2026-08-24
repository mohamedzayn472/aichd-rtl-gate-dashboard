module rtl_module_297 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [1:0] in_5,
    input wire [1:0] in_6,
    input wire [0:0] in_7,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [0:0] out_3,
    output wire [3:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [0:0] sig_4;
    wire [4:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [4:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [7:0] sig_15;
    wire [4:0] sig_16;
    wire [0:0] sig_17;
    wire [3:0] sig_18;
    wire [0:0] sig_19;

    // Logic assignments
    assign out_0 = ((~(~(~((~((~(out_4 | sig_1)) & sig_2)) & in_1)))) & in_7);
    assign out_1 = (sig_15 | ((in_6 & (~(sig_16 & (~(sig_8 ^ (sig_0 | sig_7)))))) & in_7));
    assign out_2 = (~(((((sig_16 | (~(sig_4 ^ sig_1))) ^ out_2) | sig_13) & sig_0) & sig_1));
    assign out_3 = (in_1 ^ (in_6 ^ in_4));
    assign out_4 = (~(out_3 & in_6));
    assign sig_12 = (~(sig_12 & (sig_8 | (sig_15 & (sig_7 & (out_0 ^ (sig_19 | (in_4 | sig_11))))))));
    assign sig_3 = (~(sig_12 & sig_11));
    assign sig_4 = (~((sig_0 & (~((sig_12 ^ (sig_12 ^ sig_5)) & sig_1))) | sig_15));
    assign sig_3 = (~(sig_14 & (~(sig_15 & (~((sig_3 ^ in_2) | sig_0))))));
    assign out_2 = (~((~((~(sig_2 | sig_13)) | in_1)) | out_3));
    assign sig_15 = (~(sig_9 | (~(((~((~(sig_10 | (~((~sig_5) | sig_15)))) & sig_14)) & out_2) & out_2))));
    assign sig_8 = (~((sig_15 | (((~((out_4 & (sig_19 & in_0)) ^ sig_16)) ^ sig_19) & out_1)) & out_3));
    assign sig_7 = (~(((~(sig_14 | (sig_8 ^ (~(sig_2 | (~((~(in_6 & sig_0)) & sig_8))))))) ^ sig_19) & sig_19));
    assign sig_19 = ((sig_17 | (~((~(in_6 | (sig_15 ^ (~(sig_17 & (~sig_1)))))) | sig_10))) | sig_5);

endmodule
