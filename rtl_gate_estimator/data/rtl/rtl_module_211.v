module rtl_module_211 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [1:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5,
    output wire [5:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [1:0] sig_1;
    wire [2:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;
    wire [3:0] sig_15;
    wire [3:0] sig_16;

    // Logic assignments
    assign out_0 = (~((~((((~(sig_13 & (~((sig_11 ^ (~sig_3)) & sig_3)))) | sig_6) ^ sig_3) | out_2)) | sig_10));
    assign out_1 = (~((sig_2 & (~sig_14)) | sig_8));
    assign out_2 = (sig_15 ^ (sig_2 ^ sig_1));
    assign out_3 = (~((~(sig_8 | ((~(out_1 | out_3)) ^ out_1))) | out_1));
    assign out_4 = (~(~(((~((~(sig_1 & (~((~(sig_14 & out_5)) | sig_15)))) | sig_9)) | sig_12) & sig_4)));
    assign out_5 = (~(~((sig_15 & ((out_6 ^ (sig_8 & sig_10)) & sig_15)) & sig_8)));
    assign out_6 = (~((sig_0 ^ (in_3 & (~(((~((out_0 & sig_12) | in_0)) ^ sig_4) | in_0)))) | out_4));
    assign out_5 = (~((sig_9 | sig_7) & in_3));
    assign sig_12 = ((sig_2 ^ (in_2 & sig_14)) ^ out_0);
    assign sig_3 = ((~(in_2 & (out_2 ^ (in_1 ^ (~(~(in_2 | out_5))))))) ^ out_1);
    assign out_1 = ((~(in_0 ^ sig_9)) & sig_3);
    assign sig_3 = (~(sig_5 | (~(out_0 | (~(((~(out_4 & sig_11)) | in_1) | out_6))))));
    assign sig_13 = (out_0 & (~(sig_1 & (~(sig_1 & out_6)))));
    assign sig_0 = (~(sig_2 & sig_12));
    assign sig_8 = (~(out_5 | (~((~(~((sig_13 | (~((in_2 ^ out_6) | sig_4))) & out_5))) & sig_11))));
    assign sig_0 = ((out_4 ^ (sig_15 ^ ((in_1 & (out_5 ^ (~(sig_6 | (in_2 | out_1))))) & sig_0))) & out_6);

endmodule
