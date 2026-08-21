module rtl_module_277 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [5:0] in_2,
    input wire [3:0] in_3,
    input wire [7:0] in_4,
    input wire [3:0] in_5,
    input wire [0:0] in_6,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [2:0] sig_0;
    wire [4:0] sig_1;
    wire [4:0] sig_2;
    wire [2:0] sig_3;
    wire [0:0] sig_4;
    wire [3:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign out_0 = (~(((in_1 & (sig_6 | (out_4 ^ (((~sig_7) & out_0) ^ sig_0)))) & out_1) & in_4));
    assign out_1 = (~(~(((~((~((sig_7 | (in_5 ^ sig_6)) | sig_7)) & sig_6)) | sig_9) | in_6)));
    assign out_2 = (in_4 & (in_6 | ((~((sig_7 ^ in_4) | in_0)) ^ out_0)));
    assign out_3 = (sig_1 & (sig_3 | out_4));
    assign out_4 = (~((~(~(~(sig_2 | (((~(out_5 & out_0)) & sig_0) ^ in_2))))) | sig_0));
    assign out_5 = (sig_2 | (~((~((~(in_6 ^ out_4)) & sig_9)) | sig_0)));
    assign sig_3 = ((~(sig_7 | (~(sig_4 & (~sig_1))))) | sig_5);
    assign sig_6 = (sig_1 & ((in_2 | (in_4 | ((~(~(out_5 & sig_9))) & in_0))) | sig_3));
    assign sig_2 = (in_0 ^ ((out_0 | in_3) & out_5));
    assign sig_2 = (~((~(sig_5 | (sig_8 & (~((out_5 ^ sig_1) & out_3))))) & out_5));
    assign out_1 = (~(~(in_3 & sig_8)));
    assign sig_4 = ((out_5 ^ sig_4) | out_5);
    assign out_4 = (~((~(in_1 & (~(in_6 | in_5)))) ^ in_5));
    assign sig_5 = (in_6 | (~(sig_5 & sig_5)));

endmodule
