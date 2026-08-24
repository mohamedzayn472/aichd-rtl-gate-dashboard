module rtl_module_304 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [2:0] in_2,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [2:0] out_2,
    output wire [6:0] out_3
);

    // Internal signals
    wire [2:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [3:0] sig_6;
    wire [0:0] sig_7;
    wire [7:0] sig_8;
    wire [5:0] sig_9;
    wire [5:0] sig_10;
    wire [4:0] sig_11;
    wire [1:0] sig_12;
    wire [4:0] sig_13;

    // Logic assignments
    assign out_0 = ((~((sig_3 ^ sig_8) & sig_5)) ^ out_2);
    assign out_1 = (sig_4 | (sig_7 | (~(((~((~((~((~(sig_11 & in_0)) & sig_5)) | sig_3)) & out_2)) & sig_12) & out_0))));
    assign out_2 = (~(~(~(out_3 | sig_4))));
    assign out_3 = (((~(~in_2)) ^ sig_11) ^ sig_8);
    assign sig_7 = (sig_7 ^ ((~(sig_2 & (sig_11 & sig_6))) ^ sig_10));
    assign sig_7 = (sig_4 | (~(sig_5 & (~(((~(sig_1 & (sig_11 ^ sig_2))) | sig_8) | out_3)))));
    assign sig_1 = ((~(~(sig_6 & (~((~(out_3 & out_2)) | sig_13))))) | sig_12);

endmodule
