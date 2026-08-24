module rtl_module_396 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    output wire [4:0] out_0,
    output wire [4:0] out_1,
    output wire [7:0] out_2,
    output wire [1:0] out_3,
    output wire [2:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;

    // Logic assignments
    assign out_0 = (sig_0 ^ (~(sig_1 | ((~(~(out_3 & out_1))) | in_1))));
    assign out_1 = (~((~((~(out_3 | out_2)) | out_3)) & sig_1));
    assign out_2 = (~((sig_1 & (~((~(in_1 ^ out_4)) ^ out_1))) & sig_4));
    assign out_3 = (sig_3 | (~(out_0 | ((~(~(((~in_1) ^ out_1) | sig_1))) | out_0))));
    assign out_4 = (~(sig_1 & (out_2 ^ (sig_2 ^ (~((out_1 | (~(out_3 & out_1))) & sig_1))))));
    assign out_1 = ((sig_2 | sig_2) ^ sig_0);
    assign out_1 = (~(in_1 | (in_1 & (out_2 | (sig_0 & (~out_1))))));
    assign sig_3 = (~((~(out_4 | (out_1 | (~(sig_2 & in_0))))) | sig_2));

endmodule
