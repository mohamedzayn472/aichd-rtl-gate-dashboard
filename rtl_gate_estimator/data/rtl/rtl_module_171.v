module rtl_module_171 (
input wire [7:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [4:0] in_4,
    input wire [6:0] in_5,
    input wire [5:0] in_6,
    input wire [3:0] in_7,
    output wire [4:0] out_0,
    output wire [5:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [7:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [5:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [6:0] sig_14;
    wire [6:0] sig_15;

    // Logic assignments
    assign out_0 = (~((out_1 ^ out_0) | in_7));
    assign out_1 = ((in_0 & sig_3) ^ sig_4);
    assign out_2 = (~(out_1 | (((sig_1 ^ ((sig_12 & (~(out_3 | (sig_3 | sig_5)))) & in_6)) & sig_6) ^ sig_5)));
    assign out_3 = (~(~((out_2 & ((out_3 | out_3) | out_4)) | sig_11)));
    assign out_4 = (out_0 ^ (~(in_4 & out_1)));
    assign out_5 = (((((in_3 | (~(sig_7 | (~(~in_1))))) & sig_11) & sig_4) & sig_8) & out_4);
    assign out_2 = (~(sig_7 | (~(sig_0 & (out_3 | (((~in_2) & sig_0) | out_4))))));
    assign sig_6 = (out_5 ^ (in_2 & ((~((~(out_3 | (~(in_0 | (in_5 | (~in_1)))))) | sig_2)) ^ sig_7)));
    assign out_5 = (sig_4 | (~(in_7 & in_5)));
    assign sig_6 = (sig_15 & ((sig_8 | (~(~(sig_11 ^ sig_3)))) | sig_13));
    assign sig_7 = (~(~(in_2 & (~((sig_14 ^ out_5) & in_0)))));
    assign out_4 = (~(~(in_6 | (((sig_9 & (~((in_1 & sig_7) ^ sig_8))) & sig_1) ^ sig_15))));
    assign sig_7 = (~(((~(out_5 | sig_5)) ^ sig_13) & sig_13));
    assign sig_9 = (~(sig_6 & ((~(in_1 | sig_8)) | in_6)));
    assign out_0 = (~((~(sig_15 ^ in_7)) | sig_5));
    assign out_0 = (~(sig_15 | (~(sig_10 & (~(sig_9 & (sig_0 ^ sig_0)))))));
    assign sig_0 = (sig_14 | (~((sig_12 & sig_6) | sig_5)));
    assign sig_4 = (~((~(sig_11 & ((out_5 & (~(sig_3 | in_5))) & out_4))) & sig_4));
    assign sig_7 = (~((out_5 | in_7) & sig_4));
    assign sig_0 = ((~(~(sig_12 & sig_10))) & sig_3);
    assign sig_1 = (in_1 | (~((~(((((sig_12 | out_3) & in_6) & out_5) | in_0) | in_6)) | sig_9)));
    assign sig_12 = ((in_6 & (sig_1 ^ (~((in_1 & (~(in_1 | sig_10))) & sig_3)))) | sig_3);

endmodule
