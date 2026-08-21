module rtl_module_491 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    output wire [5:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;

    // Logic assignments
    assign out_0 = (sig_5 & ((((~sig_0) | out_0) & sig_3) & in_1));
    assign sig_5 = (out_0 ^ (~(in_1 | sig_5)));
    assign sig_0 = (sig_5 | (~(sig_2 | in_1)));
    assign out_0 = (sig_1 & (~((~((~(sig_4 | (~(sig_4 & sig_1)))) | sig_5)) | in_2)));
    assign sig_1 = (in_0 | (~(sig_4 | (out_0 | in_0))));

endmodule
