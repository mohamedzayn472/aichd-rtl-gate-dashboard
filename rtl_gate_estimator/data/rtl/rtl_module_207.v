module rtl_module_207 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    output wire [7:0] out_0,
    output wire [7:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3,
    output wire [4:0] out_4,
    output wire [2:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [3:0] sig_1;
    wire [7:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [3:0] sig_6;
    wire [1:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [2:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [5:0] sig_14;

    // Logic assignments
    assign out_0 = (~(((sig_0 & in_0) | sig_3) | out_3));
    assign out_1 = ((~(~(sig_7 & (sig_4 ^ (~(in_1 & (sig_4 ^ (~((~(sig_0 | sig_2)) | out_5))))))))) ^ sig_12);
    assign out_2 = (~(out_5 | (~((sig_4 ^ ((~((sig_14 & (sig_13 | (~in_0))) & sig_13)) | out_1)) & sig_0))));
    assign out_3 = (~(~((in_0 & sig_13) | out_1)));
    assign out_4 = (sig_11 ^ (out_1 & sig_4));
    assign out_5 = (sig_11 ^ (~(sig_5 | (~((~(sig_4 & sig_14)) & sig_3)))));
    assign sig_7 = (sig_12 & ((((~(sig_5 & out_3)) | sig_9) | sig_8) & in_0));
    assign sig_0 = (sig_13 ^ (sig_7 | sig_8));
    assign sig_6 = (~(sig_4 & (~(out_0 | (sig_14 & (~(sig_0 | sig_13)))))));

endmodule
