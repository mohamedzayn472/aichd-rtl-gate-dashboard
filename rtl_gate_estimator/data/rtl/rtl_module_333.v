module rtl_module_333 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [4:0] in_2,
    input wire [4:0] in_3,
    input wire [1:0] in_4,
    input wire [5:0] in_5,
    input wire [5:0] in_6,
    output wire [2:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [7:0] sig_0;
    wire [7:0] sig_1;
    wire [7:0] sig_2;
    wire [7:0] sig_3;
    wire [1:0] sig_4;
    wire [3:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [1:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [0:0] sig_11;
    wire [1:0] sig_12;
    wire [3:0] sig_13;
    wire [1:0] sig_14;

    // Logic assignments
    assign out_0 = (~((~(in_5 & (~(~(sig_13 | (~(sig_14 & sig_7))))))) & sig_0));
    assign out_1 = (~(~in_4));
    assign sig_10 = (((sig_5 & (~((~(in_0 | (in_5 & sig_6))) & sig_1))) & in_0) ^ in_0);
    assign sig_0 = (sig_14 | ((~(in_5 | (in_3 ^ (~(((~(sig_13 & (~(sig_12 & sig_7)))) | in_0) | in_0))))) ^ in_3));
    assign sig_3 = (~((in_1 | (~(~(sig_7 & sig_13)))) | in_0));
    assign sig_7 = (sig_1 | ((sig_7 & (~((~((sig_4 | ((sig_9 & sig_6) ^ in_0)) & sig_3)) | in_6))) & out_1));
    assign sig_3 = ((~(((sig_10 | (~((out_0 ^ out_1) & in_0))) & sig_9) ^ sig_10)) ^ in_1);
    assign sig_1 = (~(sig_14 | ((sig_5 ^ in_4) & in_5)));
    assign sig_13 = (~(~(in_0 & ((~(sig_12 | (~((~(in_3 | sig_7)) ^ sig_9)))) ^ sig_7))));
    assign sig_13 = (~((~((~((~(sig_11 & (~(~(out_0 | sig_13))))) ^ sig_14)) | sig_13)) & in_3));

endmodule
