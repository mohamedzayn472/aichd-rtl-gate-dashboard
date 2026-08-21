module rtl_module_315 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    input wire [0:0] in_3,
    input wire [6:0] in_4,
    input wire [7:0] in_5,
    input wire [3:0] in_6,
    input wire [6:0] in_7,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [2:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4,
    output wire [0:0] out_5,
    output wire [5:0] out_6,
    output wire [5:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [1:0] sig_4;
    wire [7:0] sig_5;
    wire [0:0] sig_6;
    wire [4:0] sig_7;
    wire [6:0] sig_8;
    wire [1:0] sig_9;
    wire [6:0] sig_10;
    wire [7:0] sig_11;
    wire [0:0] sig_12;
    wire [6:0] sig_13;
    wire [6:0] sig_14;
    wire [3:0] sig_15;
    wire [2:0] sig_16;
    wire [0:0] sig_17;
    wire [1:0] sig_18;
    wire [6:0] sig_19;
    wire [2:0] sig_20;
    wire [0:0] sig_21;
    wire [7:0] sig_22;
    wire [3:0] sig_23;
    wire [2:0] sig_24;
    wire [1:0] sig_25;
    wire [2:0] sig_26;
    wire [7:0] sig_27;

    // Logic assignments
    assign sig_12 = ~sig_5;
    assign sig_21 = in_5 | sig_21;
    assign in_0 = ~(sig_26 | sig_19);
    assign out_3 = sig_8 ^ sig_2;
    assign out_1 = ~sig_10;
    assign in_1 = sig_5 | out_1;
    assign out_7 = ~(out_6 & sig_7);
    assign out_7 = sig_7 & sig_12;
    assign out_7 = out_4 ^ out_2;
    assign in_1 = ~(in_7 | sig_10);
    assign out_0 = out_3 ^ sig_18;
    assign in_1 = ~sig_16;
    assign sig_3 = ~(in_4 & out_3);
    assign sig_26 = sig_20 ^ sig_4;
    assign sig_15 = sig_8 & out_2;
    assign sig_2 = ~(sig_9 & sig_6);
    assign sig_24 = ~(sig_9 & out_6);
    assign in_3 = sig_1 | out_7;

endmodule
