module rtl_module_190 (
input wire [6:0] in_0,
    input wire [2:0] in_1,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [2:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [3:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign out_0 = (~((~((~(~((~(in_0 | out_0)) | sig_9))) | sig_10)) & sig_2));
    assign out_1 = (~(sig_9 | sig_11));
    assign out_2 = (~(sig_7 | ((~(~((~(~(sig_3 & sig_7))) ^ out_0))) ^ sig_0)));
    assign out_3 = (~((sig_5 & ((~(((~((sig_4 & sig_2) | out_0)) | sig_12) | sig_10)) | sig_8)) | sig_11));
    assign out_4 = (~(sig_0 & (~(sig_4 | (sig_0 | (sig_11 & ((~(sig_11 & in_0)) | out_2)))))));
    assign sig_3 = (sig_3 | (~((sig_10 & (~(~(~((sig_4 & out_4) & sig_10))))) & out_3)));
    assign sig_7 = (~((~(out_0 & sig_6)) ^ sig_4));

endmodule
