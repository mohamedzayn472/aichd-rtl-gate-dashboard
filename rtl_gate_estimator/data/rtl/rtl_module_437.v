module rtl_module_437 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [2:0] in_3,
    output wire [6:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [6:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;

    // Logic assignments
    assign out_0 = (out_1 | (~((~(out_4 | (out_2 | out_2))) | out_3)));
    assign out_1 = (sig_3 & (~((~(sig_5 ^ (((~(sig_6 | (~(sig_1 | sig_6)))) ^ in_2) ^ out_1))) & sig_3)));
    assign out_2 = (~(out_1 & (~(~(out_3 & (sig_0 & (sig_4 & sig_6)))))));
    assign out_3 = (~((~in_3) & sig_2));
    assign out_4 = (~(sig_0 | (~(in_0 & ((~(in_1 & (in_0 & sig_0))) ^ out_0)))));
    assign out_0 = (~(in_2 | (sig_3 | (~(~((sig_7 ^ (~(~(in_1 & out_1)))) & out_4))))));
    assign out_0 = (~(sig_2 & (~(~(sig_4 ^ (sig_5 & sig_5))))));
    assign sig_7 = (in_1 | (sig_3 & (~(~(sig_1 | (~(sig_1 & in_1)))))));
    assign out_1 = (~(sig_5 & (~((~(in_1 & (~(sig_6 | (~((out_0 ^ ((~out_2) | sig_5)) & in_0)))))) | sig_2))));
    assign out_0 = (((in_1 ^ (out_1 ^ (in_2 | sig_7))) & sig_7) & out_3);
    assign out_0 = ((~(out_4 & (~(sig_5 & (in_3 ^ in_0))))) | sig_2);
    assign sig_0 = ((~(((~(out_3 & (~(~(out_2 & (sig_6 & out_2)))))) | in_3) ^ in_3)) | sig_7);

endmodule
