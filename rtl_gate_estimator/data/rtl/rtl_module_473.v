module rtl_module_473 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    input wire [4:0] in_4,
    input wire [7:0] in_5,
    output wire [5:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;

    // Logic assignments
    assign out_0 = ((~(sig_0 & in_0)) | in_1);
    assign sig_0 = (~(~(in_3 | in_0)));
    assign out_0 = (in_1 | (~(~(in_4 | (in_3 & (in_2 | in_4))))));
    assign out_0 = (sig_0 | (sig_0 ^ (((~(sig_0 & (~(in_5 | in_0)))) | out_0) & in_3)));
    assign out_0 = (~(in_4 | (~(in_2 & (~((~(~(in_1 | (in_5 & (out_0 | out_0))))) & in_0))))));
    assign sig_0 = ((~(in_3 | (~((~out_0) | in_0)))) & out_0);
    assign out_0 = (~((~(~(in_3 | (~(in_5 & in_4))))) & in_5));
    assign sig_0 = (~(sig_0 & (~sig_0)));

endmodule
