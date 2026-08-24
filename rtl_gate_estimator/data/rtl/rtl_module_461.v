module rtl_module_461 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [6:0] in_2,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [2:0] out_2,
    output wire [6:0] out_3,
    output wire [6:0] out_4
);

    // Internal signals
    wire [2:0] sig_0;
    wire [1:0] sig_1;
    wire [0:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;
    wire [3:0] sig_10;
    wire [7:0] sig_11;

    // Logic assignments
    assign out_0 = (((~((~(out_3 & (~(out_1 ^ sig_10)))) | sig_4)) ^ sig_8) & out_0);
    assign out_1 = (~((((~(out_2 & (sig_4 & sig_4))) | out_0) ^ sig_8) | out_2));
    assign out_2 = ((~(sig_8 & (~((~(~(sig_1 & sig_3))) & in_0)))) & sig_2);
    assign out_3 = (out_2 | (~((~((sig_9 ^ (~sig_1)) & out_1)) & in_0)));
    assign out_4 = ((sig_7 | (~(sig_5 & (~((~((~(out_4 | (out_1 ^ in_0))) | out_1)) | out_3))))) ^ sig_7);
    assign sig_8 = (sig_9 & ((~(sig_6 & (~(~((sig_8 | out_4) | sig_5))))) ^ sig_7));
    assign out_0 = (~(out_3 | (out_0 & out_0)));
    assign out_2 = (sig_4 | (sig_7 | (in_2 | (sig_9 | (~(sig_6 | sig_10))))));

endmodule
