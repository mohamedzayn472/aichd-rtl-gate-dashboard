module rtl_module_327 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3,
    output wire [7:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;

    // Logic assignments
    assign out_0 = ((~sig_5) & sig_3);
    assign out_1 = (~(out_5 | (out_5 & (sig_1 ^ ((out_2 ^ (~((out_4 ^ (sig_2 & sig_0)) | in_1))) | out_1)))));
    assign out_2 = (~((~(sig_2 & (~(sig_5 & ((~(out_3 ^ sig_5)) ^ sig_3))))) | out_5));
    assign out_3 = (((~(sig_5 | (~(in_2 | out_5)))) | sig_3) & sig_4);
    assign out_4 = (~((sig_0 | ((~(out_2 | (~sig_3))) & sig_3)) | in_0));
    assign out_5 = ((~((~(~((~(out_3 | out_5)) | sig_3))) | sig_4)) & sig_1);
    assign out_0 = (out_2 ^ (~((~((~(~(in_1 | sig_3))) | out_5)) | sig_3)));
    assign sig_2 = ((sig_1 ^ (~((~(sig_5 | ((out_0 ^ (~(sig_1 | (~in_2)))) ^ sig_4))) & in_2))) | out_1);
    assign out_3 = ((~(sig_0 | (~(~(((~(sig_0 & sig_0)) & out_3) & in_0))))) ^ sig_2);

endmodule
