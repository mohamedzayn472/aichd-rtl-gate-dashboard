module rtl_module_138 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    input wire [6:0] in_3,
    input wire [0:0] in_4,
    output wire [3:0] out_0
);

    // Internal signals
    wire [7:0] sig_0;
    wire [6:0] sig_1;
    wire [1:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;

    // Logic assignments
    assign out_0 = (sig_4 | (in_1 | (in_3 ^ ((sig_2 & (in_4 ^ (sig_4 & sig_1))) & in_1))));
    assign out_0 = (sig_0 | (sig_1 & (~(~((sig_3 ^ (~((in_3 | (~(sig_2 | in_0))) & sig_0))) | sig_4)))));
    assign sig_4 = (((~((in_3 & (~(in_0 | (~((out_0 & in_4) & in_2))))) | in_3)) & sig_2) | sig_2);
    assign sig_1 = (in_4 & (~(sig_0 | in_3)));
    assign sig_3 = (~(in_2 | ((sig_2 | sig_1) & sig_0)));
    assign sig_3 = ((in_3 | in_1) & in_1);

endmodule
