module rtl_module_203 (
input wire [5:0] in_0,
    input wire [7:0] in_1,
    input wire [0:0] in_2,
    input wire [6:0] in_3,
    input wire [0:0] in_4,
    input wire [7:0] in_5,
    input wire [1:0] in_6,
    input wire [7:0] in_7,
    output wire [4:0] out_0,
    output wire [1:0] out_1
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [1:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [5:0] sig_5;
    wire [3:0] sig_6;
    wire [7:0] sig_7;
    wire [0:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [7:0] sig_11;
    wire [3:0] sig_12;
    wire [6:0] sig_13;
    wire [1:0] sig_14;
    wire [0:0] sig_15;
    wire [2:0] sig_16;
    wire [0:0] sig_17;
    wire [7:0] sig_18;
    wire [1:0] sig_19;
    wire [2:0] sig_20;
    wire [7:0] sig_21;
    wire [4:0] sig_22;
    wire [6:0] sig_23;
    wire [0:0] sig_24;
    wire [4:0] sig_25;
    wire [1:0] sig_26;
    wire [7:0] sig_27;

    // Logic assignments
    assign sig_2 = in_2 ^ sig_10;
    assign sig_13 = ~(sig_19 & in_7);
    assign sig_1 = ~(in_4 | sig_4);
    assign sig_23 = ~sig_7;
    assign sig_16 = sig_3 & sig_16;
    assign sig_11 = sig_3 & sig_6;
    assign out_1 = sig_23 ^ sig_6;
    assign sig_20 = ~(in_7 | in_6);
    assign sig_0 = sig_0 | out_0;
    assign sig_20 = sig_23 & sig_15;
    assign sig_19 = ~(in_1 | sig_25);

endmodule
