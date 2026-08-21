module rtl_module_175 (
input wire [5:0] in_0,
    input wire [0:0] in_1,
    input wire [5:0] in_2,
    input wire [6:0] in_3,
    input wire [6:0] in_4,
    input wire [5:0] in_5,
    input wire [3:0] in_6,
    output wire [3:0] out_0,
    output wire [7:0] out_1,
    output wire [4:0] out_2,
    output wire [1:0] out_3,
    output wire [1:0] out_4
);

    // Internal signals
    wire [3:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [3:0] sig_8;
    wire [4:0] sig_9;
    wire [6:0] sig_10;
    wire [0:0] sig_11;
    wire [1:0] sig_12;
    wire [0:0] sig_13;
    wire [5:0] sig_14;
    wire [4:0] sig_15;
    wire [5:0] sig_16;
    wire [7:0] sig_17;
    wire [4:0] sig_18;

    // Logic assignments
    assign in_2 = ~(sig_3 | sig_17);
    assign sig_6 = ~(out_0 | in_4);
    assign sig_11 = sig_2 | sig_11;
    assign sig_10 = in_2 | sig_7;
    assign sig_3 = sig_11 | sig_10;
    assign sig_1 = ~(sig_10 | sig_9);
    assign sig_15 = in_0 ^ in_4;
    assign out_1 = sig_18 & sig_15;
    assign sig_16 = ~(sig_3 | out_4);
    assign out_2 = sig_17 ^ sig_7;
    assign out_2 = ~(in_6 | in_5);
    assign sig_7 = sig_0 ^ sig_7;

endmodule
