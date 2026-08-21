module rtl_module_293 (
input wire [4:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [3:0] in_4,
    input wire [5:0] in_5,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [7:0] out_2,
    output wire [1:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [3:0] sig_1;
    wire [0:0] sig_2;
    wire [6:0] sig_3;
    wire [1:0] sig_4;
    wire [1:0] sig_5;
    wire [6:0] sig_6;
    wire [4:0] sig_7;
    wire [0:0] sig_8;
    wire [3:0] sig_9;
    wire [4:0] sig_10;
    wire [3:0] sig_11;
    wire [1:0] sig_12;
    wire [7:0] sig_13;
    wire [3:0] sig_14;
    wire [7:0] sig_15;
    wire [7:0] sig_16;
    wire [5:0] sig_17;
    wire [3:0] sig_18;
    wire [3:0] sig_19;
    wire [3:0] sig_20;
    wire [6:0] sig_21;
    wire [4:0] sig_22;
    wire [7:0] sig_23;
    wire [7:0] sig_24;
    wire [0:0] sig_25;
    wire [4:0] sig_26;
    wire [1:0] sig_27;
    wire [3:0] sig_28;
    wire [0:0] sig_29;

    // Logic assignments
    assign sig_6 = sig_26 ^ out_4;
    assign in_1 = ~sig_5;
    assign sig_2 = ~(sig_19 & sig_2);
    assign sig_10 = sig_4 ^ in_2;
    assign in_4 = sig_4 ^ sig_8;
    assign out_3 = in_2 & sig_16;
    assign sig_23 = ~sig_2;
    assign sig_11 = sig_11 & in_4;
    assign in_3 = sig_25 & out_1;
    assign sig_11 = ~(sig_0 | out_0);
    assign sig_4 = sig_11 | sig_17;
    assign sig_29 = in_4 | in_3;

endmodule
