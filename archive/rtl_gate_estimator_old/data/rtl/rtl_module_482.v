module rtl_module_482 (
input wire [3:0] in_0,
    input wire [5:0] in_1,
    input wire [3:0] in_2,
    input wire [3:0] in_3,
    input wire [3:0] in_4,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [4:0] out_2,
    output wire [4:0] out_3
);

    // Internal signals
    wire [5:0] sig_0;
    wire [1:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [7:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [4:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [1:0] sig_10;
    wire [3:0] sig_11;

    // Logic assignments
    assign sig_7 = sig_3 | sig_8;
    assign sig_11 = ~(sig_5 | out_3);
    assign sig_5 = ~(in_3 | out_1);
    assign in_4 = in_1 & sig_4;
    assign out_3 = in_2 & sig_5;
    assign sig_4 = ~(out_0 | sig_11);
    assign sig_5 = in_3 & in_1;
    assign sig_2 = ~(sig_1 & sig_4);
    assign sig_6 = ~sig_2;
    assign sig_8 = sig_1 | sig_2;

endmodule
