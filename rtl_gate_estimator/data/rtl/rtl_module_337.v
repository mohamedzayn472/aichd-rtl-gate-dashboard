module rtl_module_337 (
input wire [2:0] in_0,
    input wire [7:0] in_1,
    input wire [4:0] in_2,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [5:0] out_2,
    output wire [2:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [5:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign out_0 = ((out_0 ^ (sig_10 | out_0)) | out_1);
    assign out_1 = (~((sig_3 | (~(out_3 ^ out_1))) | in_0));
    assign out_2 = (~(out_4 & (~(~((in_0 & (sig_2 ^ (in_2 & (~out_1)))) & sig_10)))));
    assign out_3 = ((~(~(~((~out_1) | sig_5)))) ^ in_2);
    assign out_4 = (sig_7 | (sig_1 ^ ((sig_9 ^ (~(~(~(sig_8 & (~(sig_4 | in_1))))))) | out_4)));
    assign out_1 = (sig_6 | (sig_4 ^ (~((in_2 & (~out_3)) | out_1))));
    assign out_1 = (~(sig_3 | (~(~((~(sig_2 | in_2)) | in_2)))));
    assign sig_7 = (~((~sig_2) & out_0));
    assign sig_9 = ((~(((~(in_2 & sig_7)) & sig_7) & sig_9)) | in_0);

endmodule
