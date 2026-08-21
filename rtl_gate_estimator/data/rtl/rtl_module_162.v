module rtl_module_162 (
input wire [6:0] in_0,
    input wire [3:0] in_1,
    input wire [3:0] in_2,
    output wire [2:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3,
    output wire [1:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [0:0] sig_0;
    wire [1:0] sig_1;
    wire [7:0] sig_2;
    wire [0:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;

    // Logic assignments
    assign out_0 = (~((~(in_2 | (~(sig_6 | (sig_5 | in_1))))) & sig_6));
    assign out_1 = (~((out_2 | (in_1 ^ (~(sig_0 | (out_1 ^ (out_4 | (~(sig_3 & sig_3)))))))) | out_1));
    assign out_2 = (~(out_5 | (~(out_3 & (in_2 & (sig_1 ^ out_5))))));
    assign out_3 = ((~((sig_0 & (~sig_0)) | sig_0)) & out_1);
    assign out_4 = (~((~(sig_6 | (((~(out_5 & sig_4)) & out_3) & sig_6))) | out_4));
    assign out_5 = (~(sig_7 | (~((~(sig_0 & (~(((~(out_4 | (out_4 | sig_4))) ^ out_4) | in_1)))) & sig_7))));
    assign sig_2 = (~((~(sig_2 | in_0)) | out_1));
    assign out_1 = (~(out_2 & (~out_1)));
    assign sig_2 = (~(in_0 ^ (~(sig_0 | ((~((out_0 | out_3) & sig_6)) | out_5)))));
    assign sig_3 = (~(out_2 | (~(out_2 & (~(out_5 | (~(in_1 & ((~in_1) & sig_4)))))))));
    assign out_1 = (((~in_1) & out_5) | out_5);

endmodule
