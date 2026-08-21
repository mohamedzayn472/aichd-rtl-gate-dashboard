module rtl_module_314 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [6:0] out_3,
    output wire [0:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [6:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [7:0] sig_6;

    // Logic assignments
    assign out_0 = (sig_1 ^ (~sig_6));
    assign out_1 = (out_5 & (~(in_0 & sig_5)));
    assign out_2 = (~((sig_2 | sig_3) | sig_3));
    assign out_3 = ((out_1 & ((~((~(out_0 | out_5)) | out_2)) | out_4)) ^ out_0);
    assign out_4 = (out_0 & (out_5 | (~(out_4 | in_1))));
    assign out_5 = ((~(((((~((~(sig_5 | in_1)) & sig_3)) & out_3) ^ out_3) | sig_6) & out_1)) ^ in_0);
    assign out_1 = (~((sig_0 | out_2) | sig_6));
    assign sig_1 = (sig_2 ^ (~((~((~(sig_5 & in_1)) | out_4)) | sig_4)));

endmodule
