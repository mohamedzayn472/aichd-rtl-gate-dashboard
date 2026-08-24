module rtl_module_338 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [1:0] in_2,
    input wire [6:0] in_3,
    input wire [4:0] in_4,
    output wire [0:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [1:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;

    // Logic assignments
    assign out_0 = (~(((~(~(out_2 | (sig_5 | sig_7)))) | sig_5) ^ in_1));
    assign out_1 = (~((~(sig_0 & (~(sig_7 & in_3)))) | out_2));
    assign out_2 = ((~((out_0 | ((~(((sig_7 | in_4) & sig_1) | sig_3)) | sig_0)) & sig_4)) | out_2);
    assign sig_2 = (~(in_4 & ((~((((~(sig_6 | (~(in_2 | sig_6)))) | in_2) ^ sig_6) & sig_0)) & sig_6)));
    assign sig_5 = (~(~(sig_6 | (sig_2 & (~(sig_0 | (in_4 & in_4)))))));
    assign out_0 = (~(~((~(sig_3 & (~((sig_4 ^ (~((sig_6 | out_0) | sig_0))) & out_2)))) & sig_5)));
    assign out_2 = (~(in_1 & (sig_6 | (in_3 & in_0))));
    assign sig_0 = (~((~(~(((sig_5 ^ in_0) ^ in_0) | in_0))) ^ out_0));
    assign sig_7 = (((~(~((~(sig_7 & ((~out_0) | sig_7))) & sig_4))) ^ sig_5) ^ sig_2);

endmodule
