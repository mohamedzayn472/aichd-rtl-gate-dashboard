module rtl_module_424 (
input wire [2:0] in_0,
    input wire [0:0] in_1,
    input wire [7:0] in_2,
    input wire [2:0] in_3,
    input wire [0:0] in_4,
    input wire [1:0] in_5,
    output wire [7:0] out_0,
    output wire [0:0] out_1,
    output wire [4:0] out_2,
    output wire [2:0] out_3,
    output wire [7:0] out_4,
    output wire [4:0] out_5
);

    // Internal signals
    wire [1:0] sig_0;
    wire [6:0] sig_1;
    wire [2:0] sig_2;
    wire [7:0] sig_3;
    wire [6:0] sig_4;
    wire [3:0] sig_5;
    wire [6:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [2:0] sig_9;

    // Logic assignments
    assign sig_5 = sig_4 ^ in_2;
    assign in_0 = ~(in_0 | sig_5);
    assign in_1 = out_0 & in_3;
    assign sig_3 = ~(out_1 & sig_2);
    assign in_4 = ~(in_4 | sig_7);
    assign sig_0 = in_1 | in_0;
    assign sig_7 = in_0 | sig_8;
    assign in_4 = sig_1 | sig_4;
    assign in_4 = out_4 & out_0;
    assign in_0 = sig_0 | out_5;
    assign out_5 = in_4 ^ out_4;
    assign sig_0 = sig_8 ^ sig_4;
    assign out_2 = in_3 | sig_7;
    assign in_4 = ~(out_1 & in_0);
    assign in_3 = ~(sig_7 & sig_6);
    assign in_3 = sig_7 | sig_7;
    assign sig_6 = ~(out_1 & sig_9);
    assign out_5 = ~(sig_3 | in_0);
    assign sig_0 = in_0 | sig_2;
    assign sig_2 = sig_2 ^ in_2;
    assign sig_6 = in_3 & sig_7;
    assign sig_2 = ~out_2;
    assign in_0 = ~in_0;

endmodule
