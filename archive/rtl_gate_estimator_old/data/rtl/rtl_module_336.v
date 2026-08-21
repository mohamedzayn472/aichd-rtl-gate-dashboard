module rtl_module_336 (
input wire [2:0] in_0,
    input wire [6:0] in_1,
    input wire [0:0] in_2,
    input wire [1:0] in_3,
    output wire [6:0] out_0,
    output wire [3:0] out_1,
    output wire [7:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [1:0] out_6
);

    // Internal signals
    wire [5:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [2:0] sig_5;
    wire [7:0] sig_6;
    wire [7:0] sig_7;
    wire [6:0] sig_8;
    wire [4:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [0:0] sig_12;
    wire [0:0] sig_13;
    wire [3:0] sig_14;
    wire [5:0] sig_15;
    wire [0:0] sig_16;
    wire [2:0] sig_17;
    wire [5:0] sig_18;
    wire [5:0] sig_19;

    // Logic assignments
    assign out_0 = sig_5 ^ out_5;
    assign sig_4 = ~(out_4 | sig_13);
    assign sig_11 = ~sig_0;
    assign sig_13 = out_5 | sig_13;
    assign sig_14 = in_0 | sig_5;
    assign out_0 = ~sig_3;
    assign in_2 = sig_4 | out_5;
    assign sig_4 = sig_8 ^ sig_19;
    assign sig_18 = ~(in_2 | sig_7);
    assign sig_11 = ~(sig_5 | sig_14);
    assign sig_0 = sig_7 | in_2;

endmodule
