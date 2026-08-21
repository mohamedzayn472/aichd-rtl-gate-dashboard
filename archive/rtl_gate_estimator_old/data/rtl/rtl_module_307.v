module rtl_module_307 (
input wire [4:0] in_0,
    input wire [4:0] in_1,
    input wire [6:0] in_2,
    input wire [3:0] in_3,
    input wire [1:0] in_4,
    output wire [7:0] out_0,
    output wire [2:0] out_1,
    output wire [4:0] out_2,
    output wire [7:0] out_3,
    output wire [6:0] out_4,
    output wire [3:0] out_5,
    output wire [0:0] out_6,
    output wire [3:0] out_7
);

    // Internal signals
    wire [0:0] sig_0;
    wire [6:0] sig_1;
    wire [5:0] sig_2;
    wire [4:0] sig_3;
    wire [0:0] sig_4;
    wire [2:0] sig_5;
    wire [5:0] sig_6;
    wire [5:0] sig_7;
    wire [1:0] sig_8;
    wire [3:0] sig_9;
    wire [3:0] sig_10;
    wire [2:0] sig_11;

    // Logic assignments
    assign sig_0 = ~out_0;
    assign sig_0 = out_1 & in_3;
    assign sig_2 = ~sig_6;
    assign in_1 = ~(sig_4 | out_7);
    assign sig_8 = ~(in_1 & in_4);
    assign out_5 = ~sig_8;
    assign sig_7 = ~out_3;
    assign sig_0 = sig_9 ^ sig_0;
    assign out_3 = ~(sig_4 & sig_6);
    assign out_1 = sig_10 | sig_3;
    assign out_6 = ~(out_3 & out_1);
    assign in_0 = sig_9 ^ out_6;
    assign sig_11 = out_0 & sig_8;
    assign in_0 = sig_8 ^ out_6;
    assign sig_6 = ~out_7;

endmodule
