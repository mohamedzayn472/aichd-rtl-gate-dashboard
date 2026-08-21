module rtl_module_72 (
input wire [4:0] in_0,
    input wire [2:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    output wire [3:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [1:0] sig_5;
    wire [1:0] sig_6;
    wire [3:0] sig_7;

    // Logic assignments
    assign out_0 = ((~((~(sig_7 & (~in_1))) | in_3)) & sig_6);
    assign sig_0 = (~(~(~(out_0 | (in_0 & sig_5)))));
    assign sig_4 = (~(in_3 | ((sig_2 & (~(in_0 | (in_0 ^ (in_3 | sig_7))))) ^ sig_7)));
    assign sig_0 = ((sig_1 & (~(sig_1 & (sig_3 ^ sig_3)))) ^ sig_4);
    assign sig_5 = (sig_3 | (~(sig_6 & (~((~sig_1) ^ out_0)))));
    assign sig_6 = (~(out_0 & (~((sig_1 ^ in_2) & sig_6))));

endmodule
