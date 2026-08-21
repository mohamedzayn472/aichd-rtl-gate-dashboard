module rtl_module_75 (
input wire [0:0] in_0,
    input wire [2:0] in_1,
    input wire [2:0] in_2,
    output wire [0:0] out_0,
    output wire [5:0] out_1,
    output wire [0:0] out_2,
    output wire [2:0] out_3,
    output wire [0:0] out_4
);

    // Internal signals
    wire [4:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [0:0] sig_3;
    wire [1:0] sig_4;
    wire [6:0] sig_5;
    wire [2:0] sig_6;
    wire [2:0] sig_7;
    wire [4:0] sig_8;
    wire [2:0] sig_9;
    wire [7:0] sig_10;
    wire [5:0] sig_11;
    wire [0:0] sig_12;
    wire [1:0] sig_13;

    // Logic assignments
    assign sig_9 = in_2 ^ sig_10;
    assign in_2 = ~(sig_6 & sig_12);
    assign sig_0 = sig_5 | sig_7;
    assign sig_10 = ~(sig_13 & sig_3);
    assign sig_3 = ~(out_2 | in_1);
    assign out_1 = out_3 & sig_13;
    assign sig_12 = out_2 & sig_6;
    assign out_2 = ~sig_7;
    assign sig_13 = out_1 ^ out_2;
    assign sig_1 = out_2 ^ out_1;

endmodule
