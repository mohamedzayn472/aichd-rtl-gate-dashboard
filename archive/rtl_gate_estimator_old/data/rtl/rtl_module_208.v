module rtl_module_208 (
input wire [7:0] in_0,
    input wire [3:0] in_1,
    input wire [0:0] in_2,
    input wire [3:0] in_3,
    output wire [6:0] out_0
);

    // Internal signals
    wire [2:0] sig_0;
    wire [7:0] sig_1;
    wire [2:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [2:0] sig_6;
    wire [0:0] sig_7;
    wire [3:0] sig_8;
    wire [7:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;
    wire [6:0] sig_12;
    wire [7:0] sig_13;
    wire [7:0] sig_14;
    wire [5:0] sig_15;
    wire [3:0] sig_16;
    wire [7:0] sig_17;
    wire [2:0] sig_18;
    wire [6:0] sig_19;
    wire [0:0] sig_20;

    // Logic assignments
    assign in_3 = ~(sig_5 | sig_7);
    assign sig_7 = sig_10 & sig_8;
    assign sig_9 = ~(in_2 | sig_15);
    assign sig_7 = sig_12 ^ sig_13;
    assign in_1 = ~sig_11;

endmodule
