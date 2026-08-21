module rtl_module_169 (
input wire [4:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [0:0] sig_2;
    wire [3:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;

    // Logic assignments
    assign out_0 = (~(~(~(((sig_1 | (~((sig_0 | in_3) & in_4))) | out_3) | sig_0))));
    assign out_1 = (sig_7 ^ (~(in_1 | (~(out_0 ^ (~(sig_6 | (sig_4 | (~(sig_1 & sig_1))))))))));
    assign out_2 = ((sig_3 ^ (~(sig_5 & ((in_3 | sig_0) ^ sig_3)))) & in_2);
    assign out_3 = (~(((~(out_1 ^ (sig_7 & (sig_3 | sig_0)))) ^ in_2) | in_0));
    assign out_3 = (sig_1 | (~((~((~(sig_6 & (sig_6 & (sig_5 & out_0)))) | sig_3)) ^ sig_2)));
    assign sig_3 = (~((~((~((~((~(out_2 | sig_7)) & out_3)) ^ out_2)) | sig_1)) | out_0));
    assign sig_4 = (~(in_2 ^ sig_6));
    assign out_0 = (~(out_2 & (~(sig_4 | sig_0))));
    assign sig_3 = (~((~((out_2 & sig_7) & in_0)) & in_2));

endmodule
