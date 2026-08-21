module rtl_module_83 (
input wire [1:0] in_0,
    input wire [2:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [1:0] in_4,
    input wire [3:0] in_5,
    input wire [6:0] in_6,
    input wire [3:0] in_7,
    output wire [5:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2
);

    // Internal signals
    wire [7:0] sig_0;
    wire [5:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [7:0] sig_6;

    // Logic assignments
    assign out_0 = ((~(in_1 & ((~(in_5 | sig_2)) & sig_4))) ^ in_3);
    assign out_1 = (in_4 & ((~(sig_0 | in_3)) | out_2));
    assign out_2 = (~(~((~((sig_0 | (in_3 | (out_2 & (in_2 & in_5)))) & sig_5)) | out_2)));
    assign out_0 = (~((~(sig_6 | (~((~((~(in_5 | (~(in_3 & in_7)))) | sig_2)) & sig_2)))) | in_0));
    assign out_2 = (~(sig_4 | (~((~(~(~(sig_4 | (out_0 & sig_6))))) | out_0))));
    assign sig_2 = (sig_6 & (sig_2 ^ ((~(~(sig_4 & (((~(in_5 | in_5)) & sig_3) | in_5)))) & sig_3)));
    assign sig_4 = (~(out_2 & (in_1 | (~(sig_4 | ((~(in_2 & in_5)) & in_4))))));
    assign sig_4 = (~(~(in_0 & (~(sig_1 & out_2)))));
    assign sig_2 = (sig_0 ^ (in_7 & out_2));
    assign sig_4 = (((~((in_1 ^ (~(out_2 | (~((~(in_2 & out_2)) & sig_1))))) & sig_6)) ^ in_5) | out_2);
    assign sig_6 = ((~((~(in_2 | (in_2 | (sig_6 & sig_0)))) & sig_6)) | out_2);
    assign out_1 = (~(in_4 & (~(out_0 & (~out_1)))));

endmodule
