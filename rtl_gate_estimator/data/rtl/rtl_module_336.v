module rtl_module_336 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [4:0] in_2,
    input wire [6:0] in_3,
    output wire [7:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [3:0] sig_4;

    // Logic assignments
    assign out_0 = ((~(((in_0 & (~(sig_2 | in_3))) & sig_3) & sig_4)) | sig_4);
    assign out_1 = ((~(sig_1 | (out_0 ^ (sig_1 & sig_0)))) & out_0);
    assign sig_0 = (((out_0 ^ ((~(in_0 | in_1)) & sig_1)) | sig_1) ^ in_1);
    assign sig_1 = (~(in_3 & (in_2 & (~((in_3 ^ in_3) | sig_4)))));
    assign sig_1 = (((in_0 | (~(out_1 & (~((out_1 & in_1) | sig_3))))) | sig_0) & in_2);
    assign sig_4 = (~(sig_0 | (sig_0 ^ (in_2 | ((out_1 | (~(in_0 | (~sig_2)))) | sig_1)))));
    assign sig_1 = (((~(out_1 ^ (~((~((out_1 | in_3) & in_3)) | sig_2)))) | in_2) | out_1);

endmodule
