module rtl_module_404 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    output wire [5:0] out_0,
    output wire [5:0] out_1,
    output wire [2:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [1:0] sig_1;

    // Logic assignments
    assign out_0 = ((sig_1 | (~((~(sig_0 & in_1)) | out_2))) & in_0);
    assign out_1 = (~((~(out_1 & out_2)) & out_2));
    assign out_2 = (out_0 & (out_1 & out_0));
    assign sig_1 = (out_1 ^ (out_1 & (in_0 & (~(out_1 | in_1)))));
    assign out_2 = (sig_1 ^ (~(sig_0 | (sig_1 ^ sig_1))));

endmodule
