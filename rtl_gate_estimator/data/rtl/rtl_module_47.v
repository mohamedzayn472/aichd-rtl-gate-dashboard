module rtl_module_47 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    input wire [7:0] in_2,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [0:0] sig_9;

    // Logic assignments
    assign out_0 = ((~((~((sig_6 | sig_2) ^ sig_8)) & in_2)) & out_1);
    assign out_1 = (out_3 ^ (~(~(((out_2 & in_1) | sig_6) | sig_1))));
    assign out_2 = (in_1 ^ (in_1 & (~((~out_3) | out_1))));
    assign out_3 = (~((~(sig_2 & (sig_1 & sig_0))) | in_2));
    assign out_3 = (~(sig_9 | (sig_0 & ((~(~out_1)) ^ sig_0))));
    assign sig_3 = (sig_1 ^ (sig_1 & (((~(sig_3 & out_2)) ^ out_2) ^ out_1)));
    assign sig_5 = ((~((~(in_0 & ((~out_2) ^ sig_3))) & out_0)) & sig_2);
    assign sig_1 = (~(((~(out_0 | out_1)) ^ sig_5) & in_1));

endmodule
