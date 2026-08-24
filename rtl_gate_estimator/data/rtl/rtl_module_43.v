module rtl_module_43 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    input wire [5:0] in_5,
    input wire [1:0] in_6,
    input wire [7:0] in_7,
    output wire [2:0] out_0,
    output wire [4:0] out_1,
    output wire [6:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [3:0] sig_13;
    wire [3:0] sig_14;
    wire [5:0] sig_15;

    // Logic assignments
    assign out_0 = (~(in_0 | (sig_9 ^ ((~(in_4 & (sig_11 & sig_8))) & in_1))));
    assign out_1 = (sig_3 ^ (sig_4 & (((sig_5 | (~(~((~(sig_4 & sig_12)) | sig_4)))) & sig_13) ^ in_4)));
    assign out_2 = ((~((in_4 | in_0) | in_0)) ^ out_4);
    assign out_3 = (sig_6 | (sig_5 & (sig_14 | (~(sig_6 | (~out_3))))));
    assign out_4 = (~(~(sig_14 ^ (out_3 | (in_0 | (~sig_11))))));
    assign out_5 = (~(out_3 & (~(sig_15 & ((in_3 & (sig_7 & sig_10)) ^ sig_14)))));
    assign sig_8 = (~(sig_1 & (sig_9 & (~(in_2 & (~(sig_13 & (sig_7 & in_7))))))));
    assign sig_10 = ((~(~(~((~(~(sig_15 & sig_2))) & out_1)))) & in_5);
    assign out_3 = (in_2 ^ (~((~((out_1 ^ (sig_13 & (~(in_5 | (~sig_10))))) & in_0)) | in_2)));
    assign sig_8 = (in_4 | (~(out_5 & (in_3 ^ (out_3 ^ sig_0)))));
    assign sig_11 = (((~((out_0 | (~(in_4 | (~(sig_11 & (in_2 & sig_2)))))) | out_0)) ^ sig_13) | sig_12);
    assign out_2 = (((~(((out_0 & (sig_7 & (sig_6 | sig_4))) ^ in_7) | sig_14)) & sig_0) ^ out_3);
    assign sig_9 = (~(~(~(sig_0 | (sig_0 ^ (~((~(out_5 | ((sig_9 & out_5) & out_3))) & sig_0)))))));
    assign sig_12 = (~((~(in_0 | ((~(sig_2 | (~(sig_10 | out_0)))) | in_5))) | out_2));
    assign sig_13 = (~((sig_13 & sig_6) & sig_15));
    assign sig_6 = (sig_13 & (~(in_1 & in_2)));
    assign sig_6 = (~(sig_6 | ((~((out_1 & (out_4 & (~(sig_4 & in_4)))) | out_4)) & in_5)));
    assign sig_2 = (~((~(~((~(((in_5 ^ out_0) ^ out_0) | sig_4)) | in_1))) ^ out_2));

endmodule
