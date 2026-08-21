module rtl_module_148 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [7:0] in_2,
    output wire [7:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [2:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [5:0] sig_4;
    wire [4:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;

    // Logic assignments
    assign out_0 = (((((~((sig_3 & (in_1 ^ (out_0 ^ in_1))) | sig_12)) & sig_11) ^ out_0) ^ sig_6) ^ sig_9);
    assign sig_3 = (((~(((~(sig_12 | (sig_4 & (sig_2 & (in_2 & sig_6))))) | sig_5) & sig_10)) | sig_5) ^ sig_9);
    assign sig_9 = (~(((sig_7 ^ ((~(sig_9 & sig_2)) & sig_1)) | in_1) | sig_1));
    assign sig_2 = (in_2 ^ ((sig_9 ^ sig_11) & sig_0));
    assign sig_8 = (~(sig_3 | (sig_0 & (in_1 ^ ((~((~(out_0 | sig_2)) & in_0)) & sig_10)))));

endmodule
