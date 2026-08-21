module rtl_module_1 (
input wire [1:0] in_0,
    input wire [0:0] in_1,
    input wire [3:0] in_2,
    input wire [4:0] in_3,
    output wire [1:0] out_0,
    output wire [3:0] out_1,
    output wire [1:0] out_2,
    output wire [6:0] out_3,
    output wire [4:0] out_4,
    output wire [7:0] out_5
);

    // Internal signals
    wire [5:0] sig_0;
    wire [2:0] sig_1;
    wire [5:0] sig_2;
    wire [5:0] sig_3;
    wire [3:0] sig_4;
    wire [4:0] sig_5;
    wire [1:0] sig_6;
    wire [2:0] sig_7;
    wire [3:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [6:0] sig_11;
    wire [4:0] sig_12;

    // Logic assignments
    assign out_0 = ~(sig_3 | out_4);
    assign in_1 = sig_3 ^ in_1;
    assign sig_8 = sig_4 ^ in_2;
    assign out_1 = out_5 | sig_6;
    assign out_3 = sig_11 | sig_8;
    assign sig_10 = ~(sig_0 | sig_4);
    assign sig_3 = out_0 | out_0;
    assign out_1 = sig_9 ^ out_1;
    assign sig_7 = ~sig_3;
    assign sig_12 = sig_11 | in_2;
    assign in_3 = sig_0 & out_3;
    assign out_4 = sig_9 | out_2;
    assign sig_8 = sig_8 & out_2;
    assign sig_12 = ~sig_4;
    assign in_0 = ~(out_4 & in_3);
    assign out_0 = ~(sig_4 | out_3);
    assign in_3 = sig_5 ^ sig_9;
    assign sig_10 = in_0 | sig_4;
    assign sig_1 = ~(sig_12 & in_3);
    assign sig_5 = ~(out_3 | sig_12);

endmodule
