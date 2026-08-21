module rtl_module_84 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    output wire [0:0] out_0,
    output wire [6:0] out_1,
    output wire [2:0] out_2,
    output wire [3:0] out_3,
    output wire [5:0] out_4,
    output wire [0:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [6:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [7:0] sig_6;
    wire [0:0] sig_7;
    wire [0:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;

    // Logic assignments
    assign out_0 = (sig_9 ^ (out_2 ^ (sig_1 ^ ((~((~(~(~(sig_9 & sig_3)))) & out_3)) | out_4))));
    assign out_1 = (out_5 | (~((~(sig_0 & sig_7)) & sig_5)));
    assign out_2 = (~(((~(sig_2 | sig_12)) ^ sig_7) & out_2));
    assign out_3 = (sig_9 | (~(sig_12 | (in_0 | ((~((~(out_5 & sig_8)) & out_0)) ^ sig_9)))));
    assign out_4 = ((out_5 & (~(((~(~(sig_6 | sig_5))) ^ sig_3) & out_3))) ^ out_2);
    assign out_5 = (sig_7 & (~(~((~((((~(sig_7 & out_2)) | in_1) & sig_8) | sig_6)) & sig_6))));
    assign sig_6 = (sig_3 | (~(sig_8 | sig_2)));
    assign out_2 = (~((sig_6 & (out_4 | (~(~(sig_1 ^ (in_0 & out_3)))))) & in_2));
    assign sig_11 = (~(~(~(sig_0 & out_0))));
    assign out_3 = (~(sig_1 & ((~(out_0 & (~((sig_12 | in_0) | sig_1)))) & sig_8)));
    assign out_4 = (~(~((sig_7 ^ (~((~((~(~out_1)) & sig_11)) & sig_2))) & out_5)));

endmodule
