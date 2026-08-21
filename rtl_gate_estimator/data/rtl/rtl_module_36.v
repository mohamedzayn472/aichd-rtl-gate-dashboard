module rtl_module_36 (
input wire [0:0] in_0,
    input wire [4:0] in_1,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [2:0] out_2,
    output wire [4:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [6:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [2:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [7:0] sig_14;

    // Logic assignments
    assign out_0 = (~(sig_4 | (~(sig_6 ^ (~(out_6 | (sig_1 | (~((~((sig_3 ^ in_1) & out_1)) & sig_0)))))))));
    assign out_1 = ((~(in_0 | (in_0 ^ (~(((~((~(out_4 ^ sig_5)) | sig_8)) ^ out_2) | out_5))))) ^ out_4);
    assign out_2 = (~((~((~(~(~(in_0 & (out_3 & out_3))))) | out_4)) | sig_1));
    assign out_3 = (~(~(sig_0 & ((~(sig_6 | (~(((sig_9 & sig_12) & sig_12) | out_6)))) ^ out_5))));
    assign out_4 = ((~(sig_6 | (((~(out_5 ^ (sig_13 & sig_6))) | in_0) | out_3))) ^ sig_13);
    assign out_5 = (~(sig_2 | (~((~(out_4 & out_4)) | sig_3))));
    assign out_6 = (in_0 ^ (~(sig_4 & (out_6 | sig_14))));
    assign out_6 = (~(out_4 & ((~((~((~(out_3 & sig_11)) & out_3)) | sig_8)) ^ sig_11)));
    assign out_0 = (~(((~((sig_6 | in_1) | out_0)) & in_0) & sig_8));
    assign out_3 = ((~((out_3 | (~(in_0 | (~((out_3 | (sig_3 | sig_8)) & in_0))))) | sig_6)) & sig_13);

endmodule
