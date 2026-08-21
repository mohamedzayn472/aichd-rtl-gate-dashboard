module rtl_module_177 (
input wire [0:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    output wire [2:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [1:0] sig_4;
    wire [2:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign out_0 = (~(sig_1 | (~(~(in_0 & (~(in_0 | sig_1)))))));
    assign out_1 = (~(sig_1 & (~(in_2 & (~(in_2 ^ sig_1))))));
    assign out_2 = ((~(sig_4 | (in_1 ^ (~((~(sig_3 & sig_4)) & out_2))))) & sig_0);
    assign sig_5 = (sig_5 & (~((sig_1 ^ (~((out_2 ^ sig_0) | sig_4))) | out_0)));
    assign out_2 = (~(~((sig_6 ^ (~(out_1 & (~(sig_4 | (in_1 & (sig_0 | (~(out_2 | in_0))))))))) | sig_1)));
    assign out_2 = ((~(sig_1 & sig_5)) ^ out_0);
    assign sig_1 = (~(in_1 ^ ((((sig_2 & sig_1) | sig_2) | out_2) | sig_4)));

endmodule
