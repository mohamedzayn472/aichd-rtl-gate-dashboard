module rtl_module_426 (
input wire [0:0] in_0,
    input wire [3:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    input wire [4:0] in_4,
    input wire [0:0] in_5,
    output wire [3:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2
);

    // Internal signals
    wire [5:0] sig_0;
    wire [0:0] sig_1;
    wire [7:0] sig_2;
    wire [1:0] sig_3;
    wire [6:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [5:0] sig_10;
    wire [5:0] sig_11;
    wire [4:0] sig_12;
    wire [5:0] sig_13;
    wire [2:0] sig_14;
    wire [0:0] sig_15;
    wire [5:0] sig_16;
    wire [5:0] sig_17;
    wire [6:0] sig_18;
    wire [7:0] sig_19;
    wire [5:0] sig_20;
    wire [7:0] sig_21;
    wire [7:0] sig_22;
    wire [1:0] sig_23;
    wire [1:0] sig_24;
    wire [3:0] sig_25;

    // Logic assignments
    assign sig_8 = ~(in_1 & sig_13);
    assign sig_23 = sig_20 ^ sig_3;
    assign sig_10 = ~sig_14;
    assign sig_0 = ~(in_5 | sig_18);
    assign sig_16 = out_1 & sig_23;
    assign sig_0 = sig_16 & sig_4;
    assign sig_1 = sig_7 | sig_6;
    assign out_1 = ~sig_18;
    assign in_0 = out_0 & sig_6;
    assign sig_23 = sig_21 ^ in_4;
    assign out_0 = out_1 | sig_8;
    assign sig_25 = sig_11 & sig_18;
    assign sig_1 = sig_9 & sig_24;

endmodule
