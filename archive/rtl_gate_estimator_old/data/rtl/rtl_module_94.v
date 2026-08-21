module rtl_module_94 (
input wire [5:0] in_0,
    input wire [3:0] in_1,
    output wire [6:0] out_0,
    output wire [1:0] out_1,
    output wire [3:0] out_2,
    output wire [6:0] out_3,
    output wire [7:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [4:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [7:0] sig_5;
    wire [4:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [1:0] sig_10;
    wire [4:0] sig_11;
    wire [7:0] sig_12;

    // Logic assignments
    assign sig_1 = in_1 & sig_0;
    assign in_0 = ~sig_3;
    assign out_4 = ~sig_8;
    assign sig_7 = out_4 | out_4;
    assign sig_0 = out_1 & out_0;
    assign sig_4 = ~sig_7;
    assign out_0 = ~(out_0 | out_1);
    assign out_2 = sig_8 ^ out_2;

endmodule
