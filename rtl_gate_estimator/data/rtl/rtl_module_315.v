module rtl_module_315 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [2:0] in_4,
    input wire [6:0] in_5,
    output wire [1:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [2:0] sig_4;

    // Logic assignments
    assign out_0 = ((out_1 ^ ((in_3 | ((sig_3 ^ sig_4) ^ sig_1)) & in_2)) ^ out_1);
    assign out_1 = (in_3 | (((in_3 ^ (~((~((~sig_0) | out_0)) | sig_3))) | out_1) ^ in_2));
    assign out_1 = (in_5 & (~((sig_0 & in_4) & out_0)));
    assign sig_4 = (~(in_4 & (~(((sig_1 ^ in_5) ^ in_3) & in_0))));
    assign sig_1 = (~((((((~(((~sig_3) | in_4) | sig_1)) | sig_2) | in_0) ^ in_5) | sig_2) | in_5));
    assign out_0 = (~((~(~(out_0 & out_1))) & in_2));
    assign out_0 = (~(out_0 & (~(~((in_5 & in_0) & in_3)))));
    assign sig_3 = ((~(in_2 & ((~(in_3 | (~(in_1 | (~(((~out_1) ^ in_3) & sig_0)))))) ^ out_0))) | sig_0);

endmodule
