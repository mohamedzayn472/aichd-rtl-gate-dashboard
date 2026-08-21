module rtl_module_263 (
input wire [5:0] in_0,
    input wire [5:0] in_1,
    input wire [4:0] in_2,
    output wire [6:0] out_0,
    output wire [0:0] out_1,
    output wire [3:0] out_2,
    output wire [3:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [0:0] sig_0;
    wire [5:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [5:0] sig_11;
    wire [5:0] sig_12;

    // Logic assignments
    assign out_0 = (~(in_0 | (out_5 | (~((~(sig_2 & sig_3)) | sig_6)))));
    assign out_1 = (~(out_2 & (~(out_0 & (~(~((~(out_2 & (out_2 & (~((~(sig_8 | in_0)) & out_1))))) & out_2)))))));
    assign out_2 = (~((~(out_1 & sig_6)) | out_5));
    assign out_3 = (sig_7 & (((~((out_6 & out_3) | in_1)) | in_2) | sig_0));
    assign out_4 = (sig_10 | (~(out_2 | ((sig_2 | sig_3) ^ in_1))));
    assign out_5 = (~(~(((~(in_1 & (~(sig_2 | (sig_3 ^ in_2))))) ^ out_6) & in_2)));
    assign out_6 = ((~((~((~(~(out_5 | sig_8))) & sig_3)) | sig_7)) ^ sig_12);
    assign sig_1 = (~(out_4 | ((~(sig_1 | sig_11)) & sig_10)));
    assign out_5 = (out_6 ^ (~((~(~((~(~(sig_5 & ((out_0 ^ sig_6) | sig_2)))) & sig_7))) & sig_0)));
    assign out_4 = (out_3 & (~(in_1 | (~(in_1 | (out_3 & out_0))))));
    assign sig_10 = (in_1 ^ (~(sig_0 | sig_6)));

endmodule
