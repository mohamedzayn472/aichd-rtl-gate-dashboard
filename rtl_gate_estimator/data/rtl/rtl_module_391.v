module rtl_module_391 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [5:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [2:0] sig_12;
    wire [4:0] sig_13;
    wire [2:0] sig_14;

    // Logic assignments
    assign out_0 = (in_3 & ((~(sig_1 | (~(sig_4 & sig_12)))) ^ out_0));
    assign out_1 = ((sig_10 & (sig_9 & out_1)) & out_4);
    assign out_2 = (((~(((out_3 & ((in_3 ^ out_0) | sig_7)) | sig_7) | sig_1)) ^ out_5) & sig_5);
    assign out_3 = (~(sig_4 & (sig_3 & out_5)));
    assign out_4 = (~((~(sig_14 | (~(out_1 & (((sig_3 & (~(sig_10 | sig_4))) ^ sig_14) & sig_3))))) & out_3));
    assign out_5 = (~(sig_12 | (~(out_1 & (~(sig_8 | sig_11))))));
    assign sig_13 = (~((~(sig_2 & (in_3 | sig_8))) | sig_0));
    assign out_5 = (~(sig_0 | (sig_6 & (~(out_3 & (out_2 & sig_10))))));
    assign sig_9 = (~((~(((out_4 ^ sig_6) & out_1) | out_2)) | sig_13));
    assign sig_0 = (~(~(sig_9 | sig_0)));
    assign sig_13 = ((~(out_5 & out_5)) & sig_11);
    assign sig_1 = (~(~(~(out_0 & (~(sig_2 & (~((~((~(out_2 & sig_8)) & sig_12)) & sig_5))))))));
    assign out_2 = (~((~(sig_3 & ((((~(sig_8 & (~(sig_5 & in_1)))) ^ sig_7) | out_4) ^ sig_13))) & sig_6));
    assign sig_10 = (in_2 | ((~(sig_1 | (in_2 | (((sig_6 ^ (sig_5 | in_2)) | sig_6) & sig_4)))) & out_1));
    assign sig_14 = (~((in_3 | (((sig_6 ^ (~((~out_1) | sig_7))) ^ out_2) & sig_8)) | out_4));
    assign sig_12 = ((out_5 & (~((~(out_1 & ((sig_5 & sig_11) & sig_1))) & sig_8))) & sig_6);

endmodule
