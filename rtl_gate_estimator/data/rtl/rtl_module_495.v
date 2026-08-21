module rtl_module_495 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    output wire [5:0] out_0,
    output wire [6:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [2:0] sig_5;
    wire [5:0] sig_6;
    wire [2:0] sig_7;

    // Logic assignments
    assign out_0 = (sig_2 & (~(~(~((sig_6 | sig_4) & out_4)))));
    assign out_1 = (in_0 & (~((~(~((~(in_0 & (~sig_1))) | out_1))) & sig_5)));
    assign out_2 = (~(~((sig_1 ^ (~(sig_7 | (~sig_6)))) | sig_7)));
    assign out_3 = ((~((~((~sig_7) & in_1)) | out_4)) ^ in_0);
    assign out_4 = (~((~(sig_4 & (sig_7 | ((~((~((~sig_5) | sig_4)) & out_4)) ^ sig_4)))) | out_0));
    assign sig_3 = (~(~(sig_0 & (~((in_1 ^ sig_3) | sig_4)))));
    assign out_2 = (sig_2 ^ (in_1 | (out_1 & (~(out_3 & ((~sig_7) ^ sig_7))))));
    assign out_3 = (in_1 ^ ((((~(~(sig_7 | out_4))) ^ in_0) ^ out_2) & sig_1));

endmodule
