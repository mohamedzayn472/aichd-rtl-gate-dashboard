module rtl_module_376 (
input wire [0:0] in_0,
    input wire [1:0] in_1,
    input wire [6:0] in_2,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [5:0] out_2,
    output wire [5:0] out_3,
    output wire [2:0] out_4,
    output wire [7:0] out_5,
    output wire [4:0] out_6
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [1:0] sig_2;
    wire [5:0] sig_3;
    wire [5:0] sig_4;
    wire [3:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign out_0 = (~(sig_9 | (sig_6 | out_2)));
    assign out_1 = (~(~((in_0 & (~(~(in_1 ^ sig_1)))) | in_1)));
    assign out_2 = (~(in_1 ^ (~(sig_4 | (~(sig_1 & (~((out_3 ^ out_1) & in_0))))))));
    assign out_3 = (~(sig_9 | ((~(sig_2 & (~(out_5 | (((sig_9 | out_2) ^ sig_3) & out_4))))) & out_2)));
    assign out_4 = (~(~((~(out_6 | out_2)) & in_2)));
    assign out_5 = ((~(out_1 | ((out_4 | out_2) ^ in_0))) | sig_0);
    assign out_6 = (out_5 ^ ((~(sig_5 | (~((out_5 ^ (sig_7 & (~(sig_9 & out_5)))) & sig_9)))) ^ out_4));
    assign sig_4 = (~(~(~(sig_0 | ((sig_0 ^ (~((~(out_0 | out_3)) | out_1))) & sig_1)))));
    assign sig_6 = (~((~(out_0 & out_1)) | in_0));
    assign sig_3 = (sig_9 ^ (~(sig_9 | (in_2 ^ (~out_0)))));
    assign sig_2 = (out_1 ^ ((~(out_0 | (((sig_9 ^ (in_0 & in_2)) | sig_7) ^ sig_6))) & sig_9));

endmodule
