module rtl_module_3 (
input wire [3:0] in_0,
    input wire [3:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    output wire [6:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [4:0] sig_0;
    wire [7:0] sig_1;
    wire [3:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [0:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [2:0] sig_10;
    wire [6:0] sig_11;
    wire [7:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [6:0] sig_15;

    // Logic assignments
    assign out_0 = ((~((~(sig_13 ^ sig_9)) ^ sig_11)) & sig_5);
    assign out_1 = (~((~(in_1 | sig_13)) & in_1));
    assign sig_15 = (~(sig_14 & (((~(((in_2 | sig_15) & sig_3) & sig_14)) & sig_15) | in_2)));
    assign sig_10 = ((~((~(out_1 | (sig_3 ^ sig_4))) | sig_10)) | in_2);
    assign sig_3 = (~(sig_7 & (sig_12 | sig_4)));
    assign sig_7 = (out_1 ^ (out_0 | (~(~(sig_15 & sig_5)))));

endmodule
