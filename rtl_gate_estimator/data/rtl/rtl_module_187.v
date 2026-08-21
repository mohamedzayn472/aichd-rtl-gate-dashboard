module rtl_module_187 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [0:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    input wire [0:0] in_5,
    output wire [6:0] out_0
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [7:0] sig_3;
    wire [4:0] sig_4;

    // Logic assignments
    assign out_0 = (in_4 & (~((in_3 & (~(sig_2 & (~(sig_1 | (~(in_5 ^ sig_2))))))) | in_1)));
    assign sig_3 = (~(in_5 | (~(in_4 & (in_1 & (in_0 ^ (~((sig_2 ^ (~(in_1 & sig_4))) | sig_2))))))));
    assign sig_3 = (~(in_2 | (~(~(~(~((~((in_4 ^ in_2) & out_0)) & sig_1)))))));
    assign sig_3 = (((in_2 & (~(~in_0))) ^ sig_4) ^ in_0);
    assign sig_2 = ((~(~(in_2 & sig_1))) ^ in_2);
    assign sig_1 = (sig_3 | (sig_1 & (~((in_5 ^ (~(sig_1 | (~(sig_2 & (~(in_2 | out_0))))))) & sig_1))));
    assign sig_1 = (~(out_0 | (~((sig_1 ^ out_0) | sig_4))));
    assign sig_0 = (~(((~((~(in_4 & (~(~(in_4 | (~(sig_3 | out_0))))))) & in_4)) | sig_1) & sig_2));

endmodule
