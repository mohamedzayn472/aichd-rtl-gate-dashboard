module rtl_module_489 (
input wire [6:0] in_0,
    input wire [7:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    output wire [7:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [0:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;

    // Logic assignments
    assign out_0 = (~(sig_1 | (sig_10 ^ out_0)));
    assign out_1 = (~((sig_11 & (out_0 | (~((~((sig_6 | sig_7) | sig_11)) | sig_2)))) & in_1));
    assign sig_11 = (~((in_2 & (~((~((~((~(in_0 | sig_9)) & in_2)) | sig_5)) | sig_5))) | sig_11));
    assign out_1 = ((~(out_0 | (~((sig_10 ^ (~(sig_8 & sig_11))) & sig_1)))) & sig_8);
    assign sig_3 = (sig_1 ^ (~(out_0 | ((~(sig_8 & (sig_9 ^ in_3))) & sig_1))));
    assign sig_7 = (sig_7 & (~(sig_0 | sig_3)));

endmodule
