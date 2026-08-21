module rtl_module_180 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [5:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;

    // Logic assignments
    assign out_0 = (~(~(~((out_0 | out_0) ^ out_1))));
    assign out_1 = ((~((~((~(((~(out_0 | (~out_5))) | sig_0) | out_2)) | in_0)) | in_0)) | sig_0);
    assign out_2 = (~((~(out_3 | (out_3 ^ out_5))) | out_2));
    assign out_3 = (((in_0 ^ (~(in_1 | in_0))) ^ out_5) & out_5);
    assign out_4 = (~(out_0 | (~(out_2 & in_0))));
    assign out_5 = (~(in_0 | (out_1 & (out_1 | (~(out_0 & out_4))))));
    assign out_5 = (~(out_3 | (~(in_0 | (~out_2)))));
    assign sig_0 = (~(out_5 & (out_4 & sig_0)));

endmodule
