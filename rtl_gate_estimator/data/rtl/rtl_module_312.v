module rtl_module_312 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [2:0] in_4,
    input wire [7:0] in_5,
    input wire [5:0] in_6,
    input wire [6:0] in_7,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [7:0] sig_2;

    // Logic assignments
    assign out_0 = (((~(in_6 & in_4)) | in_5) | in_6);
    assign out_1 = (in_4 & (~(sig_0 | (~(out_2 | (~((~in_4) | in_2)))))));
    assign out_2 = (~((((in_0 ^ in_1) ^ sig_2) | in_1) & sig_2));
    assign out_3 = ((~((sig_2 & ((~(in_0 | (~(in_2 & (~in_6))))) & out_2)) & in_2)) & in_2);
    assign out_1 = (~(in_1 | (~(in_1 | (in_2 & in_0)))));
    assign out_1 = (in_0 ^ (out_3 ^ (in_2 | sig_1)));
    assign out_3 = (~(in_4 & (~((~(in_1 ^ (sig_1 | out_1))) | in_7))));
    assign out_3 = ((~(~(((out_2 & sig_0) | in_7) | out_3))) | in_4);
    assign sig_0 = (~(sig_1 ^ (out_0 ^ in_5)));
    assign out_2 = (~((~(((~(out_2 | in_2)) ^ in_4) | in_1)) | in_0));
    assign out_1 = (((~(~((~((~((out_2 | sig_1) & in_0)) ^ out_1)) | sig_1))) | in_7) & out_0);
    assign sig_2 = (sig_2 ^ (~(sig_2 & in_6)));

endmodule
