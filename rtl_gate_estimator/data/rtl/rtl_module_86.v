module rtl_module_86 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [5:0] out_2,
    output wire [2:0] out_3,
    output wire [7:0] out_4,
    output wire [7:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [0:0] sig_0;

    // Logic assignments
    assign out_0 = (~(out_1 & (((~((~((~out_5) & in_1)) | sig_0)) ^ out_6) | sig_0)));
    assign out_1 = (~(out_4 | (~out_3)));
    assign out_2 = (~((~(out_2 | (~(out_5 & out_1)))) & out_6));
    assign out_3 = (~((out_0 & ((~(out_4 | (in_1 | out_0))) & out_4)) & out_0));
    assign out_4 = (~(in_0 | (~(~in_1))));
    assign out_5 = (out_6 & (~(out_4 | in_1)));
    assign out_6 = (out_6 | (in_1 ^ out_4));
    assign out_2 = (~(~(~(out_3 | (out_0 ^ out_0)))));
    assign out_2 = (~(sig_0 & (in_1 & out_0)));
    assign out_4 = (~(~(out_3 & (~((out_5 & (out_2 ^ (out_4 | (~(out_0 | (~(out_5 | out_4))))))) & in_1)))));
    assign out_0 = (~((out_6 ^ (in_1 & out_4)) & in_0));

endmodule
