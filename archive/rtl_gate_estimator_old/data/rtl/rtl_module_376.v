module rtl_module_376 (
input wire [5:0] in_0,
    input wire [6:0] in_1,
    input wire [3:0] in_2,
    input wire [1:0] in_3,
    input wire [2:0] in_4,
    input wire [7:0] in_5,
    output wire [4:0] out_0,
    output wire [3:0] out_1,
    output wire [2:0] out_2,
    output wire [2:0] out_3,
    output wire [5:0] out_4,
    output wire [5:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [7:0] sig_1;
    wire [4:0] sig_2;
    wire [1:0] sig_3;
    wire [2:0] sig_4;
    wire [5:0] sig_5;
    wire [1:0] sig_6;
    wire [4:0] sig_7;
    wire [7:0] sig_8;
    wire [6:0] sig_9;
    wire [2:0] sig_10;
    wire [1:0] sig_11;
    wire [2:0] sig_12;
    wire [3:0] sig_13;
    wire [6:0] sig_14;

    // Logic assignments
    assign sig_11 = ~(sig_6 | sig_1);
    assign sig_13 = ~(sig_2 & sig_5);
    assign in_3 = out_5 ^ sig_0;
    assign out_3 = ~(sig_11 | sig_2);
    assign sig_1 = in_3 ^ sig_4;
    assign sig_0 = ~out_3;
    assign sig_13 = sig_1 & in_0;
    assign sig_13 = ~sig_6;
    assign out_0 = ~(out_2 & sig_4);
    assign in_1 = ~(sig_14 & sig_12);
    assign out_1 = ~out_0;
    assign sig_5 = out_4 ^ sig_12;
    assign sig_8 = ~(in_4 & sig_14);
    assign out_2 = in_1 ^ sig_11;
    assign sig_13 = ~(sig_13 | in_5);

endmodule
