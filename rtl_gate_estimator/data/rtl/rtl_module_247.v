module rtl_module_247 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    input wire [4:0] in_4,
    input wire [6:0] in_5,
    input wire [0:0] in_6,
    output wire [6:0] out_0,
    output wire [0:0] out_1,
    output wire [6:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;

    // Logic assignments
    assign out_0 = (~(~((~(in_2 ^ out_1)) & in_1)));
    assign out_1 = (out_3 | (~(~((in_0 & out_1) | in_4))));
    assign out_2 = (out_1 ^ (~(sig_2 & (~(in_3 ^ in_1)))));
    assign out_3 = (sig_3 & (in_6 ^ (out_2 | (((in_4 ^ ((~(out_1 & in_0)) | sig_0)) ^ in_5) ^ in_0))));
    assign out_2 = (~((in_3 | in_0) | in_2));
    assign sig_3 = (~(out_3 & out_3));
    assign out_1 = (~(~(out_3 | (~((~(sig_2 & (~(sig_1 | in_2)))) & sig_0)))));
    assign sig_3 = (~(sig_1 | (((((~(sig_0 & (sig_2 ^ (~in_2)))) ^ sig_2) | in_4) ^ in_0) & out_1)));
    assign out_3 = ((in_1 ^ out_0) & sig_1);
    assign out_1 = (in_2 & (((in_5 | (~((in_1 | (~(sig_3 | out_0))) | sig_0))) & in_1) | sig_1));
    assign sig_1 = (in_2 ^ (~in_6));
    assign out_1 = (~((sig_0 & ((((~(~(sig_3 | sig_2))) | in_4) ^ in_0) & out_0)) | out_1));
    assign sig_3 = ((~(in_3 & (sig_1 ^ sig_0))) & in_3);
    assign sig_0 = ((in_4 & (((~sig_2) ^ in_2) ^ in_6)) & sig_1);

endmodule
