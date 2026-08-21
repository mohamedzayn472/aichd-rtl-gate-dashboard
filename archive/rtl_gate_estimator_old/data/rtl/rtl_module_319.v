module rtl_module_319 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [1:0] in_2,
    input wire [7:0] in_3,
    input wire [5:0] in_4,
    input wire [3:0] in_5,
    input wire [0:0] in_6,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [6:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [7:0] sig_0;
    wire [2:0] sig_1;
    wire [4:0] sig_2;
    wire [0:0] sig_3;
    wire [4:0] sig_4;
    wire [3:0] sig_5;
    wire [4:0] sig_6;
    wire [7:0] sig_7;
    wire [4:0] sig_8;
    wire [1:0] sig_9;
    wire [2:0] sig_10;
    wire [5:0] sig_11;
    wire [3:0] sig_12;
    wire [1:0] sig_13;
    wire [3:0] sig_14;
    wire [7:0] sig_15;
    wire [5:0] sig_16;
    wire [6:0] sig_17;
    wire [1:0] sig_18;
    wire [0:0] sig_19;
    wire [0:0] sig_20;
    wire [7:0] sig_21;
    wire [7:0] sig_22;
    wire [7:0] sig_23;
    wire [3:0] sig_24;
    wire [2:0] sig_25;

    // Logic assignments
    assign sig_7 = sig_19 & in_5;
    assign sig_4 = ~(in_2 & sig_2);
    assign sig_14 = ~(out_4 | out_5);
    assign in_4 = ~(out_4 | sig_5);
    assign sig_23 = ~(sig_5 & sig_6);
    assign in_2 = ~sig_5;
    assign sig_4 = sig_11 ^ sig_12;
    assign sig_21 = sig_11 ^ out_2;
    assign in_0 = ~(sig_10 & sig_24);
    assign in_1 = ~sig_21;
    assign out_1 = ~(sig_19 | sig_1);
    assign sig_13 = in_4 | in_0;
    assign sig_23 = ~(sig_19 | sig_13);
    assign out_5 = in_4 & sig_23;

endmodule
