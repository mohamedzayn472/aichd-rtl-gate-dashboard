module rtl_module_23 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;

    // Logic assignments
    assign out_0 = (~(((in_3 & out_2) & in_3) & out_1));
    assign out_1 = ((~(in_2 & (~((~((~(~((out_1 & out_3) | out_1))) & out_1)) | in_1)))) | sig_4);
    assign out_2 = (~(sig_1 & (~(sig_1 & (~sig_1)))));
    assign out_3 = (~((~(~((sig_2 ^ (~(out_0 & in_3))) | out_2))) | sig_3));
    assign out_1 = (~(in_2 | (sig_0 & out_0)));
    assign sig_4 = (out_2 ^ (in_3 | sig_1));
    assign out_3 = (~(out_0 & (~(in_1 & (~(sig_0 & (((sig_3 & sig_1) & sig_0) | out_0)))))));
    assign sig_1 = ((~((~(~((~(in_0 | (~(out_0 & in_1)))) | out_0))) | out_3)) ^ out_3);

endmodule
