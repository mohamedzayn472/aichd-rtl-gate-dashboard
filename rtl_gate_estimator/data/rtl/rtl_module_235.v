module rtl_module_235 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [2:0] in_3,
    output wire [2:0] out_0,
    output wire [7:0] out_1
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;

    // Logic assignments
    assign out_0 = (~(~(~(~(in_0 & ((sig_4 & (~in_0)) & in_2))))));
    assign out_1 = (sig_3 | (~((((~((~(in_0 | (sig_3 | (in_1 | out_1)))) | out_0)) & sig_2) ^ out_1) | in_2)));
    assign sig_2 = (in_1 ^ (~(sig_2 | (sig_2 & (~(out_0 | ((~out_0) | sig_2)))))));
    assign sig_0 = (((~(((~(out_0 & (out_1 & sig_5))) | sig_3) | sig_3)) & sig_2) ^ sig_4);
    assign sig_3 = (~((~((~(sig_1 | in_0)) & out_1)) & sig_3));
    assign sig_5 = ((~(in_0 & (~(in_0 | (out_0 & in_0))))) & in_0);

endmodule
