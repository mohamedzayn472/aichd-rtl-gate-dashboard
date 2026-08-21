module rtl_module_221 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [6:0] in_5,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [2:0] out_2,
    output wire [6:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;
    wire [3:0] sig_7;
    wire [7:0] sig_8;
    wire [0:0] sig_9;
    wire [3:0] sig_10;
    wire [1:0] sig_11;
    wire [0:0] sig_12;
    wire [5:0] sig_13;
    wire [6:0] sig_14;
    wire [6:0] sig_15;

    // Logic assignments
    assign out_0 = (sig_5 & ((sig_14 & (~(out_0 | ((sig_12 ^ ((sig_6 & sig_8) | sig_1)) | sig_8)))) ^ sig_7));
    assign out_1 = ((~(sig_1 & ((~((sig_7 | (~(in_5 | sig_2))) & sig_8)) & sig_15))) & in_2);
    assign out_2 = (~(sig_5 & (sig_0 ^ sig_3)));
    assign out_3 = (~(((~(~(in_3 | (~(in_4 & sig_7))))) & sig_3) | in_5));
    assign out_4 = ((~(~(out_3 & sig_9))) ^ out_1);
    assign sig_3 = (sig_10 ^ (in_3 ^ (~(sig_8 ^ sig_0))));
    assign out_2 = (~(~(sig_14 | sig_9)));
    assign sig_0 = (~(sig_10 | (~((~((sig_9 ^ (sig_11 | (~(sig_0 & in_1)))) & in_3)) & sig_7))));
    assign sig_8 = (~((~(in_1 | sig_13)) & sig_15));
    assign sig_9 = (~(sig_0 | (out_3 | (~(in_1 & (~(sig_2 & (sig_7 | in_2))))))));
    assign sig_13 = (sig_14 | (in_0 & (in_0 ^ (~((sig_10 | (~(sig_12 | (in_4 & (~(in_2 & sig_0)))))) & in_0)))));
    assign sig_7 = (~(sig_11 & ((~(sig_2 | (sig_6 & sig_3))) & out_1)));
    assign sig_13 = (sig_5 & ((out_2 | (~(sig_9 | (~(~(in_4 | out_0)))))) | sig_11));
    assign out_2 = ((~((~(sig_11 & sig_1)) | in_5)) ^ sig_6);
    assign sig_13 = (~((sig_1 | sig_10) | out_1));
    assign out_0 = (~(out_0 & ((~(sig_13 & (~sig_3))) | sig_9)));
    assign out_0 = (sig_14 & (((~(sig_10 | ((sig_12 | in_2) & sig_11))) ^ sig_1) & sig_14));
    assign out_4 = (sig_7 | (sig_1 & (~(sig_1 & (sig_7 | ((~sig_14) | sig_10))))));
    assign sig_4 = (((~in_5) & sig_14) | sig_10);
    assign sig_2 = (~(~(in_2 | (sig_9 | (out_4 | in_1)))));
    assign sig_8 = (~((((~(in_4 | in_2)) ^ in_0) & sig_8) & in_5));

endmodule
