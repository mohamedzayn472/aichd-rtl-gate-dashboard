module rtl_module_234 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [5:0] in_3,
    input wire [6:0] in_4,
    input wire [2:0] in_5,
    input wire [4:0] in_6,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [6:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [5:0] sig_4;
    wire [6:0] sig_5;
    wire [4:0] sig_6;

    // Logic assignments
    assign out_0 = (~((sig_3 | sig_2) ^ in_4));
    assign out_1 = ((~(sig_2 | (~(sig_2 | (sig_6 | in_4))))) ^ in_6);
    assign out_2 = (in_0 | (~(sig_6 | (sig_3 ^ (in_1 | in_3)))));
    assign out_3 = (in_5 ^ ((~(((~(((in_5 | sig_4) | sig_5) | out_0)) & out_3) | sig_6)) | sig_5));
    assign out_4 = ((sig_2 & (~(~((~(in_2 | (in_2 & (~out_2)))) | in_3)))) | in_0);
    assign out_2 = (in_6 ^ ((in_1 & ((~((~(out_4 & (~sig_2))) | in_0)) & out_4)) | in_1));
    assign out_4 = ((~(((sig_1 & (in_1 ^ (~((~((in_0 | sig_6) & sig_1)) & in_2)))) | in_6) & sig_4)) ^ in_0);
    assign sig_5 = (~((~((~(~(sig_4 & (out_0 ^ (in_0 & (~sig_6)))))) & sig_1)) & out_2));
    assign sig_1 = (~((~((sig_1 ^ in_3) & out_0)) & in_4));
    assign sig_3 = (~((sig_4 & ((out_1 & (in_2 & sig_6)) ^ sig_1)) & sig_1));
    assign sig_6 = (~(in_0 | (~sig_3)));
    assign out_4 = (~(((out_3 ^ (sig_3 | ((~((out_1 & in_6) | in_2)) & in_0))) ^ sig_2) | in_5));
    assign sig_0 = (~(out_4 & (~(~(in_0 | ((~(sig_0 | (~(sig_6 & out_4)))) & sig_6))))));
    assign out_2 = (in_5 | ((~(in_3 & (out_0 & (~((in_0 ^ in_1) | out_2))))) & out_4));
    assign out_0 = (sig_5 ^ (~(sig_6 | ((sig_1 ^ (~((~(sig_3 & ((~(in_4 & sig_4)) ^ in_6))) | in_4))) & out_1))));

endmodule
