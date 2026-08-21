module rtl_module_258 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    output wire [4:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;

    // Logic assignments
    assign out_0 = (sig_3 & (~(out_1 & (in_0 ^ (~(sig_2 | (~(sig_7 | out_0))))))));
    assign out_1 = (out_1 & (out_0 | (~((~(sig_0 ^ ((~(sig_5 | out_0)) & in_1))) & sig_7))));
    assign out_2 = (out_0 ^ (in_2 ^ sig_5));
    assign out_0 = (~((~(sig_5 & (~(sig_3 | (~((~(((out_0 & sig_7) | sig_1) & in_2)) & sig_2)))))) & sig_8));
    assign sig_1 = (~(sig_2 | (~(sig_8 & sig_1))));
    assign sig_8 = (~(((~(sig_0 & (~(in_0 & (sig_5 & sig_1))))) ^ out_1) ^ sig_1));
    assign out_0 = (in_0 | (~(~((out_2 & (~(in_0 | (((~(sig_1 & sig_4)) ^ in_0) ^ sig_3)))) | out_1))));

endmodule
