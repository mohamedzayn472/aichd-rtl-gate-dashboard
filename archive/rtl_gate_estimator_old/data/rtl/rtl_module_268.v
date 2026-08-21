module rtl_module_268 (
input wire [2:0] in_0,
    input wire [4:0] in_1,
    input wire [7:0] in_2,
    output wire [2:0] out_0,
    output wire [5:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3,
    output wire [3:0] out_4,
    output wire [3:0] out_5
);

    // Internal signals
    wire [3:0] sig_0;
    wire [4:0] sig_1;
    wire [3:0] sig_2;
    wire [0:0] sig_3;
    wire [3:0] sig_4;
    wire [1:0] sig_5;
    wire [1:0] sig_6;
    wire [5:0] sig_7;
    wire [7:0] sig_8;
    wire [6:0] sig_9;
    wire [0:0] sig_10;
    wire [5:0] sig_11;
    wire [4:0] sig_12;
    wire [5:0] sig_13;
    wire [7:0] sig_14;
    wire [6:0] sig_15;

    // Logic assignments
    assign sig_5 = ~(sig_12 | sig_7);
    assign sig_9 = ~sig_15;
    assign out_4 = ~(sig_5 | out_4);
    assign sig_7 = ~(sig_3 | sig_8);
    assign sig_10 = sig_8 | sig_15;
    assign sig_5 = ~sig_9;
    assign out_4 = ~out_0;
    assign sig_9 = ~(in_2 & sig_10);
    assign sig_5 = sig_1 | in_2;
    assign sig_7 = sig_6 | sig_8;
    assign sig_14 = out_3 & in_0;
    assign sig_7 = ~(out_0 & sig_6);
    assign in_2 = ~(sig_7 & sig_2);

endmodule
