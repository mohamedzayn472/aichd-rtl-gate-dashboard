module rtl_module_204 (
input wire [3:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [1:0] in_4,
    input wire [3:0] in_5,
    output wire [5:0] out_0
);

    // Internal signals
    wire [3:0] sig_0;
    wire [1:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [7:0] sig_6;
    wire [1:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;

    // Logic assignments
    assign out_0 = (in_5 ^ (~((((~(sig_1 | (~(~(sig_7 & sig_10))))) & sig_5) & sig_6) & in_4)));
    assign sig_4 = (~(~((~(in_1 | (~(((in_3 | (sig_7 ^ (in_4 & out_0))) | sig_1) & sig_7)))) & in_1)));
    assign sig_7 = (~(in_1 & (~(sig_7 & (~(~(sig_7 | (in_5 & (~(sig_9 | (~(sig_10 | in_2))))))))))));
    assign sig_3 = (~(in_1 & (sig_9 & (~(~(sig_8 & (~(in_5 | in_3))))))));
    assign sig_7 = ((sig_0 | in_0) ^ in_4);
    assign sig_0 = (~((~(in_5 | (~(sig_6 | in_1)))) | sig_3));
    assign sig_8 = (in_5 ^ (~(sig_8 | (~(~((~((~(in_3 | (~((~(in_5 & in_2)) & sig_8)))) & in_5)) & sig_0))))));

endmodule
