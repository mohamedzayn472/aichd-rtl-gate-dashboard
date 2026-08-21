module rtl_module_464 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [2:0] sig_6;

    // Logic assignments
    assign out_0 = (sig_3 | (out_3 & (~(out_0 & (sig_3 ^ (~(out_1 ^ (~(sig_6 | (~sig_1))))))))));
    assign out_1 = (~(((~((sig_1 & sig_0) | in_0)) | in_1) | sig_1));
    assign out_2 = (~((sig_1 ^ (out_0 ^ (out_2 & in_2))) & sig_0));
    assign out_3 = ((sig_0 | (sig_2 ^ ((~(((~(sig_1 & sig_3)) & sig_5) | sig_1)) & sig_1))) ^ out_0);
    assign out_3 = ((~(in_0 & (~(~sig_5)))) ^ sig_0);
    assign sig_4 = (~(((sig_6 | (~(out_1 | (out_1 & sig_4)))) ^ sig_2) | in_2));
    assign out_0 = (~(sig_2 | (sig_4 | (sig_5 & sig_1))));
    assign sig_5 = (~(~(out_1 & (sig_3 ^ ((out_3 | (~(sig_6 & out_1))) & sig_5)))));

endmodule
