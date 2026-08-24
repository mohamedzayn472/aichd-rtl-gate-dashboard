module rtl_module_259 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [5:0] in_4,
    output wire [4:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [3:0] sig_1;
    wire [6:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [4:0] sig_5;

    // Logic assignments
    assign out_0 = (sig_4 ^ (~(out_1 & (~(~(~(out_3 & in_4)))))));
    assign out_1 = ((~(out_3 & (in_0 ^ (~(sig_1 & (out_3 & (~in_0))))))) ^ out_1);
    assign out_2 = (out_3 & (~(~((~((~((~(in_4 & out_3)) ^ out_1)) | out_3)) | sig_3))));
    assign out_3 = (in_1 & (~((~(in_2 | (~(in_4 & in_0)))) & in_4)));
    assign sig_5 = (~(sig_5 & (~(~(in_3 ^ in_3)))));
    assign out_3 = (~(~((out_3 ^ (in_3 ^ ((in_0 | (~(sig_2 & in_1))) | out_0))) | in_0)));
    assign out_3 = ((~(~(sig_5 | (~(out_0 ^ (sig_1 | out_0)))))) | in_3);
    assign out_1 = (~(((~out_0) ^ out_3) & sig_3));
    assign sig_2 = (~(in_3 | (~(sig_0 & (out_2 ^ sig_3)))));
    assign sig_2 = (~(~(out_3 | (~(~(out_3 & (~(~(in_3 | ((in_1 ^ out_0) & in_3))))))))));

endmodule
