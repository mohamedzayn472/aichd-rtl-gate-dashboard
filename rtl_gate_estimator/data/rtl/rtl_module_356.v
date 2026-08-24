module rtl_module_356 (
input wire [0:0] in_0,
    input wire [7:0] in_1,
    input wire [3:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    input wire [1:0] in_5,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [1:0] out_2,
    output wire [4:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;
    wire [3:0] sig_11;

    // Logic assignments
    assign out_0 = ((~((~(~(out_3 & ((~(sig_10 | sig_1)) ^ in_3)))) | in_2)) | in_4);
    assign out_1 = (sig_5 & ((~((~(sig_1 | in_2)) | in_1)) & sig_9));
    assign out_2 = ((in_5 | ((~(~(in_4 & ((~(out_4 & sig_3)) ^ in_3)))) ^ in_4)) & sig_11);
    assign out_3 = (~(out_0 & ((~(in_1 | sig_9)) ^ out_0)));
    assign out_4 = (sig_10 | (~in_0));
    assign out_2 = ((~(~((sig_6 | ((sig_7 | in_3) & sig_11)) & sig_10))) | out_1);
    assign sig_2 = (sig_1 & (~(sig_11 & (out_4 | (sig_8 & sig_11)))));
    assign sig_6 = (~(sig_2 | ((~(sig_1 | (~(~(sig_1 | sig_11))))) ^ sig_8)));
    assign out_0 = ((sig_9 ^ (sig_3 ^ in_0)) ^ in_0);
    assign sig_7 = ((~((~(sig_11 & (~(sig_0 & in_4)))) | out_3)) ^ sig_10);
    assign sig_5 = (~(in_2 | (~((sig_4 | (~(sig_11 & (sig_9 ^ (in_4 & sig_11))))) | sig_5))));
    assign out_1 = (out_0 ^ ((sig_0 ^ (out_3 | (in_1 | (~(out_3 | ((~in_0) & sig_6)))))) & sig_1));
    assign sig_2 = (~(~(((sig_2 & (~(in_3 & ((in_0 ^ sig_1) ^ sig_9)))) & sig_1) | out_1)));
    assign out_2 = (out_2 | (~out_0));
    assign sig_0 = ((~((~((sig_5 | (sig_3 & in_0)) & in_1)) & in_3)) & sig_2);
    assign sig_9 = (sig_5 ^ (~(~(sig_2 & sig_9))));

endmodule
