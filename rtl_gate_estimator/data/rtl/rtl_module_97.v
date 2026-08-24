module rtl_module_97 (
input wire [2:0] in_0,
    input wire [5:0] in_1,
    output wire [0:0] out_0,
    output wire [2:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;

    // Logic assignments
    assign out_0 = (~(((((~(~((sig_0 ^ sig_2) | sig_3))) & sig_1) ^ sig_1) | sig_2) | sig_5));
    assign out_1 = (out_0 ^ (~((in_0 ^ (out_2 ^ (~(sig_5 | out_0)))) & out_1)));
    assign out_2 = (~((~(in_1 | (~((((out_0 ^ out_0) | sig_2) ^ sig_1) | sig_5)))) ^ out_2));
    assign sig_2 = (~(((sig_3 ^ (~(out_1 & (~out_2)))) ^ out_2) & in_0));
    assign out_1 = ((~(((sig_3 | sig_2) & out_0) | in_0)) ^ out_1);

endmodule
