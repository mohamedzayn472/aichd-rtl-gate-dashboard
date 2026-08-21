module rtl_module_18 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    output wire [1:0] out_0,
    output wire [1:0] out_1,
    output wire [0:0] out_2,
    output wire [0:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [6:0] sig_6;
    wire [3:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign out_0 = ((~(out_4 & (sig_2 & (~(sig_3 | (sig_3 | sig_2)))))) ^ in_1);
    assign out_1 = ((in_1 & (out_3 ^ ((sig_4 | in_1) ^ out_0))) | sig_8);
    assign out_2 = (~(out_0 | (sig_5 ^ (~(out_1 | (sig_0 ^ (~(out_0 & (~(out_1 & sig_3))))))))));
    assign out_3 = (~(~(~(sig_0 & (sig_2 & out_3)))));
    assign out_4 = (((out_2 | (sig_1 | out_0)) | sig_1) | out_4);
    assign out_0 = (~((~(sig_5 & in_1)) | sig_3));
    assign sig_8 = (~(sig_3 & (in_1 | sig_3)));

endmodule
