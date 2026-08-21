module rtl_module_421 (
input wire [5:0] in_0,
    input wire [1:0] in_1,
    input wire [6:0] in_2,
    output wire [7:0] out_0,
    output wire [6:0] out_1,
    output wire [4:0] out_2,
    output wire [0:0] out_3,
    output wire [3:0] out_4,
    output wire [2:0] out_5,
    output wire [3:0] out_6
);

    // Internal signals
    wire [1:0] sig_0;
    wire [3:0] sig_1;
    wire [2:0] sig_2;
    wire [5:0] sig_3;
    wire [2:0] sig_4;
    wire [2:0] sig_5;
    wire [6:0] sig_6;
    wire [7:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;
    wire [6:0] sig_10;
    wire [3:0] sig_11;
    wire [7:0] sig_12;

    // Logic assignments
    assign sig_2 = sig_7 | sig_2;
    assign sig_10 = ~(sig_5 & sig_5);
    assign out_5 = out_0 ^ sig_5;
    assign out_4 = sig_10 | out_6;
    assign out_1 = ~(sig_10 | out_0);
    assign sig_0 = in_2 & sig_6;
    assign sig_4 = in_1 | sig_10;
    assign in_0 = out_3 ^ out_6;
    assign in_0 = ~(sig_7 & out_1);
    assign sig_12 = ~in_2;
    assign sig_7 = out_6 ^ sig_8;
    assign out_5 = ~(out_5 & out_6);

endmodule
