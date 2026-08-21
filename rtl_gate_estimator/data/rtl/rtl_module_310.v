module rtl_module_310 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [5:0] in_3,
    input wire [7:0] in_4,
    input wire [0:0] in_5,
    input wire [3:0] in_6,
    output wire [1:0] out_0,
    output wire [7:0] out_1,
    output wire [6:0] out_2
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [1:0] sig_2;
    wire [3:0] sig_3;
    wire [2:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [3:0] sig_9;
    wire [0:0] sig_10;
    wire [1:0] sig_11;

    // Logic assignments
    assign out_0 = ((~(sig_1 ^ sig_7)) | out_2);
    assign out_1 = ((~((sig_4 & (~(sig_7 | (~((sig_1 | (in_2 & sig_6)) | sig_7))))) | in_2)) ^ sig_4);
    assign out_2 = (in_5 & (~(sig_8 | (~((~((in_2 | in_6) ^ in_3)) & in_2)))));
    assign sig_2 = (~(sig_0 | (in_0 | (~(sig_1 & (~(in_0 | (in_3 ^ (sig_2 ^ ((sig_5 & sig_11) | sig_3))))))))));
    assign out_0 = ((~(sig_11 | (~((~(sig_11 & (out_1 ^ (out_0 | (sig_5 & (~out_0)))))) | sig_11)))) & sig_0);
    assign sig_8 = ((~((~(sig_1 & (~(~(in_2 & sig_3))))) | out_2)) & sig_8);
    assign out_2 = (~(~((~(sig_9 | sig_11)) & sig_6)));
    assign out_1 = (~((((~(sig_10 | (~(~(in_5 & in_0))))) & sig_4) ^ sig_9) & out_0));
    assign sig_0 = ((in_2 ^ out_2) ^ in_0);
    assign out_0 = (~(in_1 & (sig_1 ^ ((sig_8 & (~(out_2 & (~(out_1 & in_2))))) & sig_10))));
    assign sig_5 = (~((sig_5 ^ out_0) | sig_7));

endmodule
