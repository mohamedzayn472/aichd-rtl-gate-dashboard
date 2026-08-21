module rtl_module_102 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    output wire [7:0] out_0,
    output wire [4:0] out_1,
    output wire [5:0] out_2,
    output wire [6:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [7:0] sig_11;
    wire [2:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [2:0] sig_15;
    wire [2:0] sig_16;
    wire [2:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;

    // Logic assignments
    assign out_0 = (~((~(sig_7 | (sig_17 ^ (~(sig_5 & (sig_11 ^ (~sig_5))))))) | sig_15));
    assign out_1 = (((~(sig_3 & sig_6)) | out_2) & sig_0);
    assign out_2 = (sig_16 ^ (out_0 | ((in_2 | (~(in_2 | (~(sig_0 & (in_0 & sig_19)))))) & out_0)));
    assign out_3 = ((~(sig_18 ^ (~(sig_7 & (~(sig_13 | sig_19)))))) | sig_13);
    assign out_4 = (~((~(sig_0 | (sig_17 ^ sig_1))) & sig_6));
    assign sig_3 = (sig_5 ^ (~((~(in_1 & ((~in_2) & in_1))) ^ sig_16)));
    assign sig_8 = (~((sig_7 ^ (~(sig_7 | out_0))) ^ sig_5));
    assign sig_16 = (~(sig_11 | (~((out_4 ^ ((~((sig_5 ^ sig_14) & sig_14)) & sig_4)) | in_1))));
    assign sig_0 = (((~(sig_2 & sig_9)) & out_1) | sig_2);

endmodule
