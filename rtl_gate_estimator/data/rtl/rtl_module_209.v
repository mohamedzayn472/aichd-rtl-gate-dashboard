module rtl_module_209 (
input wire [5:0] in_0,
    input wire [2:0] in_1,
    input wire [1:0] in_2,
    output wire [2:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [7:0] out_6,
    output wire [1:0] out_7
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [3:0] sig_4;
    wire [0:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;

    // Logic assignments
    assign out_0 = (out_1 ^ (out_5 | (~((~((~(sig_4 & sig_1)) & in_2)) & sig_5))));
    assign out_1 = (~(~((~(sig_5 | sig_0)) & out_6)));
    assign out_2 = (~(~((~((in_0 & (sig_0 ^ (out_5 | sig_1))) & out_0)) ^ out_2)));
    assign out_3 = (~(~(in_2 | out_0)));
    assign out_4 = ((out_1 ^ (sig_7 ^ (out_0 ^ (out_4 | sig_4)))) | out_2);
    assign out_5 = (~((out_0 ^ (~((~(sig_5 | sig_2)) & out_7))) & in_0));
    assign out_6 = (out_2 | (sig_1 ^ (in_1 & (~(~(sig_1 & (sig_7 | (~(out_2 & sig_7)))))))));
    assign out_7 = (~(sig_5 & (out_7 | (~(in_0 | sig_7)))));
    assign out_0 = (((out_0 | (~((((~(~(out_0 | in_0))) ^ sig_3) & out_4) & in_0))) & out_7) | sig_1);
    assign out_1 = (~(out_7 | (sig_1 & (~((sig_1 | (out_3 | (~(out_5 | sig_1)))) & sig_3)))));
    assign out_0 = ((~((~(~out_1)) | out_3)) & sig_3);
    assign sig_7 = ((~(sig_5 & (~(((in_1 & (sig_1 & sig_1)) & out_5) | sig_5)))) | out_6);
    assign sig_6 = (~(~(out_4 | (~(out_6 & (~(sig_2 & out_5)))))));
    assign sig_2 = ((~((sig_5 ^ (~(out_0 | (~((out_2 ^ sig_6) | sig_1))))) & in_1)) | sig_3);

endmodule
