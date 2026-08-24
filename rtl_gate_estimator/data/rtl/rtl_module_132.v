module rtl_module_132 (
input wire [1:0] in_0,
    input wire [4:0] in_1,
    output wire [2:0] out_0
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [1:0] sig_10;
    wire [5:0] sig_11;
    wire [2:0] sig_12;
    wire [6:0] sig_13;
    wire [3:0] sig_14;
    wire [4:0] sig_15;

    // Logic assignments
    assign out_0 = ((sig_3 | sig_8) | sig_15);
    assign sig_11 = (sig_1 ^ (~sig_11));
    assign sig_12 = (sig_5 | (sig_0 | (~(out_0 & sig_13))));

endmodule
