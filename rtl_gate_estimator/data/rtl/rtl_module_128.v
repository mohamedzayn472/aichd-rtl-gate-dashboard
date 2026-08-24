module rtl_module_128 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    output wire [4:0] out_0,
    output wire [0:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [5:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [0:0] sig_9;
    wire [1:0] sig_10;

    // Logic assignments
    assign out_0 = (~((out_0 & (~((~(sig_1 & (~(out_4 | out_2)))) | sig_9))) & sig_5));
    assign out_1 = (((~((~((~((in_1 & sig_6) | sig_1)) ^ out_4)) & sig_1)) & out_4) | sig_3);
    assign out_2 = ((out_1 & sig_5) | sig_4);
    assign out_3 = (~(sig_7 | (~(out_0 & in_2))));
    assign out_4 = (~(out_4 ^ (~(sig_7 & (~(sig_7 & out_3))))));
    assign sig_8 = (~(sig_4 & (sig_1 | (((~(~((out_2 ^ sig_6) ^ sig_9))) & out_4) | sig_5))));
    assign sig_7 = (in_2 | (sig_2 & (~((~(sig_10 & (~(sig_10 & sig_8)))) | sig_6))));
    assign sig_1 = (~(~(sig_7 | (~(~in_0)))));
    assign sig_3 = ((~(~(~out_4))) | sig_3);
    assign sig_7 = ((~(in_2 & ((sig_7 ^ sig_2) | in_2))) | in_0);
    assign out_2 = ((~(sig_8 | (~(sig_8 | ((in_0 & out_1) | sig_1))))) & in_2);

endmodule
