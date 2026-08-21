module rtl_module_492 (
input wire [0:0] in_0,
    input wire [5:0] in_1,
    input wire [5:0] in_2,
    input wire [1:0] in_3,
    input wire [4:0] in_4,
    input wire [4:0] in_5,
    input wire [5:0] in_6,
    input wire [4:0] in_7,
    output wire [2:0] out_0,
    output wire [2:0] out_1
);

    // Internal signals
    wire [5:0] sig_0;
    wire [5:0] sig_1;
    wire [5:0] sig_2;
    wire [1:0] sig_3;
    wire [3:0] sig_4;
    wire [3:0] sig_5;
    wire [0:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [5:0] sig_9;
    wire [4:0] sig_10;
    wire [1:0] sig_11;
    wire [6:0] sig_12;
    wire [3:0] sig_13;
    wire [5:0] sig_14;
    wire [1:0] sig_15;

    // Logic assignments
    assign sig_11 = sig_5 & sig_7;
    assign sig_2 = in_3 ^ sig_13;
    assign out_1 = sig_5 | in_7;
    assign out_0 = ~sig_3;
    assign sig_11 = ~(in_0 | sig_2);
    assign in_0 = ~(sig_0 | in_2);
    assign in_7 = ~sig_7;
    assign in_4 = in_7 | sig_0;
    assign sig_5 = sig_14 | sig_7;
    assign out_1 = ~(out_1 & sig_6);

endmodule
