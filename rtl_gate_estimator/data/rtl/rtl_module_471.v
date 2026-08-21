module rtl_module_471 (
input wire [4:0] in_0,
    input wire [7:0] in_1,
    input wire [2:0] in_2,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [0:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4,
    output wire [2:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [1:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;

    // Logic assignments
    assign out_0 = (out_3 ^ ((sig_10 & sig_11) | out_3));
    assign out_1 = (~(sig_2 & (~(out_2 & out_5))));
    assign out_2 = ((out_2 ^ (~(out_4 & out_0))) & sig_8);
    assign out_3 = (~((~(~(sig_4 | in_0))) | sig_0));
    assign out_4 = (~((~((in_2 & out_1) | sig_4)) | out_1));
    assign out_5 = (out_3 ^ (~(out_0 | (~(~(~out_1))))));
    assign out_2 = ((sig_5 ^ (~(out_1 & (out_0 & (~(sig_1 | out_5)))))) & sig_10);
    assign out_5 = ((~(out_4 | (~(((((out_4 & out_2) & sig_8) | out_0) | in_0) & out_2)))) ^ sig_2);
    assign out_5 = (~((~((sig_11 ^ (out_5 & ((sig_11 ^ (~(sig_0 | out_3))) ^ out_2))) & sig_3)) & in_0));
    assign sig_10 = (out_1 ^ ((~(sig_0 & sig_3)) ^ sig_2));

endmodule
