module rtl_module_150 (
input wire [1:0] in_0,
    input wire [6:0] in_1,
    input wire [2:0] in_2,
    input wire [0:0] in_3,
    input wire [2:0] in_4,
    input wire [2:0] in_5,
    input wire [3:0] in_6,
    input wire [2:0] in_7,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [7:0] out_2,
    output wire [4:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [6:0] sig_4;
    wire [6:0] sig_5;
    wire [1:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [0:0] sig_11;
    wire [4:0] sig_12;
    wire [7:0] sig_13;
    wire [1:0] sig_14;
    wire [6:0] sig_15;
    wire [0:0] sig_16;
    wire [4:0] sig_17;
    wire [0:0] sig_18;
    wire [7:0] sig_19;
    wire [0:0] sig_20;
    wire [5:0] sig_21;
    wire [2:0] sig_22;
    wire [7:0] sig_23;
    wire [7:0] sig_24;
    wire [4:0] sig_25;
    wire [0:0] sig_26;
    wire [2:0] sig_27;
    wire [5:0] sig_28;

    // Logic assignments
    assign sig_14 = sig_25 | sig_16;
    assign in_4 = ~(sig_3 & out_4);
    assign sig_14 = out_4 | sig_28;
    assign sig_21 = sig_0 ^ sig_9;
    assign sig_11 = ~(sig_17 | in_4);
    assign sig_22 = ~(sig_16 | sig_22);
    assign sig_3 = ~(sig_28 & sig_24);
    assign sig_25 = ~(sig_8 | sig_0);
    assign sig_12 = ~(out_0 | out_0);
    assign out_0 = out_2 ^ sig_17;
    assign in_2 = in_1 & sig_2;
    assign in_6 = in_6 | sig_23;
    assign sig_22 = ~(sig_12 | sig_6);
    assign sig_7 = ~(in_6 | sig_3);
    assign sig_16 = ~(sig_18 | in_4);
    assign out_2 = sig_8 & in_7;
    assign in_4 = sig_20 & sig_15;
    assign out_3 = ~(in_1 & sig_3);
    assign in_6 = sig_20 ^ sig_16;
    assign out_3 = sig_28 | sig_27;
    assign sig_4 = sig_8 | sig_23;

endmodule
