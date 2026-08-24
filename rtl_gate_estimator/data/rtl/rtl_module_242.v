module rtl_module_242 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    output wire [7:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;

    // Logic assignments
    assign out_0 = (((~(in_3 | (sig_1 & (~(~(in_1 | in_2)))))) ^ sig_2) ^ in_3);
    assign sig_1 = (~(~(in_1 | (in_3 ^ (~(in_1 | ((~((~(sig_2 & in_0)) | out_0)) ^ in_3)))))));
    assign sig_0 = ((out_0 | in_0) ^ sig_0);
    assign sig_2 = ((~(~(~(sig_0 | (in_1 | (out_0 ^ sig_2)))))) | in_0);
    assign sig_0 = (out_0 & (~(~((~((in_0 | ((~(sig_1 | sig_2)) ^ in_2)) | sig_1)) | sig_2))));

endmodule
