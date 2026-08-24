module rtl_module_369 (
input wire [2:0] in_0,
    input wire [2:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    input wire [1:0] in_4,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;

    // Logic assignments
    assign out_0 = (sig_4 | ((~(~((~(sig_3 | in_0)) ^ in_1))) | out_1));
    assign out_1 = (out_2 ^ (~(out_2 | (~(~(sig_1 | out_1))))));
    assign out_2 = (sig_1 | (~(out_1 | in_2)));
    assign sig_0 = ((~((~(in_0 | (sig_2 & (~(sig_3 & in_0))))) & out_2)) | sig_5);
    assign sig_0 = (~(sig_1 | (~(~(sig_1 | ((~((sig_0 | sig_0) & sig_4)) | in_1))))));
    assign sig_2 = (~(sig_1 ^ (~(in_3 & (~(~(in_2 | (out_2 | sig_1))))))));
    assign sig_3 = (sig_3 & (~((sig_0 | in_2) & sig_0)));
    assign sig_0 = (~(sig_2 & (sig_5 ^ ((~(out_1 & (~sig_3))) & out_2))));
    assign out_2 = (~(((in_0 & out_1) ^ sig_5) | sig_1));
    assign sig_4 = (sig_4 ^ (in_0 | (~(sig_5 | (~(((out_1 & in_0) | in_0) & out_1))))));
    assign out_1 = (~(out_2 ^ sig_4));

endmodule
