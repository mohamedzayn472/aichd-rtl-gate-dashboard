module rtl_module_490 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [3:0] in_4,
    input wire [7:0] in_5,
    input wire [7:0] in_6,
    input wire [7:0] in_7,
    output wire [3:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;

    // Logic assignments
    assign out_0 = (~((~(sig_12 & (~(sig_8 & (in_1 ^ (sig_10 | (sig_5 | (in_0 & sig_9)))))))) & sig_2));
    assign sig_12 = ((sig_9 | (~(sig_5 | (sig_6 ^ (~(((~((~(sig_13 & sig_0)) & out_0)) ^ out_0) | out_0)))))) | in_0);
    assign sig_0 = ((in_2 | (~(((~(((~sig_12) | in_5) ^ sig_13)) ^ sig_5) & sig_0))) ^ sig_1);
    assign sig_1 = (~((~(in_3 & (in_2 & sig_1))) & in_5));
    assign sig_3 = (~((~(sig_1 & (sig_2 & (~(~(~((sig_1 | in_6) | in_0))))))) & in_5));
    assign sig_0 = (((~(sig_6 | (sig_0 ^ (((~((sig_7 | in_7) & out_0)) | in_1) & in_1)))) | in_6) & sig_4);
    assign sig_11 = ((out_0 ^ ((~(sig_8 & ((~(in_2 & (sig_1 & (sig_13 ^ sig_7)))) & in_4))) & sig_8)) | in_6);
    assign sig_11 = ((~((~(in_2 & sig_6)) & in_6)) | in_0);
    assign sig_8 = (~(sig_3 & (~(((~(in_4 & sig_10)) & sig_7) | sig_10))));
    assign sig_3 = (((~((~(in_4 | sig_5)) | sig_10)) & in_1) ^ sig_7);

endmodule
