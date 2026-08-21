module rtl_module_217 (
input wire [1:0] in_0,
    input wire [7:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [4:0] in_4,
    input wire [2:0] in_5,
    input wire [0:0] in_6,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2,
    output wire [0:0] out_3,
    output wire [5:0] out_4,
    output wire [5:0] out_5,
    output wire [2:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;

    // Logic assignments
    assign out_0 = (out_2 | (in_6 & in_2));
    assign out_1 = (~(out_3 ^ out_4));
    assign out_2 = (out_6 | (~((sig_2 ^ out_5) | out_0)));
    assign out_3 = (in_4 ^ (~(sig_1 & ((~(in_4 & ((in_2 | sig_4) | in_1))) ^ sig_5))));
    assign out_4 = (~(~((~((~(sig_3 & out_4)) & in_5)) | in_5)));
    assign out_5 = (~(sig_1 | ((~(out_6 | ((out_2 ^ ((~(sig_1 | sig_1)) | in_5)) ^ in_3))) ^ out_1)));
    assign out_6 = ((sig_3 & ((~(in_6 & (~(in_0 & ((in_5 ^ sig_0) ^ in_6))))) | sig_0)) ^ sig_3);
    assign out_4 = (out_1 | (in_6 ^ (sig_1 | in_4)));
    assign sig_6 = (~(sig_6 | (~((in_6 & out_1) & sig_4))));
    assign out_6 = ((in_5 ^ (~(sig_4 | (~((((~(out_5 & in_5)) ^ in_1) & out_3) & sig_5))))) ^ out_0);
    assign sig_6 = ((~(in_2 | (~(in_6 | ((~(in_4 & (~(~((in_0 | sig_5) | sig_4))))) ^ in_4))))) | out_0);
    assign sig_0 = (out_0 & (in_4 ^ in_6));
    assign out_5 = (out_3 ^ (sig_5 & (out_1 ^ out_0)));
    assign out_3 = ((~(in_0 | (~((out_4 | out_0) & out_1)))) | sig_3);

endmodule
