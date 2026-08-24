module rtl_module_439 (
input wire [3:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    input wire [1:0] in_5,
    input wire [7:0] in_6,
    input wire [5:0] in_7,
    output wire [1:0] out_0
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [0:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [7:0] sig_7;
    wire [2:0] sig_8;
    wire [6:0] sig_9;
    wire [3:0] sig_10;

    // Logic assignments
    assign out_0 = (~(sig_2 | (sig_4 & ((~(~((~in_7) | in_7))) & sig_8))));
    assign sig_4 = (~((sig_2 & (sig_3 | (~(in_7 | (sig_10 ^ (~(sig_4 & sig_4))))))) | in_0));
    assign sig_10 = (~(sig_1 | (~(sig_3 | sig_1))));
    assign sig_4 = (~(in_6 & ((sig_9 & (~(in_1 ^ sig_3))) | sig_6)));
    assign sig_2 = (~((~(sig_6 | sig_6)) | out_0));
    assign sig_5 = ((~((~(in_4 | (~((~(((~((in_0 & in_6) & sig_0)) | in_1) & sig_7)) & in_2)))) | out_0)) ^ out_0);
    assign sig_7 = ((((~in_6) | sig_6) & in_1) ^ out_0);
    assign sig_10 = (((~((in_3 & (out_0 | (sig_5 | (in_3 ^ sig_6)))) | sig_7)) | in_5) | in_6);
    assign sig_5 = (~(in_1 | (sig_2 ^ (~(out_0 & (sig_10 | (~((~(sig_4 & sig_3)) | sig_4))))))));

endmodule
