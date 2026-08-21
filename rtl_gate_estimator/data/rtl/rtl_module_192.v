module rtl_module_192 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    output wire [7:0] out_0,
    output wire [3:0] out_1
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;

    // Logic assignments
    assign out_0 = (((~((~(~((sig_1 & (~(sig_1 & sig_6))) & sig_7))) | sig_4)) & in_0) ^ sig_5);
    assign out_1 = (sig_2 & ((~(sig_1 | ((~(out_1 | sig_3)) ^ out_1))) | sig_7));
    assign sig_5 = (sig_3 ^ ((~in_0) ^ sig_3));
    assign out_0 = (sig_4 | (~(sig_6 | (~((~((out_0 & (~(sig_0 | sig_1))) & sig_0)) & sig_4)))));

endmodule
