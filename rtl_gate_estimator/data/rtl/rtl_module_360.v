module rtl_module_360 (
input wire [2:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [1:0] in_3,
    input wire [0:0] in_4,
    input wire [2:0] in_5,
    output wire [2:0] out_0,
    output wire [1:0] out_1,
    output wire [4:0] out_2,
    output wire [0:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [3:0] sig_1;
    wire [4:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [3:0] sig_7;
    wire [6:0] sig_8;
    wire [7:0] sig_9;

    // Logic assignments
    assign out_0 = (~(out_0 & (~(((sig_2 ^ out_2) ^ out_1) & out_0))));
    assign out_1 = (sig_6 | (~(sig_9 | (~(in_3 | in_3)))));
    assign out_2 = (in_0 ^ (~((~(in_5 & (~(sig_1 | (sig_1 | sig_5))))) | in_5)));
    assign out_3 = (~((~(in_5 & (~(~(~(~(out_1 | in_1))))))) | out_0));
    assign sig_0 = (~((~(sig_2 | (in_1 | (sig_7 | out_1)))) & sig_1));
    assign sig_3 = (~(out_2 | ((sig_5 & sig_3) & in_4)));
    assign out_3 = (~(sig_7 | (out_1 | in_5)));
    assign sig_3 = (~(out_2 | (~(in_3 & sig_2))));
    assign out_3 = ((~((~(~((~((in_3 ^ in_3) | out_0)) | in_5))) | sig_0)) | in_5);
    assign out_1 = (~((~((sig_4 & (~(sig_3 & (~(in_3 & (sig_3 | out_3)))))) & out_3)) | sig_1));
    assign sig_9 = ((~(sig_7 ^ (~((~sig_0) | out_0)))) & out_1);
    assign sig_5 = (((~(((in_0 ^ sig_3) ^ sig_1) | sig_6)) | out_0) | sig_4);
    assign sig_0 = (~((~((sig_3 ^ (~(sig_1 | (in_4 | ((~(~(in_5 | sig_9))) & out_2))))) & sig_7)) & out_1));

endmodule
