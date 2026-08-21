module rtl_module_238 (
input wire [5:0] in_0,
    input wire [4:0] in_1,
    input wire [4:0] in_2,
    input wire [7:0] in_3,
    output wire [6:0] out_0,
    output wire [5:0] out_1,
    output wire [3:0] out_2,
    output wire [0:0] out_3,
    output wire [1:0] out_4,
    output wire [7:0] out_5,
    output wire [6:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;

    // Logic assignments
    assign out_0 = ((~(out_3 | (sig_0 | (~(out_4 & (~(out_6 & out_7))))))) ^ in_3);
    assign out_1 = (~((~(out_7 & (~((~(out_2 | (~(~(((~(sig_1 & sig_0)) | out_6) | sig_0))))) | out_5)))) & in_0));
    assign out_2 = (~((~(in_0 & (~(~(out_1 | (~(out_3 | out_7))))))) & out_0));
    assign out_3 = ((~((out_0 | (~(((~(~in_1)) ^ in_1) | out_1))) | out_1)) ^ out_7);
    assign out_4 = (~(in_0 | ((~(out_1 | (~((~(~out_6)) | in_1)))) & in_3)));
    assign out_5 = ((~(sig_2 & (~(out_6 | in_1)))) & out_4);
    assign out_6 = (out_2 ^ (~(out_1 | (~(sig_2 | out_3)))));
    assign out_7 = (~(~(out_3 | (~(out_0 | (out_1 & in_2))))));
    assign sig_2 = (~(~(~((~(sig_2 & out_0)) | out_3))));
    assign out_3 = (~((~(in_0 | (out_2 ^ (~(sig_1 & (~((~(out_0 & (out_0 ^ out_2))) | out_4))))))) & in_3));
    assign sig_1 = (~((sig_1 ^ sig_0) | sig_0));
    assign sig_1 = (in_1 ^ (in_2 ^ out_1));
    assign out_6 = ((~((~(out_0 & in_0)) & sig_2)) & out_3);
    assign out_7 = ((sig_1 & (((~(in_3 ^ sig_1)) & in_3) | sig_0)) | out_6);
    assign out_2 = ((~(out_6 | (~(out_4 | out_4)))) | in_0);
    assign out_2 = (~(sig_0 | (~(~(out_6 ^ out_5)))));
    assign out_7 = ((~(out_1 & (~(~((out_4 | in_1) & in_0))))) ^ in_2);
    assign out_0 = (out_5 & ((out_5 ^ out_7) & sig_0));
    assign out_0 = (~(~(~(out_7 & (~(sig_0 & (~(sig_0 & (~(out_3 | ((~out_1) | sig_2)))))))))));
    assign sig_1 = (~(in_3 | (~out_7)));

endmodule
