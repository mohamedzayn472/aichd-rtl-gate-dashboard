module rtl_module_451 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    output wire [3:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [0:0] sig_4;
    wire [5:0] sig_5;
    wire [2:0] sig_6;

    // Logic assignments
    assign out_0 = ((~(out_1 & (in_0 & in_0))) & in_1);
    assign out_1 = ((((~(~(out_1 | in_0))) | sig_6) & sig_0) ^ sig_5);
    assign sig_2 = (~(sig_0 | (~((~((sig_3 ^ (~(in_2 | (~(sig_1 | sig_4))))) | sig_6)) & in_0))));
    assign sig_6 = (~(sig_1 | ((~(sig_3 & sig_0)) & out_1)));
    assign sig_0 = (sig_6 & (~(sig_6 | (~(~(in_1 & (sig_2 & sig_1)))))));
    assign out_0 = (sig_2 & ((sig_5 & (~(~(in_1 | (~in_2))))) & sig_0));

endmodule
