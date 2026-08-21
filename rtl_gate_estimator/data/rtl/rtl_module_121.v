module rtl_module_121 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [6:0] in_2,
    input wire [6:0] in_3,
    input wire [7:0] in_4,
    input wire [7:0] in_5,
    input wire [1:0] in_6,
    output wire [6:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [6:0] out_3,
    output wire [1:0] out_4,
    output wire [0:0] out_5,
    output wire [2:0] out_6
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [2:0] sig_4;
    wire [0:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [4:0] sig_10;
    wire [0:0] sig_11;

    // Logic assignments
    assign out_0 = (~(~(~((sig_8 | (~(~(out_0 ^ out_4)))) & out_0))));
    assign out_1 = (~((in_0 ^ (sig_5 ^ in_3)) | in_6));
    assign out_2 = (((~((~((~(in_4 ^ out_6)) ^ in_1)) ^ sig_5)) & out_5) ^ in_6);
    assign out_3 = (sig_1 ^ (~(sig_5 | (~(sig_8 | (~(~(in_5 & (~(sig_4 | sig_3))))))))));
    assign out_4 = (~(out_4 & ((in_5 & (out_6 | sig_10)) & sig_3)));
    assign out_5 = (((~(sig_1 | sig_10)) ^ in_4) ^ sig_10);
    assign out_6 = (sig_0 ^ (~out_5));
    assign sig_2 = (sig_11 ^ ((~(~(out_4 | out_3))) ^ out_2));
    assign sig_4 = (in_4 & (((~(out_6 | sig_11)) ^ sig_9) & sig_3));
    assign sig_0 = (out_3 & (~(((sig_0 ^ sig_7) ^ sig_6) & sig_9)));
    assign sig_11 = ((((~((~(in_6 | (~(sig_8 & sig_0)))) | sig_3)) & in_2) & sig_6) & sig_6);
    assign sig_3 = (sig_10 & (~(~(((~((~((out_0 & out_2) & sig_9)) & sig_2)) & out_5) & in_1))));
    assign sig_0 = (~(~((~(sig_0 | in_6)) & out_4)));
    assign sig_8 = (~(in_5 | (~((in_0 | sig_5) | in_5))));

endmodule
