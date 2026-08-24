module rtl_module_141 (
input wire [3:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    output wire [3:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2,
    output wire [1:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [3:0] sig_8;

    // Logic assignments
    assign out_0 = (~(in_0 | (in_0 & (~((sig_5 | (~((~(in_2 & out_1)) & sig_7))) & sig_7)))));
    assign out_1 = (sig_0 & ((in_0 ^ ((~((~(out_3 | (~(in_2 & in_2)))) | sig_0)) | sig_8)) & sig_8));
    assign out_2 = (~((((sig_6 ^ ((sig_1 & out_3) | in_2)) ^ in_1) ^ out_3) | out_1));
    assign out_3 = (~((sig_5 & in_0) & out_0));
    assign sig_5 = ((~(sig_5 | sig_1)) ^ sig_0);
    assign sig_2 = ((~(in_0 & (out_2 | (((~(in_1 | (out_0 & (sig_2 ^ sig_6)))) ^ in_1) ^ sig_4)))) ^ sig_2);
    assign sig_0 = (sig_2 & (sig_5 & (~(sig_0 ^ in_0))));

endmodule
