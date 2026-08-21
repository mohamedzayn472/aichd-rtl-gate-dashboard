module rtl_module_181 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [2:0] in_3,
    input wire [3:0] in_4,
    output wire [5:0] out_0,
    output wire [6:0] out_1
);

    // Internal signals
    wire [0:0] sig_0;
    wire [2:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [1:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [5:0] sig_10;

    // Logic assignments
    assign out_0 = (sig_4 | (sig_8 | (out_0 & out_1)));
    assign out_1 = ((sig_6 & ((~((sig_2 ^ in_3) | in_1)) | out_1)) ^ sig_10);
    assign sig_10 = (((~(sig_4 & ((~((sig_4 & sig_5) & sig_9)) ^ sig_2))) & in_4) ^ out_0);
    assign sig_5 = (~(sig_2 & (sig_4 & in_4)));
    assign sig_4 = (~((((~(sig_1 | (~(sig_4 | (sig_3 ^ (~(sig_10 | in_3))))))) & sig_4) ^ sig_7) | in_1));
    assign sig_10 = (~(in_4 | (~((~(~((~(sig_3 & (~(sig_6 | out_1)))) & in_2))) | sig_8))));
    assign sig_4 = (~(sig_9 & (~sig_2)));

endmodule
