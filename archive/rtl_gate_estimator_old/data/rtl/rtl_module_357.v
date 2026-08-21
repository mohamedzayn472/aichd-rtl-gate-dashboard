module rtl_module_357 (
input wire [6:0] in_0,
    input wire [1:0] in_1,
    input wire [7:0] in_2,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [0:0] out_2,
    output wire [5:0] out_3
);

    // Internal signals
    wire [3:0] sig_0;
    wire [5:0] sig_1;
    wire [3:0] sig_2;
    wire [4:0] sig_3;
    wire [5:0] sig_4;
    wire [1:0] sig_5;
    wire [5:0] sig_6;
    wire [6:0] sig_7;
    wire [5:0] sig_8;
    wire [7:0] sig_9;
    wire [2:0] sig_10;

    // Logic assignments
    assign sig_4 = sig_4 ^ out_2;
    assign sig_6 = sig_2 | sig_9;
    assign sig_1 = ~sig_0;
    assign out_1 = ~sig_7;
    assign in_1 = ~(in_2 & sig_7);
    assign sig_5 = ~(sig_10 & sig_10);
    assign out_1 = ~(sig_3 & in_0);

endmodule
