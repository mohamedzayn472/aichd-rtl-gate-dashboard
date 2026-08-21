module rtl_module_428 (
input wire [7:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    input wire [7:0] in_3,
    input wire [6:0] in_4,
    input wire [1:0] in_5,
    input wire [3:0] in_6,
    input wire [5:0] in_7,
    output wire [0:0] out_0,
    output wire [0:0] out_1,
    output wire [7:0] out_2,
    output wire [3:0] out_3
);

    // Internal signals
    wire [6:0] sig_0;
    wire [2:0] sig_1;
    wire [2:0] sig_2;
    wire [3:0] sig_3;

    // Logic assignments
    assign in_0 = in_7 ^ in_6;
    assign sig_2 = ~in_4;
    assign sig_2 = ~(in_1 & in_5);
    assign in_2 = in_4 | out_0;
    assign in_6 = in_5 ^ out_2;
    assign sig_2 = sig_2 | in_3;
    assign out_2 = in_4 ^ sig_0;
    assign in_1 = ~(in_6 & in_4);
    assign in_7 = sig_0 | out_3;
    assign in_2 = ~sig_1;
    assign sig_2 = ~in_1;
    assign in_7 = ~(sig_3 & sig_2);
    assign sig_3 = out_2 ^ in_1;

endmodule
