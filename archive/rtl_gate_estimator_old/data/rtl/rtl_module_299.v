module rtl_module_299 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [2:0] in_2,
    input wire [7:0] in_3,
    input wire [2:0] in_4,
    output wire [6:0] out_0,
    output wire [7:0] out_1,
    output wire [0:0] out_2
);

    // Internal signals
    wire [6:0] sig_0;
    wire [6:0] sig_1;
    wire [6:0] sig_2;
    wire [5:0] sig_3;
    wire [6:0] sig_4;
    wire [2:0] sig_5;
    wire [2:0] sig_6;
    wire [4:0] sig_7;
    wire [1:0] sig_8;
    wire [7:0] sig_9;
    wire [6:0] sig_10;

    // Logic assignments
    assign sig_3 = ~(sig_4 & sig_10);
    assign in_2 = ~sig_0;
    assign in_1 = ~(sig_1 & sig_6);
    assign in_1 = sig_8 & in_3;
    assign sig_4 = ~(out_0 & out_2);
    assign sig_4 = ~in_4;
    assign sig_2 = sig_5 | sig_3;
    assign sig_4 = in_1 | sig_4;
    assign sig_8 = ~(sig_7 | out_1);
    assign in_3 = in_4 | in_2;
    assign sig_8 = sig_3 ^ sig_6;

endmodule
