module rtl_module_456 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    output wire [4:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [6:0] sig_2;
    wire [6:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign out_0 = (~(sig_9 | (~((~(sig_3 | (~out_1))) & sig_4))));
    assign out_1 = (~((~(sig_4 | (~(sig_0 & sig_3)))) & sig_0));
    assign out_2 = (~((~((~(out_1 | (~(~(out_2 | (in_0 & sig_2)))))) & sig_6)) | sig_3));
    assign out_3 = (out_3 ^ (sig_7 | (out_1 & (~(sig_0 | (sig_7 & (sig_8 | (~((~(out_3 & in_1)) & sig_7)))))))));
    assign sig_9 = ((~(out_3 | (sig_9 | ((in_0 | (~(out_0 | (~(sig_2 & sig_3))))) & sig_4)))) | sig_7);
    assign out_1 = (~((((~(((out_1 ^ sig_7) | sig_1) & sig_2)) & out_2) | sig_6) ^ sig_3));
    assign sig_4 = (sig_2 | (~(((~(sig_2 | ((~(sig_2 & (sig_7 ^ (sig_9 ^ out_2)))) & out_1))) ^ sig_6) | out_1)));

endmodule
