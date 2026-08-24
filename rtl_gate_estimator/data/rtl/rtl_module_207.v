module rtl_module_207 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [0:0] in_2,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [7:0] out_3,
    output wire [3:0] out_4,
    output wire [3:0] out_5,
    output wire [7:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;

    // Logic assignments
    assign out_0 = (~(in_2 ^ out_3));
    assign out_1 = (~(~((~(out_0 & in_1)) | out_4)));
    assign out_2 = ((~(in_2 | (out_2 & (~(out_0 & sig_0))))) | out_2);
    assign out_3 = (~(~((in_0 ^ out_4) | in_2)));
    assign out_4 = (out_3 ^ ((out_0 | out_4) | in_0));
    assign out_5 = (out_5 & (~((out_1 ^ (out_2 ^ sig_0)) | out_1)));
    assign out_6 = ((~(~((~(in_2 & out_0)) & out_3))) | sig_0);
    assign out_1 = (in_2 ^ (~(in_0 | (~((in_2 ^ (out_4 ^ (sig_0 | in_1))) & sig_0)))));
    assign out_5 = (~(in_2 | (~((~(in_1 & out_3)) & out_3))));
    assign out_1 = (in_2 ^ (out_3 & out_2));

endmodule
