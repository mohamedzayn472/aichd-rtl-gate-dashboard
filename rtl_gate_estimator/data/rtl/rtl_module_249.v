module rtl_module_249 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [0:0] out_2,
    output wire [4:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [4:0] sig_2;
    wire [4:0] sig_3;
    wire [4:0] sig_4;
    wire [4:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;

    // Logic assignments
    assign out_0 = ((~((((out_4 ^ (sig_6 | (~((~(out_4 & out_3)) | sig_8)))) | in_0) ^ in_2) | out_4)) ^ in_2);
    assign out_1 = (out_1 & (sig_0 | (~(~((~(sig_3 & (~(out_2 & sig_6)))) | out_2)))));
    assign out_2 = (sig_4 ^ (out_3 | (in_0 | (sig_1 ^ in_3))));
    assign out_3 = (out_1 ^ (~(sig_3 | sig_1)));
    assign out_4 = (~(in_2 ^ out_2));
    assign out_4 = ((~(out_4 | (out_4 & (~(sig_3 | sig_1))))) & out_1);
    assign sig_5 = (out_4 & ((~(sig_6 & out_3)) & out_1));
    assign out_3 = (~(sig_7 | (out_3 | in_2)));
    assign out_2 = (~(out_3 & (~(out_3 & sig_7))));

endmodule
