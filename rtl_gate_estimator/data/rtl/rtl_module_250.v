module rtl_module_250 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    input wire [2:0] in_2,
    input wire [1:0] in_3,
    input wire [7:0] in_4,
    input wire [3:0] in_5,
    input wire [4:0] in_6,
    output wire [2:0] out_0,
    output wire [0:0] out_1
);

    // Internal signals
    wire [6:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [3:0] sig_3;
    wire [5:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [4:0] sig_7;

    // Logic assignments
    assign out_0 = (~(in_6 | (~(~(((~((~in_4) & in_0)) & in_6) | in_4)))));
    assign out_1 = (out_0 & ((~(out_0 & (~(out_1 | ((~((~((~sig_0) | in_3)) | sig_0)) & sig_0))))) & in_5));
    assign out_1 = (in_5 & (~((out_1 | (sig_2 & ((sig_6 ^ out_0) | in_2))) & in_5)));
    assign sig_4 = (~(((((~(~(~(in_2 & sig_4)))) & in_6) | sig_7) ^ sig_4) & sig_5));
    assign sig_0 = (~(in_0 & (in_1 & sig_4)));
    assign sig_7 = (~(((~(sig_3 | (sig_0 | in_3))) & sig_4) & in_1));
    assign sig_6 = (~(~(sig_4 & (sig_1 ^ (~(in_2 ^ (sig_7 | (~(sig_1 & (~sig_0))))))))));
    assign sig_6 = (out_0 & ((in_2 & in_5) | in_6));
    assign sig_5 = (in_4 & (in_5 & (in_5 | (~(sig_7 & (~((~(((~(in_6 | in_2)) & sig_5) & sig_7)) | in_1)))))));
    assign sig_5 = (~((~((~(sig_1 | out_0)) | in_2)) ^ in_2));

endmodule
