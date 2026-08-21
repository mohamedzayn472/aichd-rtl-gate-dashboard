module rtl_module_456 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    output wire [5:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [3:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [2:0] sig_3;
    wire [5:0] sig_4;

    // Logic assignments
    assign out_0 = (~((out_2 | (out_2 & ((~(in_1 | (~(out_1 & (~out_0))))) ^ out_4))) | out_3));
    assign out_1 = ((~(~((sig_2 & (sig_2 ^ out_0)) ^ out_3))) ^ in_1);
    assign out_2 = (~(out_0 & (~(~(~(sig_0 & (out_4 | (out_3 | (~(out_0 | out_3))))))))));
    assign out_3 = (in_1 ^ (~(out_0 | in_1)));
    assign out_4 = (~(~(((sig_0 | out_1) | in_1) | in_1)));
    assign out_5 = (~(sig_1 | (sig_0 & out_1)));
    assign sig_0 = (~((~out_3) | sig_3));
    assign out_4 = ((sig_2 | (~((~(sig_0 | sig_2)) | sig_0))) | out_5);

endmodule
