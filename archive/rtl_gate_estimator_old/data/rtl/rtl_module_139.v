module rtl_module_139 (
input wire [6:0] in_0,
    input wire [5:0] in_1,
    input wire [6:0] in_2,
    input wire [0:0] in_3,
    input wire [3:0] in_4,
    output wire [1:0] out_0,
    output wire [2:0] out_1,
    output wire [5:0] out_2,
    output wire [5:0] out_3,
    output wire [0:0] out_4,
    output wire [2:0] out_5,
    output wire [7:0] out_6,
    output wire [2:0] out_7
);

    // Internal signals
    wire [7:0] sig_0;
    wire [5:0] sig_1;
    wire [1:0] sig_2;
    wire [6:0] sig_3;
    wire [4:0] sig_4;
    wire [0:0] sig_5;
    wire [7:0] sig_6;
    wire [2:0] sig_7;
    wire [7:0] sig_8;
    wire [1:0] sig_9;
    wire [0:0] sig_10;

    // Logic assignments
    assign out_6 = ~out_1;
    assign out_3 = sig_7 | sig_1;
    assign sig_1 = sig_1 ^ out_5;
    assign in_0 = ~(sig_6 & sig_6);
    assign sig_4 = sig_4 & out_0;
    assign out_6 = sig_10 & out_4;
    assign sig_8 = ~sig_8;
    assign sig_6 = out_1 ^ sig_8;
    assign sig_5 = ~(in_3 & sig_0);
    assign sig_8 = ~sig_6;
    assign out_1 = out_3 | sig_0;
    assign sig_8 = ~(sig_7 & sig_4);
    assign out_6 = ~(out_5 | sig_8);
    assign sig_4 = ~(out_6 | out_3);

endmodule
