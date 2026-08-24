module rtl_module_417 (
input wire [1:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [4:0] in_3,
    input wire [0:0] in_4,
    output wire [0:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [0:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;
    wire [1:0] sig_4;
    wire [4:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [4:0] sig_8;

    // Logic assignments
    assign out_0 = (~(in_1 | (~sig_4)));
    assign out_1 = (sig_3 | (in_1 & out_0));
    assign out_2 = ((sig_6 & (sig_6 ^ in_0)) & out_2);
    assign out_3 = (sig_6 & (~(~(out_0 & sig_8))));
    assign out_4 = (in_4 & ((~(in_0 & (sig_6 | in_2))) ^ in_3));
    assign sig_7 = (~((sig_5 | in_2) | out_3));
    assign sig_1 = (sig_6 & ((out_1 & (~(sig_0 | sig_8))) & sig_3));
    assign sig_4 = (sig_8 & (~in_3));
    assign sig_0 = ((~(in_1 | (~(((out_1 ^ (in_3 | in_1)) ^ sig_0) | out_0)))) ^ sig_4);
    assign out_2 = (out_4 | (in_0 ^ ((~(sig_2 & (~((~(~(sig_8 | in_1))) & in_4)))) & sig_8)));
    assign out_0 = (sig_0 | ((~(in_3 & (out_0 & (~((in_0 ^ in_1) | out_2))))) & out_4));

endmodule
