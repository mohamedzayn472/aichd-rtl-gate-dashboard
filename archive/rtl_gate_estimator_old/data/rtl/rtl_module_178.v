module rtl_module_178 (
input wire [1:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [4:0] in_3,
    input wire [1:0] in_4,
    output wire [6:0] out_0,
    output wire [4:0] out_1,
    output wire [3:0] out_2,
    output wire [1:0] out_3,
    output wire [6:0] out_4,
    output wire [7:0] out_5,
    output wire [0:0] out_6
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [0:0] sig_2;
    wire [2:0] sig_3;
    wire [3:0] sig_4;
    wire [2:0] sig_5;
    wire [0:0] sig_6;
    wire [2:0] sig_7;
    wire [2:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [0:0] sig_11;
    wire [0:0] sig_12;
    wire [3:0] sig_13;
    wire [4:0] sig_14;
    wire [5:0] sig_15;
    wire [6:0] sig_16;
    wire [2:0] sig_17;
    wire [6:0] sig_18;
    wire [2:0] sig_19;
    wire [2:0] sig_20;
    wire [2:0] sig_21;
    wire [2:0] sig_22;
    wire [5:0] sig_23;
    wire [1:0] sig_24;
    wire [2:0] sig_25;

    // Logic assignments
    assign sig_20 = sig_18 ^ sig_11;
    assign sig_15 = ~(in_1 & in_1);
    assign in_1 = sig_25 ^ in_2;
    assign sig_4 = ~(sig_21 | in_2);
    assign sig_19 = ~(out_2 & sig_5);
    assign sig_1 = in_0 | sig_17;
    assign sig_0 = sig_21 | in_4;
    assign sig_25 = sig_24 & sig_21;
    assign sig_23 = ~(sig_3 & in_0);
    assign sig_25 = sig_25 ^ sig_11;
    assign sig_15 = out_3 | sig_18;
    assign sig_1 = ~(sig_25 & out_0);

endmodule
