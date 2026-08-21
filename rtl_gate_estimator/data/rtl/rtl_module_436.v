module rtl_module_436 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [0:0] in_2,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3,
    output wire [0:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [6:0] sig_0;
    wire [3:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [5:0] sig_6;
    wire [3:0] sig_7;
    wire [7:0] sig_8;

    // Logic assignments
    assign out_0 = ((sig_3 & out_4) & out_0);
    assign out_1 = ((~((~(out_5 | (~(sig_5 | (sig_2 & sig_0))))) & sig_4)) ^ sig_2);
    assign out_2 = (~(sig_2 & (sig_7 ^ (~(sig_7 | sig_0)))));
    assign out_3 = (sig_0 ^ (in_2 ^ (~((~(sig_4 & ((~(out_1 & (~(in_2 & (~in_2))))) ^ in_0))) & out_5))));
    assign out_4 = (~((~(((~(((~(out_3 | (~(out_3 & sig_7)))) ^ sig_0) & in_0)) | sig_6) & sig_2)) | out_0));
    assign out_5 = (sig_4 & (~(in_2 ^ (((out_3 | sig_3) | in_1) ^ in_1))));
    assign sig_4 = ((~(sig_5 | in_1)) & sig_3);
    assign sig_7 = (~(~(out_1 | (in_1 & ((~((~(in_2 & (sig_6 & out_0))) | in_2)) & sig_8)))));
    assign out_4 = ((~(sig_1 | (sig_3 & (~(sig_7 | sig_6))))) ^ in_0);
    assign sig_6 = (~((~sig_7) | sig_5));

endmodule
