module rtl_module_76 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [4:0] in_3,
    input wire [1:0] in_4,
    input wire [6:0] in_5,
    input wire [2:0] in_6,
    output wire [3:0] out_0,
    output wire [6:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [4:0] sig_12;
    wire [1:0] sig_13;
    wire [1:0] sig_14;
    wire [1:0] sig_15;
    wire [5:0] sig_16;
    wire [5:0] sig_17;
    wire [0:0] sig_18;
    wire [3:0] sig_19;

    // Logic assignments
    assign out_0 = (sig_5 & (in_0 | sig_12));
    assign out_1 = ((in_2 ^ in_5) | out_3);
    assign out_2 = ((sig_15 ^ (sig_13 & (sig_18 ^ sig_11))) & in_6);
    assign out_3 = (~(sig_2 & (sig_7 & (~(in_5 & (in_5 | (sig_2 & (~((~out_3) & in_2)))))))));
    assign out_4 = (~((~((~(out_1 | sig_14)) & sig_14)) & out_0));
    assign out_2 = (~(sig_10 | (~(((~((~(sig_12 & (sig_2 & (in_6 | out_4)))) & in_5)) | out_2) | sig_11))));
    assign sig_11 = (sig_9 & (sig_9 | out_2));
    assign sig_14 = (in_2 | (sig_9 & (~(sig_19 & (~(((sig_19 ^ sig_18) ^ sig_1) & sig_13))))));
    assign out_0 = (~((sig_2 | in_0) | sig_11));
    assign sig_18 = (sig_4 & ((~(~(~(in_5 | sig_15)))) | out_2));
    assign sig_12 = (~(sig_13 | (~(sig_2 ^ (sig_2 & (((~(sig_6 & out_4)) ^ out_3) ^ out_2))))));
    assign sig_19 = (~(out_1 & ((~(~(((in_1 | out_0) & sig_4) | in_4))) ^ in_5)));
    assign sig_16 = (~(((in_5 | in_3) ^ out_0) | sig_12));
    assign sig_11 = (~(~(~((~(sig_17 | (sig_15 | out_0))) & sig_5))));
    assign out_1 = (~(in_0 & ((sig_0 ^ (~(out_4 | (~(out_2 | (~(sig_13 | in_0))))))) | sig_19)));
    assign sig_4 = (~(~((~((sig_5 & ((sig_3 | (~(sig_19 | sig_5))) & sig_6)) & in_0)) | sig_16)));

endmodule
