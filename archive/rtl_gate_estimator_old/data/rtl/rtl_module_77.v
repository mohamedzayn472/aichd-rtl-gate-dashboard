module rtl_module_77 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    output wire [3:0] out_0,
    output wire [4:0] out_1,
    output wire [4:0] out_2,
    output wire [5:0] out_3,
    output wire [7:0] out_4
);

    // Internal signals
    wire [1:0] sig_0;
    wire [4:0] sig_1;
    wire [2:0] sig_2;
    wire [2:0] sig_3;
    wire [4:0] sig_4;
    wire [1:0] sig_5;
    wire [0:0] sig_6;
    wire [1:0] sig_7;
    wire [3:0] sig_8;
    wire [5:0] sig_9;
    wire [5:0] sig_10;
    wire [4:0] sig_11;
    wire [2:0] sig_12;
    wire [4:0] sig_13;

    // Logic assignments
    assign sig_7 = out_3 & sig_8;
    assign sig_12 = ~(in_1 & sig_2);
    assign sig_13 = in_1 & sig_1;
    assign in_1 = ~sig_0;
    assign sig_10 = ~sig_3;
    assign out_3 = ~(out_2 | out_4);
    assign sig_12 = ~(out_3 | sig_9);

endmodule
