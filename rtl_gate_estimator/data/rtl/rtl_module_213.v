module rtl_module_213 (
input wire [7:0] in_0,
    input wire [0:0] in_1,
    input wire [4:0] in_2,
    input wire [2:0] in_3,
    input wire [5:0] in_4,
    input wire [2:0] in_5,
    output wire [4:0] out_0,
    output wire [6:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [6:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [7:0] sig_10;

    // Logic assignments
    assign out_0 = (~(in_0 & (sig_10 & sig_0)));
    assign out_1 = ((~((sig_8 ^ (sig_4 ^ (~((~(~((~(sig_2 & in_1)) & out_0))) & sig_2)))) | in_4)) ^ in_5);
    assign sig_1 = (~((~(in_0 | ((~(~((~(~(sig_7 | sig_3))) | out_1))) & sig_3))) & out_0));
    assign out_0 = (~(~((sig_4 | sig_1) & in_4)));
    assign sig_8 = (~(in_5 & ((((out_0 ^ sig_9) ^ in_3) & sig_8) ^ in_2)));
    assign sig_1 = (~(~((sig_1 ^ (~(((~(~(sig_2 & sig_2))) ^ in_3) | out_0))) | in_1)));
    assign sig_9 = (~(~((sig_8 & (~(in_0 & sig_3))) | sig_6)));
    assign sig_0 = (sig_4 & (sig_4 ^ (~(~(sig_4 ^ (~(~(sig_9 | in_3))))))));

endmodule
