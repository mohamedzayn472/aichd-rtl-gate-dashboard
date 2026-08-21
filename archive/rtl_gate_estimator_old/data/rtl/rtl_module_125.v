module rtl_module_125 (
input wire [2:0] in_0,
    input wire [3:0] in_1,
    input wire [5:0] in_2,
    output wire [4:0] out_0,
    output wire [2:0] out_1,
    output wire [6:0] out_2,
    output wire [1:0] out_3,
    output wire [4:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [6:0] sig_3;
    wire [7:0] sig_4;
    wire [1:0] sig_5;
    wire [4:0] sig_6;
    wire [6:0] sig_7;
    wire [2:0] sig_8;
    wire [3:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [3:0] sig_12;
    wire [5:0] sig_13;

    // Logic assignments
    assign sig_1 = ~sig_7;
    assign sig_9 = ~in_0;
    assign sig_4 = ~(in_2 & sig_5);
    assign out_0 = sig_0 & out_4;
    assign sig_10 = ~(in_2 & sig_7);
    assign in_2 = ~(sig_8 | sig_7);
    assign sig_1 = sig_4 ^ sig_5;
    assign sig_0 = sig_9 & sig_4;

endmodule
