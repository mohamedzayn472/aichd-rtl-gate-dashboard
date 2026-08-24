module rtl_module_226 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [6:0] in_3,
    input wire [0:0] in_4,
    input wire [7:0] in_5,
    output wire [5:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;

    // Logic assignments
    assign out_0 = ((sig_0 | ((~in_1) & in_1)) | sig_0);
    assign out_1 = (sig_1 & (~((~((~((~((out_2 & (sig_0 & in_1)) | out_3)) & in_3)) & sig_0)) & in_1)));
    assign out_2 = ((~(in_4 | (~(sig_0 | in_1)))) ^ in_3);
    assign out_3 = (~(out_2 & (in_1 & (in_2 & (~((out_1 | (~(out_3 & out_3))) & in_0))))));
    assign out_1 = (~(~in_5));
    assign sig_1 = (~(out_1 | (~((in_0 | ((~(out_1 | (~((in_1 | sig_0) | in_3)))) & in_5)) | in_0))));
    assign sig_1 = (~(out_1 | (in_3 | (~(in_5 & (in_5 ^ (~(in_5 | in_4))))))));
    assign sig_0 = (~(in_2 ^ (~(out_1 | in_3))));
    assign out_0 = (~(out_1 ^ in_1));
    assign sig_1 = (~(in_2 & (in_1 & (~(in_2 | (~(sig_1 | in_4)))))));

endmodule
