module rtl_module_444 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    input wire [4:0] in_3,
    input wire [4:0] in_4,
    input wire [5:0] in_5,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [5:0] out_4,
    output wire [4:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [2:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [1:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [4:0] sig_12;
    wire [0:0] sig_13;
    wire [4:0] sig_14;
    wire [6:0] sig_15;
    wire [5:0] sig_16;
    wire [1:0] sig_17;
    wire [4:0] sig_18;
    wire [4:0] sig_19;
    wire [4:0] sig_20;

    // Logic assignments
    assign out_0 = (sig_8 ^ (~(sig_14 & ((out_5 ^ (~(sig_14 | sig_4))) & sig_19))));
    assign out_1 = (out_0 | ((~(~(sig_12 & sig_3))) & sig_0));
    assign out_2 = (~(((~(out_1 & (sig_2 | (~(sig_7 & out_4))))) ^ sig_17) ^ sig_3));
    assign out_3 = ((sig_7 ^ in_0) | sig_7);
    assign out_4 = (out_2 | (out_3 ^ sig_2));
    assign out_5 = (~(in_4 ^ out_3));
    assign out_6 = (~(sig_5 & (~(((~(in_0 | ((out_4 | out_2) | sig_17))) & out_6) | out_2))));
    assign sig_7 = (sig_16 & (~(in_3 & (~(sig_17 & sig_11)))));
    assign sig_18 = (~((~((~((~((~(((~(sig_0 & sig_1)) & sig_11) | sig_1)) | sig_9)) & in_0)) & sig_6)) | sig_14));
    assign out_4 = ((((~(sig_0 & out_2)) ^ out_1) | in_0) | sig_7);
    assign sig_4 = ((~(((in_5 & out_2) & sig_18) | sig_2)) | sig_8);
    assign sig_16 = (~(out_0 | (~((in_5 ^ (sig_1 ^ (~(~(in_1 & sig_9))))) | sig_4))));
    assign sig_2 = ((out_5 ^ sig_1) | sig_5);
    assign sig_5 = ((~((~((sig_5 ^ in_2) & in_4)) | sig_7)) ^ out_2);
    assign sig_18 = ((~(~(sig_0 ^ in_3))) & in_3);
    assign sig_8 = (((~(~sig_18)) | in_3) & sig_2);
    assign sig_12 = ((~(in_1 ^ in_5)) ^ in_1);
    assign out_6 = (~(sig_11 & (in_5 ^ (~(out_1 ^ (sig_9 | out_3))))));

endmodule
