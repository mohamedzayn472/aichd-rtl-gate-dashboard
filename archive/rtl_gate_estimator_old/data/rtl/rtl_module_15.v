module rtl_module_15 (
input wire [1:0] in_0,
    input wire [3:0] in_1,
    input wire [2:0] in_2,
    input wire [6:0] in_3,
    output wire [7:0] out_0,
    output wire [5:0] out_1,
    output wire [6:0] out_2,
    output wire [2:0] out_3,
    output wire [6:0] out_4,
    output wire [1:0] out_5,
    output wire [7:0] out_6,
    output wire [6:0] out_7
);

    // Internal signals
    wire [4:0] sig_0;
    wire [0:0] sig_1;
    wire [5:0] sig_2;
    wire [3:0] sig_3;
    wire [7:0] sig_4;
    wire [7:0] sig_5;
    wire [3:0] sig_6;
    wire [5:0] sig_7;

    // Logic assignments
    assign sig_7 = ~(in_1 & out_0);
    assign sig_2 = in_3 ^ out_2;
    assign sig_2 = out_7 & in_0;
    assign sig_6 = sig_3 & sig_0;
    assign sig_2 = ~(in_2 & out_5);
    assign out_6 = sig_2 | sig_3;
    assign sig_0 = out_7 ^ in_0;
    assign sig_0 = sig_0 ^ out_5;
    assign sig_1 = in_3 ^ in_0;
    assign in_0 = sig_7 | sig_3;
    assign sig_6 = ~(in_0 & sig_1);
    assign in_1 = sig_0 ^ out_1;
    assign in_3 = ~(in_2 & out_3);

endmodule
