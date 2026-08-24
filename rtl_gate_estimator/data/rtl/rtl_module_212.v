module rtl_module_212 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [6:0] in_2,
    input wire [5:0] in_3,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [5:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [7:0] sig_3;
    wire [4:0] sig_4;

    // Logic assignments
    assign out_0 = (((sig_3 & (~((~((sig_2 & in_1) | sig_1)) & sig_3))) | in_0) & out_0);
    assign out_1 = (~(((~(~((~(sig_4 & out_2)) & in_3))) & in_1) | in_1));
    assign out_2 = (~(~(out_0 & (~((out_0 & out_0) & sig_2)))));
    assign out_3 = (out_1 | (~((((~(in_0 & sig_3)) | in_0) | sig_4) | in_3)));
    assign out_0 = (out_3 ^ (~(~(out_0 | (in_3 | (~(sig_1 & in_3)))))));
    assign sig_2 = (out_3 | (~(~(~(in_2 | in_1)))));
    assign out_0 = ((in_2 & (~((in_0 ^ (~(out_0 & (sig_2 ^ sig_2)))) | out_3))) & sig_1);
    assign out_2 = (~(~(~out_0)));
    assign out_3 = (~(in_0 | (in_3 | ((((~(sig_1 | (in_2 ^ (~(out_2 | in_0))))) & sig_2) ^ in_3) ^ sig_4))));

endmodule
