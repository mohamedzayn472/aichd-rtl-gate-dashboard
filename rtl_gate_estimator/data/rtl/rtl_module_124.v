module rtl_module_124 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [5:0] in_4,
    input wire [6:0] in_5,
    output wire [7:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [6:0] sig_12;
    wire [5:0] sig_13;
    wire [0:0] sig_14;

    // Logic assignments
    assign out_0 = ((~(sig_7 | (sig_6 & ((sig_14 ^ sig_2) & sig_1)))) & sig_2);
    assign out_1 = (~((~((out_4 & ((~(sig_11 | (~sig_7))) & out_0)) & sig_9)) & in_4));
    assign out_2 = (((~((~((sig_5 & in_3) | out_0)) & sig_1)) | in_4) | sig_11);
    assign out_3 = (~((sig_4 ^ sig_9) & sig_10));
    assign out_4 = (~(in_3 & (~(((sig_13 & ((in_1 ^ in_2) & sig_11)) ^ sig_1) & out_4))));
    assign sig_11 = ((sig_14 ^ ((in_0 ^ (~(in_4 | (sig_14 | out_3)))) | sig_7)) & out_0);
    assign out_0 = (out_1 & (~(sig_3 & (~(~(((in_4 & sig_11) | in_2) & sig_3))))));
    assign sig_7 = ((~((in_3 ^ (out_3 | out_4)) & sig_2)) & sig_11);
    assign sig_14 = (~((~((sig_10 | (~(in_1 & in_5))) | sig_13)) | sig_6));
    assign sig_11 = (~((~(out_0 | (~(((~(sig_8 | sig_1)) & out_3) | in_4)))) & out_1));
    assign sig_7 = (~(in_0 | (~(~(sig_12 & (~(((((~(sig_5 & sig_4)) ^ out_4) ^ sig_12) & out_3) & out_3)))))));

endmodule
