module rtl_module_397 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [3:0] out_4,
    output wire [6:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [4:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [4:0] sig_11;
    wire [4:0] sig_12;
    wire [2:0] sig_13;
    wire [1:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign out_0 = (~(sig_4 & (~(in_1 & out_2))));
    assign out_1 = ((sig_11 | out_2) | sig_8);
    assign out_2 = (~((out_0 & ((sig_6 & (~(sig_6 | sig_7))) ^ sig_10)) & sig_2));
    assign out_3 = ((out_4 & (sig_13 ^ (~(out_5 | sig_6)))) & out_3);
    assign out_4 = (~(in_1 | (sig_12 | (out_1 ^ (~((sig_8 & sig_6) & sig_5))))));
    assign out_5 = (~((~(in_0 | (~(in_0 & (in_0 | (sig_4 & sig_8)))))) | out_4));
    assign sig_9 = (~(sig_4 & (~(out_5 | (out_2 & (~(~((~(sig_5 & (~(sig_5 | (~(sig_4 & in_1)))))) & sig_5))))))));
    assign sig_3 = ((sig_1 & (~((~((~((~((sig_7 ^ out_0) | sig_12)) & sig_0)) & sig_1)) & out_1))) | out_0);
    assign out_1 = (sig_1 ^ (out_4 | (~(((~(~(sig_10 & sig_12))) & sig_10) & in_0))));

endmodule
