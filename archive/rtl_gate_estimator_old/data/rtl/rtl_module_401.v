module rtl_module_401 (
input wire [6:0] in_0,
    input wire [0:0] in_1,
    output wire [5:0] out_0,
    output wire [1:0] out_1,
    output wire [6:0] out_2
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [5:0] sig_2;
    wire [3:0] sig_3;
    wire [3:0] sig_4;
    wire [7:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;
    wire [7:0] sig_11;
    wire [7:0] sig_12;
    wire [6:0] sig_13;
    wire [0:0] sig_14;
    wire [0:0] sig_15;
    wire [6:0] sig_16;

    // Logic assignments
    assign out_1 = sig_16 ^ sig_12;
    assign out_1 = ~(out_2 | sig_5);
    assign out_1 = sig_13 & sig_5;
    assign sig_5 = sig_5 & sig_3;
    assign sig_16 = sig_11 ^ sig_12;
    assign sig_13 = sig_6 ^ sig_8;

endmodule
