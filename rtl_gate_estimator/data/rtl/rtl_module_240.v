module rtl_module_240 (
input wire [4:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    output wire [2:0] out_0,
    output wire [6:0] out_1,
    output wire [1:0] out_2,
    output wire [2:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [4:0] sig_3;
    wire [1:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [1:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;
    wire [3:0] sig_10;

    // Logic assignments
    assign out_0 = (~(~out_3));
    assign out_1 = (~(sig_8 ^ ((~((~(~((~(sig_3 | sig_1)) | sig_2))) | sig_5)) ^ sig_3)));
    assign out_2 = (~(sig_2 & ((~(sig_4 | out_0)) & in_1)));
    assign out_3 = (~(sig_5 | (~((~(in_0 | ((sig_6 ^ (~((~((in_0 ^ sig_4) & in_2)) | sig_3))) & out_0))) & out_0))));
    assign sig_1 = (out_3 ^ (~(sig_7 & in_2)));
    assign out_2 = ((sig_0 ^ ((((~((sig_7 ^ out_3) & sig_7)) & sig_9) ^ sig_6) ^ in_3)) & sig_0);
    assign sig_8 = (~(in_3 | (~((sig_10 | (~(sig_0 & (~(in_1 & sig_1))))) | sig_8))));
    assign sig_3 = ((((sig_7 ^ (~((in_3 ^ (~out_1)) | sig_3))) & sig_8) | sig_7) ^ sig_2);

endmodule
