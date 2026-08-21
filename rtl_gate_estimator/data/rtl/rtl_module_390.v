module rtl_module_390 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [1:0] in_3,
    input wire [1:0] in_4,
    input wire [0:0] in_5,
    input wire [2:0] in_6,
    input wire [2:0] in_7,
    output wire [0:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [2:0] out_3,
    output wire [1:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;
    wire [3:0] sig_12;
    wire [3:0] sig_13;
    wire [0:0] sig_14;
    wire [0:0] sig_15;

    // Logic assignments
    assign out_0 = (~((~((in_5 ^ in_3) | in_0)) & out_2));
    assign out_1 = (out_3 & (~((~(sig_8 | sig_4)) ^ sig_4)));
    assign out_2 = (~(sig_4 & (~(((out_3 ^ (~(~(sig_5 | sig_11)))) | sig_10) | sig_15))));
    assign out_3 = (~(((sig_5 ^ (out_0 ^ (sig_12 & (~(sig_9 | in_5))))) & sig_11) & sig_9));
    assign out_4 = (~(sig_0 & (~((~((((~(in_6 & sig_8)) | sig_7) ^ in_7) | in_1)) | in_5))));
    assign out_5 = (~((sig_5 ^ sig_1) & sig_12));
    assign sig_10 = (out_2 | (sig_2 & (sig_4 | (sig_6 ^ (~((out_0 | out_0) & out_5))))));
    assign sig_10 = ((out_5 ^ (~((~(out_2 & (~(sig_2 | sig_0)))) | in_7))) | sig_5);
    assign sig_11 = ((in_2 & (~(out_3 | out_0))) | sig_6);
    assign sig_6 = (~(in_0 | (out_0 ^ (~(in_6 & (sig_5 ^ (((sig_3 & sig_0) | sig_0) ^ in_1)))))));
    assign sig_12 = (in_5 & (out_1 | ((~((~(out_1 | (~((~sig_14) & sig_4)))) | sig_11)) & sig_14)));
    assign sig_0 = ((~((~(~(~(sig_7 & (~((~sig_10) & sig_3)))))) | out_3)) | sig_2);
    assign sig_5 = ((~(in_6 | (in_0 & (~((sig_8 | out_3) | out_5))))) | out_2);
    assign sig_1 = (((~((sig_9 | (~((out_0 | in_3) & in_0))) & sig_8)) & in_3) & out_4);
    assign sig_14 = (~(out_5 & (in_4 | (~(((in_2 & out_1) ^ out_4) ^ sig_15)))));

endmodule
