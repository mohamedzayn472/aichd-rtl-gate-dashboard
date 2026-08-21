module rtl_module_166 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    output wire [1:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [0:0] sig_9;
    wire [4:0] sig_10;

    // Logic assignments
    assign out_0 = (sig_2 | (~(~(((~(~((~(out_3 & sig_8)) ^ out_0))) & in_0) | sig_0))));
    assign out_1 = (~(sig_1 | (sig_0 | (~(in_2 | ((~((out_1 | ((~sig_8) & in_2)) | sig_2)) & out_3))))));
    assign out_2 = (~(out_3 | (sig_7 | (~(sig_6 | (~((~((out_2 | (in_1 | sig_2)) & sig_1)) & sig_1)))))));
    assign out_3 = (~(sig_1 | (~(((in_1 & (~(sig_9 & (~(sig_0 | sig_9))))) & sig_8) & sig_2))));
    assign out_2 = (~(sig_0 & (~(sig_9 & sig_0))));
    assign out_3 = ((out_3 ^ ((~(out_1 | (~(in_2 & out_3)))) ^ sig_5)) & sig_5);
    assign sig_5 = (sig_1 ^ (~((sig_7 ^ (in_0 & sig_9)) & out_2)));

endmodule
