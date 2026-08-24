module rtl_module_191 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [4:0] sig_2;
    wire [3:0] sig_3;
    wire [1:0] sig_4;

    // Logic assignments
    assign out_0 = (~(~(out_2 | sig_2)));
    assign out_1 = (in_0 | (~(out_1 | (~((((in_0 & (out_0 | in_0)) ^ sig_0) & sig_2) & in_0)))));
    assign out_2 = (out_1 & (~((~(in_0 | (~((sig_2 | (~(sig_4 & out_1))) & out_1)))) | in_0)));
    assign out_0 = (sig_4 | (~(out_2 | (~(out_2 | (~(~((in_1 ^ in_1) | in_0))))))));
    assign sig_2 = (~(~(~(((~(sig_0 & ((~(sig_0 & in_0)) & in_1))) & sig_4) | sig_2))));

endmodule
