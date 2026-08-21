module rtl_module_14 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [7:0] sig_3;
    wire [3:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [0:0] sig_9;

    // Logic assignments
    assign out_0 = (~(in_3 | in_2));
    assign sig_2 = (~(sig_6 & sig_2));
    assign out_0 = (~(((sig_7 ^ out_0) ^ in_1) & sig_4));
    assign sig_5 = (sig_4 ^ (~((~(sig_5 & (~(in_1 | (~(sig_5 & (~((~(sig_8 & sig_2)) & in_2)))))))) & sig_8)));
    assign sig_6 = (~(~((~(~(sig_5 & sig_3))) | sig_0)));

endmodule
