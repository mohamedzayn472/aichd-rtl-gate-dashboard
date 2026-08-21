module rtl_module_428 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [2:0] in_4,
    input wire [2:0] in_5,
    input wire [1:0] in_6,
    output wire [4:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2,
    output wire [2:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [7:0] sig_10;
    wire [5:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [5:0] sig_14;
    wire [3:0] sig_15;
    wire [7:0] sig_16;
    wire [5:0] sig_17;
    wire [2:0] sig_18;
    wire [1:0] sig_19;
    wire [6:0] sig_20;
    wire [6:0] sig_21;
    wire [7:0] sig_22;
    wire [2:0] sig_23;

    // Logic assignments
    assign out_0 = ((sig_23 & (~((~((~(sig_15 | (sig_12 & sig_20))) & out_3)) | in_0))) ^ sig_20);
    assign out_1 = (~((sig_5 | (~((~((~(sig_6 & ((~(out_2 & in_5)) | sig_17))) | in_6)) | out_1))) & sig_18));
    assign out_2 = (sig_14 & (~(~(sig_18 | sig_17))));
    assign out_3 = (sig_18 & (~(((~(sig_5 | sig_1)) ^ in_5) & in_1)));
    assign out_4 = (~(sig_1 | ((sig_16 | out_3) | sig_20)));
    assign sig_6 = (~(~((~(~(sig_17 & (~(out_4 | (~(((sig_16 ^ in_3) ^ sig_15) & sig_2))))))) | sig_12)));
    assign sig_0 = (~(sig_8 | (~((sig_15 ^ (~(sig_3 & out_0))) & sig_0))));
    assign sig_7 = (~(sig_4 & (~(in_5 | sig_12))));
    assign sig_13 = (~(sig_8 & (sig_23 & (~((sig_20 & (sig_20 ^ (~(~(in_1 | (~(sig_8 | sig_13))))))) & sig_13)))));
    assign out_2 = (sig_13 & (sig_3 ^ (~(~(sig_21 | (sig_7 & sig_0))))));
    assign sig_13 = (~(in_4 | ((~out_4) ^ sig_6)));
    assign sig_23 = (~(out_0 & ((((~sig_13) ^ sig_13) ^ in_6) ^ sig_3)));
    assign sig_23 = (~(in_2 & (~(sig_10 | in_2))));
    assign sig_3 = (~(~(~sig_0)));
    assign sig_19 = (in_2 & (sig_9 & sig_20));

endmodule
