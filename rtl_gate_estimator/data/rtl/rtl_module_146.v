module rtl_module_146 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [4:0] in_2,
    output wire [5:0] out_0,
    output wire [3:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;

    // Logic assignments
    assign out_0 = ((((~(((~((~(out_3 & out_0)) | out_2)) & sig_0) ^ in_0)) ^ in_1) | in_2) | in_2);
    assign out_1 = (in_1 & (~(~((sig_1 & (in_2 ^ ((sig_1 ^ (~(in_0 & out_2))) ^ in_0))) | out_1))));
    assign out_2 = ((in_0 ^ (in_2 & out_0)) ^ out_3);
    assign out_3 = (sig_0 | (~(out_0 | in_0)));
    assign out_0 = (((~(in_1 & (~((~(out_2 & out_0)) | out_0)))) & out_1) ^ sig_0);
    assign out_2 = (~(((out_3 ^ (~(in_1 | ((~in_1) & out_1)))) | out_1) | in_2));
    assign sig_0 = (~(out_1 & (out_3 ^ (out_3 & (in_2 ^ in_0)))));

endmodule
