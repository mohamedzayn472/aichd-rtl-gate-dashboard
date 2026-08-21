module rtl_module_380 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [0:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;

    // Logic assignments
    assign out_0 = (((~((~(~(~(sig_2 & sig_1)))) | out_1)) & out_2) ^ sig_1);
    assign out_1 = (~((~(sig_0 ^ (~sig_0))) | sig_3));
    assign out_2 = (out_5 ^ (~(~((out_2 & out_3) | out_5))));
    assign out_3 = (~(sig_2 | (~(out_0 | (out_3 ^ sig_1)))));
    assign out_4 = (~(out_3 & out_3));
    assign out_5 = (((in_0 & (~(sig_2 & sig_2))) & sig_2) ^ out_1);
    assign out_2 = ((~(in_1 | ((~((in_0 & in_1) | out_0)) & sig_0))) | out_0);
    assign out_0 = (~((~(out_4 & sig_3)) & in_1));

endmodule
